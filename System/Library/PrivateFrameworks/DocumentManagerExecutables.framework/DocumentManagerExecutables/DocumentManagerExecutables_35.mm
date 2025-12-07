double _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double specialized DOCItemCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for IndexPath();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v51 = &v40 - v12;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v40 - v16;
  v44 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool);
  if (((*(*v18 + 160))(v15) & 1) == 0)
  {
    v40 = v18;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = *((*MEMORY[0x277D85000] & *v44) + 0x18A0);
      v49 = (*MEMORY[0x277D85000] & *v44) + 6304;
      v47 = *(v41 + 16);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v22 = a1 + v42;
      v23 = v44;
      v24 = *(v41 + 72);
      v46 = (v41 + 8);
      v25 = (v41 + 48);
      v52 = MEMORY[0x277D84F90];
      v48 = (v41 + 16);
      v45 = (v41 + 32);
      v43 = v21;
      v47(v17, v22, v7);
      while (1)
      {
        v21(v17);
        (*v46)(v17, v7);
        if ((*v25)(v6, 1, v7) == 1)
        {
          outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        }

        else
        {
          v26 = *v45;
          (*v45)(v50, v6, v7);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v27 = v52;
          }

          else
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
          }

          v29 = v27[2];
          v28 = v27[3];
          if (v29 >= v28 >> 1)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
          }

          v27[2] = v29 + 1;
          v52 = v27;
          v26(v27 + v42 + v29 * v24, v50, v7);
          v21 = v43;
          v23 = v44;
        }

        v22 += v24;
        if (!--v20)
        {
          break;
        }

        v47(v17, v22, v7);
      }
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
      v23 = v44;
    }

    v53 = MEMORY[0x277D84F90];
    v30 = v52[2];
    if (v30)
    {
      v31 = *((*MEMORY[0x277D85000] & *v23) + 0xD88);
      v49 = (*MEMORY[0x277D85000] & *v23) + 3464;
      v50 = v31;
      v48 = *(v41 + 16);
      v32 = v52 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v33 = *(v41 + 72);
      v34 = (v41 + 8);
      v47 = MEMORY[0x277D84F90];
      v35 = v51;
      v48(v51, v32, v7);
      while (1)
      {
        v36 = (v50)(v35, 0);
        v37 = (*v34)(v35, v7);
        if (v36)
        {
          MEMORY[0x24C1FB090](v37);
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v47 = v53;
        }

        v32 += v33;
        if (!--v30)
        {
          break;
        }

        v48(v35, v32, v7);
      }

      v38 = v47;
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    v39 = v40;
    if (v38 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_28;
      }
    }

    else if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_28:

      return result;
    }

    (*(*v39 + 200))(v38, closure #3 in DOCItemCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:), 0);
    goto LABEL_28;
  }

  return result;
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:canFocusItemAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x1448))())
  {
    v5 = (*((*v4 & *v1) + 0x1498))();
    if (v5)
    {
      v6 = (*(*v5 + 296))();

      if (v6)
      {
        v8 = (*((*v4 & *v6) + 0x390))(v7);

        if (v8)
        {
          v9 = [v8 isFirstResponder];

          if (v9)
          {
            return 0;
          }
        }
      }
    }
  }

  v11 = *((*v4 & *v2) + 0x1788);

  return v11(a1);
}

uint64_t specialized DOCItemCollectionViewController._collectionView(_:typeSelectStringForItemAt:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v15, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *v1) + 0x1448))(v18);
  result = 0;
  if ((v22 & 1) == 0)
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v14, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }

    else
    {
      (*(v16 + 32))(v20, v14, v15);
      v24 = (*((*v21 & *v1) + 0xD88))(v20, 0);
      if (v24)
      {
        v25 = DOCItemCollectionViewController.fastTitle(forNode:)(v24);
        swift_unknownObjectRelease();
        (*(v16 + 8))(v20, v15);
        return v25;
      }

      (*(v16 + 8))(v20, v15);
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);
    outlined init with copy of DOCGridLayout.Spec?(a1, v10, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136315138;
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v36);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2493AC000, v27, v28, "typeSelectStringForItemAt result nil, indexPath: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    else
    {

      outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }

    return 0;
  }

  return result;
}

void specialized DOCItemCollectionViewController._collectionView(_:updateTypeSelectResultFor:at:with:animator:)(void *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  type metadata accessor for DOCItemCollectionCell();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    return;
  }

  v15 = MEMORY[0x277D85000];
  v16 = *((*MEMORY[0x277D85000] & *v14) + 0x208);
  v17 = (*MEMORY[0x277D85000] & *v14) + 520;
  v18 = a1;
  v48 = v17;
  v49 = v18;
  v19 = v16();
  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = v19;
  v47 = v16;
  v21 = (*((*v15 & *v19) + 0x640))();
  v23 = v22;
  if (!a3)
  {

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.UI);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v33, v34);
    v16 = v47;
    if (v35)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2493AC000, v33, v34, "updateTypeSelectResultFor itemResult nil", v36, 2u);
      MEMORY[0x24C1FE850](v36, -1, -1);
    }

    goto LABEL_18;
  }

  v24 = v21;
  v46 = a3;
  v45 = [v46 item];
  v25 = [v45 string];
  if (!v25)
  {

    goto LABEL_17;
  }

  v26 = v25;
  v44 = v10;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v27 == v24 && v29 == v23)
  {

    v10 = v44;
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v44;
    if ((v31 & 1) == 0)
    {

      v15 = MEMORY[0x277D85000];
LABEL_17:
      v33 = v46;
      v16 = v47;
      v20 = v45;
LABEL_18:

LABEL_19:
      v37 = v16();
      if (v37)
      {
        v38 = v37;
        (*(v10 + 56))(v8, 1, 1, v9);
        (*((*v15 & *v38) + 0x4B0))(v8);
      }

      else
      {
        v39 = v49;
      }

      return;
    }
  }

  v40 = v46;
  v41 = [v46 matchingRanges];
  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = IndexSet.isEmpty.getter();
  v43 = MEMORY[0x277D85000];
  if (v42)
  {
    IndexSet.init()();
  }

  else
  {
    (*(v10 + 16))(v8, v13, v9);
  }

  (*(v10 + 56))(v8, 0, 1, v9);
  (*((*v43 & *v20) + 0x4B0))(v8);

  (*(v10 + 8))(v13, v9);
}

uint64_t specialized DOCItemCollectionViewController.isColumnNavigationAction(in:at:)()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() != 3)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.UI);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BE0C00, &v14);
      _os_log_impl(&dword_2493AC000, v4, v5, "%s should never be called outside of column mode", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }
  }

  if (*((*v2 & *v1) + 0xA98))() && (v9 = v8, ObjectType = swift_getObjectType(), LOBYTE(v9) = (*(v9 + 48))(v1, ObjectType, v9), v11 = swift_unknownObjectRelease(), (v9))
  {
    v12 = (*((*v2 & *v1) + 0x1280))(v11) ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

void specialized DOCItemCollectionViewController.collectionView(_:didSelectItemAt:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v80 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v80 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v86 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v80 - v22;
  v26.n128_f64[0] = MEMORY[0x28223BE20](v24, v25);
  v28 = &v80 - v27;
  v29 = MEMORY[0x277D85000];
  v30 = *((*MEMORY[0x277D85000] & *v2) + 0x1898);
  v87 = a1;
  if ((v30(a1, v26) & 1) == 0)
  {
    if ((*((*v29 & *v2) + 0x998))())
    {
      v81 = v12;
      v31 = (*((*v29 & *v2) + 0x1010))();
      v82 = *(v5 + 16);
      v83 = v5 + 16;
      v82(v28, v87, v4);
      v84 = v5;
      v85 = v4;
      v32 = (*(v5 + 56))(v28, 0, 1, v4);
      v33 = (*((*v29 & *v31) + 0xF0))(v32);
      outlined init with copy of DOCGridLayout.Spec?(v28, v23, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      (*(*v33 + 112))(v23);

      outlined destroy of CharacterSet?(v28, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      if ([v2 isEditing])
      {
        *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
        v34 = [v2 viewIfLoaded];
        v35 = [v34 window];

        if (v35)
        {

          DOCBrowserContainedViewController.updateOverlayIfNeeded()(v36);
        }

        else
        {
          DOCBrowserContainedViewController.applyOverlaySearchSettings()();
        }
      }

      else
      {
        v41 = (*((*v29 & *v2) + 0xBD8))();
        v42 = v85;
        if (v41 == 3)
        {
          if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) == 1 && ((v43 = *((*MEMORY[0x277D85000] & *v2) + 0x1338), v44 = v43(), v44 >> 62) ? (v45 = __CocoaSet.count.getter(), v42 = v85) : (v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v45 >= 1) && (type metadata accessor for DOCConcreteSelectionLocation(), v46 = v43(), v42 = v85, (v47 = DOCConcreteSelectionLocation.__allocating_init(selectedNodes:)(v46)) != 0)))
          {
            v48 = v47;
            v49 = MEMORY[0x277D85000];
            v50 = (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();
            if (v50)
            {
              v51 = v50;
              (*((*v49 & *v2) + 0xA50))(v88);
              v52 = v88[3];
              outlined destroy of DOCItemCollectionConfiguration(v88);
              [v51 didSelectLocation:v48 atParentLocation:v52];

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          else if (specialized DOCItemCollectionViewController.isColumnNavigationAction(in:at:)())
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v54 = type metadata accessor for Logger();
            __swift_project_value_buffer(v54, static Logger.UI);
            v82(v16, v87, v42);
            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.debug.getter();
            v57 = os_log_type_enabled(v55, v56);
            v58 = v84;
            if (v57)
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v88[0] = v60;
              *v59 = 136315394;
              *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BE0C30, v88);
              *(v59 + 12) = 2080;
              _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
              v61 = dispatch thunk of CustomStringConvertible.description.getter();
              v63 = v62;
              v64 = *(v58 + 8);
              v64(v16, v85);
              v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v88);

              *(v59 + 14) = v65;
              v42 = v85;
              _os_log_impl(&dword_2493AC000, v55, v56, "%s %s navigation action, handling", v59, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v60, -1, -1);
              MEMORY[0x24C1FE850](v59, -1, -1);
            }

            else
            {

              v64 = *(v58 + 8);
              v64(v16, v42);
            }

            v77 = MEMORY[0x277D85000];
            v78 = v86;
            (*((*MEMORY[0x277D85000] & *v2) + 0x18A0))(v87);
            if ((*(v58 + 48))(v78, 1, v42) == 1)
            {
              outlined destroy of CharacterSet?(v78, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            }

            else
            {
              v79 = v81;
              (*(v58 + 32))(v81, v78, v42);
              if ((*((*v77 & *v2) + 0xD88))(v79, 0))
              {
                (*((*v77 & *v2) + 0x18E0))();
                v42 = v85;
                swift_unknownObjectRelease();
              }

              v64(v81, v42);
            }
          }

          else
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v66 = type metadata accessor for Logger();
            __swift_project_value_buffer(v66, static Logger.UI);
            v82(v8, v87, v42);
            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v88[0] = v70;
              *v69 = 136315394;
              *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BE0C30, v88);
              *(v69 + 12) = 2080;
              _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
              v71 = dispatch thunk of CustomStringConvertible.description.getter();
              v72 = v42;
              v73 = v71;
              v75 = v74;
              (*(v84 + 8))(v8, v72);
              v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v88);

              *(v69 + 14) = v76;
              _os_log_impl(&dword_2493AC000, v67, v68, "%s %s performPrimaryAction will handle opening", v69, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v70, -1, -1);
              MEMORY[0x24C1FE850](v69, -1, -1);
            }

            else
            {

              (*(v84 + 8))(v8, v42);
            }
          }
        }
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.UI);
      v87 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v87, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v88[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BE0C30, v88);
        _os_log_impl(&dword_2493AC000, v87, v38, "%s called while isUserInteractionEnabled=false. Ignoring", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x24C1FE850](v40, -1, -1);
        MEMORY[0x24C1FE850](v39, -1, -1);
      }

      else
      {
        v53 = v87;
      }
    }
  }
}

void specialized DOCItemCollectionViewController.collectionView(_:didDeselectItemAt:)()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1898))() & 1) == 0)
  {
    v3 = MEMORY[0x24C1FDA70]();
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v4 = [v0 viewIfLoaded];
    v5 = [v4 window];

    if (v5)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()(v6);
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }

    objc_autoreleasePoolPop(v3);
    if ((*((*v2 & *v1) + 0xBD8))() == 3 && *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) == 1)
    {
      type metadata accessor for DOCConcreteSelectionLocation();
      v7 = (*((*v2 & *v1) + 0x1338))();
      v8 = DOCConcreteSelectionLocation.__allocating_init(selectedNodes:)(v7);
      if (v8)
      {
        v12 = v8;
        if (([v1 isEditing] & 1) != 0 || (v9 = (*((*v2 & *v1) + 0xE8))()) == 0)
        {
        }

        else
        {
          v10 = v9;
          (*((*v2 & *v1) + 0xA50))(v13);
          v11 = v13[3];
          outlined destroy of DOCItemCollectionConfiguration(v13);
          [v10 didSelectLocation:v12 atParentLocation:v11];

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void *specialized DOCItemCollectionViewController.collectionView(_:canPerformAction:forItemAt:withSender:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x18A0))(a1, v10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    result = (*((*v13 & *v1) + 0xD88))(v12, 0);
    if (result)
    {
      v15 = [result isPending];
      swift_unknownObjectRelease();
      (*(v8 + 8))(v12, v7);
      return (v15 ^ 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:didUpdateFocusIn:with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v21 - v10;
  v12 = [a1 nextFocusedView];
  if (v12 && (v13 = v12, type metadata accessor for DOCItemCollectionCell(), v14 = swift_dynamicCastClass(), v13, v14))
  {
    v15 = [a1 nextFocusedIndexPath];
    if (v15)
    {
      v16 = v15;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = type metadata accessor for IndexPath();
      (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
    }

    else
    {
      v19 = type metadata accessor for IndexPath();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    }

    outlined init with take of (key: URL, value: FPItem)(v6, v11, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  else
  {
    v18 = type metadata accessor for IndexPath();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  }

  return (*((*MEMORY[0x277D85000] & *v1) + 0xC88))(v11);
}

void specialized DOCItemCollectionViewController.collectionView(_:didEndDisplaying:forItemAt:)(void *a1)
{
  v2 = v1;
  type metadata accessor for DOCItemCollectionCell();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D85000];
    v7 = *((*MEMORY[0x277D85000] & *v4) + 0x208);
    v17 = a1;
    v8 = v7();
    if (v8)
    {
      v9 = v8;
      v10 = (*((*v6 & *v8) + 0x3D0))();

      if (v10)
      {
        (*((*v6 & *v5) + 0x220))();
        v11 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
        v12 = [v11 sceneIdentifier];
        v13 = specialized static DOCInteractionManager.sharedManager(for:)(v12);

        v14 = (*((*v6 & *v13) + 0x78))();
        if (v14)
        {
          swift_getObjectType();
          if (DOCNode.isEqualTo(node:)(v14))
          {
            v15 = [v11 sceneIdentifier];
            v16 = specialized static DOCInteractionManager.sharedManager(for:)(v15);

            (*((*v6 & *v16) + 0x80))(0);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void specialized DOCItemCollectionViewController.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xEF8))())
  {
    type metadata accessor for DOCItemCollectionViewSectionHeader();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {
LABEL_12:
      type metadata accessor for DOCOutlineHeaderView();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22 = v21;
        v23 = a1;
        DOCItemCollectionViewController.updateLayout(for:at:)(v22);
      }

      return;
    }

    v5 = v4;
    v6 = a1;
    if (MEMORY[0x24C1F8130]() == 2)
    {
      v7 = IndexPath.section.getter();
    }

    else
    {
      type metadata accessor for IndexPath();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B30]);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v25[5] == v25[0])
      {
        goto LABEL_17;
      }

      v8 = dispatch thunk of Collection.subscript.read();
      v7 = *v9;
      v8(v25, 0);
    }

    v10 = (*((*v3 & *v1) + 0xD60))();
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(v10 + 16))
    {
      v24 = v6;
      v11 = (v10 + 40 * v7);
      v12 = v11[4];
      v13 = v11[5];
      v15 = v11[6];
      v14 = v11[7];
      v16 = v11[8];

      v25[0] = v12;
      v25[1] = v13;
      v25[2] = v15;
      v25[3] = v14;
      v25[4] = v16;
      v17 = *((*MEMORY[0x277D85000] & *v5) + 0x418);

      v18 = v17(v25);
      v19 = MEMORY[0x277D85000];
      if (!(*((*MEMORY[0x277D85000] & *v1) + 0xBD8))(v18))
      {
        v20 = (*(*v16 + 136))();
        (*((*v19 & *v5) + 0x458))(v20 & 1);
      }

      DOCItemCollectionViewController.updateLayout(for:at:)(v5);

      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void specialized DOCItemCollectionViewController.collectionView(_:willDisplayContextMenu:animator:)(void *a1, void *a2)
{
  v4 = [a1 contextMenuInteraction];
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x8E0))(v4);
  type metadata accessor for DOCNodeContextMenuConfiguration();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = *((*v5 & *v2) + 0x8F8);
  v24 = a2;
  v8(v7);
  if (![v2 isEditing] || (*((*v5 & *v2) + 0xBD8))())
  {

    return;
  }

  v9 = (*((*v5 & *v7) + 0x60))();
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v24;
    if (!v11)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  v11 = __CocoaSet.count.getter();
  v12 = v24;
  if (v11)
  {
LABEL_10:
    if (v11 < 1)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    v14 = *((*v5 & *v2) + 0x18D0);
    v25 = v10 & 0xC000000000000001;
    v23 = v10;
    while (1)
    {
      if (v25)
      {
        v17 = MEMORY[0x24C1FC540](v13, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      v18 = v14(v17);
      if (v18)
      {
        v19 = v18;
        ObjectType = swift_getObjectType();
        v21 = type metadata accessor for DOCItemCollectionGridCell();
        v22 = dynamic_cast_existential_1_superclass_conditional(v19, ObjectType, v21, &protocol descriptor for DOCItemCollectionGridCell_ConcreteSubclassProtocol);
        if (!v22)
        {
          swift_unknownObjectRelease();

          goto LABEL_14;
        }

        v15 = *((*MEMORY[0x277D85000] & *v22) + 0x570);
        v16 = v19;
        v15(1);
        v10 = v23;
      }

      swift_unknownObjectRelease();
LABEL_14:
      if (v11 == ++v13)
      {
        v12 = v24;
        break;
      }
    }
  }

LABEL_22:
}

void specialized DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:)(void *a1, void *a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x908))();
  v8 = v7;
  (*((*v5 & *v2) + 0x910))(0, 0);
  (*((*v5 & *v2) + 0x8E0))(0);
  (*((*v5 & *v2) + 0x8F8))(0);
  type metadata accessor for DOCNodeContextMenuConfiguration();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
LABEL_6:

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6, v8);
    return;
  }

  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v10;
  if (a2)
  {
    v12 = swift_allocObject();
    v12[2] = partial apply for closure #1 in DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:);
    v12[3] = v11;
    v12[4] = v6;
    v12[5] = v8;
    aBlock[4] = partial apply for closure #2 in DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:);
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_1042;
    v13 = _Block_copy(aBlock);
    v14 = a1;
    v15 = v2;
    swift_unknownObjectRetain();

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6, v8);

    [a2 addCompletion_];

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6, v8);
    _Block_release(v13);
    swift_unknownObjectRelease();
    return;
  }

  v17 = a1;
  closure #1 in DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:)(v2, v10);
  if (v6)
  {

    v6(v16);

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6, v8);
    goto LABEL_6;
  }
}

void partial apply for closure #1 in DOCItemCollectionViewController.collectionView(_:willPerformPreviewActionForMenuWith:animator:)()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  closure #1 in DOCItemCollectionViewController.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(v1, v2);
}

void specialized DOCItemCollectionViewController.contextMenuInteraction(_:willEndFor:animator:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x908))();
  v7 = v6;
  (*((*v4 & *v1) + 0x910))(0, 0);
  (*((*v4 & *v1) + 0x8E0))(0);
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    v14[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuInteraction(_:willEndFor:animator:);
    v14[5] = v8;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v14[3] = &block_descriptor_1018;
    v9 = _Block_copy(v14);
    swift_unknownObjectRetain();
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5, v7);

    [a1 addCompletion_];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else if (v5)
  {

    v5(v10);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5, v7);
  }

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview;
  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview);
  if (v12)
  {
    [v12 removeFromSuperview];
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5, v7);
    v13 = *(v2 + v11);
    *(v2 + v11) = 0;
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5, v7);
  }
}

void specialized DOCItemCollectionViewController.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(void *a1)
{
  if (![*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] browserViewContext])
  {
    v3 = [v1 viewIfLoaded];
    [a1 locationInView_];
    v5 = v4;
    v7 = v6;

    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview;
    v9 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview];
    if (v9)
    {
      [v9 setFrame_];
    }

    else
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
      v11 = *&v1[v8];
      *&v1[v8] = v10;
      v12 = v10;

      if (v12)
      {
        v13 = [objc_opt_self() clearColor];
        [v12 setBackgroundColor_];
      }
    }

    v14 = [v1 view];
    if (v14)
    {
      if (*&v1[v8])
      {
        v15 = v14;
        [v14 addSubview_];

        v16 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
        v17 = [objc_opt_self() clearColor];
        [v16 setBackgroundColor_];

        v18 = *&v1[v8];
        if (v18)
        {
          v19 = objc_allocWithZone(MEMORY[0x277D75B90]);
          v20 = v18;
          [v19 initWithView:v20 parameters:v16];

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

void specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v42 = a2;
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v13 = 136315138;
    v14 = [a1 displayName];
    v43 = a5;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = a3;
    v17 = a4;
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v19, &v45);
    a4 = v17;
    a3 = v16;

    *(v13 + 4) = v20;
    a5 = v43;
    _os_log_impl(&dword_2493AC000, v11, v12, "Getting current collection for item %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C1FE850](v41, -1, -1);
    v21 = v13;
    a2 = v42;
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  v22 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  swift_getObjectType();
  v23 = specialized Array<A>.contains(node:)(a1, v22);

  if (v23)
  {
    v24 = a1;
    v25 = a2;
  }

  else
  {
    swift_unknownObjectRetain();
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v29 = 138412546;
      *(v29 + 4) = v26;
      *v30 = a2;
      *(v29 + 12) = 2080;
      v31 = v26;
      v32 = [a1 displayName];
      v33 = a5;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = a3;
      v36 = a4;
      v38 = v37;

      v39 = v34;
      a5 = v33;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v45);
      a4 = v36;
      a3 = v35;

      *(v29 + 14) = v40;
      _os_log_impl(&dword_2493AC000, v27, v28, "The current collection %@ doesn't contain item %s", v29, 0x16u);
      outlined destroy of CharacterSet?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x24C1FE850](v44, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    v24 = 0;
    v25 = 0;
  }

  closure #1 in DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:)(v24, v25, a3, a4, a5);
}

{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.UI);
  swift_unknownObjectRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v12 = 136315138;
    v13 = [a1 displayName];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a2;
    v16 = a5;
    v17 = a3;
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v19, &v42);
    a3 = v17;
    a5 = v16;
    a2 = v15;

    *(v12 + 4) = v20;
    _os_log_impl(&dword_2493AC000, v10, v11, "Getting current collection for item %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x24C1FE850](v39, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  v21 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  swift_getObjectType();
  v23 = specialized Array<A>.contains(node:)(a1, v22);

  if (v23)
  {
    v24 = *((*v21 & *a2) + 0x18D0);
    v25 = a2;
    v41 = v24(a5);
    a3();
  }

  else
  {
    swift_unknownObjectRetain();
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v27, v28))
    {
      v40 = a3;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v29 = 138412546;
      *(v29 + 4) = v26;
      *v30 = a2;
      *(v29 + 12) = 2080;
      v32 = v26;
      v33 = [a1 displayName];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v42);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_2493AC000, v27, v28, "The current collection %@ doesn't contain item %s", v29, 0x16u);
      outlined destroy of CharacterSet?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C1FE850](v31, -1, -1);
      v38 = v29;
      a3 = v40;
      MEMORY[0x24C1FE850](v38, -1, -1);
    }

    (a3)(0);
  }
}

void specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, void *a2, void (*a3)(void))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v38 = a3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136315138;
    v11 = [a1 displayName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v41);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_2493AC000, v7, v8, "Getting current collection for item %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    v16 = v9;
    a3 = v38;
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  v17 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  swift_getObjectType();
  v18 = specialized Array<A>.contains(node:)(a1, v17);

  if (v18)
  {
    v19 = type metadata accessor for DOCServiceItemPopoverTrackerController();
    v20 = objc_allocWithZone(v19);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v21 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    *&v20[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_configuration] = v21;
    *&v20[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_node] = a1;
    v40.receiver = v20;
    v40.super_class = v19;
    swift_unknownObjectRetain_n();
    v22 = a2;
    v23 = v21;
    v24 = objc_msgSendSuper2(&v40, sel_init);
    a3();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    v25 = a2;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = a3;
      v30 = swift_slowAlloc();
      v41 = v30;
      *v28 = 138412546;
      *(v28 + 4) = v25;
      *v29 = a2;
      *(v28 + 12) = 2080;
      v31 = v25;
      v32 = [a1 displayName];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_2493AC000, v26, v27, "The current collection %@ doesn't contain item %s", v28, 0x16u);
      outlined destroy of CharacterSet?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v37 = v30;
      a3 = v39;
      MEMORY[0x24C1FE850](v37, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    (a3)(0);
  }
}

void specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, void *a2, void *a3, uint64_t a4, char a5, void *aBlock)
{
  v6 = aBlock;
  _Block_copy(aBlock);
  _Block_copy(v6);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v53 = a5;
    v14 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v14 = 136315138;
    v15 = [a1 displayName];
    v16 = a1;
    v17 = v6;
    v18 = a2;
    v19 = a4;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = v20;
    a4 = v19;
    a2 = v18;
    v6 = v17;
    a1 = v16;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v55);

    *(v14 + 4) = v24;
    _os_log_impl(&dword_2493AC000, v12, v13, "Getting current collection for item %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x24C1FE850](v52, -1, -1);
    v25 = v14;
    a5 = v53;
    MEMORY[0x24C1FE850](v25, -1, -1);
  }

  v26 = MEMORY[0x277D85000];
  v27 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  swift_getObjectType();
  v28 = specialized Array<A>.contains(node:)(a1, v27);

  if (v28)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = v6;
    _Block_copy(v6);
    _Block_copy(v6);
    v30 = a2;
    v31 = [a3 traitCollection];
    v32 = [v31 preferredContentSizeCategory];

    LOBYTE(v31) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v33 = (v31 & 1) != 0 && (*((*v26 & *a3) + 0xBD8))();
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIView?, @unowned UIBezierPath?) -> ();
    *(v50 + 24) = v29;
    v51 = *((*v26 & *v30) + 0x17F8);

    v51(a4, v33, a5 & 1, 0, partial apply for closure #1 in closure #2 in DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:), v50);
  }

  else
  {
    swift_unknownObjectRetain();
    v34 = a2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55 = v39;
      *v37 = 138412546;
      *(v37 + 4) = v34;
      *v38 = a2;
      *(v37 + 12) = 2080;
      v40 = v34;
      v41 = [a1 displayName];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v55);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_2493AC000, v35, v36, "The current collection %@ doesn't contain item %s", v37, 0x16u);
      outlined destroy of CharacterSet?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    _Block_copy(v6);
    _Block_copy(v6);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = v49;
      *v48 = 136315138;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BE0900, &v55);
      _os_log_impl(&dword_2493AC000, v46, v47, "[Presentation Error] %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    (*(v6 + 2))(v6, 0, 0);
    _Block_release(v6);
  }

  _Block_release(v6);
  _Block_release(v6);

  _Block_release(v6);
}

double specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(id a1, void *a2, void (*a3)(void, void), uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.UI);
  swift_unknownObjectRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v55 = a1;
    v15 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v57 = v53;
    *v15 = 136315138;
    v16 = [v55 displayName];
    v17 = a7;
    v18 = a6;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = a4;
    v22 = v21;

    v23 = v19;
    a6 = v18;
    a7 = v17;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v57);
    a4 = v20;

    *(v15 + 4) = v24;
    _os_log_impl(&dword_2493AC000, v13, v14, "Getting current collection for item %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x24C1FE850](v53, -1, -1);
    v25 = v15;
    a1 = v55;
    MEMORY[0x24C1FE850](v25, -1, -1);
  }

  v26 = MEMORY[0x277D85000];
  v27 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  swift_getObjectType();
  v28 = specialized Array<A>.contains(node:)(a1, v27);

  if (v28)
  {
    v29 = a2;
    v30 = [a5 traitCollection];
    v31 = [v30 preferredContentSizeCategory];

    LOBYTE(v30) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v32 = (v30 & 1) != 0 && (*((*v26 & *a5) + 0xBD8))();
    v51 = swift_allocObject();
    *(v51 + 16) = a3;
    *(v51 + 24) = a4;
    v52 = *((*v26 & *v29) + 0x17F8);

    v52(a6, v32, a7 & 1, 0, closure #1 in closure #2 in DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)partial apply, v51);
  }

  else
  {
    swift_unknownObjectRetain();
    v33 = a1;
    v34 = a2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v57 = v39;
      *v37 = 138412546;
      *(v37 + 4) = v34;
      *v38 = a2;
      *(v37 + 12) = 2080;
      v40 = v34;
      v41 = [v33 displayName];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v57);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_2493AC000, v35, v36, "The current collection %@ doesn't contain item %s", v37, 0x16u);
      outlined destroy of CharacterSet?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57 = v49;
      *v48 = 136315138;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BE0900, &v57);
      _os_log_impl(&dword_2493AC000, v46, v47, "[Presentation Error] %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    a3(0, 0);
  }

  return result;
}

void specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v108 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v101 = &v98[-v11];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v100 = &v98[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v105 = v19;
  v106 = &v98[-v18];
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v98[-v22];
  v24 = swift_allocObject();
  v103 = a3;
  v104 = a4;
  *(v24 + 2) = a3;
  *(v24 + 3) = a4;
  v110 = v24;
  *(v24 + 4) = a5;
  v25 = one-time initialization token for UI;

  v102 = a5;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Logger.UI);
  v28 = *(v13 + 16);
  v112 = v13 + 16;
  v113 = a1;
  v111 = v28;
  v28(v23, a1, v12);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v109 = v13;
  v107 = v12;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = v27;
    v34 = v12;
    v35 = swift_slowAlloc();
    v114 = v35;
    *v32 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = v34;
    v27 = v33;
    v40 = *(v13 + 8);
    v40(v23, v39);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v114);

    *(v32 + 4) = v41;
    _os_log_impl(&dword_2493AC000, v29, v30, "Getting current collection for url %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v32, -1, -1);
  }

  else
  {

    v40 = *(v13 + 8);
    v42 = (v40)(v23, v12);
  }

  v43 = v108;
  v44 = MEMORY[0x277D85000];
  v45 = *((*MEMORY[0x277D85000] & *v108) + 0xA80);
  v46 = (v45)(v42);
  v47 = v113;
  if (*(v46 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v113), (v49 & 1) != 0))
  {
    v106 = v40;
    v50 = v27;
    v51 = *(*(v46 + 56) + 8 * v48);
    swift_unknownObjectRetain();

    v52 = v100;
    v53 = v107;
    v111(v100, v47, v107);
    swift_unknownObjectRetain();
    v105 = v50;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v114 = v57;
      *v56 = 136315394;
      v58 = v52;
      v59 = [v51 displayName];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v55;
      v61 = v60;
      v63 = v62;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v114);

      *(v56 + 4) = v64;
      *(v56 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v68 = v109;
      v69 = v58;
      v44 = MEMORY[0x277D85000];
      (v106)(v69, v53);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v114);

      *(v56 + 14) = v70;
      _os_log_impl(&dword_2493AC000, v54, v99, "Getting item from the cache item %s url %s", v56, 0x16u);
      swift_arrayDestroy();
      v71 = v57;
      v47 = v113;
      MEMORY[0x24C1FE850](v71, -1, -1);
      MEMORY[0x24C1FE850](v56, -1, -1);
    }

    else
    {

      v68 = v109;
      (v106)(v52, v53);
    }

    v92 = v101;
    v111(v101, v47, v53);
    (*(v68 + 56))(v92, 0, 1, v53);
    v93 = (*((*v44 & *v43) + 0xDA0))(v51, v92);
    outlined destroy of CharacterSet?(v92, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v93)
    {
      v94 = swift_unknownObjectRetain();
      closure #1 in DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:)(v94, v43, v103, v104, v102);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
    }

    else
    {
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_2493AC000, v95, v96, "Item is not part of the current collection", v97, 2u);
        MEMORY[0x24C1FE850](v97, -1, -1);
      }

      closure #1 in DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:)(0, 0, v103, v104, v102);

      swift_unknownObjectRelease();
    }
  }

  else
  {

    v72 = v43;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v114 = v76;
      *v75 = 136315138;
      v45();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v77 = v107;
      v78 = Dictionary.description.getter();
      v80 = v79;

      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v114);

      *(v75 + 4) = v81;
      _os_log_impl(&dword_2493AC000, v73, v74, "Failed to get the item from the cache: %s trying to get the item from the URL", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x24C1FE850](v76, -1, -1);
      MEMORY[0x24C1FE850](v75, -1, -1);
    }

    else
    {

      v77 = v107;
    }

    v82 = [objc_opt_self() defaultManager];
    v83 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v84 = v106;
    v85 = v113;
    v111(v106, v113, v77);
    v86 = v109;
    v87 = (*(v109 + 80) + 16) & ~*(v109 + 80);
    v88 = (v105 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    (*(v86 + 32))(v89 + v87, v84, v77);
    v90 = (v89 + v88);
    v91 = v110;
    *v90 = partial apply for closure #1 in DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:);
    v90[1] = v91;
    *(v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8)) = v83;

    specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v85, closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)partial apply, v89);
  }
}

void specialized DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)(void *a1, int a2, void *a3, void *a4)
{
  v57 = a3;
  v52 = a2;
  v54 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5, v6);
  v56 = &v51[-v7];
  v53 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v9);
  v11 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v51[-v19];
  v21 = swift_allocBox();
  v23 = v22;
  v24 = type metadata accessor for URL();
  v25 = *(*(v24 - 8) + 56);
  v55 = v23;
  v25(v23, 1, 1, v24);
  v59 = a4;
  _Block_copy(a4);
  v26 = dispatch_semaphore_create(0);
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  *(v27 + 24) = v26;
  aBlock[4] = closure #1 in DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)partial apply;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_834;
  v28 = _Block_copy(aBlock);
  v58 = v21;

  v29 = v26;

  v30 = v54;
  [v54 fetchURL_];
  _Block_release(v28);
  static DispatchTime.now()();
  *v11 = 100;
  v31 = v53;
  (*(v8 + 104))(v11, *MEMORY[0x277D85178], v53);
  MEMORY[0x24C1FAA90](v16, v11);
  (*(v8 + 8))(v11, v31);
  v32 = *(v13 + 8);
  v32(v16, v12);
  v33 = v29;
  MEMORY[0x24C1FBB60](v20);
  v32(v20, v12);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDF020, aBlock);
      _os_log_impl(&dword_2493AC000, v35, v36, "[Presentation Error] %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }
  }

  v39 = v55;
  swift_beginAccess();
  v40 = v56;
  outlined init with copy of DOCGridLayout.Spec?(v39, v56, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v41 = v57;
  v42 = (*((*MEMORY[0x277D85000] & *v57) + 0xDA0))(v30, v40);
  outlined destroy of CharacterSet?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v42)
  {
    v43 = v59;
    _Block_copy(v59);
    v44 = v41;
    v45 = swift_unknownObjectRetain();
    specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v45, v44, v44, v42, v52 & 1, v43);
    _Block_release(v43);

    swift_unknownObjectRelease_n();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.UI);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v49 = 136315138;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BDEFE0, &v60);
      _os_log_impl(&dword_2493AC000, v47, v48, "[Presentation Error] %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C1FE850](v50, -1, -1);
      MEMORY[0x24C1FE850](v49, -1, -1);
    }

    v43 = v59;
    (*(v59 + 2))(v59, 0, 0);
  }

  _Block_release(v43);
}

double specialized DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(void *a1, uint64_t a2, void *a3, void (*a4)(void, void, void), uint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v107 = a2;
  v106 = type metadata accessor for IndexPath();
  v108 = *(v106 - 8);
  v15 = *(v108 + 64);
  MEMORY[0x28223BE20](v106, v16);
  v104 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v103 = &v96 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v98 = &v96 - v22;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85000];
  v25 = *MEMORY[0x277D85000] & *a3;
  v23[2] = a4;
  v23[3] = a5;
  v99 = a5;
  v23[4] = a6;
  v23[5] = a7;
  v105 = v23;
  v23[6] = a8;
  v26 = *(v25 + 6352);
  v102 = a4;
  swift_unknownObjectRetain();
  v100 = a6;

  v27 = a7;
  v101 = a8;

  v28 = v26(a1);
  v29 = a1;
  if (v28)
  {
    v30 = v28;
    if ((*((*v24 & *a3) + 0xF70))(a1))
    {
      v31 = (*((*v24 & *a3) + 0x1010))();
      [v30 frame];
      v32 = [v31 _isRectFullyVisible_];

      if (v32)
      {
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        v34 = __swift_project_value_buffer(v33, static Logger.Rename);
        v35 = v108;
        v36 = v98;
        v37 = v106;
        (*(v108 + 16))(v98, v107, v106);
        swift_unknownObjectRetain();
        v107 = v34;
        v38 = Logger.logObject.getter();
        LODWORD(v34) = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        LODWORD(v104) = v34;
        if (os_log_type_enabled(v38, v34))
        {
          v39 = swift_slowAlloc();
          v103 = v27;
          v40 = v39;
          v97 = swift_slowAlloc();
          v109 = v97;
          *v40 = 136315650;
          *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v109);
          *(v40 + 12) = 2080;
          v41 = [v29 description];
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v36;
          v45 = v44;

          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, &v109);

          *(v40 + 14) = v46;
          *(v40 + 22) = 2080;
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v48;
          (*(v35 + 8))(v43, v37);
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v109);

          *(v40 + 24) = v50;
          _os_log_impl(&dword_2493AC000, v38, v104, "%s: Immediately found cell for node: %s indexPath: %s", v40, 0x20u);
          v51 = v97;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v51, -1, -1);
          v52 = v40;
          v27 = v103;
          MEMORY[0x24C1FE850](v52, -1, -1);
        }

        else
        {

          (*(v35 + 8))(v36, v37);
        }

        v82 = v99;
        v83 = v30;
        v84 = v100;

        v85 = v83;
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v109 = v89;
          *v88 = 136315394;
          *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v109);
          *(v88 + 12) = 2080;
          *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, &v109);
          _os_log_impl(&dword_2493AC000, v86, v87, "%s > %s: Beginning rename steps starting with validateNodeSelectionAndPerformDidPickIfNeeded", v88, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v89, -1, -1);
          MEMORY[0x24C1FE850](v88, -1, -1);
        }

        v90 = swift_allocObject();
        v90[2] = v82;
        v90[3] = v84;
        v92 = v101;
        v91 = v102;
        v90[4] = v27;
        v90[5] = v91;
        v90[6] = v92;
        v90[7] = v85;
        v93 = *((*MEMORY[0x277D85000] & *v27) + 0x18E0);
        swift_unknownObjectRetain();

        v94 = v27;

        v95 = v85;
        v93(v91, 0, partial apply for closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:), v90);

        goto LABEL_15;
      }
    }
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.Rename);
  v54 = v108;
  v55 = v103;
  v56 = v106;
  v102 = *(v108 + 16);
  v102(v103, v107, v106);
  swift_unknownObjectRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v109 = v101;
    *v59 = 136315650;
    *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v109);
    *(v59 + 12) = 2080;
    v60 = [v29 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v29;
    v62 = v61;
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v109);
    v56 = v106;

    *(v59 + 14) = v65;
    *(v59 + 22) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v67;
    v69 = v55;
    v70 = v100;
    (*(v108 + 8))(v69, v56);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v109);

    *(v59 + 24) = v71;
    _os_log_impl(&dword_2493AC000, v57, v58, "%s: Did not immediately find cell for node: %s indexPath: %s. Scrolling index path on screen", v59, 0x20u);
    v72 = v101;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v72, -1, -1);
    v73 = v59;
    v54 = v108;
    MEMORY[0x24C1FE850](v73, -1, -1);
  }

  else
  {

    (*(v54 + 8))(v55, v56);
    v70 = v29;
  }

  v74 = v104;
  v75 = v107;
  v102(v104, v107, v56);
  v76 = (*(v54 + 80) + 48) & ~*(v54 + 80);
  v77 = swift_allocObject();
  *(v77 + 2) = a3;
  *(v77 + 3) = v70;
  v78 = v105;
  *(v77 + 4) = partial apply for closure #1 in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:);
  *(v77 + 5) = v78;
  (*(v54 + 32))(&v77[v76], v74, v56);
  v79 = *((*MEMORY[0x277D85000] & *a3) + 0x18D8);
  swift_unknownObjectRetain();
  v80 = a3;

  v79(v75, partial apply for closure #1 in DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:), v77);

LABEL_15:

  return result;
}

void specialized DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(void *a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t, uint64_t), unint64_t a5, void *a6, void *a7)
{
  v89 = a2;
  v13 = type metadata accessor for IndexPath();
  v88 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v86 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v81 - v18;
  v87 = v20;
  MEMORY[0x28223BE20](v21, v22);
  v82 = &v81 - v23;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85000];
  v26 = *MEMORY[0x277D85000] & *a3;
  v84 = a4;
  v85 = a5;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v27 = *(v26 + 6352);
  v28 = a7;
  v29 = v25;

  v83 = a6;
  swift_unknownObjectRetain();
  v30 = v27(a1);
  v31 = a1;
  if (v30)
  {
    v32 = v30;
    if ((*((*v29 & *a3) + 0xF70))(v31))
    {
      v33 = (*((*v29 & *a3) + 0x1010))();
      [v32 frame];
      v34 = [v33 _isRectFullyVisible_];

      if (v34)
      {
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Logger.Rename);
        v36 = v88;
        v37 = v82;
        (*(v88 + 16))(v82, v89, v13);
        swift_unknownObjectRetain();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v87 = v13;
          v89 = v41;
          v90 = v41;
          *v40 = 136315650;
          *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v90);
          *(v40 + 12) = 2080;
          v42 = [v31 description];
          LODWORD(v86) = v39;
          v43 = v42;
          v44 = v37;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v90);

          *(v40 + 14) = v48;
          *(v40 + 22) = 2080;
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
          v49 = v87;
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          (*(v36 + 8))(v44, v49);
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v90);

          *(v40 + 24) = v53;
          _os_log_impl(&dword_2493AC000, v38, v86, "%s: Immediately found cell for node: %s indexPath: %s", v40, 0x20u);
          v54 = v89;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v54, -1, -1);
          MEMORY[0x24C1FE850](v40, -1, -1);
        }

        else
        {

          (*(v36 + 8))(v37, v13);
        }

        swift_getObjectType();
        v80 = v32;
        specialized startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(v28, v80, v84, v85, v83);

        return;
      }
    }
  }

  v85 = v24;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.Rename);
  v56 = v88;
  v84 = *(v88 + 16);
  v84(v19, v89, v13);
  swift_unknownObjectRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v90 = v83;
    *v59 = 136315650;
    *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v90);
    *(v59 + 12) = 2080;
    v60 = [v31 description];
    LODWORD(v82) = v58;
    v61 = v60;
    v62 = v31;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v90);

    *(v59 + 14) = v66;
    *(v59 + 22) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    v70 = v88;
    (*(v88 + 8))(v19, v13);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v90);

    *(v59 + 24) = v71;
    _os_log_impl(&dword_2493AC000, v57, v82, "%s: Did not immediately find cell for node: %s indexPath: %s. Scrolling index path on screen", v59, 0x20u);
    v72 = v83;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v72, -1, -1);
    MEMORY[0x24C1FE850](v59, -1, -1);
  }

  else
  {

    (*(v56 + 8))(v19, v13);
    v70 = v56;
    v62 = v31;
  }

  v73 = v86;
  v74 = v89;
  v84(v86, v89, v13);
  v75 = (*(v70 + 80) + 48) & ~*(v70 + 80);
  v76 = swift_allocObject();
  *(v76 + 2) = a3;
  *(v76 + 3) = v62;
  v77 = v85;
  *(v76 + 4) = partial apply for closure #1 in otherViewModesRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:);
  *(v76 + 5) = v77;
  (*(v70 + 32))(&v76[v75], v73, v13);
  v78 = *((*MEMORY[0x277D85000] & *a3) + 0x18D8);
  swift_unknownObjectRetain();
  v79 = a3;

  v78(v74, closure #1 in DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)partial apply, v76);
}

double specialized DOCItemCollectionViewController.move(nodes:to:completion:)(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v75 = a3;
  v84 = a1;
  v82 = type metadata accessor for DOCOperationItem(0);
  v14 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v15);
  v17 = (&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v19);
  v73 = &v72 - v20;
  v21 = swift_allocObject();
  v79 = a4;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v81 = v21;
  v21[6] = a8;
  v22 = *MEMORY[0x277CC6028];
  v80 = a5;

  v78 = a6;
  v77 = a7;
  v76 = a8;
  v74 = a2;
  if (![a2 canPerform_])
  {
    goto LABEL_37;
  }

  v23 = v84;
  v72 = v84 >> 62;
  if (!(v84 >> 62))
  {
    v83 = v84 & 0xFFFFFFFFFFFFFF8;
    v24 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      v25 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

LABEL_37:
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.Rename);
    v58 = v80;

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();

    v61 = os_log_type_enabled(v59, v60);
    v62 = v79;
    if (v61)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v85 = v64;
      *v63 = 136315650;
      *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v58, &v85);
      *(v63 + 12) = 2080;
      *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, &v85);
      *(v63 + 22) = 1024;
      *(v63 + 24) = 0;
      _os_log_impl(&dword_2493AC000, v59, v60, "%s > %s: move success finished with success: %{BOOL}d. Starting rename", v63, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v64, -1, -1);
      MEMORY[0x24C1FE850](v63, -1, -1);
    }

    v65 = swift_allocObject();
    v65[2] = v62;
    v65[3] = v58;
    v67 = v77;
    v66 = v78;
    v65[4] = v78;
    v65[5] = v67;
    v68 = v76;
    v65[6] = v76;

    v69 = v66;
    v70 = v67;
    v71 = v68;
    DOCRunInMainThread(_:)();

    return result;
  }

LABEL_35:
  v83 = v23 & 0xFFFFFFFFFFFFFF8;
  v56 = __CocoaSet.count.getter();
  if (v56 < 1)
  {
    goto LABEL_37;
  }

  v24 = v56;
  v25 = __CocoaSet.count.getter();
LABEL_5:
  v26 = 0;
  v27 = v84 & 0xC000000000000001;
  v28 = (v84 + 32);
  v29 = *MEMORY[0x277CC6048];
  while (v25 != v26)
  {
    if (v27)
    {
      v30 = MEMORY[0x24C1FC540](v26, v84);
      if (__OFADD__(v26, 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = v84;
      if (v26 >= *(v83 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v30 = *(v84 + 8 * v26 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v26, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    v31 = [v30 canPerform_];
    swift_unknownObjectRelease();
    ++v26;
    if ((v31 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v85 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
  v32 = v85;
  if (v27)
  {
    v33 = 0;
    v34 = v84;
    do
    {
      *v17 = MEMORY[0x24C1FC540](v33, v34);
      swift_storeEnumTagMultiPayload();
      v85 = v32;
      v36 = *(v32 + 16);
      v35 = *(v32 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v32 = v85;
      }

      ++v33;
      *(v32 + 16) = v36 + 1;
      outlined init with take of ScrollPositionInfo.ItemOffset(v17, v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v36, type metadata accessor for DOCOperationItem);
    }

    while (v24 != v33);
  }

  else
  {
    v37 = v73;
    do
    {
      *v37 = *v28;
      swift_storeEnumTagMultiPayload();
      v85 = v32;
      v38 = *(v32 + 16);
      v39 = *(v32 + 24);
      swift_unknownObjectRetain();
      if (v38 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v38 + 1, 1);
        v32 = v85;
      }

      *(v32 + 16) = v38 + 1;
      outlined init with take of ScrollPositionInfo.ItemOffset(v37, v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38, type metadata accessor for DOCOperationItem);
      ++v28;
      --v24;
    }

    while (v24);
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.UI);

  v41 = v74;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v85 = v45;
    *v44 = 136315906;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BE0F20, &v85);
    *(v44 + 12) = 2048;
    if (v72)
    {
      *(v44 + 14) = __CocoaSet.count.getter();
      *(v44 + 22) = 2048;
      v46 = __CocoaSet.count.getter();
    }

    else
    {
      v46 = *(v83 + 16);
      *(v44 + 14) = v46;
      *(v44 + 22) = 2048;
    }

    *(v44 + 24) = v46;

    *(v44 + 32) = 2080;
    v47 = [v41 displayName];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v85);

    *(v44 + 34) = v51;
    _os_log_impl(&dword_2493AC000, v42, v43, "%s Requested to move %ld nodes. Moving %ld eligible to newly created folder: %s", v44, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v45, -1, -1);
    MEMORY[0x24C1FE850](v44, -1, -1);
  }

  else
  {
  }

  v52 = [objc_opt_self() defaultManager];
  v53 = swift_allocObject();
  v54 = v81;
  *(v53 + 16) = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:);
  *(v53 + 24) = v54;

  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(0, v32, v41, 1, 1, 0, v75, closure #3 in DOCItemCollectionViewController.move(nodes:to:completion:)partial apply, v53);

  return result;
}

void specialized DOCItemCollectionViewController.cell(_:didSpringLoadWith:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - v14;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v26 - v19;
  if (([v1 isEditing] & 1) == 0)
  {
    v21 = MEMORY[0x277D85000];
    v22 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))();
    v23 = [v22 indexPathForCell_];

    if (v23)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = *(v8 + 32);
      v24(v20, v15, v7);
      (*((*v21 & *v1) + 0x18A0))(v20);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        (*(v8 + 8))(v20, v7);
        outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      else
      {
        v24(v11, v6, v7);
        if ((*((*v21 & *v1) + 0xD88))(v11, 0))
        {
          (*((*v21 & *v1) + 0x18E0))();
          swift_unknownObjectRelease();
        }

        v25 = *(v8 + 8);
        v25(v11, v7);
        v25(v20, v7);
      }
    }
  }
}

uint64_t specialized DOCItemCollectionViewController.adaptivePresentationStyle(for:traitCollection:)(void *a1)
{
  v1 = [a1 presentedViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (v1)
  {
    if (Strong)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
      v4 = static NSObject.== infix(_:_:)();

      if ((v4 & 1) == 0)
      {
        return -2;
      }

      return -1;
    }

    v3 = v1;
  }

  else if (!Strong)
  {
    return -1;
  }

  return -2;
}

unint64_t lazy protocol witness table accessor for type DOCItemHierarchyEvent and conformance DOCItemHierarchyEvent()
{
  result = lazy protocol witness table cache variable for type DOCItemHierarchyEvent and conformance DOCItemHierarchyEvent;
  if (!lazy protocol witness table cache variable for type DOCItemHierarchyEvent and conformance DOCItemHierarchyEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemHierarchyEvent and conformance DOCItemHierarchyEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionRowColumn and conformance DOCItemCollectionRowColumn()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionRowColumn and conformance DOCItemCollectionRowColumn;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionRowColumn and conformance DOCItemCollectionRowColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionRowColumn and conformance DOCItemCollectionRowColumn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionViewController.DOCMultiSelectActionStatus and conformance DOCItemCollectionViewController.DOCMultiSelectActionStatus()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCMultiSelectActionStatus and conformance DOCItemCollectionViewController.DOCMultiSelectActionStatus;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCMultiSelectActionStatus and conformance DOCItemCollectionViewController.DOCMultiSelectActionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCMultiSelectActionStatus and conformance DOCItemCollectionViewController.DOCMultiSelectActionStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionViewController.RestorableSettingsCacheKey and conformance DOCItemCollectionViewController.RestorableSettingsCacheKey()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionViewController.RestorableSettingsCacheKey and conformance DOCItemCollectionViewController.RestorableSettingsCacheKey;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionViewController.RestorableSettingsCacheKey and conformance DOCItemCollectionViewController.RestorableSettingsCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionViewController.RestorableSettingsCacheKey and conformance DOCItemCollectionViewController.RestorableSettingsCacheKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionViewController.DOCItemCollectionCellType and conformance DOCItemCollectionViewController.DOCItemCollectionCellType()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCItemCollectionCellType and conformance DOCItemCollectionViewController.DOCItemCollectionCellType;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCItemCollectionCellType and conformance DOCItemCollectionViewController.DOCItemCollectionCellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCItemCollectionCellType and conformance DOCItemCollectionViewController.DOCItemCollectionCellType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionViewController.DisplayInfoCoordinateSpace and conformance DOCItemCollectionViewController.DisplayInfoCoordinateSpace()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionViewController.DisplayInfoCoordinateSpace and conformance DOCItemCollectionViewController.DisplayInfoCoordinateSpace;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionViewController.DisplayInfoCoordinateSpace and conformance DOCItemCollectionViewController.DisplayInfoCoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionViewController.DisplayInfoCoordinateSpace and conformance DOCItemCollectionViewController.DisplayInfoCoordinateSpace);
  }

  return result;
}

void type metadata completion function for DOCItemCollectionViewController(uint64_t a1)
{
  type metadata accessor for IndexPath?(319, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x277CC9AF8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for IndexPath?(319, &lazy cache variable for type metadata for UICollectionLayoutListConfiguration?, MEMORY[0x277D74DB0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for IndexPath?(319, &lazy cache variable for type metadata for ScrollPositionInfo?, type metadata accessor for ScrollPositionInfo);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for IndexPath?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for DOCItemCollectionViewController.NextReloadPendingValues(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionViewController.TableLayoutSidebarPlainAppearanceMetrics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionViewController.TableLayoutSidebarPlainAppearanceMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionViewController.RestorableConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for DOCItemCollectionViewController.RestorableConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for DOCItemCollectionViewController.PendingNodeContext(uint64_t a1)
{
  type metadata accessor for IndexPath?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionViewController.DiffableReloadType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for DOCItemCollectionViewController.DiffableReloadType(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_WORD *destructiveInjectEnumTag for DOCItemCollectionViewController.DiffableReloadType(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t dispatch thunk of DOCItemCollectionViewControllerInteractionDelegate.itemCollectionViewController(_:willSelectItemAt:cellFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  v6 = *(a3 + 32);
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v10 = v6;
  return v5(a1, a2, v9, a4);
}

uint64_t dispatch thunk of DOCItemCollectionViewControllerInteractionDelegate.itemCollectionViewController(_:didFocusItemAt:cellFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 24);
  v6 = *(a3 + 32);
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v10 = v6;
  return v5(a1, a2, v9, a4);
}

uint64_t type metadata completion function for ScrollPositionInfo.ItemOffset(uint64_t a1)
{
  result = type metadata accessor for DOCNode();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for IndexPath();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for DOCNode()
{
  result = lazy cache variable for type metadata for DOCNode;
  if (!lazy cache variable for type metadata for DOCNode)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DOCNode);
  }

  return result;
}

void type metadata completion function for RestorableSettings(uint64_t a1)
{
  type metadata accessor for ScrollPositionInfo(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RestorableSearchInfo?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for RestorableSearchInfo?()
{
  if (!lazy cache variable for type metadata for RestorableSearchInfo?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RestorableSearchInfo?);
    }
  }
}

uint64_t getEnumTagSinglePayload for RestorableSearchInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for RestorableSearchInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for ScrollPositionInfo(uint64_t a1)
{
  type metadata accessor for ScrollPositionInfo.ItemOffset(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [DOCCollectionSection : ScrollPositionInfo.ItemOffset](319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection()
{
  result = lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection;
  if (!lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection;
  if (!lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection);
  }

  return result;
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.applyNavBarHidden(_:to:animated:)()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 0;
  return (*((*MEMORY[0x277D85000] & *v1) + 0xF60))();
}

double outlined consume of DOCCollectionSection?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

double outlined copy of DOCCollectionSection?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5NeverOGMd, &_sScCySo6FPItemCSgs5NeverOGMR);

  return closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:)(a1);
}

uint64_t outlined assign with copy of IndexPath?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

double partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.getPopoverTracker(for:completionBlock:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v2, v1, v3);

  return result;
}

uint64_t objectdestroy_292Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

double partial apply for closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(a1, a2, (v2 + v6), v10, v11, v12);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v0 + v2, v5, v6, v8, v9);
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.contextMenuInteraction(_:willEndFor:animator:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return specialized closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(v2, v3, v4);
}

void *partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:)()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t partial apply for closure #2 in DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:)()
{
  v1 = *(v0 + 32);
  result = (*(v0 + 16))();
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroy_1059Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void partial apply for closure #1 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  closure #1 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(a1, a2, v6, v7, v8, v9, v10, v11);
}

void partial apply for closure #1 in closure #1 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v1 deselectItemAtIndexPath:isa animated:1];
}

uint64_t objectdestroy_1085Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_242Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + v5;
  swift_unknownObjectRelease();
  if (*(v0 + v5 + 8))
  {
  }

  if (*(v6 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 73, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v8 + 72);

  return closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(v3, v4, v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t partial apply for closure #3 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  swift_beginAccess();
  *(v1 + 16) = 1;
  return v2(v3);
}

uint64_t objectdestroy_981Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void partial apply for specialized closure #1 in _NativeSet.isSubset<A>(of:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  specialized closure #1 in _NativeSet.isSubset<A>(of:)(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = v5 & 1;
  }
}

uint64_t objectdestroy_129Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

void partial apply for closure #1 in closure #1 in DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()(v0 + v2, v4, v5);
}

uint64_t objectdestroy_914Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t objectdestroy_1265Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_1245Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_1242Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void partial apply for closure #1 in DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  closure #1 in DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_1278Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.viewDidLoad()()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in DOCItemCollectionViewController.viewDidLoad()(v0 + v2, v3);
}

uint64_t partial apply for closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #2 in closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation) = 0;

  return (*((*MEMORY[0x277D85000] & *v2) + 0x178))();
}

uint64_t objectdestroy_81Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.setCurrentPrimaryEntity(with:)(uint64_t a1)
{
  v4 = *(type metadata accessor for FINodeEntity(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCItemCollectionViewController.setCurrentPrimaryEntity(with:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_316Tm(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t outlined assign with take of IndexPath?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id partial apply for closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];
  [v1 setAlpha_];

  return [v1 layoutBelowIfNeeded];
}

uint64_t objectdestroy_148Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_32Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_22Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t type metadata instantiation function for SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t getEnumTagSinglePayload for SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UIButton.Configuration.configureWithZeroInsetsIfAllowed()()
{

  return UIButton.Configuration.contentInsets.setter();
}

void AttributedString.init(_:textStyle:compatibleWith:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v6 - 8, v7);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  [objc_opt_self() preferredFontForTextStyle:a3 compatibleWithTraitCollection:a4];
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  AttributedString.subscript.setter();
}

uint64_t static UIButton.Configuration.plainGazeable(commonSetup:whenStandard:whenGazeable:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = objc_opt_self();

  static UIButton.Configuration.borderless()();
  a1(a3);

  return a2(a3);
}

uint64_t UIButton.Configuration.configureWithZeroCornerRadiusIfAllowed()()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];

  (*(v1 + 104))(v4, *MEMORY[0x277D74FC0], v0);
  UIButton.Configuration.cornerStyle.setter();
  v5 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  return v5(v7, 0);
}

uint64_t static UIButton.Configuration.plainNonGazeable(commonSetup:whenStandard:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  static UIButton.Configuration.borderless()();
  a1(a3);
  return a2(a3);
}

uint64_t UIButton.init(configuration:doc_primaryActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  (*(v7 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  type metadata accessor for UIAction();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v12 = UIButton.init(configuration:primaryAction:)();

  (*(v7 + 8))(a1, v6);
  return v12;
}

unint64_t type metadata accessor for UIAction()
{
  result = lazy cache variable for type metadata for UIAction;
  if (!lazy cache variable for type metadata for UIAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIAction);
  }

  return result;
}

id @objc UIButton.doc_primaryAction.getter(void *a1)
{
  v1 = a1;
  v2 = UIButton.doc_primaryAction.getter();

  return v2;
}

id UIButton.doc_primaryAction.getter()
{
  v3 = MEMORY[0x277D84F90];
  UIControl.enumerateEventHandlers(_:)();
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x24C1FC540](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(v3 + 32);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

void @objc UIButton.doc_primaryAction.setter(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UIButton.doc_primaryAction.setter(a3);
}

void UIButton.doc_primaryAction.setter(void *a1)
{
  v8 = MEMORY[0x277D84F90];
  UIControl.enumerateEventHandlers(_:)();
  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](v4, v8);
      }

      else
      {
        if (v4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v8 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v1 removeAction:v5 forControlEvents:0x2000];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  if (a1)
  {
    [v1 addAction:a1 forControlEvents:0x2000];
  }
}

void *closure #1 in UIButton._allPrimaryActions.getter(void *result, uint64_t a2, __int16 a3, uint64_t a4, void *a5)
{
  if ((a3 & 0x2000) != 0 && result)
  {
    v6 = result;
    MEMORY[0x24C1FB090]();
    if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return result;
}

uint64_t static UIButtonConfiguration.plainGazeableConfiguration()()
{

  return static UIButton.Configuration.borderless()();
}

Class @objc static UIButtonConfiguration.plainGazeableConfiguration()()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  static UIButton.Configuration.borderless()();
  v5.super.isa = UIButton.Configuration._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);

  return v5.super.isa;
}

Class @objc static UIButtonConfiguration.plainNonGazeableConfiguration()()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.borderless()();
  v5.super.isa = UIButton.Configuration._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);

  return v5.super.isa;
}

Swift::Void __swiftcall UIButtonConfiguration.configureWithZeroInsetsIfAllowed()()
{
  v1 = *MEMORY[0x277D75060];
  v2 = *(MEMORY[0x277D75060] + 8);
  v3 = *(MEMORY[0x277D75060] + 16);
  v4 = *(MEMORY[0x277D75060] + 24);

  [v0 setContentInsets_];
}

void @objc UIButtonConfiguration.configureWithZeroInsetsIfAllowed()(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;

  [v3 setContentInsets_];
}

uint64_t AttributedString.init(_:font:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v3 - 8, v4);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  return AttributedString.subscript.setter();
}

void *DOCTrashOperation.__allocating_init(items:undoManager:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager] = a2;
  type metadata accessor for FPItem();
  v5 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11.receiver = v4;
  v11.super_class = v2;
  v7 = objc_msgSendSuper2(&v11, sel_initWithItems_, isa);

  v8 = *((*MEMORY[0x277D85000] & *v7) + 0x98);
  v9 = v7;
  v8();

  return v9;
}

void *DOCTrashOperation.sourceParentFolderItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCTrashOperation.sourceParentFolderItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCTrashOperation.init(items:undoManager:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager] = a2;
  type metadata accessor for FPItem();
  v4 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10.receiver = v2;
  v10.super_class = type metadata accessor for DOCTrashOperation();
  v6 = objc_msgSendSuper2(&v10, sel_initWithItems_, isa);

  v7 = *((*MEMORY[0x277D85000] & *v6) + 0x98);
  v8 = v6;
  v7();

  return v8;
}

Swift::Void __swiftcall DOCTrashOperation.actionMain()()
{
  v1 = v0;
  v2 = [v0 items];
  type metadata accessor for FPItem();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v4 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v4 = v3;
  }

  v5 = specialized static UIDocumentBrowserAction.fetchParent(nodes:)(v4);

  if (v5)
  {
    swift_getObjectType();
    v6 = DOCNode.fpfs_syncFetchFPItem()();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x68))(v6);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DOCTrashOperation();
  objc_msgSendSuper2(&v7, sel_actionMain);
}

void DOCTrashOperation.actionNameForUndoing.getter(uint64_t a1)
{
  v2 = _DocumentManagerBundle();
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v28._object = 0x8000000249BCFC20;
  v4._countAndFlagsBits = 0x1000000000000026;
  v4._object = 0x8000000249BCFBD0;
  v5._object = 0x8000000249BCFC00;
  v28._countAndFlagsBits = 0xD000000000000039;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0x1000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v6, v3, v5, v28);

  v7 = _DocumentManagerBundle();
  if (!v7)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v8 = v7;
  v29._object = 0x8000000249BCFC90;
  v9._object = 0x8000000249BCFC60;
  v29._countAndFlagsBits = 0xD00000000000003FLL;
  v9._countAndFlagsBits = 0xD000000000000027;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v29);

  v12 = [v1 items];
  type metadata accessor for FPItem();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = [v1 items];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_16:

    __break(1u);
    goto LABEL_17;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_7:

  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v18 = MEMORY[0x24C1FC540](0, v17);
    goto LABEL_10;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v17 + 32);
LABEL_10:
  v19 = v18;

  v20 = [v19 displayName];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v14 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249B9A480;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D83B88];
    *(v25 + 16) = xmmword_249B9A480;
    v27 = MEMORY[0x277D83C10];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v14;
  }

  static String.localizedStringWithFormat(_:_:)();
}

void *DOCTrashOperation.operationForRedoing()()
{
  v1 = [v0 items];
  type metadata accessor for FPItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    return 0;
  }

  isa = [v0 items];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager];
  v6 = type metadata accessor for DOCTrashOperation();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem] = 0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager] = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v14, sel_initWithItems_, isa);

  v10 = *((*MEMORY[0x277D85000] & *v9) + 0x98);
  v11 = v9;
  v10(v11, v12);

  return v9;
}

void *DOCTrashOperation.operationForUndoing()()
{
  v1 = [v0 items];
  type metadata accessor for FPItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    return 0;
  }

  v4 = [v0 items];
  isa = v4;
  if (!v4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))(v4);
  v8 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager);
  v9 = type metadata accessor for DOCUntrashOperation();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_restoreDirectory] = v7;
  *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_undoManager] = v8;
  v18.receiver = v10;
  v18.super_class = v9;
  v11 = v7;
  v12 = v8;
  v13 = objc_msgSendSuper2(&v18, sel_initWithItems_restoreDirectory_, isa, v11);

  v14 = *((*v6 & *v13) + 0x80);
  v15 = v13;
  v14(v15, v16);

  return v13;
}

id DOCTrashOperation.__allocating_init(items:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  type metadata accessor for FPItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithItems_];

  return v4;
}

id DOCTrashOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTrashOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCSidebarCell.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v49 = a3;
  v4 = *v3;
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  MEMORY[0x28223BE20](a1, a2);
  v48 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v42 - v10;
  v43 = type metadata accessor for UIBackgroundConfiguration();
  v12 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v13);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((v5 & v4) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v18);
  v45 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v42 - v22;
  v24 = type metadata accessor for UICellConfigurationState();
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  DOCSidebarCell.ensureHasContentViewConfiguration()();
  v28 = [v3 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x24C1FBB10](v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd, &_s5UIKit22UIContentConfiguration_pSgMR);
  v46 = AssociatedTypeWitness;
  swift_dynamicCast();
  v30 = type metadata accessor for DOCSidebarCell(0, v6, v15, v29);
  v51.receiver = v3;
  v51.super_class = v30;
  v31 = objc_msgSendSuper2(&v51, sel_contentView);
  v47 = v15;
  v50 = v6;
  swift_getAssociatedTypeWitness();
  v32 = swift_dynamicCastUnknownClassUnconditional();
  MEMORY[0x24C1FBB30]();
  v33 = *(v12 + 48);
  v34 = v43;
  if ((v33)(v11, 1) == 1)
  {
    v35 = v44;
    static UIBackgroundConfiguration.clear()();
    if (v33(v11, 1, v34) != 1)
    {
      outlined destroy of UIBackgroundConfiguration?(v11);
    }
  }

  else
  {
    v36 = v44;
    (*(v12 + 32))(v44, v11, v34);
    v35 = v36;
  }

  v37 = *(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x60));
  v38 = v48;
  DOCSidebarCell._contentBindings.getter(v48);
  v40 = v45;
  v39 = v46;
  (*(v17 + 16))(v45, v23, v46);
  DOCSidebarCell.Content.init(valid:state:bindings:view:configuration:background:)(v37, v27, v38, v32, v40, v35, v50, v47, v49);
  return (*(v17 + 8))(v23, v39);
}

uint64_t DOCSidebarCell._contentBindings.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t DOCSidebarCell._contentBindings.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t DOCSidebarCell._resetBindings()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](*((v3 & v2) + 0x50), v9);
  v12 = &v16 - v11;
  (*(*((v3 & v2) + 0x58) + 32))(v10);
  DOCSidebarCell._contentBindings.setter(v12);
  v13 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  DOCSidebarCell.reloadContentViewConfiguration(with:)(v8, v14);
  return (*(v5 + 8))(v8, v4);
}

void DOCSidebarCell.updateContentBindings(_:)(void (*isEscapingClosureAtFileLocation)(char *), uint64_t a2)
{
  v5 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  v6 = [v2 window];
  if (!v6)
  {
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v8, v9);
  v15 = isEscapingClosureAtFileLocation;
  v16 = a2;
  v17 = v2;
  while (1)
  {
    v10 = objc_opt_self();
    a2 = swift_allocObject();
    *(a2 + 16) = partial apply for closure #1 in DOCSidebarCell.updateContentBindings(_:);
    *(a2 + 24) = &v14;
    v2 = swift_allocObject();
    v2[2] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v2[3] = a2;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v19 = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_63;
    v11 = _Block_copy(aBlock);
    v5 = v19;

    [v10 performWithoutAnimation_];
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v12 = MEMORY[0x28223BE20](v6, v7);
    v15 = isEscapingClosureAtFileLocation;
    v16 = a2;
    v17 = v2;
    v13 = [v2 v5[365]];
    if (v13)
    {

      closure #1 in DOCSidebarCell.updateContentBindings(_:)(isEscapingClosureAtFileLocation, a2, v2);
      return;
    }
  }
}

uint64_t DOCSidebarCell.reloadContentViewConfiguration(with:)(uint64_t a1, double a2)
{
  v40 = a1;
  v3 = *v2;
  v4 = *MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & v3;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - v11;
  v13 = *((v4 & v3) + 0x58);
  v14 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness, v16);
  v18 = &v33 - v17;
  v20 = type metadata accessor for DOCSidebarCell.Content(0, v14, v13, v19);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v33 - v24;
  (*(v5 + 128))(v23);
  v26 = v40;
  if (DOCSidebarCell.Content.needsUpdate(for:)(v40, v20))
  {
    v27 = *(v13 + 40);
    v34 = v18;
    v27(v26, v14, v13);
    (*(v13 + 48))(v26, v14, v13);
    v29 = v38;
    v28 = v39;
    v30 = v35;
    (*(v38 + 16))(v35, v12, v39);
    (*(v29 + 8))(v12, v28);
    (*(v29 + 32))(v12, v30, v28);
    (*(v36 + 40))(&v25[*(v20 + 48)], v34, v37);
    (*(v29 + 40))(&v25[*(v20 + 52)], v12, v28);
  }

  (*(v13 + 56))(&v25[*(v20 + 48)], v14, v13);
  specialized DOCSidebarCell.content.setter(v25, v31);
  return (*(v21 + 8))(v25, v20);
}

uint64_t DOCSidebarCell.isRenaming.getter()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSidebarCell.isRenaming.setter(char a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  DOCSidebarCell.isRenaming.didset(v4);
}

void (*DOCSidebarCell.isRenaming.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return DOCSidebarCell.isRenaming.modify;
}

void DOCSidebarCell.isRenaming.modify(uint64_t a1)
{
  v1 = *a1;
  DOCSidebarCell.isRenaming.setter(*(*a1 + 32));

  free(v1);
}

uint64_t DOCSidebarCell.backgroundByApplyingDefaultSettings(toBase:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

uint64_t DOCSidebarCell.ensureHasContentViewConfiguration()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v23 = type metadata accessor for UICellConfigurationState();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v5);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v3 & v2) + 0x58);
  v9 = *((v3 & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v24[-1] - v15;
  MEMORY[0x24C1FBB10](v24, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd, &_s5UIKit22UIContentConfiguration_pSgMR);
  v17 = swift_dynamicCast();
  v18 = *(*(AssociatedTypeWitness - 8) + 56);
  v19 = (v12 + 8);
  if (v17)
  {
    v18(v16, 0, 1, AssociatedTypeWitness);
    return (*v19)(v16, v11);
  }

  else
  {
    v18(v16, 1, 1, AssociatedTypeWitness);
    (*v19)(v16, v11);
    v21 = [v1 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v8 + 40);
    v24[3] = AssociatedTypeWitness;
    v24[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v24);
    v22(v7, v9, v8);
    (*(v4 + 8))(v7, v23);
    return MEMORY[0x24C1FBB20](v24);
  }
}

uint64_t outlined destroy of UIBackgroundConfiguration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double DOCSidebarCell.accessoryItems.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double DOCSidebarCell.addAccessoryItem(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_22:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v7 != i; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](i, v6);
      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(v6 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    if (*(v9 + 16) == *(a1 + 16) && *(v9 + 24) == *(a1 + 24))
    {

      return result;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {

      return result;
    }
  }

  v12 = *((*v4 & *v2) + 0x78);
  swift_beginAccess();

  MEMORY[0x24C1FB090](v13);
  if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v14 = swift_endAccess();
  (*((*v4 & *v2) + 0x150))(v14);
  return result;
}

Swift::Void __swiftcall DOCSidebarCell.removeAccessoryItem(named:)(Swift::String named)
{
  v2 = v1;
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *((*v5 & *v2) + 0x78);
  swift_beginAccess();

  v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v2 + v9), countAndFlagsBits, object);

  v11 = *(v2 + v9);
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= v10)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = __CocoaSet.count.getter();
  if (v12 < v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  specialized Array.replaceSubrange<A>(_:with:)(v10, v12, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  swift_endAccess();
  v13 = *((*v5 & *v2) + 0x78);
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_12:
  if (__CocoaSet.count.getter() == v8)
  {
    return;
  }

LABEL_7:
  (*((*v5 & *v2) + 0x150))();
}

uint64_t DOCSidebarCell.accessoryItem(named:)(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_22:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      v11 = *(v9 + 16) == a1 && *(v9 + 24) == a2;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return v9;
      }

      ++v8;
    }

    while (v10 != v7);
  }

  return 0;
}

Swift::Void __swiftcall DOCSidebarCell.reloadDisplayedAccessories()()
{
  v1 = type metadata accessor for UICellAccessory();
  v2 = *(v1 - 8);
  v37 = v1;
  v38 = v2;
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0xE0))(v4);
  v9 = [v0 traitCollection];
  v10 = [v9 sourceOutlineStyle];

  v11 = *((*v7 & *v0) + 0x78);
  swift_beginAccess();
  v36 = v0;
  v12 = *(v0 + v11);
  v39 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
LABEL_34:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v34 = v6;
    v35 = v12;
    v15 = 0;
    v16 = v12 & 0xC000000000000001;
    v6 = (v12 & 0xFFFFFFFFFFFFFF8);
    v17 = v12 + 32;
    while (1)
    {
LABEL_6:
      if (v16)
      {
        v12 = MEMORY[0x24C1FC540](v15, v35);
        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v23 = v39;
          v6 = v34;
          v14 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      else
      {
        if (v15 >= *(v6 + 2))
        {
          __break(1u);
          goto LABEL_34;
        }

        v12 = *(v17 + 8 * v15);

        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
          goto LABEL_18;
        }
      }

      if ((v8 & 1) == 0 || ((*(*v12 + 120))() & 1) == 0)
      {
        v19 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles);
        v20 = *(v19 + 16);
        v21 = (v19 + 32);
        while (v20)
        {
          v22 = *v21++;
          --v20;
          if (v22 == v10)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            if (v15 != v13)
            {
              goto LABEL_6;
            }

            goto LABEL_19;
          }
        }
      }

      if (v15 == v13)
      {
        goto LABEL_19;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_21:

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      goto LABEL_24;
    }

LABEL_36:

    UICollectionViewListCell.accessories.setter();
    return;
  }

  v24 = __CocoaSet.count.getter();
  if (!v24)
  {
    goto LABEL_36;
  }

LABEL_24:
  v39 = v14;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = v39;
    v27 = v23;
    v28 = v23 & 0xC000000000000001;
    v29 = v27;
    do
    {
      if (v28)
      {
        v30 = MEMORY[0x24C1FC540](v25);
      }

      else
      {
        v30 = *(v27 + 8 * v25 + 32);
      }

      (*(*v30 + 168))();

      v39 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v26 = v39;
      }

      ++v25;
      *(v26 + 16) = v32 + 1;
      (*(v38 + 32))(v26 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v6, v37);
      v27 = v29;
    }

    while (v24 != v25);
    goto LABEL_36;
  }

  __break(1u);
}

id DOCSidebarCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSidebarCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = MEMORY[0x277D85000];
  v12 = *MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x60)) = 0;
  v13 = *((v12 & v10) + 0x50);
  v14 = *((v12 & v10) + 0x58);
  (*(v14 + 32))(v13, v14);
  *(v5 + *((*v11 & *v5) + 0x70)) = 0;
  *(v5 + *((*v11 & *v5) + 0x78)) = MEMORY[0x277D84F90];
  v18.receiver = v5;
  v18.super_class = type metadata accessor for DOCSidebarCell(0, v13, v14, v15);
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  DOCSidebarCell._resetBindings()();

  return v16;
}

id @objc DOCSidebarCell.description.getter(void *a1)
{
  v1 = a1;
  v5 = DOCSidebarCell.description.getter(v1, v2, v3, v4);
  v7 = v6;

  v8 = MEMORY[0x24C1FAD20](v5, v7);

  return v8;
}

uint64_t DOCSidebarCell.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DOCSidebarCell(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v16.receiver = v4;
  v16.super_class = v5;
  v6 = objc_msgSendSuper2(&v16, sel_description);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [v4 accessibilityLabel];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    MEMORY[0x24C1FAEA0](v12, v14);

    MEMORY[0x24C1FAEA0](8285, 0xE200000000000000);
    MEMORY[0x24C1FAEA0](v7, v9);

    return 91;
  }

  return v7;
}

Swift::Void __swiftcall DOCSidebarCell.prepareForReuse()()
{
  v2 = type metadata accessor for DOCSidebarCell(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58), v0);
  v3.receiver = v1;
  v3.super_class = v2;
  objc_msgSendSuper2(&v3, sel_prepareForReuse);
  DOCSidebarCell.accessoryItems.setter(MEMORY[0x277D84F90]);
  UICollectionViewListCell.accessories.setter();
  DOCSidebarCell._resetBindings()();
}

void @objc DOCSidebarCell.prepareForReuse()(void *a1)
{
  v1 = a1;
  DOCSidebarCell.prepareForReuse()();
}

uint64_t DOCSidebarCell.Content.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t DOCSidebarCell.Content.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t DOCSidebarCell.Content.configuration.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 40);

  return v6(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t DOCSidebarCell.Content.background.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 52);
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t DOCSidebarCell.Content.background.setter(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 52);
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v7 = *(*(v6 - 8) + 40);

  return v7(v3 + v5, a1, v6);
}

uint64_t DOCSidebarCell.Content.needsUpdate(for:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UICellConfigurationState();
  lazy protocol witness table accessor for type UICellConfigurationState and conformance UICellConfigurationState();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v3 = *v2 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t DOCSidebarCell.Content.init(valid:state:bindings:view:configuration:background:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  *a9 = a1;
  v17 = type metadata accessor for DOCSidebarCell.Content(0, a7, a8, a4);
  v18 = v17[9];
  v19 = type metadata accessor for UICellConfigurationState();
  (*(*(v19 - 8) + 32))(&a9[v18], a2, v19);
  (*(*(a7 - 8) + 32))(&a9[v17[10]], a3, a7);
  *&a9[v17[11]] = a4;
  v20 = v17[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a9[v20], a5, AssociatedTypeWitness);
  v22 = v17[13];
  v23 = type metadata accessor for UIBackgroundConfiguration();
  v24 = *(*(v23 - 8) + 32);

  return v24(&a9[v22], a6, v23);
}

uint64_t closure #1 in DOCSidebarCell.updateContentBindings(_:)(void (*a1)(char *), uint64_t a2, char *a3)
{
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((*MEMORY[0x277D85000] & *a3) + 0x68);
  swift_beginAccess();
  a1(&a3[v10]);
  swift_endAccess();
  v11 = [a3 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  DOCSidebarCell.reloadContentViewConfiguration(with:)(v9, v12);
  return (*(v6 + 8))(v9, v5);
}

uint64_t DOCSidebarCell.updateConfiguration(using:)(uint64_t a1, double a2)
{
  DOCSidebarCell.reloadContentViewConfiguration(with:)(a1, a2);
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x158);

  return v4(a1);
}

uint64_t @objc DOCSidebarCell.updateConfiguration(using:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;
  DOCSidebarCell.updateConfiguration(using:)(v8, v10);

  return (*(v5 + 8))(v8, v4);
}

void DOCSidebarCell.isRenaming.didset(char a1)
{
  v2 = a1 & 1;
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v5 = swift_beginAccess();
  if (*(v1 + v4) != v2)
  {
    (*((*v3 & *v1) + 0x150))(v5);
  }
}

uint64_t @objc static DOCSidebarCell._contentViewClass()(uint64_t a1)
{
  swift_getObjCClassMetadata();
  static DOCSidebarCell._contentViewClass()();

  return swift_getObjCClassFromMetadata();
}

Swift::Void __swiftcall DOCSidebarCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v4 = MEMORY[0x277D85000];
  v5 = type metadata accessor for DOCSidebarCell(0, *((*MEMORY[0x277D85000] & *v2) + 0x50), *((*MEMORY[0x277D85000] & *v2) + 0x58), v1);
  v14.receiver = v2;
  v14.super_class = v5;
  objc_msgSendSuper2(&v14, sel_traitCollectionDidChange_, isa);
  v6 = *((*v4 & *v2) + 0x78);
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
LABEL_21:
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_16;
        }
      }

      v12 = *(v10 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles);
      if (*(v12 + 16) != 2 || v12 != &outlined read-only object #0 of DOCSidebarCell.traitCollectionDidChange(_:) && (*(v12 + 32) != qword_285C81AC8 || *(v12 + 40) != qword_285C81AD0))
      {

        (*((*MEMORY[0x277D85000] & *v2) + 0x150))(v13);
        return;
      }

      ++v9;
    }

    while (v11 != v8);
  }
}

void @objc DOCSidebarCell.traitCollectionDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  DOCSidebarCell.traitCollectionDidChange(_:)(v9);
}

id DOCSidebarCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id @objc DOCSidebarCell.contentView.getter(void *a1)
{
  v1 = a1;
  v5 = DOCSidebarCell.contentView.getter(v1, v2, v3, v4);

  return v5;
}

id DOCSidebarCell.contentView.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DOCSidebarCell(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_contentView);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    return v6;
  }

  __break(1u);
  return result;
}

id DOCSidebarCell.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DOCSidebarCell(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double @objc DOCSidebarCell.__ivar_destroyer(char *a1)
{
  (*(*(*((*MEMORY[0x277D85000] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x68)]);

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, a4, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, a4, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, __n128 a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, _BYTE *a2, __int128 *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](v8, a1);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    if (*(v9 + 16) == a2 && *(v9 + 24) == a3)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_21;
    }
  }

  return v8;
}

{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v18 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v6, a1);
    }

    else
    {
      if (v6 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [*&v7[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == a2 && v12 == a3)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1FC540](v11, v7);
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v13 = *(v7 + 8 * v11 + 32);

LABEL_16:
    if (*(v13 + 16) == a2 && *(v13 + 24) == a3)
    {
LABEL_8:
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        if (v10 != v11)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x24C1FC540](v10, v7);
            v15 = MEMORY[0x24C1FC540](v11, v7);
          }

          else
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v10 >= v16)
            {
              goto LABEL_51;
            }

            if (v11 >= v16)
            {
              goto LABEL_52;
            }

            v15 = *(v7 + 32 + 8 * v11);
            v21 = *(v7 + 32 + 8 * v10);
          }

          v17 = v6;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v18 = (v7 >> 62) & 1;
          }

          else
          {
            LODWORD(v18) = 0;
          }

          v19 = v7 & 0xFFFFFFFFFFFFFF8;
          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v15;

          if ((v7 & 0x8000000000000000) != 0 || v18)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v19 = v7 & 0xFFFFFFFFFFFFFF8;
            if ((v11 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
              return v10;
            }
          }

          else if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v11 >= *(v19 + 16))
          {
            goto LABEL_49;
          }

          v6 = v17;
          *(v19 + 8 * v11 + 32) = v21;

          *v17 = v7;
        }

        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_48;
        }
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_47;
    }
  }

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
  __break(1u);
LABEL_52:
  __break(1u);
  return __CocoaSet.count.getter();
}

{
  v8 = *a1;
  v9 = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  v11 = v9;
  if (v3)
  {
    return v11;
  }

  v34 = a3;
  if (v10)
  {
    if (v8 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = 0;
  v33 = a1;
  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v8 >> 62)
    {
      if (v12 == __CocoaSet.count.getter())
      {
        return v11;
      }
    }

    else if (v12 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v11;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](v12, v8);
      goto LABEL_16;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v14 = *(v8 + 8 * v12 + 32);
LABEL_16:
    v4 = v14;
    v15 = [*&v14[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] identifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v16 == a2 && v18 == v34)
    {
LABEL_8:
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        if (v11 != v12)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x24C1FC540](v11, v8);
            v22 = MEMORY[0x24C1FC540](v12, v8);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_52;
            }

            v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11 >= v23)
            {
              goto LABEL_53;
            }

            if (v12 >= v23)
            {
              goto LABEL_54;
            }

            v24 = *(v8 + 32 + 8 * v12);
            v21 = *(v8 + 32 + 8 * v11);
            v22 = v24;
          }

          v25 = v22;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v26 = (v8 >> 62) & 1;
          }

          else
          {
            LODWORD(v26) = 0;
          }

          v27 = v8 & 0xFFFFFFFFFFFFFF8;
          v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20);
          *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = v25;

          if ((v8 & 0x8000000000000000) != 0 || v26)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v27 = v8 & 0xFFFFFFFFFFFFFF8;
            if ((v12 & 0x8000000000000000) != 0)
            {
LABEL_45:
              __break(1u);
              return v11;
            }
          }

          else if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          if (v12 >= *(v27 + 16))
          {
            goto LABEL_51;
          }

          v29 = v27 + 8 * v12;
          v30 = *(v29 + 32);
          *(v29 + 32) = v21;

          *v33 = v8;
        }

        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_50;
        }
      }
    }

    v13 = __OFADD__(v12++, 1);
    if (v13)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
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
  return __CocoaSet.count.getter();
}

uint64_t specialized DOCSidebarCell.content.setter(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v23[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23[-1] - v11;
  v14 = type metadata accessor for DOCSidebarCell.Content(0, v6, *((v5 & v4) + 0x58), v13);
  v15 = v14[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[3] = AssociatedTypeWitness;
  v23[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, &a1[v15], AssociatedTypeWitness);
  MEMORY[0x24C1FBB20](v23);
  v18 = v14[13];
  v19 = type metadata accessor for UIBackgroundConfiguration();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v12, &a1[v18], v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  MEMORY[0x24C1FBB40](v12);
  *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60)) = *a1;
  (*(v22 + 16))(v8, &a1[v14[10]], v6);
  return DOCSidebarCell._contentBindings.setter(v8);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (__CocoaSet.count.getter() < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v11 = __CocoaSet.count.getter();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v14, v13))
  {
    goto LABEL_21;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, v11, v4);
}

void specialized DOCSidebarCell.init(reuseIdentifier:)(uint64_t a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60)) = 0;
  (*(*((v4 & v3) + 0x58) + 32))();
  *(v1 + *((*v2 & *v1) + 0x70)) = 0;
  *(v1 + *((*v2 & *v1) + 0x78)) = MEMORY[0x277D84F90];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata completion function for DOCSidebarCell(uint64_t a1)
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

uint64_t type metadata completion function for DOCSidebarCell.Content(uint64_t a1)
{
  result = type metadata accessor for UICellConfigurationState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        result = swift_getAssociatedTypeWitness();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for UIBackgroundConfiguration();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarCell.Content(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v41 = type metadata accessor for UICellConfigurationState();
  v5 = *(v41 - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a3 + 16) - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v40 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v39 = *(v10 + 84);
  if (v9 <= v39)
  {
    v9 = *(v10 + 84);
  }

  v11 = *(type metadata accessor for UIBackgroundConfiguration() - 8);
  v12 = *(v5 + 80);
  v13 = *(v5 + 64);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + 7;
  v20 = v15 + 8;
  v21 = *(v10 + 64) + v16;
  if (a2 <= v18)
  {
    goto LABEL_36;
  }

  v22 = ((v21 + ((v20 + ((v19 + ((v13 + ((v12 + 1) & ~v12) + v14) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v16) + *(v11 + 64);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_15;
  }

  v26 = ((a2 - v18 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v26))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v26 <= 0xFF)
    {
      if (v26 < 2)
      {
        goto LABEL_36;
      }

LABEL_15:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_36;
      }

LABEL_23:
      v27 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v27 = 0;
      }

      if (v22)
      {
        if (v22 <= 3)
        {
          v28 = v22;
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v29 = *a1;
          }
        }

        else if (v28 == 1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }
      }

      else
      {
        v29 = 0;
      }

      return v18 + (v29 | v27) + 1;
    }

    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_23;
    }
  }

LABEL_36:
  v30 = (a1 + v12 + 1) & ~v12;
  if (v6 == v18)
  {
    v31 = *(v5 + 48);
    v32 = v6;
    v33 = v41;
LABEL_40:

    return v31(v30, v32, v33);
  }

  v30 = (v30 + v13 + v14) & ~v14;
  if (v8 == v18)
  {
    v31 = *(v7 + 48);
    v32 = v8;
    v33 = v40;
    goto LABEL_40;
  }

  v34 = ((v19 + v30) & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) != 0)
  {
    v30 = (v34 + v20) & ~v15;
    if (v39 == v18)
    {
      v31 = *(v10 + 48);
      v32 = v39;
      v33 = AssociatedTypeWitness;
      goto LABEL_40;
    }

    v36 = *(v11 + 48);
    v37 = (v21 + v30) & ~v16;

    return v36(v37);
  }

  else
  {
    v35 = *v34;
    if (*v34 >= 0xFFFFFFFF)
    {
      LODWORD(v35) = -1;
    }

    return (v35 + 1);
  }
}

void storeEnumTagSinglePayload for DOCSidebarCell.Content(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(type metadata accessor for UICellConfigurationState() - 8);
  v40 = v5;
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 16) - 8);
  v39 = v7;
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v44 = v10;
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v9 = *(v10 + 84);
  }

  v12 = *(type metadata accessor for UIBackgroundConfiguration() - 8);
  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  v19 = *(v12 + 80);
  if (v9 <= *(v12 + 84))
  {
    v20 = *(v12 + 84);
  }

  else
  {
    v20 = v9;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v22 = v16 + 7;
  v23 = (v17 + 8 + ((v16 + 7 + ((v14 + ((v13 + 1) & ~v13) + v15) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v17;
  v24 = v18 + v19;
  v25 = ((v18 + v19 + v23) & ~v19) + *(v12 + 64);
  if (a3 <= v21)
  {
    v27 = 0;
    v26 = a1;
  }

  else
  {
    v26 = a1;
    if (v25 <= 3)
    {
      v30 = ((a3 - v21 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v21 < a2)
  {
    v28 = ~v21 + a2;
    if (v25 < 4)
    {
      v29 = (v28 >> (8 * v25)) + 1;
      if (v25)
      {
        v32 = v28 & ~(-1 << (8 * v25));
        bzero(v26, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *v26 = v32;
            if (v27 > 1)
            {
LABEL_59:
              if (v27 == 2)
              {
                *&v26[v25] = v29;
              }

              else
              {
                *&v26[v25] = v29;
              }

              return;
            }
          }

          else
          {
            *v26 = v28;
            if (v27 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *v26 = v32;
        v26[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      bzero(v26, v25);
      *v26 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v27)
    {
      v26[v25] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&v26[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&v26[v25] = 0;
  }

  else if (v27)
  {
    v26[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  v33 = &v26[v13 + 1] & ~v13;
  if (v6 == v21)
  {
    v34 = *(v40 + 56);

LABEL_66:
    v34(v33);
    return;
  }

  v33 = (v33 + v14 + v15) & ~v15;
  if (v8 == v21)
  {
    v34 = *(v39 + 56);

    goto LABEL_66;
  }

  v35 = ((v22 + v33) & 0xFFFFFFFFFFFFFFF8);
  if ((v20 & 0x80000000) != 0)
  {
    v33 = (v35 + v17 + 8) & ~v17;
    if (v11 == v21)
    {
      v34 = *(v44 + 56);

      goto LABEL_66;
    }

    v37 = *(v12 + 56);
    v38 = (v24 + v33) & ~v19;

    v37(v38);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v36 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v36 = a2 - 1;
    }

    *v35 = v36;
  }
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 24) >> 1)
  {
    v8 = a5();
    *v6 = v8;
  }

  result = a6(v10, a2, 1, a3, a4);
  *v6 = v8;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v11 = *v7;
    v12 = *v7 >> 62;
    v18 = a5;
    if (!v12)
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (v17)
  {
    goto LABEL_18;
  }

  v9(result, 1);

  return v18(v10, v8, 1, v6);
}

void *DOCSidebarDropContext.__allocating_init(session:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[3] = 0;
  type metadata accessor for DOCSidebarDropContext.DebugInfo(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal) = 0;
  v2[4] = v3;
  v2[2] = a1;
  return v2;
}

void *DOCSidebarDropContext.init(session:)(uint64_t a1)
{
  v1[3] = 0;
  type metadata accessor for DOCSidebarDropContext.DebugInfo(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal) = 0;
  v1[4] = v3;
  v1[2] = a1;
  return v1;
}

double DOCSidebarDropContext.currentProposal.didset()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = DOCSidebarDropProposal.debugInfo.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  _StringGuts.grow(_:)(27);

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x2A6C696E2ALL;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v6, v7);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = *(*static DOCSidebarViewController.dbg.shared + 152);

  v8(0xD00000000000001BLL, 0x8000000249BE1880, 0xD000000000000019, 0x8000000249BE1860);

  return result;
}

void *DOCSidebarDropContext.currentProposal.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void DOCSidebarDropContext.currentProposal.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  v4 = a1;

  DOCSidebarDropContext.currentProposal.didset();
}

double (*DOCSidebarDropContext.currentProposal.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSidebarDropContext.currentProposal.modify;
}

double DOCSidebarDropContext.currentProposal.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return DOCSidebarDropContext.currentProposal.didset();
  }

  return result;
}

uint64_t key path setter for DOCSidebarDropContext.DebugInfo.lastReturnedTargetIndexPath : DOCSidebarDropContext.DebugInfo(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of IndexPath?(a1, &v9 - v6);
  return (*(**a2 + 104))(v7);
}

uint64_t DOCSidebarDropContext.DebugInfo.lastReturnedTargetIndexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  swift_beginAccess();
  return outlined init with copy of IndexPath?(v1 + v3, a1);
}

uint64_t DOCSidebarDropContext.DebugInfo.lastReturnedTargetIndexPath.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  swift_beginAccess();
  outlined assign with take of IndexPath?(a1, v1 + v3);
  return swift_endAccess();
}

void *DOCSidebarDropContext.DebugInfo.lastReturnedProposal.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarDropContext.DebugInfo.lastReturnedProposal.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCSidebarDropContext.DebugInfo.deinit()
{
  outlined destroy of IndexPath?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath);

  return v0;
}

uint64_t DOCSidebarDropContext.DebugInfo.__deallocating_deinit()
{
  outlined destroy of IndexPath?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath);

  return swift_deallocClassInstance();
}

uint64_t DOCSidebarDropContext.DebugInfo.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  v2 = type metadata accessor for IndexPath();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal) = 0;
  return v0;
}

uint64_t DOCSidebarDropContext.DebugInfo.init()()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  v2 = type metadata accessor for IndexPath();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal) = 0;
  return v0;
}

uint64_t outlined init with copy of IndexPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of IndexPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DOCSidebarDropContext.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DOCSidebarDropContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t DOCSidebarDropProposal.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath;
  v4 = type metadata accessor for IndexPath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id DOCSidebarDropProposal.__allocating_init(operation:intent:indexPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a3, v9);
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_initWithDropOperation_intent_, a1, a2);
  (*(v10 + 8))(a3, v9);
  return v11;
}

id DOCSidebarDropProposal.init(operation:intent:indexPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a3, v8);
  v12.receiver = v3;
  v12.super_class = type metadata accessor for DOCSidebarDropProposal(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithDropOperation_intent_, a1, a2);
  (*(v9 + 8))(a3, v8);
  return v10;
}

id DOCSidebarDropProposal.__allocating_init(operation:intent:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithDropOperation:a1 intent:a2];
}

id DOCSidebarDropProposal.__allocating_init(operation:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithDropOperation_];
}

id DOCSidebarDropProposal.__allocating_init(dropOperation:dropLocation:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithDropOperation:a1 dropLocation:a2];
}

id DOCSidebarDropProposal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSidebarDropProposal(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for DOCSidebarDropContext.DebugInfo(uint64_t a1)
{
  type metadata accessor for IndexPath?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for IndexPath?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexPath?)
  {
    type metadata accessor for IndexPath();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexPath?);
    }
  }
}

uint64_t type metadata completion function for DOCSidebarDropProposal(uint64_t a1)
{
  result = type metadata accessor for IndexPath();
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

__n128 DOCGridLayout.Spec.init(titleFontStyle:titleMaxRows:subtitleFontStyle:subtitleMaxRows:scrollDirection:scrollEnabled:allowTags:allowBadge:__layoutMetrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 42) = a8;
  v10 = *(a10 + 16);
  *(a9 + 48) = *a10;
  *(a9 + 64) = v10;
  result = *(a10 + 32);
  v12 = *(a10 + 48);
  *(a9 + 80) = result;
  *(a9 + 96) = v12;
  return result;
}

void DOCUniformHorizontalEdgeInsets.init(top:bottom:horizontal:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

__n128 DOCGridLayout.Spec.LayoutMetrics.init(specIconWidth:cellIconToMaxTitleEdge:cellContentMargins:gridItemSpacing:gridInsets:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v7 = a1[1].n128_u64[0];
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  result = *a1;
  *(a2 + 40) = *a1;
  *(a2 + 56) = v7;
  return result;
}

__n128 DOCGridLayout.Spec.__layoutMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  result = *(v1 + 80);
  v4 = *(v1 + 96);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 DOCGridLayout.Spec.__layoutMetrics.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 80) = result;
  *(v1 + 96) = v4;
  return result;
}

uint64_t DOCGridLayout.Spec.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 41);
  v7 = *(v1 + 42);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v11 = *(v1 + 64);
  v10 = *(v1 + 72);
  v12 = *(v1 + 80);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x24C1FCBD0](v2);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x24C1FCBD0](v3);
  MEMORY[0x24C1FCBD0](v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  if (v9 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  MEMORY[0x24C1FCC00](*&v13);
  if (v8 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v8;
  }

  MEMORY[0x24C1FCC00](*&v14);
  if (v11 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v11;
  }

  MEMORY[0x24C1FCC00](*&v15);
  if (v10 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v10;
  }

  MEMORY[0x24C1FCC00](*&v16);
  if (v12 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v12;
  }

  MEMORY[0x24C1FCC00](*&v17);
  return DOCUniformHorizontalEdgeInsets.hash(into:)();
}

Swift::Int DOCGridLayout.Spec.hashValue.getter()
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCGridLayout.Spec()
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCGridLayout.Spec(uint64_t a1)
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.hash(into:)(v2);
  return Hasher._finalize()();
}

double DOCGridLayout.Spec.LayoutMetrics.gridInsets.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = result;
  return result;
}

double DOCGridLayout.Spec.LayoutMetrics.gridInsets.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = result;
  return result;
}

uint64_t DOCGridLayout.Spec.LayoutMetrics.maxGridWidth(numberOfColumns:)(uint64_t result)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  return result;
}

double static DOCGridLayout.Spec.LayoutMetrics.zero.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  *a1 = static DOCItemCellIconWidth.undefined;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void static DOCUniformHorizontalEdgeInsets.zero.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t DOCGridLayout.Spec.LayoutMetrics.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x24C1FCC00](*&v2);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x24C1FCC00](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x24C1FCC00](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x24C1FCC00](*&v9);
  if (v6 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v6;
  }

  MEMORY[0x24C1FCC00](*&v10);
  return DOCUniformHorizontalEdgeInsets.hash(into:)();
}

Swift::Int DOCGridLayout.Spec.LayoutMetrics.hashValue.getter()
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.LayoutMetrics.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCGridLayout.Spec.LayoutMetrics()
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.LayoutMetrics.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCGridLayout.Spec.LayoutMetrics(uint64_t a1)
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.LayoutMetrics.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t DOCUniformHorizontalEdgeInsets.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C1FCC00](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x24C1FCC00](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x24C1FCC00](*&v5);
}

Swift::Int DOCUniformHorizontalEdgeInsets.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x24C1FCC00](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C1FCC00](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C1FCC00](*&v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCUniformHorizontalEdgeInsets(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C1FCC00](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C1FCC00](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x24C1FCC00](*&v7);
  return Hasher._finalize()();
}

uint64_t DOCGridItemSpacing.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x24C1FCC00](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x24C1FCC00](*&v3);
}

Swift::Int DOCGridItemSpacing.hashValue.getter(double a1, double a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x24C1FCC00](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x24C1FCC00](*&v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCGridItemSpacing()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  DOCGridItemSpacing.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCGridItemSpacing(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  DOCGridItemSpacing.hash(into:)(v2, v3);
  return Hasher._finalize()();
}

BOOL specialized static DOCGridLayout.Spec.LayoutMetrics.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    v5 = a1[3].f64[0];
    v4 = a1[3].f64[1];
    v6 = a1[2].f64[1] == a2[2].f64[1];
    if (v5 != a2[3].f64[0])
    {
      v6 = 0;
    }

    return v4 == a2[3].f64[1] && v6;
  }

  return result;
}

BOOL specialized static DOCGridLayout.Spec.== infix(_:_:)(uint64_t a1, float64x2_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v37 = *(a1 + 32);
  v32 = *(a1 + 42);
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  v7 = *(a1 + 96);
  v6 = *(a1 + 104);
  v8 = a2->f64[1];
  v9 = a2[1].f64[1];
  v10 = a2[2].f64[0];
  v35 = LOBYTE(a2[2].f64[1]);
  v36 = *(a1 + 40);
  v33 = BYTE1(a2[2].f64[1]);
  v34 = *(a1 + 41);
  v31 = BYTE2(a2[2].f64[1]);
  v29 = *(a1 + 48);
  v30 = *(a1 + 64);
  v27 = a2[3];
  v28 = a2[4];
  v12 = a2[5].f64[0];
  v11 = a2[5].f64[1];
  v14 = a2[6].f64[0];
  v13 = a2[6].f64[1];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    if (v2 != *&v8)
    {
      return 0;
    }
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v19 & 1) == 0 || v2 != *&v8)
    {
      return result;
    }
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

    if (v3 != *&v9)
    {
      return 0;
    }
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v25 & 1) == 0 || v3 != *&v9)
    {
      return result;
    }
  }

  result = 0;
  if (v37 == *&v10 && ((v36 ^ v35) & 1) == 0 && ((v34 ^ v33) & 1) == 0 && ((v32 ^ v31) & 1) == 0)
  {
    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v29, v27), vceqq_f64(v30, v28)))) & 1) != 0 && v5 == v12)
    {
      v26 = v4 == v11;
      if (v7 != v14)
      {
        v26 = 0;
      }

      return v6 == v13 && v26;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCGridLayout.Spec and conformance DOCGridLayout.Spec()
{
  result = lazy protocol witness table cache variable for type DOCGridLayout.Spec and conformance DOCGridLayout.Spec;
  if (!lazy protocol witness table cache variable for type DOCGridLayout.Spec and conformance DOCGridLayout.Spec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCGridLayout.Spec and conformance DOCGridLayout.Spec);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCGridLayout.Spec.LayoutMetrics and conformance DOCGridLayout.Spec.LayoutMetrics()
{
  result = lazy protocol witness table cache variable for type DOCGridLayout.Spec.LayoutMetrics and conformance DOCGridLayout.Spec.LayoutMetrics;
  if (!lazy protocol witness table cache variable for type DOCGridLayout.Spec.LayoutMetrics and conformance DOCGridLayout.Spec.LayoutMetrics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCGridLayout.Spec.LayoutMetrics and conformance DOCGridLayout.Spec.LayoutMetrics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCUniformHorizontalEdgeInsets and conformance DOCUniformHorizontalEdgeInsets()
{
  result = lazy protocol witness table cache variable for type DOCUniformHorizontalEdgeInsets and conformance DOCUniformHorizontalEdgeInsets;
  if (!lazy protocol witness table cache variable for type DOCUniformHorizontalEdgeInsets and conformance DOCUniformHorizontalEdgeInsets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUniformHorizontalEdgeInsets and conformance DOCUniformHorizontalEdgeInsets);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCGridItemSpacing and conformance DOCGridItemSpacing()
{
  result = lazy protocol witness table cache variable for type DOCGridItemSpacing and conformance DOCGridItemSpacing;
  if (!lazy protocol witness table cache variable for type DOCGridItemSpacing and conformance DOCGridItemSpacing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCGridItemSpacing and conformance DOCGridItemSpacing);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCGridLayout.Spec(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for DOCGridLayout.Spec(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *DOCEmptyDataSource.__allocating_init(configuration:documentManager:actionManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *DOCEmptyDataSource.init(configuration:documentManager:actionManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

id DOCEmptyDataSource.containedViewController(for:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = objc_allocWithZone(type metadata accessor for DOCBrowserContainedViewController());
  v5 = v2;
  v6 = v1;
  v7 = v3;
  return DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v5, v1, v3);
}

uint64_t DOCEmptyDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id protocol witness for DOCBrowserContainerDataSource.containedViewController(for:) in conformance DOCEmptyDataSource()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = objc_allocWithZone(type metadata accessor for DOCBrowserContainedViewController());
  v5 = v2;
  v6 = v1;
  v7 = v3;
  return DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v5, v1, v3);
}

void *DOCUnarchiveOperation.unarchivedItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_unarchivedItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCUnarchiveOperation.unarchivedItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_unarchivedItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCUnarchiveOperation.init(item:destinationFolder:undoManager:)(void *a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_unarchivedItem] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_item] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_destinationFolder] = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_undoManager] = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for DOCUnarchiveOperation();
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = objc_msgSendSuper2(&v15, sel_initWithItem_destinationFolder_, v7, v8);
  v11 = *((*MEMORY[0x277D85000] & *v10) + 0xA8);
  v12 = v10;
  v11(v12, v13);

  return v12;
}

id DOCUnarchiveOperation.actionNameForUndoing.getter(uint64_t a1)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v13._object = 0x8000000249BE1930;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._countAndFlagsBits = 0x1000000000000029;
    v5._object = 0x8000000249BE18E0;
    v6._object = 0x8000000249BE1910;
    v6._countAndFlagsBits = 0x1000000000000013;
    v13._countAndFlagsBits = 0xD00000000000003ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_249B9A480;
    v8 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_item) displayName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    v12 = static String.localizedStringWithFormat(_:_:)();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DOCUnarchiveOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_item);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_destinationFolder);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_undoManager);
  v4 = objc_allocWithZone(type metadata accessor for DOCUnarchiveOperation());
  v5 = DOCUnarchiveOperation.init(item:destinationFolder:undoManager:)(v1, v2, v3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v10[4] = partial apply for closure #1 in DOCUnarchiveOperation.operationForRedoing();
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_64;
  v7 = _Block_copy(v10);
  v8 = v5;

  [v8 setUnarchiveCompletionBlock_];
  _Block_release(v7);

  return v8;
}

uint64_t partial apply for closure #1 in DOCUnarchiveOperation.operationForRedoing()(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & **(v1 + 16)) + 0x78);
  v4 = a1;
  return v3(a1);
}

void *DOCUnarchiveOperation.operationForUndoing()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = v3;
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_undoManager);
  v6 = type metadata accessor for DOCDeleteOperation();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items] = v4;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation] = v0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager] = v5;
  type metadata accessor for FPItem();
  v8 = v5;
  v9 = v0;
  v10 = v8;
  v11 = v9;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v17.receiver = v7;
  v17.super_class = v6;
  v13 = objc_msgSendSuper2(&v17, sel_initWithItems_, isa);

  v14 = *((*v1 & *v13) + 0x88);
  v15 = v13;
  v14();

  return v13;
}

id DOCUnarchiveOperation.__allocating_init(item:destinationFolder:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItem:a1 destinationFolder:a2];

  return v5;
}

id DOCUnarchiveOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUnarchiveOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCTabBarItem.tab.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTabBarItem_tab;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCTabBarItem.tab.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTabBarItem_tab;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCTabBarItem.tabIdentifier.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  switch(v1)
  {
    case 0:
      return 0x73746E65636572;
    case 2:
      return 0x6573776F7262;
    case 1:
      return 0x646572616873;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCTab.tabBarItemIdentifier.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x73746E65636572;
    case 2:
      return 0x6573776F7262;
    case 1:
      return 0x646572616873;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t static DOCTabBarItem.tabIdentifier(forTab:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x73746E65636572;
    case 2:
      return 0x6573776F7262;
    case 1:
      return 0x646572616873;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

id DOCTabBarItem.floatingSwitcherActionRepresentation(handler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 _internalTitle];
  if (result)
  {
    v7 = result;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t DOCTabBarItem.description.getter()
{
  _StringGuts.grow(_:)(22);

  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))(v1);
  if (v2)
  {
    if (v2 == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x6573776F7242;
    }

    else if (v2 == 1)
    {
      v3 = 0xE600000000000000;
      v4 = 0x646572616853;
    }

    else
    {
      v3 = 0xE500000000000000;
      v4 = 0x3F3F3F3F3FLL;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x73746E65636552;
  }

  MEMORY[0x24C1FAEA0](v4, v3);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t DOCTab.tabBarItemTitle.getter(objc_class *a1)
{
  if (a1 == 2)
  {
    v11 = _DocumentManagerBundle();
    if (!v11)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v2 = v11;
    v15 = 0x8000000249BE1B50;
    v3 = 0x6573776F7242;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v10 = 0xD00000000000007BLL;
    v6 = 0xE600000000000000;
LABEL_10:
    v7.super.isa = v2;
    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_11;
  }

  if (a1 == 1)
  {
    v1 = _DocumentManagerBundle();
    if (v1)
    {
      v2 = v1;
      v15 = 0x8000000249BE1BD0;
      v3 = 0x646572616853;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xE600000000000000;
      v7.super.isa = v2;
      v8 = 0;
      v9 = 0xE000000000000000;
      v10 = 0xD000000000000017;
LABEL_11:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v4, v7, *&v8, *&v10)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (!a1)
  {
    v12 = _DocumentManagerBundle();
    if (!v12)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v2 = v12;
    v15 = 0x8000000249BE1BF0;
    v3 = 0x73746E65636552;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v10 = 0xD000000000000018;
    v6 = 0xE700000000000000;
    goto LABEL_10;
  }

LABEL_15:
  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCTabBarItem.displayTitle.getter()
{
  v1 = [v0 _internalTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id DOCTabBarItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCTabBarItem.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTabBarItem_tab] = 2;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTabBarItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCTabBarItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCTabBarItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTabBarItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UIViewController.DOCTabBarItem.getter()
{
  result = [v0 tabBarItem];
  if (result)
  {
    type metadata accessor for DOCTabBarItem();

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void UIViewController.DOCTabBarItem.setter(void *a1)
{
  [v1 setTabBarItem_];
}

Class @objc UITabBar.DOCTabBarItems.getter(void *a1)
{
  v1 = a1;
  UITabBar.DOCTabBarItems.getter();

  type metadata accessor for DOCTabBarItem();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t UITabBar.DOCTabBarItems.getter()
{
  v1 = [v0 items];
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITabBarItem, 0x277D75B28);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:

    return v2;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      ++v7;
      type metadata accessor for DOCTabBarItem();
      swift_dynamicCastClassUnconditional();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t @objc DOCUIPBrowserState.tab.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 contentMode];
  if (v2 + 1 >= 4)
  {
    type metadata accessor for DOCUIPBrowserContentMode(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v3 = qword_249BABEA8[v2 + 1];

    return v3;
  }

  return result;
}

uint64_t DOCUIPBrowserState.tab.getter()
{
  v1 = [v0 contentMode];
  if (v1 + 1 < 4)
  {
    return qword_249BABEA8[v1 + 1];
  }

  type metadata accessor for DOCUIPBrowserContentMode(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

id @objc DOCUIPBrowserState.tab.setter(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
    type metadata accessor for DOCTab(0);
    v6 = a1;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {

    return [a1 setContentMode_];
  }

  return result;
}

id DOCUIPBrowserState.tab.setter(unint64_t a1)
{
  if (a1 >= 3)
  {
    type metadata accessor for DOCTab(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {

    return [v1 setContentMode_];
  }

  return result;
}

uint64_t DOCUIPBrowserContentMode.tab.getter(uint64_t result)
{
  if (result > 0)
  {
    if (result != 1 && result != 2)
    {
      goto LABEL_6;
    }
  }

  else if (result == -1)
  {
    return 0;
  }

  else
  {
    while (result)
    {
LABEL_6:
      v3[0] = v1;
      v3[1] = v2;
      v1 = v3;
      type metadata accessor for DOCUIPBrowserContentMode(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  return result;
}

void *specialized static DOCTabBarItem._item(tab:)(objc_class *a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a1 == 2)
    {
      v2 = 0xEB000000006C6C69;
      v3 = 0x662E7265646C6F66;
      goto LABEL_6;
    }

    if (a1 == 1)
    {
      v2 = 0x8000000249BE1B30;
      v3 = 0xD00000000000001DLL;
LABEL_6:
      type metadata accessor for DOCTabBarItem();
      v4 = objc_opt_self();
      v5 = MEMORY[0x24C1FAD20](v3, v2);

      v6 = [v4 __systemImageNamedSwift_];

      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:0 image:v6 tag:a1];
LABEL_9:
      v8 = *((*MEMORY[0x277D85000] & *v7) + 0x60);
      v9 = v7;
      v8(a1);
      v10 = DOCTab.tabBarItemTitle.getter(a1);
      v11 = MEMORY[0x24C1FAD20](v10);

      [v9 _setInternalTitle_];

      [v9 setSpringLoaded_];
      return v9;
    }

    if (!a1)
    {
      type metadata accessor for DOCTabBarItem();
      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTabBarSystemItem:4 tag:0];
      goto LABEL_9;
    }
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCFileProviderSourcesCandidateSource.__allocating_init(configuration:fileProviderSources:hideCandidates:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t DOCFavoritesCandidateSource.__allocating_init(configuration:favoritesManager:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void *DOCRecentLocationsCandidateSource.__allocating_init(layoutDirection:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables21DOCGoToRecentLocationC_AC0fG15FolderCandidate_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5[2] = a1;
  v5[3] = v6;
  v5[5] = a3;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  return v5;
}

id DOCFileProviderSource.goToIcon.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (v1)
  {
    if ([v1 isiCloudDriveProvider])
    {
      v2 = MEMORY[0x24C1FAD20](0x64756F6C6369, 0xE600000000000000);
      v3 = [objc_opt_self() systemImageNamed_];

      if (v3)
      {
        return v3;
      }
    }
  }

  v5 = [v0 iconPreferingSymbolImages];

  return v5;
}

id static DOCRecentLocationsCandidateSource.saveAsRecent(_:)(void *a1)
{
  result = [a1 displayName];
  if (result)
  {

    result = [a1 node];
    if (result)
    {
      v4 = result;
      v5 = swift_allocObject();
      v5[2] = v4;
      v5[3] = a1;
      v5[4] = v1;
      v8[4] = partial apply for closure #1 in static DOCRecentLocationsCandidateSource.saveAsRecent(_:);
      v8[5] = v5;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCNode]?, @guaranteed Error?) -> ();
      v8[3] = &block_descriptor_65;
      v6 = _Block_copy(v8);
      swift_unknownObjectRetain();
      v7 = a1;

      [v4 fetchParents_];
      _Block_release(v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id static DOCRecentLocationsCandidateSource.clearRecents()()
{
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    return [static NSUserDefaults.docUserDefaults removeObjectForKey_];
  }

  return result;
}

id DOCConcreteLocation.displayNameForGoToUI.getter()
{
  v1 = [v0 displayName];
  if (v1)
  {
    v2 = v1;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_5:
    v8 = countAndFlagsBits;

    return v8;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v9._object = 0x8000000249BE1C10;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 2960685;
    v6._object = 0xE300000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0xD000000000000053;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v2, v7, v9)._countAndFlagsBits;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t DOCConcreteLocation.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of DOCSidebarItemIconProvider(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCGoToLocation_pMd, &_s26DocumentManagerExecutables15DOCGoToLocation_pMR);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  if (swift_dynamicCast())
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v1 = static NSObject.== infix(_:_:)();

    return v1 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id DOCGoToRecentLocation.__allocating_init(location:parents:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___DOCGoToRecentLocation_location] = a1;
  *&v5[OBJC_IVAR___DOCGoToRecentLocation_parents] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DOCGoToRecentLocation.init(location:parents:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___DOCGoToRecentLocation_location] = a1;
  *&v2[OBJC_IVAR___DOCGoToRecentLocation_parents] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DOCGoToRecentLocation();
  return objc_msgSendSuper2(&v4, sel_init);
}

id DOCGoToRecentLocation.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x24C1FAD20](0x534650467369, 0xE600000000000000);
    v11 = [a1 decodeBoolForKey_];

    _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo8NSObjectCm_Ttg5();
    if (v11)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9FA70;
      *(inited + 32) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
      *(inited + 40) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
      *&v1[OBJC_IVAR___DOCGoToRecentLocation_location] = v9;
      v13 = v9;
      specialized _arrayForceCast<A, B>(_:)(inited);

      NSCoder.decodeTopLevelObject(of:forKey:)();
      v36 = v13;

      if (v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation3URLVGMd, &_sSay10Foundation3URLVGMR);
        v16 = swift_dynamicCast();
        v17 = v36;
        if (v16)
        {
          v18 = v41;
          v19 = [objc_opt_self() shared];
          [v19 startIfNeeded];

          v42[0] = MEMORY[0x277D84F90];
          v20 = *(v18 + 16);
          if (v20)
          {
            v35 = v2;
            v38 = objc_opt_self();
            v21 = v39 + 16;
            v39 = *(v39 + 16);
            v22 = (*(v21 + 64) + 32) & ~*(v21 + 64);
            v34[1] = v18;
            v23 = v18 + v22;
            v37 = *(v21 + 56);
            v24 = (v21 - 8);
            v25 = MEMORY[0x277D84F90];
            (v39)(v7, v23, v4);
            while (1)
            {
              URL._bridgeToObjectiveC()(v26);
              v28 = v27;
              v29 = [v38 fiNodeFromURL_];

              v30 = (*v24)(v7, v4);
              if (v29)
              {
                MEMORY[0x24C1FB090](v30);
                if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v25 = v42[0];
              }

              v23 += v37;
              if (!--v20)
              {
                break;
              }

              (v39)(v7, v23, v4);
            }

            v2 = v35;
          }

          else
          {

            v25 = MEMORY[0x277D84F90];
          }

          goto LABEL_28;
        }

LABEL_5:
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_249B9FA70;
      *(v14 + 32) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
      *(v14 + 40) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      *&v1[OBJC_IVAR___DOCGoToRecentLocation_location] = v9;
      v15 = v9;
      specialized _arrayForceCast<A, B>(_:)(v14);

      NSCoder.decodeTopLevelObject(of:forKey:)();

      if (v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
        if (swift_dynamicCast())
        {
          v25 = v41;
LABEL_28:
          *&v2[OBJC_IVAR___DOCGoToRecentLocation_parents] = v25;
          v32 = type metadata accessor for DOCGoToRecentLocation();
          v40.receiver = v2;
          v40.super_class = v32;
          v33 = objc_msgSendSuper2(&v40, sel_init);

          return v33;
        }

        goto LABEL_5;
      }
    }

    outlined destroy of CharacterSet?(v42, &_sypSgMd, &_sypSgMR);
    goto LABEL_23;
  }

LABEL_24:
  type metadata accessor for DOCGoToRecentLocation();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall DOCGoToRecentLocation.encode(with:)(NSCoder with)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v40 - v10;
  v12 = *(v1 + OBJC_IVAR___DOCGoToRecentLocation_location);
  v13 = MEMORY[0x24C1FAD20](0x6E6F697461636F6CLL, 0xE800000000000000, v9);
  isa = with.super.isa;
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13, v40];

  v14 = *(v1 + OBJC_IVAR___DOCGoToRecentLocation_parents);
  v42 = v14 >> 62;
  if (v14 >> 62)
  {
LABEL_50:
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v17 = v14 & 0xC000000000000001;
  while (1)
  {
    if (v15 == v16)
    {
      goto LABEL_13;
    }

    if (!v17)
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      swift_unknownObjectRetain();
      if (__OFADD__(v16, 1))
      {
        break;
      }

      goto LABEL_8;
    }

    MEMORY[0x24C1FC540](v16, v14);
    if (__OFADD__(v16, 1))
    {
      break;
    }

LABEL_8:
    swift_getObjectType();
    v18 = DOCNode.isFINode.getter();
    swift_unknownObjectRelease();
    ++v16;
    if (!v18)
    {
      v43 = MEMORY[0x277D84F90];
      if (v42)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 = 0;
      while (v20 != v3)
      {
        if (v17)
        {
          v11 = MEMORY[0x24C1FC540](v3, v14);
          v34 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v3 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v11 = *(v14 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v34 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_48;
          }
        }

        v6 = [v11 fpfs_fpItem];
        v35 = swift_unknownObjectRelease();
        ++v3;
        if (v6)
        {
          MEMORY[0x24C1FB090](v35);
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = v34;
        }
      }

      v36 = MEMORY[0x24C1FAD20](0x534650467369, 0xE600000000000000);
      v37 = isa;
      [(objc_class *)isa encodeBool:0 forKey:v36];

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      v38 = Array._bridgeToObjectiveC()().super.isa;

      v42 = MEMORY[0x24C1FAD20](0x73746E65726170, 0xE700000000000000);
      [(objc_class *)v37 encodeObject:v38 forKey:v42];

      v39 = v42;

      return;
    }
  }

  __break(1u);
LABEL_13:
  if (v42)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
LABEL_30:
    v30 = MEMORY[0x24C1FAD20](0x534650467369, 0xE600000000000000);
    v31 = isa;
    [(objc_class *)isa encodeBool:1 forKey:v30];

    v32 = Array._bridgeToObjectiveC()().super.isa;

    v33 = MEMORY[0x24C1FAD20](0x73746E65726170, 0xE700000000000000);
    [(objc_class *)v31 encodeObject:v32 forKey:v33];

    return;
  }

  v43 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = v43;
    do
    {
      if (v17)
      {
        v23 = MEMORY[0x24C1FC540](v21, v14);
      }

      else
      {
        v23 = *(v14 + 8 * v21 + 32);
        swift_unknownObjectRetain();
      }

      v24 = [v23 nodeURL];
      if (v24)
      {
        v25 = v24;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      swift_unknownObjectRelease();
      v27 = type metadata accessor for URL();
      (*(*(v27 - 8) + 56))(v6, v26, 1, v27);
      outlined init with take of URL?(v6, v11);
      v43 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v22 = v43;
      }

      ++v21;
      *(v22 + 16) = v29 + 1;
      outlined init with take of URL?(v11, v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v29);
    }

    while (v19 != v21);
    goto LABEL_30;
  }

  __break(1u);
}

id DOCGoToRecentLocation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}