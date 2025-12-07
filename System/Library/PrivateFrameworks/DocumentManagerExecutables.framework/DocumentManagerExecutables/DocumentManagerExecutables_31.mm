unint64_t DOCItemCollectionViewController.visibleCellsBySection.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xF10))();
  result = 0;
  if (v2)
  {
    v4 = (*((*v1 & *v0) + 0x1010))(0);
    v5 = [v4 visibleCells];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = specialized _arrayConditionalCast<A, B>(_:)(v6);

    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables20DOCCollectionSectionV_SayAC21DOCItemCollectionCellCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v9 = result;
    if (v7)
    {
      v8 = v0;
      specialized Sequence.forEach(_:)(v7, v8, &v9);

      return v9;
    }
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.visibleCellsBySection.getter(void **a1, void *a2, void *a3)
{
  v5 = *a1;
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & **a1) + 0x208))();
  if (v7)
  {
    v8 = v7;
    v9 = (*((*v6 & *v7) + 0x3D0))();

    if (v9)
    {
      (*((*v6 & *a2) + 0x820))(v35);
      v10 = v36;
      if (v36)
      {
        v11 = v37;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        (*(v11 + 80))(&v30, v9, v10, v11);
        v12 = v31;
        if (!v31)
        {
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v35);
          return;
        }

        v13 = v34;
        v28 = v32;
        v29 = v30;
        v38[0] = v30;
        v38[1] = v31;
        v38[2] = v32;
        v38[3] = v33;
        v39 = v33;
        v38[4] = v34;
        __swift_destroy_boxed_opaque_existential_0(v35);
        v5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35[0] = *a3;
        v15 = v35[0];
        *a3 = 0x8000000000000000;
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
        v18 = *(v15 + 16);
        v19 = (v16 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          __break(1u);
LABEL_18:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v26 = v39;
LABEL_15:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();
          outlined consume of DOCCollectionSection?(isUniquelyReferenced_nonNull_native, v12, v28, v26, v13);
          return;
        }

        v21 = v16;
        if (*(v15 + 24) >= v20)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v15 = v35[0];
          }

LABEL_12:
          isUniquelyReferenced_nonNull_native = v29;
          *a3 = v15;

          v25 = *a3;
          v26 = v39;
          if ((v21 & 1) == 0)
          {
            specialized _NativeDictionary._insert(at:key:value:)(v17, v38, MEMORY[0x277D84F90], v25);
          }

          v27 = (v25[7] + 8 * v17);
          MEMORY[0x24C1FB090](v24);
          if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_15;
          }

          goto LABEL_18;
        }

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
        v15 = v35[0];
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
        if ((v21 & 1) == (v23 & 1))
        {
          v17 = v22;
          goto LABEL_12;
        }
      }

      else
      {
        __break(1u);
      }

      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }
  }
}

uint64_t DOCItemCollectionViewController.restorableItemOffset(forHorizontallyScrollableSection:visibleCells:)@<X0>(unint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v71 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v66 - v18);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v66 - v22;
  if (a1 >> 62)
  {
    v64 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v64 = a1;
    }

    v70 = v64;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);

    v65 = _bridgeCocoaArray<A>(_:)();

    a1 = v65;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  }

  DOCItemCollectionViewController.topLeadingMostCell(in:)(a1, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMR);
    v24 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
    v25 = *(*(v24 - 8) + 56);
    v26 = a2;
  }

  else
  {
    v70 = a2;
    outlined init with take of (key: URL, value: FPItem)(v7, v23, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
    outlined init with copy of DOCGridLayout.Spec?(v23, v19, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
    v27 = *v19;
    v69 = *(v8 + 48);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIScrollView, 0x277D759D8);
    v28 = [v27 superview];
    if (v28)
    {
      v29 = v28;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      while (([v29 isKindOfClass_] & 1) == 0)
      {
        v31 = [v29 superview];

        v29 = v31;
        if (!v31)
        {
          goto LABEL_9;
        }
      }

      objc_opt_self();
      v33 = swift_dynamicCastObjCClassUnconditional();

      v34 = type metadata accessor for IndexPath();
      v35 = *(v34 - 8);
      v36 = *(v35 + 8);
      v37 = v19 + v69;
      v69 = v34;
      v67 = v35;
      v68 = v36;
      (v36)(v37);
      v38 = outlined init with copy of DOCGridLayout.Spec?(v23, v15, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      v39 = *v15;
      v40 = *(v8 + 48);
      v41 = MEMORY[0x277D85000];
      v42 = (*((*MEMORY[0x277D85000] & **v15) + 0x208))(v38);

      if (v42)
      {
        v43 = (*((*v41 & *v42) + 0x3D0))();

        v68(&v15[v40], v69);
        if (v43)
        {
          [v33 contentOffset];
          v45 = v44;
          v46 = v71;
          outlined init with copy of DOCGridLayout.Spec?(v23, v71, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
          v47 = *v46;
          v48 = *(v8 + 48);
          [*v46 frame];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v72.origin.x = v50;
          v72.origin.y = v52;
          v72.size.width = v54;
          v72.size.height = v56;
          MinX = CGRectGetMinX(v72);

          v58 = v69;
          v68(v46 + v48, v69);
          outlined init with take of (key: URL, value: FPItem)(v23, v46, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);

          v59 = *(v8 + 48);
          v60 = v70;
          *v70 = v43;
          v61 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
          (*(v67 + 32))(&v60[*(v61 + 20)], v46 + v59, v58);
          *&v60[*(v61 + 24)] = v45 - MinX;
          return (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
        }

        outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      }

      else
      {

        outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        v68(&v15[v40], v69);
      }

      v63 = v70;
      v24 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
      v25 = *(*(v24 - 8) + 56);
      v26 = v63;
    }

    else
    {
LABEL_9:

      outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      v32 = type metadata accessor for IndexPath();
      (*(*(v32 - 8) + 8))(v19 + v69, v32);
      v24 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
      v25 = *(*(v24 - 8) + 56);
      v26 = v70;
    }
  }

  return v25(v26, 1, 1, v24);
}

uint64_t DOCItemCollectionViewController.restorableOffsetForVerticallyPositioningVisibleCells()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v88 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v83 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
  v87 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v83 - v13;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15, v16);
  v19 = (&v83 - v18);
  v20 = MEMORY[0x277D85000];
  v21 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v22 = v21(v17);
  [v22 contentOffset];
  v24 = v23;

  v25 = (v21)();
  (*((*v20 & *v25) + 0x138))();
  v27 = v26;

  if (v24 != v27)
  {
    v84 = v10;
    v85 = v14;
    v86 = v19;
    v33 = (v21)();
    v34 = [v33 visibleCells];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    DOCItemCollectionViewController.topLeadingMostCell(in:)(v35, v6);

    if ((*(v87 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMR);
      v36 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
      return (*(*(v36 - 8) + 56))(v88, 1, 1, v36);
    }

    v37 = v86;
    outlined init with take of (key: URL, value: FPItem)(v6, v86, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
    v38 = v85;
    v39 = outlined init with copy of DOCGridLayout.Spec?(v37, v85, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
    v40 = *v38;
    v41 = v7;
    v42 = *(v7 + 48);
    v43 = MEMORY[0x277D85000];
    v44 = (*((*MEMORY[0x277D85000] & **v38) + 0x208))(v39);

    if (v44)
    {
      v45 = (*((*v43 & *v44) + 0x3D0))();

      v46 = type metadata accessor for IndexPath();
      v47 = *(v46 - 8);
      (*(v47 + 8))(&v38[v42], v46);
      if (v45)
      {
        v87 = v45;
        v48 = DOCItemCollectionViewController.offsetToTop(ofCell:)(*v37);
        v49 = (v21)();
        v50 = v37;
        [v49 bounds];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        v90.origin.x = v52;
        v90.origin.y = v54;
        v90.size.width = v56;
        v90.size.height = v58;
        if (CGRectGetHeight(v90) >= fabs(v48))
        {
          v79 = v84;
          outlined init with copy of DOCGridLayout.Spec?(v50, v84, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);

          v80 = *(v41 + 48);
          v81 = v88;
          *v88 = v87;
          v82 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
          (*(v47 + 32))(v81 + *(v82 + 20), v79 + v80, v46);
          *(v81 + *(v82 + 24)) = v48;
          (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
          v76 = v50;
        }

        else
        {
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v59 = type metadata accessor for Logger();
          __swift_project_value_buffer(v59, static Logger.UI);
          v60 = v2;
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();

          v63 = os_log_type_enabled(v61, v62);
          v64 = v88;
          if (v63)
          {
            v65 = swift_slowAlloc();
            *v65 = 134218240;
            *(v65 + 4) = v48;
            *(v65 + 12) = 2048;
            v66 = (v21)();
            [v66 bounds];
            v68 = v67;
            v70 = v69;
            v72 = v71;
            v74 = v73;

            v91.origin.x = v68;
            v91.origin.y = v70;
            v91.size.width = v72;
            v91.size.height = v74;
            *(v65 + 14) = CGRectGetHeight(v91);
            _os_log_impl(&dword_2493AC000, v61, v62, "[Restorable Settings] Not storing vertical offset since it's too big (%f %f", v65, 0x16u);
            MEMORY[0x24C1FE850](v65, -1, -1);
          }

          swift_unknownObjectRelease();
          v75 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
          (*(*(v75 - 8) + 56))(v64, 1, 1, v75);
          v76 = v86;
        }

        return outlined destroy of CharacterSet?(v76, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      }
    }

    else
    {
      v77 = type metadata accessor for IndexPath();
      (*(*(v77 - 8) + 8))(&v38[v42], v77);
    }

    v78 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
    (*(*(v78 - 8) + 56))(v88, 1, 1, v78);
    v76 = v37;
    return outlined destroy of CharacterSet?(v76, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
  }

  v28 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  v29 = *(*(v28 - 8) + 56);
  v30 = v28;
  v31 = v88;

  return v29(v31, 1, 1, v30);
}

double DOCItemCollectionViewController.offsetToTop(ofCell:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v6 = v5();
  [a1 bounds];
  [v6 convertRect:a1 fromCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v5();
  (*((*v4 & *v15) + 0x138))();
  v17 = v16;

  v18 = (*((*v4 & *v2) + 0x1018))();
  if (v18)
  {
    v19 = v18;
    v20 = DOCItemCollectionViewController.promptView.getter();
    if (v20)
    {
      v21 = v20;
      [v20 bounds];
      [v21 convertRect:v19 toCoordinateSpace:?];
      Height = CGRectGetHeight(v28);

      v19 = v21;
    }

    else
    {
      Height = 0.0;
    }
  }

  else
  {
    Height = 0.0;
  }

  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  MinY = CGRectGetMinY(v29);
  v24 = v5();
  [v24 contentOffset];
  v26 = v25;

  return MinY + v17 - Height - v26;
}

uint64_t DOCItemCollectionViewController.topLeadingMostCell(in:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = type metadata accessor for IndexPath();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v5);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v48 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  v17 = specialized _arrayConditionalCast<A, B>(_:)(a1);
  if (v17)
  {
    v18 = v17;
    v19 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v51 = v10;
      v43 = a2;
      if (!i)
      {
        break;
      }

      v10 = 0;
      v54 = v18 & 0xC000000000000001;
      v21 = MEMORY[0x277D84F90];
      v45 = (v4 + 4);
      v46 = v19;
      v53 = i;
      v44 = v18;
      while (1)
      {
        if (v54)
        {
          v22 = MEMORY[0x24C1FC540](v10, v18);
        }

        else
        {
          if (v10 >= *(v19 + 16))
          {
            goto LABEL_27;
          }

          v22 = *(v18 + 8 * v10 + 32);
        }

        a2 = v22;
        v23 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v4 = v55;
        v24 = (*((*MEMORY[0x277D85000] & *v55) + 0x1010))();
        v25 = [v24 indexPathForCell_];

        if (v25)
        {
          v26 = v49;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v27 = *v45;
          v28 = v48;
          v29 = v26;
          v30 = v50;
          (*v45)(v48, v29, v50);
          v31 = *(v51 + 48);
          v4 = v21;
          v32 = v16;
          v33 = v47;
          *v47 = a2;
          v27(&v33[v31], v28, v30);
          v34 = v33;
          v16 = v32;
          v21 = v4;
          outlined init with take of (key: URL, value: FPItem)(v34, v16, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
          }

          v36 = v21[2];
          v35 = v21[3];
          a2 = (v36 + 1);
          v37 = v52;
          v18 = v44;
          if (v36 >= v35 >> 1)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v21);
            v37 = v52;
          }

          v19 = v46;
          v21[2] = a2;
          outlined init with take of (key: URL, value: FPItem)(v16, v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        }

        else
        {
        }

        ++v10;
        if (v23 == v53)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_23:

    v56 = v21;

    specialized MutableCollection<>.sort(by:)(&v56);

    v40 = v43;
    v41 = v51;
    if (v56[2])
    {
      outlined init with copy of DOCGridLayout.Spec?(v56 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v43, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);

      return (*(v52 + 56))(v40, 0, 1, v41);
    }

    else
    {

      return (*(v52 + 56))(v40, 1, 1, v41);
    }
  }

  else
  {
    v38 = *(v52 + 56);

    return v38(a2, 1, 1, v10);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.applyRestorableSettingsIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v68 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v61 - v10;
  v12 = type metadata accessor for RestorableSettings(0);
  v72 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v61 - v22;
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v61 - v27;
  v29 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (!v29 || (v30 = [v29 activeDocumentCreationSession]) == 0 || (v31 = v30, v32 = (*((*MEMORY[0x277D85000] & *v30) + 0x110))(), v31, (v32 & 1) == 0))
  {
    if (([v1 doc_hasDisappearedOrIsDisappearing] & 1) == 0)
    {
      v33 = (*((*MEMORY[0x277D85000] & *v1) + 0xBF0))();
      v66 = v34;
      if (v34 != 0xFF)
      {
        v35 = v33;
        if (one-time initialization token for restorableSettingsCache != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v36 = static DOCItemCollectionViewController.restorableSettingsCache;
        if (*(static DOCItemCollectionViewController.restorableSettingsCache + 2) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v66 & 1), (v38 & 1) != 0))
        {
          outlined init with copy of ScrollPositionInfo.ItemOffset(v36[7] + *(v72 + 72) * v37, v23, type metadata accessor for RestorableSettings);
          outlined init with take of ScrollPositionInfo.ItemOffset(v23, v28, type metadata accessor for RestorableSettings);
          swift_endAccess();
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, static Logger.UI);
          outlined init with copy of ScrollPositionInfo.ItemOffset(v28, v19, type metadata accessor for RestorableSettings);
          v64 = v35;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.debug.getter();
          outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v35, v66);
          v63 = v41;
          v42 = os_log_type_enabled(v40, v41);
          v65 = v35;
          if (v42)
          {
            v43 = swift_slowAlloc();
            v61 = v43;
            v62 = swift_slowAlloc();
            aBlock[0] = v62;
            *v43 = 136315394;
            v44 = DOCItemCollectionViewController.RestorableSettingsCacheKey.description.getter(v35, v66 & 1);
            v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, aBlock);

            v47 = v61;
            *(v61 + 1) = v46;
            *(v47 + 6) = 2080;
            outlined init with copy of ScrollPositionInfo.ItemOffset(v19, v15, type metadata accessor for RestorableSettings);
            v48 = String.init<A>(describing:)();
            v50 = v49;
            outlined destroy of RestorableSettings(v19, type metadata accessor for RestorableSettings);
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, aBlock);

            *(v47 + 14) = v51;
            _os_log_impl(&dword_2493AC000, v40, v63, "[Restorable Settings] Restoring settings for key %s; info: %s", v47, 0x16u);
            v52 = v62;
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v52, -1, -1);
            MEMORY[0x24C1FE850](v47, -1, -1);
          }

          else
          {

            outlined destroy of RestorableSettings(v19, type metadata accessor for RestorableSettings);
          }

          (*(v72 + 56))(v11, 1, 1, v12);
          swift_beginAccess();
          v53 = v64;
          v54 = v66;
          specialized Dictionary.subscript.setter(v11, v65, v66 & 1);
          swift_endAccess();
          DOCItemCollectionViewController.scroll(using:shouldEnqueue:shouldClear:)(v28, 1, 1);
          DOCItemCollectionViewController.restoreSearch(_:)(*&v28[*(v12 + 20)], *&v28[*(v12 + 20) + 8], *&v28[*(v12 + 20) + 16], *&v28[*(v12 + 20) + 24]);
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v55 = static OS_dispatch_queue.main.getter();
          v56 = swift_allocObject();
          *(v56 + 16) = v1;
          aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.applyRestorableSettingsIfNeeded();
          aBlock[5] = v56;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_104;
          v57 = _Block_copy(aBlock);
          v58 = v1;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
          v59 = v68;
          v60 = v71;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x24C1FB9A0](0, v7, v59, v57);
          _Block_release(v57);

          outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v65, v54);
          (*(v70 + 8))(v59, v60);
          (*(v67 + 8))(v7, v69);
          outlined destroy of RestorableSettings(v28, type metadata accessor for RestorableSettings);
        }

        else
        {
          swift_endAccess();
          outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v35, v66);
        }
      }
    }
  }
}

void closure #1 in DOCItemCollectionViewController.applyRestorableSettingsIfNeeded()(void *a1)
{
  v2 = [a1 traitCollection];
  (*((*MEMORY[0x277D85000] & *a1) + 0x13F8))();
}

void DOCItemCollectionViewController.restoreSearch(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return;
  }

  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v4) + 0xBB8);

  v9 = swift_unknownObjectRetain();
  v10 = v8(v9);
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_21:

    return;
  }

  v35 = v10;
  v11 = DOCItemCollectionViewController.searchControllerScopes.getter(v10);
  v12 = v11[2];
  if (v12)
  {
    v33 = a4;
    v36 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v36;
    v14 = v11 + 5;
    do
    {
      v15 = *v14;
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 8);
      swift_unknownObjectRetain();
      v18 = v17(ObjectType, v15);
      v20 = v19;
      swift_unknownObjectRelease();
      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      }

      *(v36 + 16) = v22 + 1;
      v23 = v36 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v14 += 2;
      --v12;
    }

    while (v12);

    a4 = v33;
    v7 = MEMORY[0x277D85000];
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v24 = swift_getObjectType();
  v25 = (*(a4 + 8))(v24, a4);
  v27 = v26;
  v28 = *(v13 + 16);
  if (!v28)
  {
LABEL_20:
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  v29 = v25;
  v30 = 0;
  v31 = (v13 + 40);
  while (1)
  {
    v32 = *(v31 - 1) == v29 && *v31 == v27;
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v30;
    v31 += 2;
    if (v28 == v30)
    {
      goto LABEL_20;
    }
  }

  (*((*v7 & *v35) + 0x2E0))(v30);
  (*((*v7 & *v35) + 0x370))(a1, a2);
  swift_unknownObjectRelease();
}

void *DOCItemCollectionViewController.cellsInsideSafeArea()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1018))();
  v2 = MEMORY[0x277D84F90];
  v28 = v1;
  if (v1)
  {
    v3 = [v1 visibleCells];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v2;
    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v6 = 0;
      v7 = &selRef_setCancelsTouchesInView_;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C1FC540](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v2 = [v28 safeAreaLayoutGuide];
        [v2 v7[209]];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v30.origin.x = v12;
        v30.origin.y = v14;
        v30.size.width = v16;
        v30.size.height = v18;
        v31 = CGRectIntegral(v30);
        x = v31.origin.x;
        y = v31.origin.y;
        width = v31.size.width;
        height = v31.size.height;
        [v9 frame];
        v33.origin.x = v23;
        v33.origin.y = v24;
        v33.size.width = v25;
        v33.size.height = v26;
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        if (CGRectContainsRect(v32, v33))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v7 = &selRef_setCancelsTouchesInView_;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v2 = &v29;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v6;
        if (v10 == i)
        {
          v2 = v29;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_15:
  }

  return v2;
}

void DOCItemCollectionViewController.__ivar_destroyer()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_blockToRunWhenMenuInteractionFinishedDismissing), *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_blockToRunWhenMenuInteractionFinishedDismissing + 8));

  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener);

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastDropIndexPath, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration + 24);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration + 56);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration + 72);

  swift_unknownObjectRelease();

  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_interactionDelegate);

  outlined consume of (progress: NSProgress, node: DOCNode)?(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentLoadingProgress));
  swift_unknownObjectRelease();

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentFocusEngineIndexPath, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathForRememberedFocusNode, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathOfSwipedItem, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___listLayoutConfiguration, &_s5UIKit35UICollectionLayoutListConfigurationVSgMd, &_s5UIKit35UICollectionLayoutListConfigurationVSgMR);

  outlined consume of DOCProgressCollectionIndicatorView??(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView));
  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_presentedCollaborationViewController);

  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsAlert);
  outlined consume of DOCItemSortDescriptor?(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor), *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor + 8), *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor + 16));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);

  v9 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf) = 0;
  v5 = v9;
  v6 = v9;
  if (v9)
  {
    while (1)
    {
      v10 = v6;

      if (!swift_isUniquelyReferenced())
      {
        break;
      }

      v7 = *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf];
      v8 = v7;

      v6 = v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v6 = v10;
  }

LABEL_6:
}

uint64_t DOCItemCollectionViewController.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_defaultSaveLocationDidChangeNotificationToken;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    notify_cancel(v3);
    *(v1 + v2) = 0;
  }

  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x12B0))(0);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
  v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v7)
  {
    result = (*((*v4 & *v7) + 0x1F0))(result);
    if ((result & 1) == 0)
    {
LABEL_7:
      DOCItemCollectionViewController.cancelPendingTasks()();
      v9.receiver = v1;
      v9.super_class = type metadata accessor for DOCItemCollectionViewController(0);
      return objc_msgSendSuper2(&v9, sel_dealloc);
    }

    v8 = *(v1 + v6);
    if (v8)
    {
      (*((*v4 & *v8) + 0x1C8))();
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.stopObservingNodeCollection()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v1)
  {
    v2 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x1F0))())
    {
      (*((*v2 & *v1) + 0x1C8))();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.selectAllItems()()
{
  v1 = v0;
  v33 = type metadata accessor for IndexPath();
  v2 = *(v33 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v33, v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1310))(v4) & 1) == 0)
  {
    v8 = *((*v7 & *v0) + 0x1318);
    v9 = (*v7 & *v0) + 4888;
    v10 = v8(1);
    v11 = *((*v7 & *v0) + 0x1010);
    v34 = (*v7 & *v0) + 4112;
    v12 = v11;
    v13 = (v11)(v10);
    v14 = [v13 numberOfSections];

    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v30[1] = v9;
    v31 = v8;
    if (v14)
    {
      v15 = 0;
      v16 = (v2 + 8);
      v32 = v14;
      while (1)
      {
        v17 = v12();
        v18 = [v17 numberOfItemsInSection_];

        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18)
        {
          for (i = 0; v18 != i; ++i)
          {
            v22 = MEMORY[0x24C1F8100](i, v15);
            v23 = (v12)(v22);
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v25 = [v1 collectionView:v23 shouldSelectItemAtIndexPath:isa];

            if (v25)
            {
              v26 = MEMORY[0x277D85000];
              if ((*((*MEMORY[0x277D85000] & *v1) + 0xD88))(v6, 0))
              {
                if (((*((*v26 & *v1) + 0x1790))() & 1) == 0)
                {
                  (*v16)(v6, v33);
                  swift_unknownObjectRelease();
                  continue;
                }

                v20 = v12();
                v21 = IndexPath._bridgeToObjectiveC()().super.isa;
                [v20 selectItemAtIndexPath:v21 animated:0 scrollPosition:0];
                swift_unknownObjectRelease();
              }
            }

            (*v16)(v6, v33);
          }
        }

        if (++v15 == v32)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_16:
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v27 = [v1 viewIfLoaded];
    v28 = [v27 window];

    if (v28)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()(v29);
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }

    v31(0);
  }
}

void closure #1 in DOCItemCollectionViewController.selectAllItems()(void *a1)
{
  v28 = type metadata accessor for IndexPath();
  v2 = *(v28 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v28, v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0x1010);
  v29 = (*MEMORY[0x277D85000] & *a1) + 4112;
  v8 = v7;
  v9 = v7(v4);
  v10 = [v9 numberOfSections];

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v10)
  {
    v11 = 0;
    v12 = (v2 + 8);
    v27 = v10;
    while (1)
    {
      v13 = v8();
      v14 = [v13 numberOfItemsInSection_];

      if ((v14 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v14)
      {
        for (i = 0; v14 != i; ++i)
        {
          v18 = MEMORY[0x24C1F8100](i, v11);
          v19 = (v8)(v18);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v21 = [a1 collectionView:v19 shouldSelectItemAtIndexPath:isa];

          if (v21)
          {
            v22 = MEMORY[0x277D85000];
            if ((*((*MEMORY[0x277D85000] & *a1) + 0xD88))(v6, 0))
            {
              if (((*((*v22 & *a1) + 0x1790))() & 1) == 0)
              {
                (*v12)(v6, v28);
                swift_unknownObjectRelease();
                continue;
              }

              v16 = v8();
              v17 = IndexPath._bridgeToObjectiveC()().super.isa;
              [v16 selectItemAtIndexPath:v17 animated:0 scrollPosition:0];
              swift_unknownObjectRelease();
            }
          }

          (*v12)(v6, v28);
        }
      }

      if (++v11 == v27)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_15:
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
  v23 = [a1 viewIfLoaded];
  v24 = [v23 window];

  if (v24)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v25);
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.deselectItems(ofType:excludedIndexPaths:)(DocumentManagerExecutables::DOCItemCollectionViewController::DOCItemCollectionCellType ofType, Swift::OpaquePointer excludedIndexPaths)
{
  rawValue = excludedIndexPaths._rawValue;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v70 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v72 = &v68 - v9;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v80 = &v68 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v71 = &v68 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v68 - v23;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v68 - v28;
  if (ofType)
  {
    MEMORY[0x24C1F8100](0, 0, v27);
    v30 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *v2) + 0x1898))(v29) & 1) == 0 || (v31 = (*((*v30 & *v2) + 0x1330))(), v32 = specialized Sequence<>.contains(_:)(v29, v31), , !v32))
    {
      (*(v11 + 8))(v29, v10);
      return;
    }

    v69 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
    v33 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_249B9A480;
    (*(v11 + 32))(v34 + v33, v29, v10);
    v35 = v34;
    v78 = *(v34 + 16);
    if (!v78)
    {
      v77 = MEMORY[0x277D84F90];
LABEL_21:

      v48 = v69;
      v49 = MEMORY[0x277D85000];
      v50 = v72;
      (*((*MEMORY[0x277D85000] & *v69) + 0xE30))(v47);
      if ((*(v11 + 48))(v50, 1, v10) == 1)
      {
        v51 = v14;
        outlined destroy of CharacterSet?(v50, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      else
      {
        v52 = v71;
        (*(v11 + 32))(v71, v50, v10);
        v51 = v14;
        if (specialized Sequence<>.contains(_:)(v52, v77))
        {
          v53 = v52;
          v54 = v70;
          (*(v11 + 56))(v70, 1, 1, v10);
          (*((*v49 & *v48) + 0xE38))(v54);
          (*(v11 + 8))(v53, v10);
        }

        else
        {
          (*(v11 + 8))(v52, v10);
        }
      }

      v55 = v77[2];
      if (v55)
      {
        v56 = *((*v49 & *v48) + 0x1010);
        rawValue = ((*v49 & *v48) + 4112);
        v80 = v56;
        v58 = *(v11 + 16);
        v57 = v11 + 16;
        v78 = v58;
        v59 = v77 + ((*(v57 + 64) + 32) & ~*(v57 + 64));
        v60 = *(v57 + 56);
        v61 = (v57 - 8);
        do
        {
          v62 = v78(v51, v59, v10);
          v63 = (v80)(v62);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v61)(v51, v10);
          [v63 deselectItemAtIndexPath:isa animated:0];

          v59 += v60;
          v55 = (v55 - 1);
        }

        while (v55);
      }

      *(v48 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
      v65 = [v48 viewIfLoaded];
      v66 = [v65 window];

      if (v66)
      {

        DOCBrowserContainedViewController.updateOverlayIfNeeded()(v67);
      }

      else
      {
        DOCBrowserContainedViewController.applyOverlaySearchSettings()();
      }

      return;
    }
  }

  else
  {
    v35 = (*((*MEMORY[0x277D85000] & *v2) + 0x1330))(v27);
    v78 = *(v35 + 16);
    if (!v78)
    {

      return;
    }

    v69 = v2;
  }

  v68 = v14;
  v36 = 0;
  v73 = (v11 + 8);
  v74 = v11 + 16;
  v77 = (v11 + 32);
  v37 = MEMORY[0x277D84F90];
  v75 = v35;
  v76 = v11;
  while (v36 < *(v35 + 16))
  {
    v40 = v37;
    v41 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v42 = *(v11 + 72);
    (*(v11 + 16))(v24, v35 + v41 + v42 * v36++, v10);
    v43 = rawValue + v41;
    v44 = rawValue[2] + 1;
    while (--v44)
    {
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v43 += v42;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (*v73)(v24, v10);
        v37 = v40;
        goto LABEL_12;
      }
    }

    v45 = *v77;
    (*v77)(v80, v24, v10);
    v37 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1);
      v37 = v81;
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v37 = v81;
    }

    v37[2] = v39 + 1;
    v45(v37 + v41 + v39 * v42, v80, v10);
LABEL_12:
    v35 = v75;
    v11 = v76;
    if (v36 == v78)
    {
      v77 = v37;
      v14 = v68;
      goto LABEL_21;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall DOCItemCollectionViewController.deselectAllItems()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1310))() & 1) == 0)
  {
    v2 = *((*v1 & *v0) + 0x1318);
    v2(1);
    (*((*v1 & *v0) + 0x1300))(0, MEMORY[0x277D84F90]);

    v2(0);
  }
}

uint64_t DOCItemCollectionViewController.performingBatchSelection.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.performingBatchSelection.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchSelection;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.selectedIndexPaths.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1018))();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v1 indexPathsForSelectedItems];

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for IndexPath();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t DOCItemCollectionViewController.sortedSelectedIndexPaths.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1018))();
  if (v2 && (v3 = v2, v4 = [v2 indexPathsForSelectedItems], v3, v4))
  {
    type metadata accessor for IndexPath();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = (*((*v1 & *v0) + 0x1360))(v5);

  return v6;
}

unint64_t DOCItemCollectionViewController.selectedNodes(sorted:)(char a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1018))();
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    v8 = MEMORY[0x277D84F90];
    if ((a1 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = v4;
  v7 = [v4 indexPathsForSelectedItems];

  if (v7)
  {
    type metadata accessor for IndexPath();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((a1 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v9 = (*((*v3 & *v1) + 0x1360))(v8);

    v8 = v9;
    goto LABEL_7;
  }

  v8 = MEMORY[0x277D84F90];
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v10 = (*((*v3 & *v1) + 0xDB8))();
  if (!v10)
  {
    v10 = (*((*v3 & *v1) + 0xD60))();
  }

  v11 = DOCItemCollectionViewController.nodes(at:in:)(v8, v10);

  if ((*((*v3 & *v1) + 0x148))(v12))
  {
    v19 = v5;
    if (v11 >> 62)
    {
      goto LABEL_27;
    }

    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      while (1)
      {
        v14 = 0;
        while ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x24C1FC540](v14, v11);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v17 = v19;
            goto LABEL_29;
          }

LABEL_18:
          if ([v15 isFolder])
          {
            swift_unknownObjectRelease();
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v14;
          if (v16 == v13)
          {
            goto LABEL_23;
          }
        }

        if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_27:
        v13 = __CocoaSet.count.getter();
        if (!v13)
        {
          goto LABEL_28;
        }
      }

      v15 = *(v11 + 8 * v14 + 32);
      swift_unknownObjectRetain();
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

LABEL_28:
    v17 = MEMORY[0x277D84F90];
LABEL_29:

    return v17;
  }

  return v11;
}

uint64_t DOCItemCollectionViewController.nodes(at:in:)(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v4 = type metadata accessor for IndexPath();
  v7.n128_f64[0] = MEMORY[0x28223BE20](v4, v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *((*MEMORY[0x277D85000] & *v2) + 0xD88);
    v23 = (*MEMORY[0x277D85000] & *v2) + 3464;
    v24 = v12;
    v14 = *(v6 + 16);
    v13 = v6 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v21 = *(v13 + 56);
    v22 = v14;
    v16 = (v13 - 8);
    do
    {
      v17 = v13;
      v22(v9, v15, v4, v7);
      v18 = v24(v9, v25);
      v19 = (*v16)(v9, v4);
      if (v18)
      {
        MEMORY[0x24C1FB090](v19);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = v26;
      }

      v15 += v21;
      --v11;
      v13 = v17;
    }

    while (v11);
  }

  return v10;
}

void DOCItemCollectionViewController.sortIndexPaths(_:)(uint64_t a1)
{
  v1 = a1;

  specialized MutableCollection<>.sort(by:)(&v1);
}

BOOL DOCItemCollectionViewController.hasSelectedNodes.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 > 0;
}

void DOCItemCollectionViewController.open(node:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0xD98))(a1, v13);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v17 = [a1 fpfs_fpItem];
    if (v17)
    {
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_249BA0290;
      *(v19 + 32) = v18;
      v20 = *((*v16 & *v3) + 0x1440);
      v21 = v18;
      v20(v19, v18);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.UI);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v34 = v32;
        *v31 = 136315138;
        *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BDEB00, &v34);
        _os_log_impl(&dword_2493AC000, v29, v30, "%s: node could not be found to be opened with App Intents", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C1FE850](v32, -1, -1);
        MEMORY[0x24C1FE850](v31, -1, -1);
      }
    }
  }

  else
  {
    v22 = (*(v11 + 32))(v15, v9, v10);
    v23 = *((*v16 & *v2) + 0x1010);
    v24 = (v23)(v22);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v24 selectItemAtIndexPath:isa animated:a2 & 1 scrollPosition:0];

    v26 = v23();
    v27 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v3 collectionView:v26 performPrimaryActionForItemAtIndexPath:v27];

    (*(v11 + 8))(v15, v10);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.select(nodes:animated:reloadInitiallySelectedItem:)(Swift::OpaquePointer_optional nodes, Swift::Bool animated, Swift::Bool reloadInitiallySelectedItem)
{
  v4 = v3;
  v5 = animated;
  LODWORD(v106) = *&nodes.is_nil;
  rawValue = nodes.value._rawValue;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v105 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v98 - v12;
  v14 = type metadata accessor for IndexPath();
  v109 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v107 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v98 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v98 - v23;
  v27.n128_f64[0] = MEMORY[0x28223BE20](v25, v26);
  v29 = &v98 - v28;
  v30 = MEMORY[0x277D85000];
  v31 = (*((*MEMORY[0x277D85000] & *v3) + 0x1018))(v27);
  if (v31)
  {
    if (rawValue)
    {
      v103 = v14;
      v99 = v13;
      v104 = v5;
      v110 = v31;
      v32 = *((*v30 & *v3) + 0xDB0);
      v33 = (*v30 & *v3) + 3504;
      v108 = (v32)(rawValue);
      v34 = (*((*v30 & *v3) + 0x1268))();
      v100 = v32;
      v102 = v33;
      if (v34)
      {
        v35 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_249BA0290;
        *(v36 + 32) = v35;
        swift_unknownObjectRetain();
        v37 = (v32)(v36);

        if (*(v37 + 16))
        {
          v38 = v109;
          v39 = *(v109 + 16);
          v98 = (*(v109 + 80) + 32) & ~*(v109 + 80);
          v40 = v103;
          v39(v29, v37 + v98, v103);

          v41 = v108;
          if (specialized Sequence<>.contains(_:)(v29, v108))
          {
            (*(v38 + 8))(v29, v40);
            swift_unknownObjectRelease();
            v30 = MEMORY[0x277D85000];
            v42 = v38;
          }

          else
          {
            v39(v24, v29, v40);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
            }

            v30 = MEMORY[0x277D85000];
            v44 = v41[2];
            v43 = v41[3];
            v108 = v41;
            if (v44 >= v43 >> 1)
            {
              v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v108);
            }

            swift_unknownObjectRelease();
            v45 = v109;
            (*(v109 + 8))(v29, v40);
            v46 = v108;
            v108[2] = v44 + 1;
            v41 = v46;
            v42 = v45;
            (*(v45 + 32))(v46 + v98 + *(v45 + 72) * v44, v24, v40);
          }

LABEL_17:
          v47 = v41[2];
          v101 = v4;
          if (v47)
          {
            v50 = *(v42 + 16);
            v48 = v42 + 16;
            v49 = v50;
            v51 = (*(v48 + 64) + 32) & ~*(v48 + 64);
            v108 = v41;
            v52 = v41 + v51;
            v53 = *(v48 + 56);
            v54 = v106;
            do
            {
              v49(v20, v52, v40);
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              [v110 selectItemAtIndexPath:isa animated:v54 & 1 scrollPosition:0];

              (*(v48 - 8))(v20, v40);
              v52 += v53;
              --v47;
            }

            while (v47);

            v4 = v101;
            v30 = MEMORY[0x277D85000];
          }

          else
          {
          }

          v57 = *((*v30 & *v4) + 0x1338);
          v58 = (*v30 & *v4) + 4920;
          v59 = v57(v56);
          v60 = v104;
          if (v59 >> 62)
          {
            v61 = __CocoaSet.count.getter();
          }

          else
          {
            v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v61 == 1)
          {
            v57(v62);
            v63 = v100();

            v64 = *(v63 + 16);
            if (!v64)
            {

              if (v60)
              {
                goto LABEL_28;
              }

              goto LABEL_38;
            }

            v65 = v109;
            v66 = v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v109 + 72) * (v64 - 1);
            v106 = v58;
            v67 = *(v109 + 16);
            v68 = v107;
            v69 = v103;
            v67(v107, v66, v103);

            v108 = v57;
            v70 = v99;
            v67(v99, v68, v69);
            v71 = *(v65 + 56);
            v71(v70, 0, 1, v69);
            DOCItemCollectionViewController.rememberLastFocusedItem(_:)(v70);
            outlined destroy of CharacterSet?(v70, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            v67(v70, v68, v69);
            v71(v70, 0, 1, v69);
            v30 = MEMORY[0x277D85000];
            v72 = (*((*MEMORY[0x277D85000] & *v110) + 0xF0))();
            v73 = v105;
            outlined init with copy of DOCGridLayout.Spec?(v70, v105, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            (*(*v72 + 112))(v73);

            v74 = v70;
            v57 = v108;
            v60 = v104;
            outlined destroy of CharacterSet?(v74, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            (*(v65 + 8))(v107, v69);
          }

          if (v60)
          {
LABEL_28:
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v75 = type metadata accessor for Logger();
            __swift_project_value_buffer(v75, static Logger.UI);
            v76 = v4;
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v111[0] = v109;
              *v79 = 136315650;
              *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x8000000249BDEB20, v111);
              *(v79 + 12) = 2112;
              *(v79 + 14) = v76;
              *v80 = v4;
              *(v79 + 22) = 2080;
              v81 = v76;
              v82 = (v57)();
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
              v84 = v57;
              v85 = MEMORY[0x24C1FB0D0](v82, v83);
              v87 = v86;

              v88 = v85;
              v57 = v84;
              v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v87, v111);

              *(v79 + 24) = v89;
              _os_log_impl(&dword_2493AC000, v77, v78, "%s calling didSelect in column mode to reset info panel %@ selectedNodes: %s", v79, 0x20u);
              outlined destroy of CharacterSet?(v80, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v90 = v80;
              v30 = MEMORY[0x277D85000];
              MEMORY[0x24C1FE850](v90, -1, -1);
              v91 = v109;
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v91, -1, -1);
              MEMORY[0x24C1FE850](v79, -1, -1);
            }

            type metadata accessor for DOCConcreteSelectionLocation();
            v92 = (v57)();
            v93 = DOCConcreteSelectionLocation.__allocating_init(selectedNodes:)(v92);
            if (v93)
            {
              v94 = v93;
              v95 = (*((*v30 & *v76) + 0xE8))();
              if (v95)
              {
                v96 = v95;
                (*((*v30 & *v76) + 0xA50))(v111);
                v97 = v111[3];
                outlined destroy of DOCItemCollectionConfiguration(v111);
                [v96 didSelectLocation:v94 atParentLocation:v97];

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }
          }

LABEL_38:

          return;
        }

        swift_unknownObjectRelease();
      }

      v41 = v108;
      v42 = v109;
      v40 = v103;
      goto LABEL_17;
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  ObjectType = swift_getObjectType();
  v20.receiver = v2;
  v20.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  [(UIWindow_optional *)&v20 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  if (to)
  {
    DOCItemCollectionViewController.updateCellContentTraitCollection()();
    v6 = [v2 traitCollection];
    [v6 enclosingUIPHorizontalInset];
    v8 = v7;

    [v2 setAdditionalSafeAreaInsets_];
    v18 = 0;
    v19 = 1;
    *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForUIPChanges] = UIViewController.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(1, 1, &v18, specialized closure #1 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:), 0, ObjectType);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249B9A480;
    v10 = lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();
    *(v9 + 32) = &type metadata for DOCUIPHorizontalInsetTrait;
    *(v9 + 40) = v10;
    v18 = 0;
    v19 = 1;
    v11 = UIViewController.doc_registerForTraitChanges<A>(_:options:handler:)(v9, &v18, specialized closure #2 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:), 0, ObjectType);

    *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForInsetChanges] = v11;
    swift_unknownObjectRelease();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249B9A480;
    v13 = lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
    *(v12 + 32) = &type metadata for DOCBrowserLayoutConfiguration.Trait;
    *(v12 + 40) = v13;
    v18 = 0;
    v19 = 1;
    v14 = UIViewController.doc_registerForTraitChanges<A>(_:options:handler:)(v12, &v18, specialized closure #3 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:), 0, ObjectType);

    *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForBrowserLayoutChanges] = v14;
LABEL_9:
    swift_unknownObjectRelease();
    return;
  }

  if (*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForBrowserLayoutChanges])
  {
    v15 = swift_unknownObjectRetain();
    MEMORY[0x24C1FB8C0](v15);
    swift_unknownObjectRelease();
  }

  if (*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForUIPChanges])
  {
    v16 = swift_unknownObjectRetain();
    MEMORY[0x24C1FB8C0](v16);
    swift_unknownObjectRelease();
  }

  if (*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForInsetChanges])
  {
    v17 = swift_unknownObjectRetain();
    MEMORY[0x24C1FB8C0](v17);
    goto LABEL_9;
  }
}

void closure #1 in closure #3 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(void *a1)
{
  if ((*((*MEMORY[0x277D85000] & *a1) + 0xBD8))() == 3)
  {
    DOCItemCollectionViewController.didObserveLayoutRelatedChanges(forceLayoutInvalidation:)();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  objc_msgSendSuper2(&v14, sel_traitCollectionDidChange_, isa);
  DOCItemCollectionViewController.updateCellContentTraitCollection()();
  v4 = [v1 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v12 = static UITraitCollection.Traits.sizeCategory;
  v13 = qword_27EEE9CC0;

  v5 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v12, isa);

  if (v5)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x1820))(v6);
  }

  v7 = [v2 traitCollection];
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v12 = static UITraitCollection.Traits.hSizeClass;
  v13 = qword_27EEE9C60;

  v8 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v12, isa);

  if (v8)
  {
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v9 = [v2 viewIfLoaded];
    v10 = [v9 window];

    if (v10)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()(v11);
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }
  }

  DOCItemCollectionViewController.updateInlineRenameIfNeeded()();
}

void DOCItemCollectionViewController.updateInlineRenameIfNeeded()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1448))() & 1) == 0)
  {
    return;
  }

  v2 = *((*v1 & *v0) + 0x1960);
  v3 = v2();
  if (!v3)
  {
LABEL_5:
    v4 = *((*v1 & *v0) + 0x1498);
    if (!(v4)(v3))
    {
      return;
    }

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.Rename);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v53 = v10;
      *v9 = 136315650;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE1090, &v53);
      *(v9 + 12) = 2080;
      v11 = v4();

      if (v11)
      {
        v12 = (*(*v11 + 272))();

        v13 = [v12 filename];
        swift_unknownObjectRelease();
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v53);

        *(v9 + 14) = v17;
        *(v9 + 22) = 2080;
        v19 = (v4)(v18);

        if (v19)
        {
          (*(*v19 + 272))();

          swift_getObjectType();
          v20 = DOCNode.nodeDescription.getter();
          v22 = v21;
          swift_unknownObjectRelease();
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v53);

          *(v9 + 24) = v23;
          _os_log_impl(&dword_2493AC000, v7, v8, "%s: update existing rename session on: %s node: %s)", v9, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v10, -1, -1);
          MEMORY[0x24C1FE850](v9, -1, -1);

          goto LABEL_13;
        }
      }

      else
      {

        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_13:
    if (DOCItemCollectionViewController.findUpdatedItemForRenameControllerIfNeeded()())
    {
      DOCItemCollectionViewController.repositionRenameToNewCellIfNeeded()();
    }

    else
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v53 = v27;
        *v26 = 136315138;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE1090, &v53);
        _os_log_impl(&dword_2493AC000, v24, v25, "%s: currently renaming item not found in item collection, aborting", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x24C1FE850](v27, -1, -1);
        MEMORY[0x24C1FE850](v26, -1, -1);
      }

      DOCItemCollectionViewController.abortRename()();
    }

    return;
  }

  if ((*((*v1 & *v0) + 0x1498))())
  {

    goto LABEL_5;
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.Rename);
  v29 = v0;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v32 = 136315650;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE1090, &v53);
    *(v32 + 12) = 2080;
    v33 = v2();
    if (v33)
    {
      v34 = v33;
      v35 = [v33 filename];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v38 = 0xE300000000000000;
      v36 = 7104878;
    }

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v53);

    *(v32 + 14) = v39;
    *(v32 + 22) = 2080;
    v41 = (v2)(v40);
    if (v41)
    {
      v42 = v41;
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        v44 = v43;
        v45 = v42;
        v46 = [v44 description];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;
      }

      else
      {
        v46 = [v42 displayName];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v50;
      }
    }

    else
    {
      v49 = 0xE300000000000000;
      v47 = 7104878;
    }

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v53);

    *(v32 + 24) = v51;
    _os_log_impl(&dword_2493AC000, v30, v31, "%s: begin deferred rename on: %s node: %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v52, -1, -1);
    MEMORY[0x24C1FE850](v32, -1, -1);
  }

  DOCItemCollectionViewController.resetReadyForRenameTimer()();
}

void DOCItemCollectionViewController.updateCellContentTraitCollection()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1018))();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI];
  v5 = [v0 traitCollection];
  if (v4)
  {
    v6 = UITraitCollection.modifyingTraits(_:)();

    v5 = v6;
  }

  v7 = [v3 preparedCells];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_7:
      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x24C1FC540](i, v9);
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          v13 = v12;
          type metadata accessor for DOCItemCollectionCell();
          v14 = swift_dynamicCastClass();
          if (v14)
          {
            v15 = (*((*v1 & *v14) + 0x208))();
            if (v15)
            {
              v16 = v15;
              v17 = *((*v1 & *v15) + 0x370);
              v18 = v5;
              v17(v5);
            }
          }
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }
  }

LABEL_18:
}

void DOCItemCollectionViewController.updateLayoutTraitsFromEnvironment(_:)(void *a1)
{
  v2 = v1;
  [objc_msgSend(a1 container)];
  v5 = v4;
  v7 = v6;
  v8 = swift_unknownObjectRelease();
  if (v5 <= 0.0 || v7 <= 0.0)
  {
    return;
  }

  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0xA50))(&v81, v8);
  v95 = v83;
  v96 = v84;
  v97 = v85;
  v93 = v81;
  v94 = v82;
  outlined destroy of DOCItemCollectionConfiguration(&v93);
  LOBYTE(v70) = v94;
  v10 = [a1 traitCollection];
  type metadata accessor for DOCItemCollectionLayoutTraits();
  swift_allocObject();
  v11 = DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)(&v70, v10, v5, v7);
  v12 = (*((*v9 & *v1) + 0x11C0))();
  v13 = DOCItemCollectionLayoutTraits.needsCollectionViewUpdate(comparedTo:)(v12);

  if ((v13 & 1) == 0)
  {
LABEL_56:

    return;
  }

  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits;
  swift_beginAccess();
  *(v2 + v14) = v11;

  v16 = *((*v9 & *v2) + 0xBD8);
  if ((v16)(v15) == 1 || v16() == 3)
  {
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 1;
    DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
  }

  v92 = MEMORY[0x277D84FA0];
  v17 = *((*v9 & *v2) + 0x1010);
  v18 = v17();
  v19 = [v18 preparedCells];

  if (!v19)
  {
    goto LABEL_61;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (!v21)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_21;
    }
  }

  if (v21 < 1)
  {
    goto LABEL_59;
  }

  for (i = 0; i != v21; ++i)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x24C1FC540](i, v20);
    }

    else
    {
      v23 = *(v20 + 8 * i + 32);
    }

    v24 = v23;
    type metadata accessor for DOCItemCollectionCell();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      specialized Set._Variant.insert(_:)(&v81, v25);
    }

    else
    {
    }
  }

LABEL_21:

  v27 = (v17)(v26);
  v28 = [v27 visibleCells];

  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v29 >> 62)
  {
    v30 = __CocoaSet.count.getter();
    if (v30)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_23:
      if (v30 < 1)
      {
        goto LABEL_60;
      }

      for (j = 0; j != v30; ++j)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x24C1FC540](j, v29);
        }

        else
        {
          v32 = *(v29 + 8 * j + 32);
        }

        v33 = v32;
        type metadata accessor for DOCItemCollectionCell();
        v34 = swift_dynamicCastClass();
        if (v34)
        {
          specialized Set._Variant.insert(_:)(&v81, v34);
        }

        else
        {
        }
      }
    }
  }

  v58 = v11;

  v35 = v92;
  if ((v92 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for DOCItemCollectionCell();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DOCItemCollectionCell and conformance NSObject, type metadata accessor for DOCItemCollectionCell, MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    v35 = v98;
    v36 = v99;
    v37 = v100;
    v38 = v101;
    v39 = v102;
  }

  else
  {
    v38 = 0;
    v40 = -1 << *(v92 + 32);
    v36 = v92 + 56;
    v37 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v39 = v42 & *(v92 + 56);
  }

  v43 = (v37 + 64) >> 6;
  v44 = MEMORY[0x277D85000];
  while (v35 < 0)
  {
    v50 = __CocoaSet.Iterator.next()();
    if (!v50 || (*&v70 = v50, type metadata accessor for DOCItemCollectionCell(), swift_dynamicCast(), v49 = v81, v47 = v38, v48 = v39, !v81))
    {
LABEL_55:
      outlined consume of Set<UITouch>.Iterator._Variant(v35);
      goto LABEL_56;
    }

LABEL_51:
    v51 = *((*v44 & *v49) + 0x208);
    v52 = v51();
    if (v52)
    {
      v53 = v52;
      (*(*v58 + 184))(&v70);
      v89 = v78;
      v90 = v79;
      v91[0] = v80[0];
      *(v91 + 9) = *(v80 + 9);
      v85 = v74;
      v86 = v75;
      v87 = v76;
      v88 = v77;
      v81 = v70;
      v82 = v71;
      v83 = v72;
      v84 = v73;
      DOCGridLayout.specIconWidth.modify();
      v54 = *v44 & *v53;
      v67 = v89;
      v68 = v90;
      v69[0] = v91[0];
      *(v69 + 9) = *(v91 + 9);
      v63 = v85;
      v64 = v86;
      v65 = v87;
      v66 = v88;
      v59 = v81;
      v60 = v82;
      v61 = v83;
      v62 = v84;
      (*(v54 + 736))(&v59);
    }

    v55 = v51();
    if (v55)
    {
      v56 = v55;
      (*(*v58 + 256))(&v70);
      v85 = v74;
      v86 = v75;
      v87 = v76;
      v88 = v77;
      v81 = v70;
      v82 = v71;
      v83 = v72;
      v84 = v73;
      DOCGridLayout.specIconWidth.modify();
      v57 = *MEMORY[0x277D85000] & *v56;
      v63 = v85;
      v64 = v86;
      v65 = v87;
      v66 = v88;
      v59 = v81;
      v60 = v82;
      v61 = v83;
      v62 = v84;
      (*(v57 + 760))(&v59);
    }

    else
    {
    }

    v38 = v47;
    v39 = v48;
  }

  v45 = v38;
  v46 = v39;
  v47 = v38;
  if (v39)
  {
LABEL_47:
    v48 = (v46 - 1) & v46;
    v49 = *(*(v35 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v46)))));
    if (!v49)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v47 >= v43)
    {
      goto LABEL_55;
    }

    v46 = *(v36 + 8 * v47);
    ++v45;
    if (v46)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t DOCItemCollectionViewController.updatedLayoutInfoIfShouldInvalidate(traitCollection:size:force:ignoreFooter:)(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  if (![v6 isViewLoaded])
  {
    return 0;
  }

  if (a4)
  {
    DOCItemCollectionViewController.modelPreloadingCollectionViewSize.getter();
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *&a2;
    v15 = *&a3;
  }

  v16 = [v6 viewIfLoaded];
  if (v16)
  {
    v17 = v16;
    v18 = *((*MEMORY[0x277D85000] & *v6) + 0xBD8);
    if (v18() && v18() != 1)
    {
    }

    else
    {
      [v17 safeAreaInsets];
      v20 = v19;
      [v17 safeAreaInsets];
      v22 = v21;

      v13 = v13 - (v20 + v22);
    }
  }

  result = 0;
  if (v13 > 0.0 && v15 > 0.0)
  {
    if (one-time initialization token for hSizeClass != -1)
    {
      swift_once();
    }

    v47 = static UITraitCollection.Traits.hSizeClass;
    v48 = qword_27EEE9C60;
    v24 = one-time initialization token for vSizeClass;

    if (v24 != -1)
    {
      swift_once();
    }

    v49 = static UITraitCollection.Traits.vSizeClass;
    v50 = qword_27EEE9C78;
    v25 = one-time initialization token for displayScale;

    if (v25 != -1)
    {
      swift_once();
    }

    v51 = static UITraitCollection.Traits.displayScale;
    v52 = qword_27EEE9C90;
    v26 = one-time initialization token for sizeCategory;

    if (v26 != -1)
    {
      swift_once();
    }

    v53 = static UITraitCollection.Traits.sizeCategory;
    v54 = qword_27EEE9CC0;

    _StringGuts.grow(_:)(18);

    *v46 = 0;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v27);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v45[0] = 0;
    v45[1] = 0x6172287469617254;
    v45[2] = 0xEF3A65756C615677;

    specialized OptionSet<>.insert(_:)(v46, v47, *(&v47 + 1), v48);

    v29 = *(&v49 + 1);
    v28 = v50;
    v30 = v49;

    specialized OptionSet<>.insert(_:)(v46, v30, v29, v28);

    v32 = *(&v51 + 1);
    v31 = v52;
    v33 = v51;

    specialized OptionSet<>.insert(_:)(v46, v33, v32, v31);

    v35 = *(&v53 + 1);
    v34 = v54;
    v36 = v53;

    specialized OptionSet<>.insert(_:)(v46, v36, v35, v34);

    swift_arrayDestroy();
    v37 = UITraitCollection.doc_hasSpecified(_:)(v45);

    if ((v37 & 1) == 0)
    {
      return 0;
    }

    v39 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v6) + 0xA50))(v45, v38);
    outlined destroy of DOCItemCollectionConfiguration(v45);
    v46[0] = v45[2];
    type metadata accessor for DOCItemCollectionLayoutTraits();
    swift_allocObject();
    result = DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)(v46, a1, v13, v15);
    if ((a5 & 1) == 0)
    {
      v41 = *((*v39 & *v6) + 0x11C0);
      v42 = result;
      v43 = v41(result, v40);
      v44 = DOCItemCollectionLayoutTraits.needsCollectionViewUpdate(comparedTo:)(v43);

      result = v42;
      if ((v44 & 1) == 0)
      {

        return 0;
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.invalidateCollectionViewLayoutIfNeeded(traitCollection:size:force:)(UITraitCollection traitCollection, CGSize_optional size, Swift::Bool force)
{
  v6 = v4;
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v5) + 0x13F0))(traitCollection.super.isa, *&size.is_nil, force, v3 & 1, size.value, *&size.value.height);
  if (v8)
  {
    v9 = v8;

    [v5 checkIfOutlineModeNeedsChange];
    *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForceLayoutForFooter) = 0;
    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits;
    swift_beginAccess();
    *(v5 + v10) = v9;

    *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 1;
    DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
    v11.n128_f64[0] = DOCItemCollectionViewController.updateViewOptionsViewModel()();
    v12 = (*((*v7 & *v5) + 0xFC8))(v11);
    specialized DOCItemCollectionViewController.configureSupplementaryItems(for:footerContentInsets:)(v12);

    v13 = (*((*v7 & *v5) + 0x1400))();
    if (v6 & 1) != 0 || ((*((*v7 & *v5) + 0xEF8))())
    {
      v14 = DOCItemCollectionViewController.updateSectionHeaders()();
    }

    [v5 _setNeedsUpdateOfMultitaskingDragExclusionRects];
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.updateAndInvalidateLayout()()
{
  v1 = v0;
  LODWORD(v2) = [v0 isViewLoaded];
  if (!v2)
  {
    return v2;
  }

  v3 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x11C0))();
  if (!v2)
  {
    return v2;
  }

  v4 = v2;
  v5 = objc_opt_self();
  v60 = [v5 areAnimationsEnabled];
  v6 = [v5 setAnimationsEnabled_];
  v7 = *((*v3 & *v0) + 0x1010);
  v8 = (v7)(v6);
  v9 = [v8 panGestureRecognizer];

  v56 = [v9 isEnabled];
  v10 = (*(*v4 + 160))(v98);
  v11 = (*(*v4 + 232))(&v87, v10);
  v12 = BYTE8(v87);
  v13 = *((*v3 & *v1) + 0xBD8);
  v61 = v5;
  v14 = (v13)(v11) == 1 || v13() == 3 || v13() == 2;
  v15 = v7();
  v16 = v15;
  v17 = v99;
  if (v99)
  {
    v18 = v14;
  }

  else
  {
    v18 = 1;
  }

  [v15 setAlwaysBounceVertical_];

  v19 = v7();
  [v19 setAlwaysBounceHorizontal_];

  v20 = v7();
  v21 = v20;
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled) == 2)
  {
    if ((v14 & 1) == 0)
    {
      v12 = v100;
    }
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled);
  }

  [v20 setScrollEnabled_];

  v22 = v7();
  [v22 setShowsVerticalScrollIndicator_];

  v58 = objc_opt_self();
  v23 = [v58 sharedGenerator];
  v57 = [v23 startBatching];

  v59 = v7;
  v24 = v7();
  v25 = [v24 preparedCells];

  if (!v25)
  {
LABEL_50:
    __break(1u);
    return v2;
  }

  v62 = v1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    v27 = v2;
    if (!v2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_32;
    }
  }

  if (v27 < 1)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v28 = 0;
  v63 = v26;
  v64 = v26 & 0xC000000000000001;
  v29 = MEMORY[0x277D85000];
  do
  {
    if (v64)
    {
      v30 = MEMORY[0x24C1FC540](v28, v26);
    }

    else
    {
      v30 = *(v26 + 8 * v28 + 32);
    }

    v31 = v30;
    type metadata accessor for DOCItemCollectionCell();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = *((*v29 & *v32) + 0x208);
      v34 = v33();
      if (v34)
      {
        v35 = v34;
        (*(*v4 + 184))(&v76);
        v95 = v84;
        v96 = v85;
        v97[0] = v86[0];
        *(v97 + 9) = *(v86 + 9);
        v91 = v80;
        v92 = v81;
        v93 = v82;
        v94 = v83;
        v87 = v76;
        v88 = v77;
        v89 = v78;
        v90 = v79;
        DOCGridLayout.specIconWidth.modify();
        v36 = *v29 & *v35;
        v73 = v95;
        v74 = v96;
        v75[0] = v97[0];
        *(v75 + 9) = *(v97 + 9);
        v69 = v91;
        v70 = v92;
        v71 = v93;
        v72 = v94;
        v65 = v87;
        v66 = v88;
        v67 = v89;
        v68 = v90;
        (*(v36 + 736))(&v65);
      }

      v37 = v33();
      if (v37)
      {
        v38 = v37;
        (*(*v4 + 256))(&v76);
        v91 = v80;
        v92 = v81;
        v93 = v82;
        v94 = v83;
        v87 = v76;
        v88 = v77;
        v89 = v78;
        v90 = v79;
        DOCGridLayout.specIconWidth.modify();
        v39 = *MEMORY[0x277D85000] & *v38;
        v69 = v91;
        v70 = v92;
        v71 = v93;
        v72 = v94;
        v65 = v87;
        v66 = v88;
        v67 = v89;
        v68 = v90;
        (*(v39 + 760))(&v65);
      }

      else
      {
      }

      v26 = v63;
    }

    else
    {
    }

    ++v28;
  }

  while (v27 != v28);
LABEL_32:

  v2 = DOCItemCollectionViewController.visibleSectionHeaders.getter();
  v40 = v2;
  v41 = MEMORY[0x277D85000];
  if (v2 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    v42 = v2;
    if (v2)
    {
LABEL_34:
      if (v42 >= 1)
      {
        v43 = 0;
        do
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x24C1FC540](v43, v40);
          }

          else
          {
            v44 = *(v40 + 8 * v43 + 32);
          }

          v45 = v44;
          ++v43;
          v46 = *((*v41 & *v44) + 0x2B8);

          v46(v47);
        }

        while (v42 != v43);
        goto LABEL_41;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v42 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_34;
    }
  }

LABEL_41:

  if ([v62 doc:sel__doc_performLiveResizeSkippedWork scheduleHandlerIfInLiveResize:?])
  {
    *(v62 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_updateSnapshot) = 1;
    v48 = v59();
    v49 = [v48 collectionViewLayout];

    [v49 invalidateLayout];
  }

  else
  {
    v51 = (*((*v41 & *v62) + 0xD60))();
    LOWORD(v87) = 2;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v51, &v87, 1);
  }

  if ((*((*v41 & *v62) + 0x1448))(v50))
  {
    v52 = v59();
    v53 = [v52 panGestureRecognizer];

    [v53 setEnabled_];
    DOCItemCollectionViewController._repositionRenamingCell()();
  }

  v54 = [v58 sharedGenerator];
  [v54 endBatching_];

  outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v98);
  [v61 setAnimationsEnabled_];

  LOBYTE(v2) = 1;
  return v2;
}

void DOCItemCollectionViewController._repositionRenamingCell()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v52 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v0) + 0x1710);
  v14 = v13(v9);
  v15 = (*((*v12 & *v0) + 0x1700))(v14 & 1);
  if ((v13)(v15) & 1) == 0 && ((*((*v12 & *v0) + 0x1448))())
  {
    v16 = (*((*v12 & *v0) + 0x1498))();
    if (v16)
    {
      v60 = v7;
      v61 = v6;
      v17 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      if (v17)
      {
        v18 = v16;
        v19 = (*((*v12 & *v17) + 0x258))();
        v20 = (*v18 + 272);
        v21 = *v20;
        v22 = (*v20)();
        swift_getObjectType();
        v23 = specialized Array<A>.contains(node:)(v22, v19);

        v24 = swift_unknownObjectRelease();
        if (v23)
        {
          v58 = v18;
          v25 = (v21)(v24);
          v59 = specialized RandomNumberGenerator.next<A>(upperBound:)(0xF4240uLL);
          v26 = v20;
          v54 = v21;
          if (one-time initialization token for Rename != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          v28 = __swift_project_value_buffer(v27, static Logger.Rename);
          swift_unknownObjectRetain();
          v56 = v28;
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.debug.getter();
          swift_unknownObjectRelease();
          v55 = v30;
          v31 = os_log_type_enabled(v29, v30);
          v32 = v60;
          v33 = v61;
          v57 = "otherViewModesRenameAndMove()";
          if (v31)
          {
            v34 = swift_slowAlloc();
            v52[1] = v26;
            v35 = v34;
            v62 = swift_slowAlloc();
            v36 = v62;
            *v35 = 136315650;
            *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BE1030, &v62);
            *(v35 + 12) = 2048;
            *(v35 + 14) = v59;
            *(v35 + 22) = 2080;
            swift_getObjectType();
            v37 = DOCNode.nodeDescription.getter();
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v62);
            v53 = v25;
            v40 = v39;

            *(v35 + 24) = v40;
            v25 = v53;
            _os_log_impl(&dword_2493AC000, v29, v55, "%s (%ld): looking for cell for node: %s", v35, 0x20u);
            swift_arrayDestroy();
            v41 = v36;
            v33 = v61;
            MEMORY[0x24C1FE850](v41, -1, -1);
            MEMORY[0x24C1FE850](v35, -1, -1);
          }

          (*((*v12 & *v1) + 0xD90))(v25);
          if ((*(v32 + 48))(v5, 1, v33) == 1)
          {
            outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);

            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.error.getter();

            v44 = os_log_type_enabled(v42, v43);
            v45 = v57;
            if (v44)
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v62 = v47;
              *v46 = 136315650;
              *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v45 | 0x8000000000000000, &v62);
              *(v46 + 12) = 2048;
              *(v46 + 14) = v59;
              *(v46 + 22) = 2080;
              v54();
              swift_getObjectType();
              v48 = DOCNode.nodeDescription.getter();
              v50 = v49;
              swift_unknownObjectRelease();
              v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v62);

              *(v46 + 24) = v51;
              _os_log_impl(&dword_2493AC000, v42, v43, "%s %ld: FAILED!!!. Node: %s not found in itemCollection", v46, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v47, -1, -1);
              MEMORY[0x24C1FE850](v46, -1, -1);
            }

            else
            {
            }

            swift_unknownObjectRelease();
          }

          else
          {
            (*(v32 + 32))(v11, v5, v33);
            findRenameCell #1 () in DOCItemCollectionViewController._repositionRenamingCell()(v1, v25, 0xD000000000000019, v57 | 0x8000000000000000, v59, v11);
            swift_unknownObjectRelease();

            (*(v32 + 8))(v11, v33);
          }
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void DOCItemCollectionViewController._doc_performLiveResizeSkippedWork()(__n128 a1)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_computeStackMetrics) == 1)
  {
    DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
  }

  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_updateSnapshot) == 1)
  {
    v2 = [v1 traitCollection];
    (*((*MEMORY[0x277D85000] & *v1) + 0x13F8))();
  }
}

double DOCItemCollectionViewController.preview(items:defaultItem:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(type metadata accessor for DOCPreviewController(0));
  v7 = DOCPreviewController.init()();
  v8 = v7;
  v9 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (v9)
  {
    v10 = &protocol witness table for DOCDocumentManager;
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v7) + 0xF8);
  v13 = v9;
  v12(v9, v10);
  v14 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
  v15 = *((*v11 & *v8) + 0x128);
  v16 = v14;
  v15(v14);
  v17 = *((*v11 & *v8) + 0x1D8);
  v18 = swift_unknownObjectRetain();
  v17(v18, &protocol witness table for DOCItemCollectionViewController);
  v19 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v20 = *((*v11 & *v8) + 0x140);
  v21 = v19;
  v20(v19);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_15:
    v30 = (*((*v11 & *v3) + 0xCB8))();
    Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v30);

    a1 = Available;
    if (!(Available >> 62))
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_6:

  Available = a1;
  if (!(a1 >> 62))
  {
LABEL_7:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    goto LABEL_8;
  }

LABEL_16:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  Available = _bridgeCocoaArray<A>(_:)();

LABEL_8:
  v33 = Available;
  v34 = 0;
  v35 = 0;
  if (a2)
  {
    v23 = specialized Collection<>.firstIndex(of:)(a2, a1);
    v25 = v24;
  }

  else
  {

    v23 = 0;
    v25 = 1;
  }

  (*((*v11 & *v8) + 0x1C8))(&v33, v23, v25 & 1);
  outlined consume of DOCPreviewSource?(v33, v34, v35);
  v26 = one-time initialization token for shared;
  v27 = v3;
  if (v26 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31[0] = 1;
  v32 = v27;
  v28 = *(*static DOCPreviewRouter.shared + 96);

  v28(v8, v31, 0, 0);

  return result;
}

void DOCItemCollectionViewController.effectiveAppearanceDidChange(_:)(void *a1)
{
  v34.receiver = v1;
  v34.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v32 = a1;
  v3 = objc_msgSendSuper2(&v34, sel_effectiveAppearanceDidChange_, a1);
  v4 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0xC58))(v3) & 1) == 0)
  {
    v5 = (*((*v4 & *v1) + 0x1338))();
    (*((*v4 & *v1) + 0x1198))(2);
    if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) == 1)
    {
      v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      if (!v6)
      {
        goto LABEL_26;
      }

      if (([v6 isGathering] & 1) == 0)
      {
        (*((*v4 & *v1) + 0x1820))();
        (*((*v4 & *v1) + 0x1378))(v5, 0, 0);
      }
    }

    v8 = (*((*v4 & *v1) + 0x1018))(v7);
    if (v8 && (v9 = v8, v10 = [v8 preparedCells], v9, v10))
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v31 = v1;
    if (v11 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_12:
        if (v12 >= 1)
        {
          for (i = 0; i != v12; ++i)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x24C1FC540](i, v11);
            }

            else
            {
              v14 = *(v11 + 8 * i + 32);
            }

            v15 = v14;
            type metadata accessor for DOCItemCollectionCell();
            v16 = swift_dynamicCastClass();
            if (v16)
            {
              v17 = (*((*v4 & *v16) + 0x208))();
              if (v17)
              {
                v18 = v17;
                v19 = *((*v4 & *v17) + 0x328);
                v20 = v32;
                v19(v32);
              }
            }
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }
    }

LABEL_22:

    v22 = *(*((*v4 & *v31) + 0x1908))(v21);
    v23 = (*(v22 + 312))(v33);
    v25 = v24;
    v26 = *v24;
    *v24 = 0;

    v27 = v25[1];
    v25[1] = 0;

    v23(v33, 0);

    v28 = *(v31 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView);
    if (v28)
    {
      v29 = v28;
      v30 = [v32 backgroundColor];
      [v29 setBackgroundColor_];
    }
  }
}

uint64_t DOCItemCollectionViewController.isRenamingInline.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename))
  {
    return 0;
  }

  if (!(*((*MEMORY[0x277D85000] & *v0) + 0x1498))())
  {
    return *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename);
  }

  return 1;
}

double DOCItemCollectionViewController.titleMenuContext.getter(void *a1)
{
  swift_beginAccess();

  return result;
}

void DOCItemCollectionViewController.inlineRenameController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_inlineRenameController;
  swift_beginAccess();
  *(v1 + v3) = a1;

  if (!*(v1 + v3))
  {
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
  }
}

uint64_t (*DOCItemCollectionViewController.inlineRenameController.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_inlineRenameController;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewController.inlineRenameController.modify;
}

void DOCItemCollectionViewController.inlineRenameController.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (!*(v4 + v3[4]))
    {
      *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
    }
  }

  free(v3);
}

void DOCItemCollectionViewController.updateNavBarHiddenForActiveRename(traitCollection:)(void *a1)
{
  if ([a1 verticalSizeClass] == 1)
  {
    v3 = 1;
    goto LABEL_8;
  }

  v4 = [a1 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    v5 = static UIContentSizeCategory.> infix(_:_:)();

    if (v5)
    {
      v3 = [a1 horizontalSizeClass] == 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v3 = 0;
LABEL_8:
  v6 = [v1 navigationController];
  DOCItemCollectionViewController.applyNavBarHidden(_:to:animated:)(v3, v6, 1);
}

void DOCItemCollectionViewController.applyNavBarHidden(_:to:animated:)(char a1, void *a2, int a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f64[0] = MEMORY[0x28223BE20](v19, v20);
  v25 = &v34 - v24;
  if (a2)
  {
    v43 = a3;
    if (a1)
    {
      *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 1;
    }

    else
    {
      if (a3)
      {
        v39 = v21;
        v40 = v22;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        v27 = a2;
        v35 = v3;
        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        UIAnimationDragCoefficient();
        + infix(_:_:)();
        v28 = *(v40 + 8);
        v40 += 8;
        v38 = v28;
        v28(v18, v39);
        v29 = swift_allocObject();
        v30 = v35;
        *(v29 + 16) = v35;
        aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.applyNavBarHidden(_:to:animated:);
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_895;
        v36 = _Block_copy(aBlock);
        v31 = v30;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x277D84F90];
        v35 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v36;
        v32 = v37;
        MEMORY[0x24C1FB940](v25, v14, v10, v36);
        _Block_release(v33);

        (*(v42 + 8))(v10, v7);
        (*(v41 + 8))(v14, v11);
        v38(v25, v39);
LABEL_11:
        [a2 setNavigationBarHidden:a1 & 1 animated:v43 & 1];

        return;
      }

      *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 0;
    }

    (*((*MEMORY[0x277D85000] & *v3) + 0xF60))(a2);
    goto LABEL_11;
  }

  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = a1 & 1;
  v26 = *((*MEMORY[0x277D85000] & *v3) + 0xF60);

  v26(v23);
}

uint64_t closure #3 in DOCItemCollectionViewController.move(nodes:to:completion:)(unint64_t a1, uint64_t (*a2)(BOOL))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315906;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BE0F20, &v16);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 != 0;
    *(v7 + 18) = 2080;
    if (a1 && a1 >> 62)
    {
      __CocoaSet.count.getter();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 20) = v11;
    *(v7 + 28) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGSgMd, &_sSaySo7DOCNode_pGSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 30) = v14;
    _os_log_impl(&dword_2493AC000, v5, v6, "%s Requested move finished with success: %{BOOL}d moved: %s nodes. Nodes: %s", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  return a2(a1 != 0);
}

Swift::Void __swiftcall DOCItemCollectionViewController.loadView()()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v2 = objc_msgSendSuper2(&v54, sel_loadView);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewPool);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0xFC8);
  v6 = (v5)(v2);
  v50 = v0;
  v7 = (*((*v4 & *v3) + 0x60))(v6, partial apply for closure #1 in DOCItemCollectionViewController.loadView(), &v49);

  v8 = v5();
  v9 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate];
  swift_beginAccess();
  *(v9 + 1) = &protocol witness table for DOCItemCollectionViewController;
  swift_unknownObjectWeakAssign();

  v10 = *((*v4 & *v1) + 0x1298);
  v11 = v7;
  [v11 setAllowsMultipleSelection_];
  v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  [v11 setAllowsMultipleSelectionDuringEditing_];
  [v11 setAllowsFocus_];
  [v11 setSelectionFollowsFocus_];
  [v11 _setShouldBecomeFocusedOnSelection_];
  v13 = v11;
  v14 = DOCFocusGroupIdentifierBrowserFromConfiguration();
  if (!v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = MEMORY[0x24C1FAD20](v15);
  }

  [v13 setFocusGroupIdentifier_];

  (*((*v4 & *v13) + 0x178))(0);
  [v13 setKeyboardDismissMode_];
  [v1 setRestoresFocusAfterTransition_];
  v16 = type metadata accessor for DOCItemCollectionGridCell();
  DOCItemCollectionViewController.registerItemCellClass(_:forCellWithReuseIdentifier:)(v16, *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier + 8));
  v17 = type metadata accessor for DOCItemCollectionListCell(0);
  DOCItemCollectionViewController.registerItemCellClass(_:forCellWithReuseIdentifier:)(v17, *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier + 8));
  v18 = type metadata accessor for DOCItemCollectionLargeTextListCell(0);
  DOCItemCollectionViewController.registerItemCellClass(_:forCellWithReuseIdentifier:)(v18, *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier + 8));
  v19 = type metadata accessor for DOCItemCollectionOutlineCell();
  DOCItemCollectionViewController.registerItemCellClass(_:forCellWithReuseIdentifier:)(v19, *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier + 8));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionReusableView, 0x277D75298);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC6130);
  v22 = MEMORY[0x24C1FAD20](*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier + 8));
  [v13 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v21 withReuseIdentifier:v22];

  type metadata accessor for DOCItemCollectionViewController.FooterView();
  v23 = swift_getObjCClassFromMetadata();
  v24 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC5E50);
  v25 = MEMORY[0x24C1FAD20](*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier + 8));
  [v13 registerClass:v23 forSupplementaryViewOfKind:v24 withReuseIdentifier:v25];

  v26 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC5E50);
  v27 = MEMORY[0x24C1FAD20](*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier + 8));
  [v13 registerClass:v23 forSupplementaryViewOfKind:v26 withReuseIdentifier:v27];

  type metadata accessor for DOCItemCollectionViewSectionHeader();
  v28 = swift_getObjCClassFromMetadata();
  if (one-time initialization token for sectionHeader != -1)
  {
    swift_once();
  }

  v29 = MEMORY[0x24C1FAD20](static DOCItemCollectionViewController.ElementKind.sectionHeader, *algn_27EF18858);
  v30 = MEMORY[0x24C1FAD20](*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier + 8));
  [v13 registerClass:v28 forSupplementaryViewOfKind:v29 withReuseIdentifier:v30];

  type metadata accessor for DOCOutlineHeaderView();
  v31 = swift_getObjCClassFromMetadata();
  v32 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BCE120);
  v33 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BCE120);
  [v13 registerClass:v31 forSupplementaryViewOfKind:v32 withReuseIdentifier:v33];

  v34 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v34)
  {
    v35 = (*((*v4 & *v34) + 0x180))();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FINodeCGMd, &_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FINodeCGMR);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      v38 = swift_allocObject();
      *(v38 + 16) = partial apply for closure #2 in DOCItemCollectionViewController.loadView();
      *(v38 + 24) = v36;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables20DOCCollectionSectionVSo6FINodeCGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables20DOCCollectionSectionVSo6FINodeCGMR));

      v39 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
      v40 = &OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fiNodeDataSource;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FPItemCGMd, &_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FPItemCGMR);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      v41 = swift_allocObject();
      *(v41 + 16) = partial apply for closure #3 in DOCItemCollectionViewController.loadView();
      *(v41 + 24) = v36;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables20DOCCollectionSectionVSo6FPItemCGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables20DOCCollectionSectionVSo6FPItemCGMR));

      v39 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
      v40 = &OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fpNodeDataSource;
    }

    *(v37 + 16) = v39;

    *(v1 + *v40) = v37;

    v43 = (*((*v4 & *v1) + 0x820))(v51, v42);
    if (v52)
    {
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = v52;
      v46 = v53;
      __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
      v43 = (*(v46 + 16))(partial apply for closure #4 in DOCItemCollectionViewController.loadView(), v44, v45, v46);
    }

    v47 = (*((*v4 & *v1) + 0xA78))(v43);
    if (v47)
    {
      swift_getObjectType();
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();

      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #5 in DOCItemCollectionViewController.loadView(), v48);

      v47 = swift_unknownObjectRelease();
    }

    [v13 setHidden_];

    outlined destroy of CharacterSet?(v51, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMR);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCItemCollectionViewController.loadView()(void *a1, char *a2)
{
  v4 = [a2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [objc_allocWithZone(type metadata accessor for DOCOuterScrollView()) initWithFrame_];
  [v14 setAutoresizingMask_];
  v15 = [a2 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 addSubview_];

  v17 = MEMORY[0x277D85000];
  v18 = *((*MEMORY[0x277D85000] & *a2) + 0xB28);
  v19 = v14;
  v20 = v18(v14);
  v21 = *((*v17 & *a2) + 0xB20);
  v22 = (v21)(v20);
  if (v22)
  {
    v23 = v22;
    [v22 setDelegate_];
  }

  v24 = v21();
  if (v24)
  {
    v25 = v24;
    [v24 setContentInsetAdjustmentBehavior_];
  }

  v26 = v21();
  if (v26)
  {
    v27 = v26;
    [v26 setScrollEnabled_];
  }

  [a1 setContentInsetAdjustmentBehavior_];
  [a1 setAlpha_];
  [a1 setPreservesSuperviewLayoutMargins_];
  [a1 setAutoresizingMask_];
  [v19 addSubview_];
  v28 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView];
  *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView] = a1;
  v29 = a1;

  v30 = *((*v17 & *v29) + 0x150);
  v31 = a2;
  v30(a2);
  [v31 setContentScrollView:v29 forEdge:15];
  (*((*v17 & *v31) + 0x210))(1);
  [v29 setPrefetchDataSource_];
  [v29 setPrefetchingEnabled_];
  [v29 setDelegate_];
  v32 = *((*v17 & *v29) + 0x110);
  swift_unknownObjectRetain();
  v32(a2, &protocol witness table for DOCItemCollectionViewController);
  v33 = *((*v17 & *v29) + 0xA8);
  swift_unknownObjectRetain();
  v33(a2, &protocol witness table for DOCItemCollectionViewController);
  v34 = *((*v17 & *v29) + 0xE0);
  swift_unknownObjectRetain();
  v35 = v34(a2, &protocol witness table for DOCItemCollectionViewController);
  (*((*v17 & *v31) + 0xA50))(v42, v35);
  v37 = v42[5];
  v36 = v42[6];

  outlined destroy of DOCItemCollectionConfiguration(v42);
  if (v36)
  {
    v38 = MEMORY[0x24C1FAD20](v37, v36);
  }

  else
  {
    v38 = 0;
  }

  [v29 setAccessibilityIdentifier_];

  if ([*&v31[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] collectionSupportsDragAndDrop])
  {
    [v29 setDragDelegate_];
    [v29 setDropDelegate_];
    [v29 setDragInteractionEnabled_];
  }

  v39 = [v31 effectiveAppearance];
  if (!v39 || (v40 = v39, v41 = [v39 backgroundColor], v40, !v41))
  {
    v41 = [objc_opt_self() systemBackgroundColor];
  }

  [v29 setBackgroundColor_];
}

void DOCItemCollectionViewController.registerItemCellClass(_:forCellWithReuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0x930))(v17);
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *v10 = v16;

  v12 = v8(v17, 0);
  v13 = (*((*v7 & *v3) + 0x1010))(v12);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = MEMORY[0x24C1FAD20](a2, a3);
  [v13 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v15];
}

void *closure #2 in DOCItemCollectionViewController.loadView()(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(a1, a3, a2);

    return v14;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.UI);
    (*(v8 + 16))(v11, a2, v7);
    swift_unknownObjectRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315394;
      swift_getObjectType();
      v21 = DOCNode.nodeDescription.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v8 + 8))(v11, v7);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v28);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_2493AC000, v17, v18, "Collection view asked for cell for item %s at index path %s but none was returned [self was deallocated].", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v19, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }
}

id closure #4 in DOCItemCollectionViewController.loadView()(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v40 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a2 == 0xD000000000000024 && 0x8000000249BC6130 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v19 = DOCItemCollectionViewController.supplementaryViewForGlobalHeader(with:at:)(a2, a3);
    }

    else if (a2 == 0xD000000000000024 && 0x8000000249BC5E50 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v19 = DOCItemCollectionViewController.supplementaryViewForGlobalFooter(with:at:)(a2, a3);
    }

    else
    {
      if (one-time initialization token for sectionHeader != -1)
      {
        swift_once();
      }

      if (static DOCItemCollectionViewController.ElementKind.sectionHeader == a2 && *algn_27EF18858 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*((*MEMORY[0x277D85000] & *v18) + 0xEF8))() & 1) != 0 || a2 == 0xD000000000000021 && 0x8000000249BCE120 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v19 = DOCItemCollectionViewController.supplementaryViewForSectionHeader(with:at:)(a2, a3);
      }

      else
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.UI);
        (*(v9 + 16))(v16, a4, v8);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v42 = v41;
          *v34 = 136315394;
          *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v42);
          *(v34 + 12) = 2080;
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v37 = v36;
          (*(v9 + 8))(v16, v8);
          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v42);

          *(v34 + 14) = v38;
          _os_log_impl(&dword_2493AC000, v32, v33, "Collection view asked for supplementary view of kind %s at index path %s but none was returned.", v34, 0x16u);
          v39 = v41;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v39, -1, -1);
          MEMORY[0x24C1FE850](v34, -1, -1);
        }

        else
        {

          (*(v9 + 8))(v16, v8);
        }

        v19 = [objc_allocWithZone(MEMORY[0x277D75298]) init];
      }
    }

    v20 = v19;

    return v20;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    (*(v9 + 16))(v12, a4, v8);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136315394;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v42);
      *(v25 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v9 + 8))(v12, v8);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v42);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_2493AC000, v23, v24, "Collection view asked for supplementary view of kind %s at index path %s but none was returned [self was deallocated].", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    return [objc_allocWithZone(MEMORY[0x277D75298]) init];
  }
}

id DOCItemCollectionViewController.supplementaryViewForGlobalHeader(with:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
  v8 = MEMORY[0x24C1FAD20](a1, a2);
  v9 = MEMORY[0x24C1FAD20](*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier), *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier + 8));
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  v12 = v11;
  v13 = [v12 subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x24C1FC540](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_17:
      swift_once();
      goto LABEL_12;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;
LABEL_9:

  [v16 removeFromSuperview];

  if (DOCItemCollectionViewController.needsHeaderView.getter())
  {
    v17 = DOCItemCollectionViewController._headerContainerView.getter();
    (*((*v6 & *v3) + 0x10D8))();
    v18 = v17;
    [v12 addSubview_];
    v19 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_249BA0470;
    v21 = [v18 leadingAnchor];
    v22 = [v12 layoutMarginsGuide];
    v23 = [v22 leadingAnchor];

    v24 = [v21 constraintEqualToAnchor:v23 constant:20.0];
    *(v20 + 32) = v24;
    v25 = [v18 trailingAnchor];

    v26 = [v12 layoutMarginsGuide];
    v27 = [v26 trailingAnchor];

    v28 = [v25 constraintEqualToAnchor:v27 constant:-20.0];
    *(v20 + 40) = v28;
    v29 = [v18 bottomAnchor];

    v30 = [v12 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(v20 + 48) = v31;
    v32 = [v18 topAnchor];

    v33 = [v12 topAnchor];
    v34 = [v32 constraintEqualToAnchor_];

    *(v20 + 56) = v34;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 activateConstraints_];

    goto LABEL_14;
  }

  if (one-time initialization token for UI != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.UI);
  v35.super.isa = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35.super.isa, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2493AC000, v35.super.isa, v37, "Collection view requested global header but headerContainerView is nil, returning an empty view.", v38, 2u);
    MEMORY[0x24C1FE850](v38, -1, -1);
  }

LABEL_14:

  return v12;
}

id DOCItemCollectionViewController.supplementaryViewForGlobalFooter(with:at:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x11C0))();
  if (!v6 || (v7 = (*(*v6 + 320))(v6), , (v7 & 1) == 0) || (v8 = specialized DOCItemCollectionViewController.footerView(createIfNeeded:)(1)) == 0)
  {
    v23 = (*((*v5 & *v2) + 0x1010))();
    v24 = MEMORY[0x24C1FAD20](a1, a2);
    v25 = MEMORY[0x24C1FAD20](*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier), *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier + 8));
    v26.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v16 = [v23 dequeueReusableSupplementaryViewOfKind:v24 withReuseIdentifier:v25 forIndexPath:v26.super.isa];

LABEL_11:
    return v16;
  }

  v9 = *((*v5 & *v2) + 0x1010);
  v10 = v8;
  v11 = v9();
  v12 = MEMORY[0x24C1FAD20](a1, a2);
  v13 = MEMORY[0x24C1FAD20](*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier), *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier + 8));
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [v11 dequeueReusableSupplementaryViewOfKind:v12 withReuseIdentifier:v13 forIndexPath:isa];

  type metadata accessor for DOCItemCollectionViewController.FooterView();
  v16 = swift_dynamicCastClassUnconditional();
  v17 = v15;
  v18 = [v16 subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x24C1FC540](0, v19);
    goto LABEL_9;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);
LABEL_9:
    v22 = v21;
LABEL_14:

    [v22 removeFromSuperview];

    v26.super.isa = v10;
    [v16 addSubview_];
    [(objc_class *)v26.super.isa setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_249BA0470;
    v29 = [(objc_class *)v26.super.isa leadingAnchor];
    v30 = [v16 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(v28 + 32) = v31;
    v32 = [(objc_class *)v26.super.isa trailingAnchor];

    v33 = [v16 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor_];

    *(v28 + 40) = v34;
    v35 = [(objc_class *)v26.super.isa topAnchor];

    v36 = [v16 topAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v28 + 48) = v37;
    v38 = [(objc_class *)v26.super.isa bottomAnchor];

    v39 = [v16 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor_];

    *(v28 + 56) = v40;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    v25 = Array._bridgeToObjectiveC()().super.isa;

    [v27 activateConstraints_];
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *DOCItemCollectionViewController.supplementaryViewForSectionHeader(with:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (MEMORY[0x24C1F8130]() == 2)
  {
    v6 = IndexPath.section.getter();
  }

  else
  {
    type metadata accessor for IndexPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B30]);
    dispatch thunk of Collection.startIndex.getter();
    result = dispatch thunk of Collection.endIndex.getter();
    if (v81 == v76)
    {
      goto LABEL_24;
    }

    v8 = dispatch thunk of Collection.subscript.read();
    v6 = *v9;
    v8(&v76, 0);
  }

  result = (*((*MEMORY[0x277D85000] & *v2) + 0x820))(&v76);
  v10 = v78;
  if (v78)
  {
    v11 = v79;
    __swift_project_boxed_opaque_existential_1(&v76, v78);
    (*(v11 + 96))(&v81, v6, v10, v11);
    v12 = v81;
    v13 = v83;
    v74 = v82;
    v75 = v84;
    __swift_destroy_boxed_opaque_existential_0(&v76);
    if ((a1 != 0xD000000000000021 || 0x8000000249BCE120 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if ((*((*MEMORY[0x277D85000] & *v2) + 0xBD8))() != 2)
      {
        goto LABEL_21;
      }

      if (one-time initialization token for sectionHeader != -1)
      {
        swift_once();
      }

      if ((static DOCItemCollectionViewController.ElementKind.sectionHeader != a1 || *algn_27EF18858 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_21:
        v65 = v13;
        v66 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
        v67 = MEMORY[0x24C1FAD20](a1, a2);
        v68 = MEMORY[0x24C1FAD20](*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier), *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier + 8));
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v70 = [v66 dequeueReusableSupplementaryViewOfKind:v67 withReuseIdentifier:v68 forIndexPath:isa];

        type metadata accessor for DOCItemCollectionViewSectionHeader();
        v20 = swift_dynamicCastClassUnconditional();
        v76 = v12;
        v77 = v74;
        v78 = v65;
        v79 = v75;
        DOCItemCollectionViewController.configure(sectionHeader:with:)(v20, &v76);

LABEL_14:

        return v20;
      }
    }

    v72 = v13;
    v14 = MEMORY[0x277D85000];
    v71 = *((*MEMORY[0x277D85000] & *v2) + 0x1010);
    v15 = v71();
    v16 = MEMORY[0x24C1FAD20](a1, a2);
    v17 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BCE120);
    v18 = IndexPath._bridgeToObjectiveC()().super.isa;
    v19 = [v15 dequeueReusableSupplementaryViewOfKind:v16 withReuseIdentifier:v17 forIndexPath:v18];

    type metadata accessor for DOCOutlineHeaderView();
    v20 = swift_dynamicCastClassUnconditional();
    v73 = *((*v14 & *v20) + 0xC0);
    v21 = v73();
    v22 = (*((*v14 & *v3) + 0xB08))();
    swift_beginAccess();
    v23 = *(v22 + 80);
    v24 = *(v22 + 88);
    v25 = *(v22 + 96);
    v27 = *(v22 + 104);
    v26 = *(v22 + 112);

    LOBYTE(v76) = v23;
    *(&v76 + 1) = v24;
    v77 = v25;
    v28 = MEMORY[0x277D85000];
    v78 = v27;
    v79 = v26;
    (*((*MEMORY[0x277D85000] & *v21) + 0x418))(&v76);

    v29 = *((*v28 & *v20) + 0xE0);
    v30 = swift_unknownObjectRetain();
    v31 = v29(v30, &protocol witness table for DOCItemCollectionViewController);
    v32 = (v73)(v31);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = *((*v28 & *v32) + 0x2D0);

    v34(partial apply for closure #1 in DOCItemCollectionViewController.supplementaryViewForSectionHeader(with:at:), v33);

    v36 = (v73)(v35);
    v37 = DOCItemCollectionViewController.shouldPreserveSpaceForDisclosureButton.getter();
    (*((*v28 & *v36) + 0x330))(v37 & 1);

    v38 = v73();
    result = [v3 view];
    if (result)
    {
      v39 = result;
      [result bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v85.origin.x = v41;
      v85.origin.y = v43;
      v85.size.width = v45;
      v85.size.height = v47;
      Width = CGRectGetWidth(v85);
      v49 = (*((*v28 & *v3) + 0xB20))();
      if (v49)
      {
        v50 = v49;
        [v49 contentOffset];
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      v53 = v71();
      [v53 safeAreaInsets];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      *&v76 = Width;
      *(&v76 + 1) = v52;
      v77 = v55;
      v78 = v57;
      v79 = v59;
      v80 = v61;
      (*((*v28 & *v38) + 0x2B8))(&v76);

      v62 = v73();
      (*((*v28 & *v3) + 0x1160))(&v76);
      v81 = v76;
      v82 = v77;
      LOBYTE(v83) = v78;
      (*((*v28 & *v62) + 0x318))(&v81);

      v63 = v73();
      v64 = *((*v28 & *v63) + 0x240);

      v64(v74, v72);

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

double closure #5 in DOCItemCollectionViewController.loadView()(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;

  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #5 in DOCItemCollectionViewController.loadView()(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for FINodeEntity(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v11 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - v14;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = a1;
      FINodeEntity.init(item:)(v18, v15);
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      outlined init with copy of ScrollPositionInfo.ItemOffset(v15, v11, type metadata accessor for FINodeEntity);
      type metadata accessor for MainActor();
      v20 = v17;
      v21 = static MainActor.shared.getter();
      v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D85700];
      v23[2] = v21;
      v23[3] = v24;
      v23[4] = v20;
      outlined init with take of ScrollPositionInfo.ItemOffset(v11, v23 + v22, type metadata accessor for FINodeEntity);
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in DOCItemCollectionViewController.setCurrentPrimaryEntity(with:), v23);

      outlined destroy of RestorableSettings(v15, type metadata accessor for FINodeEntity);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewDidLoad()()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v2 = objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);
  v5 = (v4)(v2);
  [v5 setShowsHorizontalScrollIndicator_];

  v6 = v4();
  [v6 _setShouldPersistSelectionOnReloadDataWhenPossible_];

  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  if (one-time initialization token for DOCItemCollectionDidUpdateIsScrollEnabled != -1)
  {
    swift_once();
  }

  [v8 addObserver:v1 selector:? name:? object:?];

  v9 = [v7 defaultCenter];
  if (one-time initialization token for DOCItemCollectionDidUpdateContentOffset != -1)
  {
    swift_once();
  }

  [v9 addObserver:v1 selector:? name:? object:?];

  v10 = [v7 defaultCenter];
  [v10 addObserver:v1 selector:sel_resizeColumnsIfNeeded name:*MEMORY[0x277D76810] object:0];

  DOCItemCollectionViewController.installSceneSnapshotWorkaround()();
  (*((*v3 & *v1) + 0x16E8))([v1 isEditing], 0);
  DOCItemCollectionViewController.displayModeDidChange()();
  DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
  v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v11)
  {
    (*((*v3 & *v11) + 0x1D0))();
    v12 = DOCItemCollectionViewController.notificationsController.getter();
    if (one-time initialization token for DOCCollaborationHighlightManagerHighlightsDidChange != -1)
    {
      swift_once();
    }

    v13 = static NSNotificationName.DOCCollaborationHighlightManagerHighlightsDidChange;
    v14 = [objc_opt_self() mainQueue];
    (*(*v12 + 144))(v13, v24, v14, closure #1 in DOCItemCollectionViewController.viewDidLoad(), 0);

    v15 = outlined destroy of CharacterSet?(v24, &_sypSgMd, &_sypSgMR);
    if (((*((*v3 & *v1) + 0xF18))(v15) & 1) == 0)
    {
      goto LABEL_14;
    }

    v16 = [v1 view];
    if (v16)
    {
      v17 = v16;
      v18 = [v1 effectiveAppearance];
      if (!v18 || (v19 = v18, v20 = [v18 backgroundColor], v19, !v20))
      {
        v20 = [objc_opt_self() systemBackgroundColor];
      }

      [v17 setBackgroundColor_];

LABEL_14:
      v21 = [objc_opt_self() shared];
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24[4] = partial apply for closure #1 in DOCItemCollectionViewController.setUpSyncStateHeaderView();
      v24[5] = v22;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 1107296256;
      v24[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v24[3] = &block_descriptor_119_0;
      v23 = _Block_copy(v24);

      [v21 performAfterLaunch_];
      _Block_release(v23);

      v24[0] = (*((*v3 & *v1) + 0xD18))();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, MEMORY[0x277CBCD90]);
      Publisher<>.sink(receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double closure #1 in DOCItemCollectionViewController.viewDidLoad()(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  (*(v5 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v8);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v11 = a1;
  DOCRunInMainThread(_:)();

  return result;
}

double closure #1 in closure #1 in DOCItemCollectionViewController.viewDidLoad()(uint64_t a1, void *a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = v3;
  v34 = 0xD000000000000012;
  v35 = 0x8000000249BD9600;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v6 & 1) == 0))
  {
LABEL_23:

    outlined destroy of AnyHashable(v36);
LABEL_24:
    v37 = 0u;
    v38 = 0u;
    goto LABEL_25;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v5, &v37);
  outlined destroy of AnyHashable(v36);

  if (!*(&v38 + 1))
  {
LABEL_25:
    v7 = outlined destroy of CharacterSet?(&v37, &_sypSgMd, &_sypSgMR);
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
LABEL_26:
    v25 = (*((*MEMORY[0x277D85000] & *a2) + 0xD60))(v7);
    LOWORD(v36[0]) = 257;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v25, v36, 0);
    goto LABEL_27;
  }

  v32 = v36[0];
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  v10 = v9;
  *&v37 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v12 = 0;
    v8 = (v10 & 0xC000000000000001);
    v33 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = v10 & 0xC000000000000001;
    v31 = v10;
    while (1)
    {
      if (v8)
      {
        v13 = MEMORY[0x24C1FC540](v12, v10);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        goto LABEL_14;
      }

      if (v12 >= *(v33 + 16))
      {
        break;
      }

      v13 = *(v10 + 8 * v12 + 32);
      swift_unknownObjectRetain();
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_22;
      }

LABEL_14:
      v15 = [v13 fpfs_fpItem];
      if (v15 && (v16 = v15, v17 = [v15 collaborationIdentifier], v16, v17))
      {
        v18 = i;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v36[0] = v19;
        v36[1] = v21;
        MEMORY[0x28223BE20](v22, v23);
        v29[2] = v36;
        v24 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v29, v32);

        if (v24)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        i = v18;
        v8 = v30;
        v10 = v31;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v12;
      if (v14 == i)
      {
        v27 = v37;
        v8 = MEMORY[0x277D85000];
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_30:
    ;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_32:

  v28 = (*((*v8 & *a2) + 0xDB0))(v27);

  (*((*v8 & *a2) + 0x1828))(v28);
LABEL_27:

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.resizeColumnsIfNeeded()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v24 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v22 - v16;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v10 + 8);
  v23(v13, v9);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.resizeColumnsIfNeeded();
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_126;
  v19 = _Block_copy(aBlock);
  v20 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v22;
  MEMORY[0x24C1FB940](v17, v8, v4, v19);
  _Block_release(v19);

  (*(v27 + 8))(v4, v1);
  (*(v25 + 8))(v8, v26);
  v23(v17, v24);
}

void closure #1 in DOCItemCollectionViewController.resizeColumnsIfNeeded()(void *a1)
{
  if ((*((*MEMORY[0x277D85000] & *a1) + 0xBD8))() == 2)
  {
    DOCItemCollectionViewController.resize(_:forceLayout:)(0, 1, 1);
  }
}

void __swiftcall DOCItemCollectionViewController.RestorableConfiguration.init(scrollView:)(DocumentManagerExecutables::DOCItemCollectionViewController::RestorableConfiguration *__return_ptr retstr, UIScrollView *scrollView)
{
  v4 = [(UIScrollView *)scrollView traitCollection];
  [(UIScrollView *)scrollView frame];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)scrollView contentOffset];
  v10 = v9;
  v12 = v11;

  retstr->traitCollection.super.isa = v4;
  retstr->size.width = v6;
  retstr->size.height = v8;
  retstr->restoreableOffset.x = v10;
  retstr->restoreableOffset.y = v12;
}

CGPoint_optional __swiftcall DOCItemCollectionViewController.RestorableConfiguration.offsetToRestore(for:size:)(UITraitCollection a1, CGSize size)
{
  v3 = v2;
  height = size.height;
  width = size.width;
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v21 = static UITraitCollection.Traits.hSizeClass;
  v22 = qword_27EEE9C60;
  v6 = one-time initialization token for vSizeClass;

  if (v6 != -1)
  {
    swift_once();
  }

  v23 = static UITraitCollection.Traits.vSizeClass;
  v24 = qword_27EEE9C78;
  v7 = one-time initialization token for sizeCategory;

  if (v7 != -1)
  {
    swift_once();
  }

  v25 = static UITraitCollection.Traits.sizeCategory;
  v26 = qword_27EEE9CC0;

  _StringGuts.grow(_:)(18);

  v19[0] = 0;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v8);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v20[0] = 0;
  v20[1] = 0x6172287469617254;
  v20[2] = 0xEF3A65756C615677;

  specialized OptionSet<>.insert(_:)(v19, v21, *(&v21 + 1), v22);

  v10 = *(&v23 + 1);
  v9 = v24;
  v11 = v23;

  specialized OptionSet<>.insert(_:)(v19, v11, v10, v9);

  v13 = *(&v25 + 1);
  v12 = v26;
  v14 = v25;

  specialized OptionSet<>.insert(_:)(v19, v14, v13, v12);

  swift_arrayDestroy();
  v15 = UITraitCollection.doc_hasChanged(_:comparesTo:)(v20, *v3);

  if ((v15 & 1) == 0 && (v16 = *(v3 + 8), v16 == width) && (v16 = *(v3 + 16), v16 == height))
  {
    v18 = *(v3 + 24);
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  result.value.y = v17;
  result.value.x = v16;
  result.is_nil = v18;
  return result;
}

uint64_t DOCItemCollectionViewController.notificationsController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC021DOCItemCollectionViewF0CGMd, &_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC021DOCItemCollectionViewF0CGMR);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t DOCItemCollectionViewController.installSceneSnapshotWorkaround()()
{
  v1 = v0;
  v2 = DOCItemCollectionViewController.notificationsController.getter();
  v3 = *MEMORY[0x277D77530];
  v4 = objc_opt_self();
  v5 = [v4 mainQueue];
  (*(*v2 + 144))(v3, v10, v5, closure #1 in DOCItemCollectionViewController.installSceneSnapshotWorkaround(), 0);

  outlined destroy of CharacterSet?(v10, &_sypSgMd, &_sypSgMR);
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController);
  v7 = *MEMORY[0x277D77520];
  memset(v10, 0, sizeof(v10));

  v8 = [v4 mainQueue];
  (*(*v6 + 144))(v7, v10, v8, closure #2 in DOCItemCollectionViewController.installSceneSnapshotWorkaround(), 0);

  return outlined destroy of CharacterSet?(v10, &_sypSgMd, &_sypSgMR);
}

void closure #1 in DOCItemCollectionViewController.installSceneSnapshotWorkaround()(void *a1)
{
  v2 = (*((*MEMORY[0x277D85000] & *a1) + 0x1018))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 traitCollection];
    [v3 frame];
    v6 = v5;
    v8 = v7;
    [v3 contentOffset];
    v10 = v9;
    v12 = v11;

    v13 = (a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration);
    v14 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration);
    *v13 = v4;
    v13[1] = v6;
    v13[2] = v8;
    v13[3] = v10;
    v13[4] = v12;
  }
}

void closure #2 in DOCItemCollectionViewController.installSceneSnapshotWorkaround()(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x1018))();
  if (v3)
  {
    v4 = v3;
    v5 = [a1 traitCollection];
    [v4 frame];
    v7.n128_u64[0] = v6;
    v9.n128_u64[0] = v8;
    (*((*v2 & *a1) + 0x1528))(v5, v7, v9);

    v10 = a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration;
    v11 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration);
    *(v10 + 4) = 0;
    *v10 = 0u;
    *(v10 + 1) = 0u;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.restorePreSnapshotConfigurationIfNeeded(traitCollection:size:)(UITraitCollection traitCollection, CGSize size)
{
  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration);
  if (v3)
  {
    v4 = v2;
    height = size.height;
    width = size.width;
    v8 = v3;
    v36 = DOCItemCollectionViewController.RestorableConfiguration.offsetToRestore(for:size:)(traitCollection, __PAIR128__(*&height, *&width));
    v9 = *&v36.is_nil;
    v11 = v10;
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v14 = v9;
      v15 = v11;
      v16 = MEMORY[0x277D85000];
      v17 = *((*MEMORY[0x277D85000] & *v4) + 0x1010);
      v18 = v17();
      [v18 contentOffset];
      v20 = v19;
      v22 = v21;

      if (v20 != v14 || v22 != v15)
      {
        v24 = v17();
        v25 = (*((*v16 & *v24) + 0x138))();
        v27 = v26;

        v28 = v17();
        v29 = (*((*v16 & *v28) + 0x140))();
        v31 = v30;

        if (v31 >= v15)
        {
          v32 = v14;
        }

        else
        {
          v32 = v29;
        }

        if (v31 >= v15)
        {
          v33 = v15;
        }

        else
        {
          v33 = v31;
        }

        if (v27 <= v15)
        {
          v25 = v32;
          v27 = v33;
        }

        v34 = v17();
        [v34 setContentOffset:0 animated:{v25, v27}];
      }
    }
  }
}

BOOL DOCItemCollectionViewController.canBecomeFirstResponder.getter()
{
  v1 = [v0 _appearState];
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
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BCE220, &v9);
    *(v5 + 12) = 1024;
    v7 = v1 - 1;
    *(v5 + 14) = v7 < 2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s item collection view controller canBecome: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  else
  {

    v7 = v1 - 1;
  }

  return v7 < 2;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.resignFirstResponder()()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v2 = objc_msgSendSuper2(&v15, sel_resignFirstResponder);
  v3 = MEMORY[0x277D85000];
  if (v2 && (*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() != 3)
  {
    v4 = (*((*v3 & *v0) + 0x1010))();
    specialized DOCFocusableCollectionView.resignFocus()();
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.UI);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136315906;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BDEB60, &v14);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v2;
    *(v9 + 18) = 1024;
    *(v9 + 20) = (*((*v3 & *v6) + 0xBD8))() != 3;

    *(v9 + 24) = 2112;
    *(v9 + 26) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s in item collection view controller, success: %{BOOL}d, on success told CV to resignFocus: %{BOOL}d, self: %@", v9, 0x22u);
    outlined destroy of CharacterSet?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {
  }

  return v2;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.becomeFirstResponder()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v1 = objc_msgSendSuper2(&v12, sel_becomeFirstResponder);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BDEB80, &v11);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v1;
    *(v6 + 18) = 2112;
    v9 = (*((*MEMORY[0x277D85000] & *v3) + 0x1010))();
    *(v6 + 20) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2493AC000, v4, v5, "%s in item collection view controller: %{BOOL}d, collection view: %@", v6, 0x1Cu);
    outlined destroy of CharacterSet?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  return v1;
}

Swift::Void __swiftcall DOCItemCollectionViewController.performKeyboardFocusKeyCommand(_:)(UIKeyCommand *a1)
{
  if (([v1 isFirstResponder] & 1) == 0)
  {
    v3 = [objc_opt_self() keyWindow];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 firstResponder];

      if (v5)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v6 = v1;
LABEL_7:
  v10 = v6;
  v7 = (*((*MEMORY[0x277D85000] & *v6) + 0x1010))();
  v8 = [(UIKeyCommand *)a1 input];
  if (v8)
  {

    v9 = UIKeyCommand.doc_direction.getter();
    specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(v9, ([(UIKeyCommand *)a1 modifierFlags]>> 18) & 2 | ([(UIKeyCommand *)a1 modifierFlags]>> 17) & 1);
  }
}

id DOCItemCollectionViewController.doc_selectAll(_:enteringEditMode:)(uint64_t a1, char a2)
{
  result = [v2 canPerformAction:sel_selectAll_ withSender:0];
  if (result)
  {
    v5 = MEMORY[0x277D85000];
    if (!(*((*MEMORY[0x277D85000] & *v2) + 0xA98))() || (v7 = v6, ObjectType = swift_getObjectType(), LOBYTE(v7) = (*(v7 + 40))(v2, ObjectType, v7), result = swift_unknownObjectRelease(), (v7 & 1) != 0))
    {
      if (a2)
      {
        [v2 setEditing:1 animated:1];
      }

      v9 = *((*v5 & *v2) + 0x12F8);

      return v9();
    }
  }

  return result;
}

void DOCItemCollectionViewController.copy(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v1) + 0xA98))())
  {
    return;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 32))(v1, sel_copy_, a1, ObjectType, v6);
  if (v8)
  {
    v30 = v8;
    type metadata accessor for DOCItemCollectionViewController(0);
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
LABEL_23:
      swift_unknownObjectRelease();

      return;
    }

    v10 = v9;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    if (static NSObject.== infix(_:_:)())
    {
      v11 = *((*v4 & *v1) + 0x1338);
      v12 = v11();
      if (v12 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13 >= 1)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        v17 = v11();
        v18 = (*((*v4 & *v2) + 0xC70))();
        v19 = DOCItemCollectionViewController.actionContext(from:)();
        All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v17);

        if (All)
        {
          if (v18)
          {
            swift_getObjectType();
            v21 = DOCNode.fpfs_syncFetchFPItem()();
          }

          else
          {
            v21 = 0;
          }

          DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v14, v16, All, v21, v19);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        [v2 setEditing:0 animated:1];
      }

      goto LABEL_23;
    }

    outlined init with copy of DOCGridLayout.Spec?(a1, v31, &_sypSgMd, &_sypSgMR);
    v22 = v32;
    if (v32)
    {
      v23 = __swift_project_boxed_opaque_existential_1(v31, v32);
      v24 = *(v22 - 8);
      v25 = MEMORY[0x28223BE20](v23, v23);
      v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v27, v25);
      v28 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v24 + 8))(v27, v22);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {
      v28 = 0;
    }

    [v10 copy_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void DOCItemCollectionViewController.paste(_:)(uint64_t a1)
{
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xA98))())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v7 = (*(v4 + 32))(v1, sel_paste_, a1, ObjectType, v4);
    if (v7)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        [v6 pasteboardPasteInCollectionView_];
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t @objc DOCItemCollectionViewController.copy(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return outlined destroy of CharacterSet?(v9, &_sypSgMd, &_sypSgMR);
}

void DOCItemCollectionViewController.delete(_:)(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xA98))())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v8 = (*(v5 + 32))(v1, sel_delete_, a1, ObjectType, v5);
    if (v8)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        (*((*v3 & *v7) + 0x1578))(1, 1);
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t DOCItemCollectionViewController.moveHere(_:)()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
  if (result)
  {
    swift_getObjectType();
    v2 = DOCNode.fpfs_syncFetchFPItem()();
    if (v2)
    {
      v3 = v2;
      v4 = specialized DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:)(v2, v0, 1);

      if (v4 >= 1)
      {
        [v0 pasteboardMoveToCollectionView_];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.createFolder(withSelection:bailIfAlreadyInlineRenaming:)(Swift::Bool withSelection, Swift::Bool bailIfAlreadyInlineRenaming)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11, v12);
  v15 = &v39[-1] - v14;
  if (bailIfAlreadyInlineRenaming && ((*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) & 1) != 0 || ((*((*MEMORY[0x277D85000] & *v3) + 0x1448))(v13.n128_f64[0]) & 1) != 0))
  {
    return;
  }

  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v3) + 0x1010))(v13);
  v18 = [v17 indexPathsForSelectedItems];

  if (v18)
  {
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v20 + 16))
    {
      (*(v7 + 16))(v10, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      (*(v7 + 32))(v15, v10, v6);
      v21 = (*((*v16 & *v3) + 0xD88))(v15, 0);
      if (v21)
      {
        v22 = v21;
        (*((*v16 & *v3) + 0x820))(v39);
        v23 = v40;
        if (!v40)
        {
          __break(1u);
          return;
        }

        v24 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        v25 = (*(v24 + 112))(v22, v23, v24);
        if (v25)
        {
          v26 = v25;
          v27 = __swift_destroy_boxed_opaque_existential_0(v39);
          v16 = MEMORY[0x277D85000];
          if ((*((*MEMORY[0x277D85000] & *v3) + 0xBD8))(v27) == 2)
          {
            if (withSelection)
            {
              v28 = (*((*v16 & *v3) + 0x1338))();
              Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v28);
            }

            else
            {
              Available = MEMORY[0x277D84F90];
            }

            if (Available >> 62)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
              v37 = _bridgeCocoaArray<A>(_:)();
              swift_bridgeObjectRelease_n();
              v35 = v37;
            }

            else
            {
              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

              v35 = Available;
            }

            (*((*v16 & *v3) + 0x1558))(v26, v35);
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            (*(v7 + 8))(v15, v6);
            return;
          }

          (*(v7 + 8))(v15, v6);
          swift_unknownObjectRelease();
          v19 = swift_unknownObjectRelease();
        }

        else
        {
          (*(v7 + 8))(v15, v6);
          swift_unknownObjectRelease();
          v19 = __swift_destroy_boxed_opaque_existential_0(v39);
          v16 = MEMORY[0x277D85000];
        }
      }

      else
      {
        v19 = (*(v7 + 8))(v15, v6);
      }
    }

    else
    {
    }
  }

  v30 = (*((*v16 & *v3) + 0xC70))(v19);
  if (v30)
  {
    v31 = v30;
    if (withSelection)
    {
      v32 = (*((*v16 & *v3) + 0x1338))();
      v33 = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v32);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    if (v33 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v36 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
      v34 = v36;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

      v34 = v33;
    }

    (*((*v16 & *v3) + 0x1558))(v31, v34);
    swift_unknownObjectRelease();
  }
}

double DOCItemCollectionViewController.createFolder(in:with:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  swift_unknownObjectRetain();
  DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemCollectionViewController.createFolder(in:with:), v5);

  return result;
}

void closure #1 in DOCItemCollectionViewController.createFolder(in:with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = a1;
    v9 = a1;
    specialized static DOCActionManager.canPerform(_:on:)(v7, inited);
    LOBYTE(v7) = v10;
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v7)
    {
      v11 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = a3;
      v13[4] = a4;

      swift_unknownObjectRetain();
      DOCRunInMainThread(_:)();
    }

    else
    {
    }
  }
}

double closure #1 in closure #1 in DOCItemCollectionViewController.createFolder(in:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (*((*MEMORY[0x277D85000] & *Strong) + 0x19C0))(0);
    v9 = DOCItemCollectionViewController.untitledFolderName.getter();
    v11 = v10;
    if (v8)
    {
      if (a3)
      {
        v12 = a3;
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(v9, v11, a2, v12);
    }

    else
    {
      swift_getObjectType();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = v9;
      v14[4] = v11;

      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemCollectionViewController.createNewFolderModal(_:parentNode:), v14);
    }
  }

  return result;
}

double DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v21[-v12];
  if (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) == 1)
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0x1820))(v11);
  }

  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 1;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  v19 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:), v17);
  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v22, v19);
  swift_endAccess();

  return result;
}

uint64_t DOCItemCollectionViewController.untitledFolderName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___untitledFolderName);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___untitledFolderName + 8))
  {
    v2 = *v1;
  }

  else
  {
    if (one-time initialization token for untitledFolderName != -1)
    {
      swift_once();
    }

    v2 = static DOCCreateFolderOperation.untitledFolderName;
    v3 = *algn_27EEF0938;
    *v1 = static DOCCreateFolderOperation.untitledFolderName;
    v1[1] = v3;
    swift_bridgeObjectRetain_n();
  }

  return v2;
}

Swift::Void __swiftcall DOCItemCollectionViewController.performDeleteAction(trashIfPossible:recoverInsteadIfPossible:)(Swift::Bool trashIfPossible, Swift::Bool recoverInsteadIfPossible)
{
  v3 = v2;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x1338);
  v6 = v5();
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 < 1)
  {
    return;
  }

  v9 = (*((*v4 & *v3) + 0xA68))(v8);
  v10 = *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
  v11 = v9[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8];
  outlined copy of DOCFileProviderSourceType(v10);

  if (v11 == 1)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {

      outlined consume of DOCFileProviderSourceType(v10);
      goto LABEL_17;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined consume of DOCFileProviderSourceType(v10);
    if (v17)
    {
LABEL_17:
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v26;
      v27 = v5();
      v28 = (*((*v4 & *v3) + 0xC70))();
      v23 = DOCItemCollectionViewController.actionContext(from:)();
      All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v27);

      if (All)
      {
        if (!v28)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

LABEL_21:

      swift_unknownObjectRelease();
      goto LABEL_22;
    }
  }

  else
  {
    outlined consume of DOCFileProviderSourceType(v10);
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = v5();
  v22 = (*((*v4 & *v3) + 0xC70))();
  v23 = DOCItemCollectionViewController.actionContext(from:)();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v21);

  if (!All)
  {
    goto LABEL_21;
  }

  if (!v22)
  {
LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

LABEL_15:
  swift_getObjectType();
  v25 = DOCNode.fpfs_syncFetchFPItem()();
LABEL_20:
  DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v18, v20, All, v25, v23);

  swift_unknownObjectRelease();

LABEL_22:

  [v3 setEditing:0 animated:1];
}

id DOCItemCollectionViewController.provider(for:)(void *a1)
{
  v3 = [a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_8:
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15[4] = partial apply for closure #1 in DOCItemCollectionViewController.provider(for:);
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    v15[3] = &block_descriptor_134_0;
    v12 = _Block_copy(v15);
    v13 = objc_opt_self();

    v10 = [v13 providerWithElementProvider_];
    _Block_release(v12);

    return v10;
  }

  v16.receiver = v1;
  v16.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  return objc_msgSendSuper2(&v16, sel_providerForDeferredMenuElement_, a1);
}

unint64_t closure #1 in DOCItemCollectionViewController.provider(for:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(MEMORY[0x277D84F90]);
  }

  v6 = Strong;
  v7 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *Strong) + 0x1338))();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v10 = result;
  v11 = __CocoaSet.count.getter();
  result = v10;
  if (!v11)
  {
LABEL_11:

    return a1(MEMORY[0x277D84F90]);
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x24C1FC540](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(result + 32);
    swift_unknownObjectRetain();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*((*v7 & *static DOCOpenWithMenuController.shared) + 0xA0))(v9, a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionViewController.overridenEstimatedCollectionViewSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_overridenEstimatedCollectionViewSize;
  swift_beginAccess();
  return *v1;
}

void DOCItemCollectionViewController.overridenEstimatedCollectionViewSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_overridenEstimatedCollectionViewSize;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
}

void DOCItemCollectionViewController.modelPreloadingCollectionViewSize.getter()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);
    v3 = v2();
    [v3 visibleBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v46.origin.x = v5;
    v46.origin.y = v7;
    v46.size.width = v9;
    v46.size.height = v11;
    if (!CGRectIsEmpty(v46))
    {
      v19 = v2();
      [v19 visibleSize];
      v25 = v26;
      v17 = v27;
      goto LABEL_16;
    }
  }

  v12 = MEMORY[0x277D85000];
  v13 = COERCE_DOUBLE((*((*MEMORY[0x277D85000] & *v1) + 0x1580))());
  if (v15)
  {
    v16 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
    v17 = 0.0;
    if (!v16)
    {
      goto LABEL_23;
    }

    v18 = (*((*v12 & *v16) + 0xB0))(COERCE_DOUBLE(*&v13));
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = v18;
    v20 = [v19 viewIfLoaded];
    if (!v20)
    {
      goto LABEL_9;
    }

    v21 = v20;
    [v20 bounds];
    if (CGRectIsEmpty(v47))
    {

LABEL_9:
      v22 = [v19 parentViewController];

      if (!v22)
      {
LABEL_22:

LABEL_23:
        v25 = 0.0;
        goto LABEL_24;
      }

      v23 = [v22 viewIfLoaded];
      if (!v23)
      {
        v24 = v22;
        goto LABEL_21;
      }

      v24 = v23;
      [v23 bounds];
      if (CGRectIsEmpty(v48))
      {

LABEL_21:
        goto LABEL_22;
      }

      [v24 frame];
      v25 = v44;
      v17 = v45;

      goto LABEL_16;
    }

    [v21 frame];
    v25 = v28;
    v17 = v29;

LABEL_16:
    if (v25 == 0.0)
    {
      goto LABEL_24;
    }

LABEL_17:
    if (v17 != 0.0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v25 = v13;
  v17 = v14;
  if (v13 != 0.0)
  {
    goto LABEL_17;
  }

LABEL_24:
  v30 = [objc_opt_self() anyWindowPreferingKeyWindow];
  if (v30)
  {
    v31 = v30;
    [v31 bounds];
    if (!CGRectIsEmpty(v49))
    {
      [v31 frame];
      v25 = v32;
      v17 = v33;
    }
  }

LABEL_28:
  if (v25 == 0.0 || v17 == 0.0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    v35 = v1;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 134219010;
      *(v38 + 4) = v25;
      *(v38 + 12) = 2048;
      *(v38 + 14) = v17;
      *(v38 + 22) = 2112;
      *(v38 + 24) = v35;
      *v39 = v35;
      *(v38 + 32) = 2112;
      v40 = v35;
      v41 = [v40 parentViewController];
      *(v38 + 34) = v41;
      v39[1] = v41;
      *(v38 + 42) = 2112;
      v42 = *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
      if (!v42)
      {
        __break(1u);
        return;
      }

      v43 = (*((*MEMORY[0x277D85000] & *v42) + 0x1A8))();
      if (!v43)
      {
        v43 = v42;
      }

      *(v38 + 44) = v43;
      v39[2] = v43;
      _os_log_impl(&dword_2493AC000, v36, v37, "Returning bad initial collection view size (%f, %f) for %@ (parent: %@, itemCollection: %@", v38, 0x34u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v38, -1, -1);
    }
  }
}

uint64_t DOCItemCollectionViewController.hasDocumentBrowser.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (!v1)
  {
    return 0;
  }

  result = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  if (result)
  {

    return 1;
  }

  return result;
}

void DOCItemCollectionViewController.displayModeDidChange()()
{
  v1 = v0;
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v3);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v5 = *(v46 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v46, v6);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v0) + 0xBD8);
  v11 = v10(v7);
  if (v11 == 2)
  {
    v12 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v12)
    {
LABEL_26:
      __break(1u);
      return;
    }

    (*((*v9 & *v12) + 0x1E0))();
    v11 = [v1 checkIfOutlineModeNeedsChange];
  }

  v42 = v5;
  v43 = v2;
  v13 = *((*v9 & *v1) + 0xD60);
  v14 = (v13)(v11);
  v15 = *((*v9 & *v1) + 0xDC0);
  v16 = v15(v14);
  v17 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v17)
  {
    __break(1u);
    goto LABEL_26;
  }

  v18 = (*((*v9 & *v17) + 0x258))(v16);
  (*((*v9 & *v1) + 0xCC0))(v18);
  v15(0);
  v48 = [v1 viewIfLoaded];
  if (v48)
  {
    v19 = (*((*v9 & *v1) + 0x1198))(2);
    v20 = (*((*v9 & *v1) + 0x15B8))(v19);
    v21 = (v10)(v20);
    v22 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView);
    if (v22)
    {
      v23 = 0.0;
      if (v21 == 3)
      {
        v23 = 16.0;
      }

      v22 = [v22 setDirectionalLayoutMargins_];
    }

    (*((*v9 & *v1) + 0x10D8))(v22);
    [v48 setNeedsLayout];
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v24 = [v1 viewIfLoaded];
    v25 = [v24 window];

    if (v25)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()(v26);
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }

    v27 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
    if (v27)
    {
      v28 = v27;
      v29 = (v10)();
      DOCStatusFooterView.displayMode.setter(v29);
    }

    v30 = v13();
    LOWORD(aBlock[0]) = 2;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v30, aBlock, 1);

    if ((v10)(v31) == 3)
    {
      (*((*v9 & *v1) + 0x1338))();
      (*((*v9 & *v1) + 0x1378))();
    }

    else
    {
      v32 = (*((*v9 & *v1) + 0x1018))();
      if (v32)
      {
        v33 = v32;
        [v32 setAllowsMultipleSelection_];
      }
    }

    if ((v10)([v1 _setNeedsUpdateOfMultitaskingDragExclusionRects]) == 3)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v34 = static OS_dispatch_queue.main.getter();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.displayModeDidChange();
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_1397;
      v36 = _Block_copy(aBlock);

      v37 = v44;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v38 = v45;
      v39 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v37, v38, v36);
      _Block_release(v36);

      (*(v43 + 8))(v38, v39);
      (*(v42 + 8))(v37, v46);
    }

    else
    {
      v40 = v48;
    }
  }
}

void closure #1 in DOCItemCollectionViewController.displayModeDidChange()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1758))(&outlined read-only object #0 of closure #1 in DOCItemCollectionViewController.displayModeDidChange());
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateHidesNavigationBackButton()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x198))();
  if (v1)
  {
    v2 = v1;
    [v1 setHidesBackButton_];
  }
}

void DOCItemCollectionViewController.didUpdateCollectionViewIsScrollEnabled(notification:)(void *a1)
{
  v2 = [a1 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v6 & 1) == 0))
  {

    outlined destroy of AnyHashable(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v5, &v10);
  outlined destroy of AnyHashable(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    outlined destroy of CharacterSet?(&v10, &_sypSgMd, &_sypSgMR);
    return;
  }

  if (swift_dynamicCast())
  {
    v7 = v9[0];
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled) = v9[0];
    v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))();
    [v8 setScrollEnabled_];
  }
}

void DOCItemCollectionViewController.didUpdateCollectionViewContentOffset(notification:)(void *a1)
{
  v2 = [a1 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v6 & 1) == 0))
  {

    outlined destroy of AnyHashable(v10);
LABEL_8:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v5, &v11);
  outlined destroy of AnyHashable(v10);

  if (!*(&v12 + 1))
  {
LABEL_9:
    outlined destroy of CharacterSet?(&v11, &_sypSgMd, &_sypSgMR);
    return;
  }

  type metadata accessor for CGPoint(0);
  if (swift_dynamicCast())
  {
    v7 = *v10;
    v8 = *&v10[1];
    v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))();
    [v9 setContentOffset_];
  }
}

uint64_t DOCItemCollectionViewController.showLoadingViewIfNeeded()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v14, v15);
  v18 = &v28 - v17;
  if ((*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) & 1) == 0)
  {
    v16.n128_f64[0] = DOCItemCollectionViewController.showBlankView()();
  }

  v19 = (*((*MEMORY[0x277D85000] & *v0) + 0xA68))(v16);
  v20 = *&v19[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  v21 = v20;

  if (v20)
  {
    v22 = [v21 identifier];

    DOCProviderDomainIDIsRemovable();
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v29 = *(v10 + 8);
  v29(v13, v9);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.showLoadingViewIfNeeded();
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1198;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v28;
  MEMORY[0x24C1FB940](v18, v8, v4, v24);
  _Block_release(v24);

  (*(v32 + 8))(v4, v25);
  (*(v30 + 8))(v8, v31);
  return (v29)(v18, v9);
}

void closure #1 in DOCItemCollectionViewController.showLoadingViewIfNeeded()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) & 1) == 0)
    {
      v3 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      if (!v3)
      {
        __break(1u);
        return;
      }

      if ([v3 isGathering])
      {
        DOCItemCollectionViewController.showLoadingView()();
      }

      else
      {
        v4 = (*((*MEMORY[0x277D85000] & *v2) + 0xA68))();
        v5 = [v4 identifier];

        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;
        if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
        {

          return;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView);
          if (v12)
          {
            v13 = v12;
            [v13 setHidden_];
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v38.receiver = v1;
  v38.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v3 = objc_msgSendSuper2(&v38, sel_viewWillAppear_, a1);
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))(v3);
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v7 = DOCFocusGroupIdentifierBrowserFromConfiguration();
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x24C1FAD20](v8);
  }

  [v5 setFocusGroupIdentifier_];

  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v9)
  {
    __break(1u);
    return;
  }

  if ([v9 isGathering])
  {
    v10 = DOCItemCollectionViewController.showLoadingViewIfNeeded()();
  }

  else
  {
    v11._rawValue = (*((*v4 & *v1) + 0xCB8))();
    DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:)(v11);
  }

  if ((*((*v4 & *v1) + 0x9C8))(v10))
  {
  }

  else
  {
    specialized DOCItemCollectionViewController.reloadNodeTitleMenuConfigurations(canFetchURLIfNecessary:)();
  }

  DOCItemCollectionViewController.updateFilenameExtensionVisibilityIfNeeded()();
  v12 = (*((*v4 & *v1) + 0xC40))();
  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = swift_allocObject();
  v16 = partial apply for closure #1 in DOCItemCollectionViewController.viewWillAppear(_:);
  *(v15 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.viewWillAppear(_:);
  *(v15 + 24) = v14;
  aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_144;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  [v13 performWithoutAnimation_];
  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_13:
    v16 = 0;
    v14 = 0;
  }

  v36 = v16;
  v19 = *((*v4 & *v1) + 0x148);
  if ((v19(v12) & 1) == 0)
  {
    v20 = (*((*v4 & *v1) + 0xBD8))() == 3;
    (*((*v4 & *v1) + 0x1300))(v20, MEMORY[0x277D84F90]);
  }

  v21 = (*((*v4 & *v1) + 0x1378))(MEMORY[0x277D84F90], 0, 0);
  (*((*v4 & *v1) + 0x12E0))(v21);
  v22 = objc_opt_self();
  v23 = [v22 defaultCenter];
  v24 = objc_opt_self();
  v25 = [v24 willShowMenuNotification];
  [v23 addObserver:v1 selector:sel_menuControllerWillShow name:v25 object:0];

  v26 = [v22 defaultCenter];
  v27 = [v24 willHideMenuNotification];
  [v26 addObserver:v1 selector:sel_menuControllerWillHide name:v27 object:0];

  DOCItemCollectionViewController.startObservingAppProtectionNotifications()();
  DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()();
  v28 = [v6 forPickingDocuments];
  if (v28)
  {
    v28 = DOCItemCollectionViewController.multiSelectionOpenAction.getter();
    if (v28)
    {

      v28 = 1;
    }
  }

  v29 = MEMORY[0x277D85000];
  v30 = (*((*MEMORY[0x277D85000] & *v1) + 0x150))(v28);
  v31 = v19(v30);
  if (v31)
  {
    v32 = (*((*v29 & *v1) + 0xD60))();
    LOWORD(aBlock[0]) = 0;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v32, aBlock, 0);
  }

  v33 = (*((*v29 & *v1) + 0xBD8))(v31);
  if (v33 == 2)
  {
    DOCItemCollectionViewController.resetColumnsIfNeeded()();
    v34 = (*((*v29 & *v1) + 0xB08))();
    swift_beginAccess();
    *(v34 + 120) = 1;
  }

  v35 = (*((*v29 & *v1) + 0xFC8))(v33);
  specialized DOCItemCollectionViewController.configureSupplementaryItems(for:footerContentInsets:)(v35);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v36, v14);
}

double closure #1 in DOCItemCollectionViewController.viewWillAppear(_:)(void *a1)
{
  v1 = (*((*MEMORY[0x277D85000] & *a1) + 0xD60))();
  v3 = 2;
  DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v1, &v3, 0);

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v3 = objc_msgSendSuper2(&v8, sel_viewIsAppearing_, a1);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) = 1;
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))(v3);
  v5 = [v4 indexPathsForVisibleItems];

  type metadata accessor for IndexPath();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v6 + 16);

  if (v7)
  {
    DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v4 = objc_msgSendSuper2(&v15, sel_viewDidAppear_, a1);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x1010);
  v7 = (v6)(v4);
  v8 = DOCFocusGroupIdentifierBrowserFromConfiguration();
  if (!v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = MEMORY[0x24C1FAD20](v9);
  }

  [v7 setFocusGroupIdentifier_];

  v10 = (*((*v5 & *v2) + 0x1448))();
  if (v10)
  {
    v10 = (*((*v5 & *v2) + 0x1498))();
    if (v10)
    {
      (*(*v10 + 448))(v10);
    }
  }

  if ((*((*v5 & *v2) + 0x148))(v10))
  {
    DOCItemCollectionViewController.updateToolBarItems()();
  }

  v11 = (*((*v5 & *v2) + 0xAE8))();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 effectiveFullBrowser];

    [v13 establishFirstResponderIfNeeded];
  }

  v14 = v6();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DOCItemCollectionViewController and conformance DOCItemCollectionViewController, type metadata accessor for DOCItemCollectionViewController, &protocol conformance descriptor for DOCItemCollectionViewController);
  swift_unknownObjectRetain();
  UICollectionView.appIntentsDataSource.setter();

  DOCItemCollectionViewController.addChangeViewOptionsInteractions()();
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  objc_msgSendSuper2(&v24, sel_viewWillDisappear_, a1);
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  v6 = objc_opt_self();
  v7 = [v6 willShowMenuNotification];
  [v5 removeObserver:v2 name:v7 object:0];

  v8 = [v4 defaultCenter];
  v9 = [v6 willHideMenuNotification];
  [v8 removeObserver:v2 name:v9 object:0];

  DOCItemCollectionViewController.stopObservingAppProtectionNotifications()();
  [v2 resignFirstResponder];
  v10 = [objc_opt_self() sharedManager];
  [v10 unregisterKeyboardFocusable_];

  DOCItemCollectionViewController.removeChangeViewOptionsInteractions()();
  v11 = [objc_opt_self() defaultPermission];
  [v11 cleanAppContainerBundleIDCache];

  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v2) + 0x1990))();
  [v13 invalidate];

  v14 = (*((*v12 & *v2) + 0x19A8))();
  [v14 invalidate];

  (*((*v12 & *v2) + 0x7C8))(0, 0);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView;
  v16 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView);
  if (v16)
  {
    v17 = *((*v12 & *v16) + 0xE0);
    v18 = v16;
    v17();

    v19 = *(v2 + v15);
    if (v19)
    {
      v20 = *((*v12 & *v19) + 0xA8);
      v21 = v19;
      v20(0, 0);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.resolvedItemHandler.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_resolvedItemHandler);

  return v1;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.hasCalledHandler.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_hasCalledHandler;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.PendingNodeContext.hasCalledHandler.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_hasCalledHandler;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.invokeItemHandler(withNode:)(uint64_t a1)
{
  result = (*(*v1 + 120))();
  if ((result & 1) == 0)
  {
    (*(*v1 + 128))(1);
    return (*(v1 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_resolvedItemHandler))(a1);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.__allocating_init(node:url:resolvedItemHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_hasCalledHandler) = 0;
  *(v8 + 16) = a1;
  outlined init with copy of DOCGridLayout.Spec?(a2, v8 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = (v8 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_resolvedItemHandler);
  *v9 = a3;
  v9[1] = a4;
  UUID.init()();
  outlined destroy of CharacterSet?(a2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v8;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.init(node:url:resolvedItemHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_hasCalledHandler) = 0;
  *(v4 + 16) = a1;
  outlined init with copy of DOCGridLayout.Spec?(a2, v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = (v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_resolvedItemHandler);
  *v14 = a3;
  v14[1] = a4;
  UUID.init()();
  outlined destroy of CharacterSet?(a2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v10 + 32))(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID, v13, v9);
  return v4;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v14 - v3;
  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x24C1FAEA0](0x7473657571657228, 0xEC000000203A4449);
  type metadata accessor for UUID();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v5);

  v6 = MEMORY[0x24C1FAEA0](0xD000000000000014, 0x8000000249BDEBA0);
  v7 = (*(*v0 + 120))(v6);
  v8 = (v7 & 1) == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x24C1FAEA0](v9, v10);

  MEMORY[0x24C1FAEA0](0x203A6C7275203BLL, 0xE700000000000000);
  outlined init with copy of DOCGridLayout.Spec?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v11);

  MEMORY[0x24C1FAEA0](0x203A65646F6E203BLL, 0xE800000000000000);
  v14[1] = v0[2];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  v12 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v12);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return v15;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.deinit()
{
  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v10);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchTime();
  v60 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v12);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v59 = &v57 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v57 - v24;
  outlined init with copy of DOCGridLayout.Spec?(a2, &v57 - v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  type metadata accessor for DOCItemCollectionViewController.PendingNodeContext(0);
  v26 = swift_allocObject();
  *(v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_hasCalledHandler) = 0;
  *(v26 + 16) = a1;
  outlined init with copy of DOCGridLayout.Spec?(v25, v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v27 = (v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_resolvedItemHandler);
  *v27 = v57;
  v27[1] = a4;
  swift_unknownObjectRetain();

  UUID.init()();
  outlined destroy of CharacterSet?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v18 + 32))(v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID, v21, v17);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.UI);
  swift_unknownObjectRetain();
  v29 = v67;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315650;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BE12C0, aBlock);
    *(v32 + 12) = 2080;
    v34 = [a1 displayName];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, aBlock);

    *(v32 + 14) = v38;
    *(v32 + 22) = 2080;
    v40 = (*((*MEMORY[0x277D85000] & *v29) + 0xA68))(v39);
    v41 = [v40 identifier];

    v69 = v41;
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v42 = String.init<A>(describing:)();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, aBlock);

    *(v32 + 24) = v44;
    _os_log_impl(&dword_2493AC000, v30, v31, "%s - adding node to be resolved: %s in source: %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v33, -1, -1);
    MEMORY[0x24C1FE850](v32, -1, -1);
  }

  v45 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts;
  swift_beginAccess();

  MEMORY[0x24C1FB090](v46);
  if (*((*(v29 + v45) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v29 + v45) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v57 = static OS_dispatch_queue.main.getter();
  v47 = v58;
  static DispatchTime.now()();
  v48 = v59;
  + infix(_:_:)();
  v67 = *(v60 + 8);
  (v67)(v47, v68);
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v26;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:);
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1387;
  v51 = _Block_copy(aBlock);

  v52 = v61;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v53 = v63;
  v54 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = v57;
  MEMORY[0x24C1FB940](v48, v52, v53, v51);
  _Block_release(v51);

  (*(v65 + 8))(v53, v54);
  (*(v62 + 8))(v52, v64);
  return (v67)(v48, v68);
}

void closure #1 in DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v49[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(*a2 + 144))();
    return;
  }

  v13 = Strong;
  v14 = *(v4 + 16);
  v52 = v3;
  v14(v11, a2 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID, v3);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts;
  v16 = swift_beginAccess();
  v17 = *&v13[v15];
  MEMORY[0x28223BE20](v16, v18);
  v53 = v11;
  *&v49[-16] = v11;

  specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:), &v49[-32], v17);
  v20 = v19;
  v22 = v21;

  if (v22)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.UI);
    v24 = v52;
    v25 = v53;
    v14(v7, v53, v52);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v54[0] = v51;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BE12C0, v54);
      *(v28 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v4 + 8);
      v50 = v27;
      v32(v7, v24);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v54);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_2493AC000, v26, v50, "%s - TIMEOUT did not find pendingNodeContext for requestID: %s", v28, 0x16u);
      v34 = v51;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v34, -1, -1);
      v35 = v28;
      v25 = v53;
      MEMORY[0x24C1FE850](v35, -1, -1);
    }

    else
    {

      v32 = *(v4 + 8);
      v32(v7, v24);
    }

LABEL_17:
    v32(v25, v24);
    return;
  }

  v36 = *&v13[v15];
  if ((v36 & 0xC000000000000001) != 0)
  {

    v22 = MEMORY[0x24C1FC540](v20, v36);

LABEL_12:
    swift_beginAccess();
    specialized Array.remove(at:)(v20, v37);
    swift_endAccess();

    if (one-time initialization token for UI == -1)
    {
LABEL_13:
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.UI);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v54[0] = v51;
        *v41 = 136315394;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BE12C0, v54);
        *(v41 + 12) = 2080;
        v42 = *(*v22 + 160);

        v44 = v42(v43);
        v46 = v45;

        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v54);

        *(v41 + 14) = v47;
        _os_log_impl(&dword_2493AC000, v39, v40, "%s - TIMEOUT calling resolvedItemHandler with 'nil' item for pending node context: %s", v41, 0x16u);
        v48 = v51;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v48, -1, -1);
        MEMORY[0x24C1FE850](v41, -1, -1);
      }

      v24 = v52;
      v25 = v53;
      (*(*v22 + 144))(0);

      v32 = *(v4 + 8);
      goto LABEL_17;
    }

LABEL_20:
    swift_once();
    goto LABEL_13;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v20 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v36 + 8 * v20 + 32);

    goto LABEL_12;
  }

  __break(1u);
}

void DOCItemCollectionViewController.resolvePendingNodeContexts()()
{
  if (one-time initialization token for UI != -1)
  {
LABEL_26:
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
    v38[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0BA0, v38);
    *(v5 + 12) = 2080;
    v7 = (*((*MEMORY[0x277D85000] & *v2) + 0xA68))();
    v8 = [v7 identifier];

    v37 = v8;
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v38);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s - BEGIN source: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
LABEL_6:
      v14 = v2;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v37 = v18;
        *v17 = 136315394;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0BA0, &v37);
        *(v17 + 12) = 2048;
        v19 = *(v2 + v12);
        if (v19 >> 62)
        {
          v20 = __CocoaSet.count.getter();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v17 + 14) = v20;

        _os_log_impl(&dword_2493AC000, v15, v16, "%s - pendingNodeContexts == %ld, keep going", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x24C1FE850](v18, -1, -1);
        MEMORY[0x24C1FE850](v17, -1, -1);
      }

      else
      {
      }

      v0 = *(v2 + v12);
      if (v0 >> 62)
      {
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v21)
      {
        v22 = 0;
        do
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x24C1FC540](v22, v0);
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
LABEL_22:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v22 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_26;
            }

            v23 = *(v0 + 8 * v22 + 32);

            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_22;
            }
          }

          resolvePendingNodeContext #1 (_:) in DOCItemCollectionViewController.resolvePendingNodeContexts()(v23, v14);

          ++v22;
        }

        while (v24 != v21);
      }

      v25 = v14;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v37 = v29;
        *v28 = 136315394;
        *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0BA0, &v37);
        *(v28 + 12) = 2080;
        v30 = (*((*MEMORY[0x277D85000] & *v25) + 0xA68))();
        [v30 identifier];

        type metadata accessor for DOCDocumentSourceIdentifier(0);
        v31 = String.init<A>(describing:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v37);

        *(v28 + 14) = v33;
        _os_log_impl(&dword_2493AC000, v26, v27, "%s - END source: %s", v28, 0x16u);
        swift_arrayDestroy();
        v34 = v29;
LABEL_30:
        MEMORY[0x24C1FE850](v34, -1, -1);
        MEMORY[0x24C1FE850](v28, -1, -1);
        goto LABEL_31;
      }

      goto LABEL_31;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_6;
  }

  v26 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v35))
  {
    v28 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0BA0, &v37);
    _os_log_impl(&dword_2493AC000, v26, v35, "%s - pendingNodeContexts == 0, returning ", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v34 = v36;
    goto LABEL_30;
  }

LABEL_31:
}

void resolvePendingNodeContext #1 (_:) in DOCItemCollectionViewController.resolvePendingNodeContexts()(char *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v63 - v6;
  if (one-time initialization token for UI != -1)
  {
LABEL_37:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Logger.UI);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v65 = a2;
  v66 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v68[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v68);
    *(v13 + 12) = 2080;
    swift_getObjectType();
    v15 = DOCNode.nodeDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v68);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    outlined init with copy of DOCGridLayout.Spec?(&a1[OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url], v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v18 = type metadata accessor for URL();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      outlined destroy of CharacterSet?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v20 = 0xE300000000000000;
      v21 = 4271950;
    }

    else
    {
      v21 = URL.absoluteString.getter();
      v20 = v22;
      (*(v19 + 8))(v7, v18);
    }

    a2 = v65;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v68);

    *(v13 + 24) = v23;
    _os_log_impl(&dword_2493AC000, v10, v11, "%s - Resolving context for : node %s - URL: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  else
  {
  }

  v24 = (*((*MEMORY[0x277D85000] & *a2) + 0xDA0))(*(a1 + 2), &a1[OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url]);
  if (v24)
  {
    v25 = v24;
    swift_unknownObjectRetain_n();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v68[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v68);
      *(v28 + 12) = 2080;
      swift_getObjectType();
      v30 = DOCNode.nodeDescription.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v68);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_2493AC000, v26, v27, "%s - Found matching node: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    v64 = v25;
    v33 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts;
    swift_beginAccess();
    v34 = *(a2 + v33);
    v63 = v33;
    if (v34 >> 62)
    {
      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = &unk_27EF18000;

    v7 = 0;
    while (v35 != v7)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v7, v34);
      }

      else
      {
        if (v7 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      v36 = static UUID.== infix(_:_:)();

      if (v36)
      {

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v67[0] = v50;
          *v49 = 136315138;
          *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v67);
          _os_log_impl(&dword_2493AC000, v47, v48, "%s - Removing pending node context", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x24C1FE850](v50, -1, -1);
          MEMORY[0x24C1FE850](v49, -1, -1);
        }

        v46 = v64;
        swift_beginAccess();
        specialized Array.remove(at:)(v7, v51);
        swift_endAccess();

        goto LABEL_32;
      }

      if (__OFADD__(v7++, 1))
      {
        goto LABEL_36;
      }
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v67[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v67);
      _os_log_impl(&dword_2493AC000, v42, v43, "%s - Not Removing pending node context (context is gone already)", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x24C1FE850](v45, -1, -1);
      MEMORY[0x24C1FE850](v44, -1, -1);
    }

    v46 = v64;
LABEL_32:
    swift_unknownObjectRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v67[0] = v55;
      *v54 = 136315394;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v67);
      *(v54 + 12) = 2080;
      v56 = [v46 displayName];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v67);

      *(v54 + 14) = v60;
      _os_log_impl(&dword_2493AC000, v52, v53, "%s - Calling resolved block for node %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v55, -1, -1);
      MEMORY[0x24C1FE850](v54, -1, -1);
    }

    v61 = *(*a1 + 144);
    v62 = swift_unknownObjectRetain();
    v61(v62);
    swift_unknownObjectRelease_n();
  }

  else
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v68[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v68);
      _os_log_impl(&dword_2493AC000, v38, v39, "%s - Could Not Find existing node", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C1FE850](v41, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.clearAllEnqueuedScrollAndSelectionNodes()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - v3;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal) = MEMORY[0x277D84F90];

  v5 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
  *v5 = 0;
  *(v5 + 8) = 0;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for ScrollPositionInfo(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v4, v0 + v7, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  swift_endAccess();
}

void DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v30[-v9];
  v11 = type metadata accessor for ScrollPositionInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) & 1) != 0 || (a1)
  {
    v16 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal;
    v17 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal);
    if (v17 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x277D85000];
    if (v18 >= 1)
    {
      v20 = *((*MEMORY[0x277D85000] & *v1) + 0x16C8);

      v22 = v20(v21, 0, 0);
      v19 = MEMORY[0x277D85000];
      LOBYTE(v20) = v22;

      if (v20)
      {
        *(v1 + v16) = MEMORY[0x277D84F90];
      }
    }

    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v1 + v23, v10, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
    }

    else
    {
      outlined init with take of ScrollPositionInfo.ItemOffset(v10, v15, type metadata accessor for ScrollPositionInfo);
      v24 = DOCItemCollectionViewController.scroll(using:shouldEnqueue:shouldClear:)(v15, 0, 1);
      outlined destroy of RestorableSettings(v15, type metadata accessor for ScrollPositionInfo);
      if (v24)
      {
        (*(v12 + 56))(v6, 1, 1, v11);
        swift_beginAccess();
        outlined assign with take of IndexPath?(v6, v1 + v23, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
        swift_endAccess();
      }
    }

    v25 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
    if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll))
    {
      v26 = *((*v19 & *v1) + 0x16D8);
      v27 = v25[8];
      v28 = swift_unknownObjectRetain();
      v29 = v26(v28, v27 & 1, 0);
      swift_unknownObjectRelease();
      if (v29)
      {
        *v25 = 0;
        v25[8] = 0;
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t DOCItemCollectionViewController.needsForcedUnderNavBarAppearanceOnAppear.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.needsForcedUnderNavBarAppearanceOnAppear.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id DOCItemCollectionViewController.scroll(using:shouldEnqueue:shouldClear:)(uint64_t a1, char a2, int a3)
{
  v4 = v3;
  LODWORD(v157) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v139 - v9;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCCollectionSectionV3key_AA18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetV5valuetMd, &_s26DocumentManagerExecutables20DOCCollectionSectionV3key_AA18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetV5valuetMR);
  MEMORY[0x28223BE20](v161, v11);
  v13 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v158 = (&v139 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  ObjCClassFromMetadata = (&v139 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v156 = &v139 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v139 - v30;
  v166 = type metadata accessor for IndexPath();
  v163 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v32);
  v159 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v154 = &v139 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v162 = &v139 - v39;
  v155 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  v160 = *(v155 - 8);
  MEMORY[0x28223BE20](v155, v40);
  v42 = (&v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ScrollPositionInfo.ItemOffset(a1, v42, type metadata accessor for ScrollPositionInfo.ItemOffset);
  v164 = type metadata accessor for ScrollPositionInfo(0);
  v165 = a1;
  v43 = MEMORY[0x277D85000];
  v44 = (*((*MEMORY[0x277D85000] & *v4) + 0x16B0))(*(a1 + *(v164 + 20)));
  if (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) != 1 || (v45 = (*((*v43 & *v4) + 0x1018))(v44)) == 0)
  {
LABEL_5:
    if ((a2 & 1) == 0)
    {
LABEL_10:
      v58 = 0;
LABEL_11:
      outlined destroy of RestorableSettings(v42, type metadata accessor for ScrollPositionInfo.ItemOffset);
      return v58;
    }

    v51 = (*((*v43 & *v4) + 0xBF0))();
    v53 = v165;
    if (v52 == -1)
    {
LABEL_9:
      (*((*v43 & *v4) + 0x1648))(v51);
      outlined init with copy of ScrollPositionInfo.ItemOffset(v53, v10, type metadata accessor for ScrollPositionInfo);
      (*(*(v164 - 8) + 56))(v10, 0, 1);
      v57 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v10, v4 + v57, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
      swift_endAccess();
      goto LABEL_10;
    }

    v54 = v51;
    LOBYTE(v55) = v52;
    v24 = v43;
    if (one-time initialization token for restorableSettingsCache == -1)
    {
LABEL_8:
      v56 = type metadata accessor for RestorableSettings(0);
      (*(*(v56 - 8) + 56))(ObjCClassFromMetadata, 1, 1, v56);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(ObjCClassFromMetadata, v54, v55 & 1);
      v51 = swift_endAccess();
      v43 = v24;
      goto LABEL_9;
    }

LABEL_78:
    swift_once();
    goto LABEL_8;
  }

  v149 = v45;
  v46 = *v42;
  v47 = (*v43 & *v4) + 3480;
  v153 = *((*v43 & *v4) + 0xD98);
  v152 = v47;
  v153(v46);
  v48 = v163;
  v49 = *(v163 + 6);
  v50 = v166;
  v151 = v163 + 48;
  v150 = v49;
  if (v49(v31, 1, v166) == 1)
  {

    outlined destroy of CharacterSet?(v31, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v43 = MEMORY[0x277D85000];
    goto LABEL_5;
  }

  v60 = *(v48 + 4);
  v146 = v48 + 32;
  v145 = v60;
  v61 = (v60)(v162, v31, v50);
  v62 = MEMORY[0x277D85000];
  if (v157)
  {
    v63 = (*((*MEMORY[0x277D85000] & *v4) + 0xBF0))(v61);
    if (v64 != -1)
    {
      v65 = v63;
      v66 = v64;
      if (one-time initialization token for restorableSettingsCache != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for RestorableSettings(0);
      (*(*(v67 - 8) + 56))(ObjCClassFromMetadata, 1, 1, v67);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(ObjCClassFromMetadata, v65, v66 & 1);
      v63 = swift_endAccess();
      v62 = MEMORY[0x277D85000];
    }

    (*((*v62 & *v4) + 0x1648))(v63);
  }

  v10 = v149;
  [v10 contentSize];
  v55 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  ObjCClassFromMetadata = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  if (v68 == 0.0)
  {
    result = [v4 view];
    if (!result)
    {
      __break(1u);
      goto LABEL_80;
    }

    v69 = result;
    [result layoutBelowIfNeeded];
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v10 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];

  v71 = (*((*v62 & *v4) + 0xF10))();
  v157 = v13;
  v147 = v24;
  if (v71)
  {
    v72 = (*((*v62 & *v4) + 0xBD8))();
    v53 = v165;
    if (!v72)
    {
      v74 = *(v165 + *(v164 + 24));
      v54 = (v74 + 64);
      v75 = 1 << *(v74 + 32);
      v76 = -1;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      v53 = v76 & *(v74 + 64);
      v77 = (v75 + 63) >> 6;
      v140 = (v163 + 8);
      v143 = v74;

      v24 = 0;
      v142 = v54;
      v141 = v77;
      v144 = v42;
      v148 = v10;
      v78 = v158;
      while (v53)
      {
LABEL_35:
        v80 = __clz(__rbit64(v53)) | (v24 << 6);
        v81 = (*(v143 + 48) + 40 * v80);
        v83 = *v81;
        v82 = v81[1];
        v84 = v81[2];
        v85 = v81[3];
        v86 = v81[4];
        v87 = *(v161 + 48);
        outlined init with copy of ScrollPositionInfo.ItemOffset(*(v143 + 56) + *(v160 + 72) * v80, v78 + v87, type metadata accessor for ScrollPositionInfo.ItemOffset);
        *v78 = v83;
        v78[1] = v82;
        v78[2] = v84;
        v78[3] = v85;
        v78[4] = v86;
        v88 = *(v78 + v87);

        v89 = v156;
        v153(v88);
        v90 = v166;
        if (v150(v89, 1, v166) == 1)
        {
          outlined destroy of CharacterSet?(v89, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          v42 = v144;
          v10 = v148;
        }

        else
        {
          v91 = v154;
          v145(v154, v89, v90);
          v92 = IndexPath._bridgeToObjectiveC()().super.isa;
          v10 = v148;
          [v148 scrollToItemAtIndexPath:v92 atScrollPosition:8 animated:0];

          (*v140)(v91, v90);
          v42 = v144;
        }

        ObjCClassFromMetadata = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        v54 = v142;
        v77 = v141;
        v53 &= v53 - 1;
        outlined destroy of CharacterSet?(v158, &_s26DocumentManagerExecutables20DOCCollectionSectionV3key_AA18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetV5valuetMd, &_s26DocumentManagerExecutables20DOCCollectionSectionV3key_AA18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetV5valuetMR);
        v55 = &selRef_setNavigationTitleForTagListInInfoPanel_;
      }

      while (1)
      {
        v79 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v79 >= v77)
        {

          v73 = 1;
          goto LABEL_38;
        }

        v53 = *&v54[8 * v79];
        ++v24;
        if (v53)
        {
          v24 = v79;
          goto LABEL_35;
        }
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v73 = 0;
  }

  else
  {
    v73 = 0;
LABEL_38:
    v53 = v165;
  }

  [v10 layoutBelowIfNeeded];
  v93 = (*((*MEMORY[0x277D85000] & *v4) + 0x18D0))(*v53);
  v94 = v10;
  if (!v93)
  {
LABEL_50:

    if (!v73)
    {
      (*(v163 + 1))(v162, v166);

      v58 = 1;
      goto LABEL_11;
    }

    v148 = v10;
    v144 = v42;
    v118 = *(v53 + *(v164 + 24));
    v55 = (v118 + 64);
    v119 = 1 << *(v118 + 32);
    v120 = -1;
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    v121 = v120 & *(v118 + 64);
    v54 = ((v119 + 63) >> 6);
    v156 = v163 + 8;
    v165 = v118;

    v10 = 0;
    v42 = v166;
    v163 = v54;
    v164 = v55;
    while (v121)
    {
LABEL_61:
      v123 = __clz(__rbit64(v121)) | (v10 << 6);
      v124 = (*(v165 + 48) + 40 * v123);
      v126 = *v124;
      v125 = v124[1];
      v128 = v124[2];
      v127 = v124[3];
      v24 = v124[4];
      v53 = v157;
      v129 = (v157 + *(v161 + 48));
      outlined init with copy of ScrollPositionInfo.ItemOffset(*(v165 + 56) + *(v160 + 72) * v123, v129, type metadata accessor for ScrollPositionInfo.ItemOffset);
      *v53 = v126;
      *(v53 + 8) = v125;
      *(v53 + 16) = v128;
      *(v53 + 24) = v127;
      *(v53 + 32) = v24;
      v158 = v129;
      v130 = *v129;

      ObjCClassFromMetadata = v147;
      v153(v130);
      v42 = v166;
      if (v150(ObjCClassFromMetadata, 1, v166) == 1)
      {
        outlined destroy of CharacterSet?(ObjCClassFromMetadata, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        v54 = v163;
        v55 = v164;
      }

      else
      {
        v131 = v159;
        v145(v159, ObjCClassFromMetadata, v42);
        v132 = IndexPath._bridgeToObjectiveC()().super.isa;
        v24 = [v148 cellForItemAtIndexPath_];

        v55 = v164;
        if (v24)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIScrollView, 0x277D759D8);
          v133 = [v24 superview];
          if (v133)
          {
            v134 = v133;
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            while (([v134 isKindOfClass_] & 1) == 0)
            {
              v135 = [v134 superview];

              v134 = v135;
              if (!v135)
              {
                goto LABEL_67;
              }
            }

            objc_opt_self();
            ObjCClassFromMetadata = swift_dynamicCastObjCClassUnconditional();
            if (static NSObject.== infix(_:_:)())
            {
              (*v156)(v159, v42);
            }

            else
            {
              v136 = *(v158 + *(v155 + 24));
              [ObjCClassFromMetadata contentOffset];
              [ObjCClassFromMetadata setContentOffset:0 animated:{v136 + v137, v138 + 0.0}];

              (*v156)(v159, v42);
            }
          }

          else
          {
LABEL_67:
            (*v156)(v159, v42);
          }

          v53 = v157;
        }

        else
        {
          (*v156)(v131, v42);
        }

        v54 = v163;
      }

      v121 &= v121 - 1;
      outlined destroy of CharacterSet?(v53, &_s26DocumentManagerExecutables20DOCCollectionSectionV3key_AA18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetV5valuetMd, &_s26DocumentManagerExecutables20DOCCollectionSectionV3key_AA18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetV5valuetMR);
    }

    while (1)
    {
      v122 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v122 >= v54)
      {

        (*v156)(v162, v42);
        v58 = 1;
        v42 = v144;
        goto LABEL_11;
      }

      v121 = v55[v122];
      ++v10;
      if (v121)
      {
        v10 = v122;
        goto LABEL_61;
      }
    }

    __break(1u);
    goto LABEL_77;
  }

  ObjCClassFromMetadata = v93;
  v95 = DOCItemCollectionViewController.promptView.getter();
  if (!v95)
  {
    v103 = 0.0;
    goto LABEL_44;
  }

  v96 = v95;
  result = [v4 view];
  if (result)
  {
    v97 = result;
    [result bounds];
    v99 = v98;
    v101 = v100;

    [v96 systemLayoutSizeFittingSize_];
    v103 = v102;

LABEL_44:
    v104 = DOCItemCollectionViewController.offsetToTop(ofCell:)(ObjCClassFromMetadata);
    v24 = v149;
    v105 = v104 - v103 - *(v53 + *(v155 + 24));
    v106 = MEMORY[0x277D85000];
    v107 = (*((*MEMORY[0x277D85000] & *v10) + 0x138))();
    v109 = v108;
    v110 = (*((*v106 & *v10) + 0x140))();
    v112 = v111;
    [v10 contentOffset];
    if (v105 + v113 >= v109)
    {
      [v10 contentOffset];
      v115 = v114;

      if (v112 >= v105 + v115)
      {
        [v10 contentOffset];
        v107 = v116 + 0.0;
        v109 = v105 + v117;
      }

      else
      {
        v107 = v110;
        v109 = v112;
      }
    }

    else
    {
    }

    [v10 setContentOffset:0 animated:{v107, v109}];
    v94 = ObjCClassFromMetadata;
    goto LABEL_50;
  }

LABEL_80:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:)(Swift::OpaquePointer nodes, Swift::Bool shouldEnqueue, Swift::Bool selectEvenIfVisible)
{
  v156 = selectEvenIfVisible;
  LODWORD(v166) = shouldEnqueue;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v154 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v152 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v153 = &v142 - v18;
  v161 = type metadata accessor for IndexPath();
  v155 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v19);
  v150 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v151 = &v142 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tSgMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tSgMR);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = (&v142 - v26);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
  v162 = *(v167 - 8);
  MEMORY[0x28223BE20](v167, v28);
  v157 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v149 = &v142 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v169 = &v142 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v160 = &v142 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v164 = &v142 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v159 = &v142 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v49 = &v142 - v48;
  v50 = (v47 >> 62);
  v165 = v47;
  if (v47 >> 62)
  {
    goto LABEL_57;
  }

  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

LABEL_3:
  v148 = v13;
  v144 = v12;
  v145 = v9;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Logger.UI);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  v54 = os_log_type_enabled(v52, v53);
  v147 = v8;
  v146 = v7;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock = v7;
    *v55 = 136315138;
    *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEBC0, &aBlock);
    _os_log_impl(&dword_2493AC000, v52, v53, "%s Revealing node", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v55, -1, -1);
  }

  v56 = v163;
  v8 = MEMORY[0x277D85000];
  v57 = (*((*MEMORY[0x277D85000] & *v163) + 0x1018))();
  if (!v57)
  {
    if (v166)
    {
      v65 = v8;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock = v69;
        *v68 = 136315138;
        *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEBC0, &aBlock);
        _os_log_impl(&dword_2493AC000, v66, v67, "%s Enqueueing node to reveal", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x24C1FE850](v69, -1, -1);
        MEMORY[0x24C1FE850](v68, -1, -1);
      }

      v70 = v163;
      v71 = (*((*v65 & *v163) + 0xBF0))();
      if (v72 != -1)
      {
        v73 = v71;
        v74 = v72;
        if (one-time initialization token for restorableSettingsCache != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for RestorableSettings(0);
        (*(*(v75 - 8) + 56))(v49, 1, 1, v75);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v49, v73, v74 & 1);
        v71 = swift_endAccess();
      }

      (*((*v65 & *v70) + 0x1648))(v71);
      *(v70 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal) = v165;
    }

    return 0;
  }

  v58 = v57;
  v59 = (*((*v8 & *v56) + 0xBF0))();
  if (v60 != -1)
  {
    v61 = v59;
    v62 = v60;
    if (one-time initialization token for restorableSettingsCache != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for RestorableSettings(0);
    (*(*(v63 - 8) + 56))(v49, 1, 1, v63);
    v8 = &static DOCItemCollectionViewController.restorableSettingsCache;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v49, v61, v62 & 1);
    v59 = swift_endAccess();
  }

  (*((*MEMORY[0x277D85000] & *v163) + 0x1648))(v59);
  if (v50)
  {
    v76 = v165;
    v77 = __CocoaSet.count.getter();
    v64 = v76;
    v9 = v77;
  }

  else
  {
    v64 = v165;
    v9 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v168 = v58;
  v142 = v4;
  v143 = v3;
  v50 = v163;
  if (v9)
  {
    v13 = 0;
    v49 = 0;
    v4 = v64 & 0xC000000000000001;
    v3 = v64 & 0xFFFFFFFFFFFFFF8;
    v12 = (v162 + 48);
    v166 = MEMORY[0x277D84F90];
    v158 = v64 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v8 = MEMORY[0x24C1FC540](v13);
        v7 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 >= *(v3 + 16))
        {
          goto LABEL_56;
        }

        v8 = *(v64 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v7 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          if (__CocoaSet.count.getter() < 1)
          {
            return 0;
          }

          goto LABEL_3;
        }
      }

      aBlock = v8;
      closure #1 in DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:)(&aBlock, v50, v168, v27);
      swift_unknownObjectRelease();
      if ((*v12)(v27, 1, v167) == 1)
      {
        outlined destroy of CharacterSet?(v27, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tSgMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tSgMR);
      }

      else
      {
        v78 = v159;
        outlined init with take of (key: URL, value: FPItem)(v27, v159, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
        outlined init with take of (key: URL, value: FPItem)(v78, v164, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v79 = v166;
        }

        else
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v166[2] + 1, 1, v166);
        }

        v81 = v79[2];
        v80 = v79[3];
        v8 = (v81 + 1);
        if (v81 >= v80 >> 1)
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v79);
        }

        v79[2] = v8;
        v82 = (*(v162 + 80) + 32) & ~*(v162 + 80);
        v166 = v79;
        outlined init with take of (key: URL, value: FPItem)(v164, v79 + v82 + *(v162 + 72) * v81, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
        v50 = v163;
        v3 = v158;
      }

      ++v13;
      v64 = v165;
      if (v7 == v9)
      {
        goto LABEL_41;
      }
    }
  }

  v166 = MEMORY[0x277D84F90];
LABEL_41:
  v83 = v166[2];
  if (!v83)
  {

    return 0;
  }

  v84 = v168;
  if (v156)
  {
    v85 = 1;
    v86 = v161;
    v87 = MEMORY[0x277D85000];
    goto LABEL_61;
  }

  aBlock = MEMORY[0x277D84F90];
  v89 = v166 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
  v90 = *(v162 + 72);
  v91 = (v155 + 8);
  v165 = MEMORY[0x277D84F90];
  v92 = v167;
  v93 = v169;
  do
  {
    v94 = v160;
    outlined init with copy of DOCGridLayout.Spec?(v89, v160, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
    outlined init with copy of DOCGridLayout.Spec?(v94, v93, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
    swift_unknownObjectRelease();
    v95 = *(v92 + 48);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v97 = &v169[v95];
    v93 = v169;
    (*v91)(v97, v161);
    v98 = [v84 cellForItemAtIndexPath_];

    v99 = outlined destroy of CharacterSet?(v94, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
    if (v98)
    {
      MEMORY[0x24C1FB090](v99);
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v165 = aBlock;
    }

    v89 += v90;
    --v83;
    v92 = v167;
    v84 = v168;
  }

  while (v83);
  v100 = v165;
  v87 = MEMORY[0x277D85000];
  if (v165 >> 62)
  {
    v105 = __CocoaSet.count.getter();
    v50 = v163;
    v86 = v161;
    if (!v105)
    {
      goto LABEL_60;
    }

LABEL_54:
    v101 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20UICollectionViewCellC_SayAEGTt0g5Tf4g_n(v100);

    v103 = (*((*v87 & *v50) + 0x12F0))(v102);
    v104 = specialized Set.isSubset<A>(of:)(v103, v101);

    v85 = v104 ^ 1;
  }

  else
  {
    v50 = v163;
    v86 = v161;
    if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

LABEL_60:

    v85 = 1;
  }

LABEL_61:
  v106 = *(v50 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (v106 && (v107 = [v106 activeDocumentCreationSession]) != 0 && (v108 = v107, v109 = (*((*v87 & *v107) + 0x110))(), v108, (v109 & 1) != 0))
  {
    if (v166[2])
    {
      v110 = v149;
      outlined init with copy of DOCGridLayout.Spec?(v166 + ((*(v162 + 80) + 32) & ~*(v162 + 80)), v149, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);

      swift_unknownObjectRelease();
      v111 = v155;
      v112 = *(v155 + 32);
      v113 = v110 + *(v167 + 48);
      v114 = v150;
      v112(v150, v113, v86);
      v115 = v151;
      v112(v151, v114, v86);
      v116 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v84 scrollToItemAtIndexPath:v116 atScrollPosition:2 animated:0];

      *(v50 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) = 0;
      v117 = objc_opt_self();
      v118 = swift_allocObject();
      *(v118 + 16) = v50;
      v174 = partial apply for closure #3 in DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:);
      v175 = v118;
      aBlock = MEMORY[0x277D85DD0];
      v171 = 1107296256;
      v172 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v173 = &block_descriptor_158_1;
      v119 = _Block_copy(&aBlock);
      v120 = v50;

      [v117 performAfterCATransactionCommits_];
      _Block_release(v119);

      (*(v111 + 8))(v115, v86);
    }

    else
    {
    }

    return 1;
  }

  else if (v85)
  {
    (*((*v87 & *v50) + 0x1308))();
    v121 = v167;
    v122 = v166[2];
    v123 = v157;
    v124 = v169;
    if (v122)
    {
      v125 = v166 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v126 = *(v162 + 72);
      v127 = (v155 + 8);
      do
      {
        outlined init with copy of DOCGridLayout.Spec?(v125, v123, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
        outlined init with copy of DOCGridLayout.Spec?(v123, v124, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
        swift_unknownObjectRelease();
        v128 = *(v121 + 48);
        v129 = IndexPath._bridgeToObjectiveC()().super.isa;
        v130 = &v169[v128];
        v124 = v169;
        (*v127)(v130, v86);
        [v168 selectItemAtIndexPath:v129 animated:1 scrollPosition:2];

        v123 = v157;
        outlined destroy of CharacterSet?(v157, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
        v125 += v126;
        --v122;
      }

      while (v122);
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v169 = static OS_dispatch_queue.main.getter();
    v131 = v152;
    static DispatchTime.now()();
    v132 = v153;
    + infix(_:_:)();
    v133 = *(v154 + 8);
    v133(v131, v148);
    v134 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v135 = swift_allocObject();
    v136 = v166;
    *(v135 + 16) = v134;
    *(v135 + 24) = v136;
    v174 = partial apply for closure #5 in DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:);
    v175 = v135;
    aBlock = MEMORY[0x277D85DD0];
    v171 = 1107296256;
    v172 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v173 = &block_descriptor_152_0;
    v137 = _Block_copy(&aBlock);

    v138 = v144;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v139 = v146;
    v140 = v143;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v141 = v169;
    MEMORY[0x24C1FB940](v132, v138, v139, v137);
    _Block_release(v137);

    (*(v142 + 8))(v139, v140);
    (v145[1])(v138, v147);
    v133(v132, v148);
    return 1;
  }

  else
  {

    return 1;
  }
}

uint64_t closure #1 in DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v51 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v47[-v10];
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19.n128_f64[0] = MEMORY[0x28223BE20](v17, v18);
  v21 = &v47[-v20];
  v22 = *a1;
  (*((*MEMORY[0x277D85000] & *a2) + 0xD98))(v22, v19);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
    return (*(*(v23 - 8) + 56))(a4, 1, 1, v23);
  }

  else
  {
    v49 = a4;
    v50 = v4;
    v25 = *(v13 + 32);
    v25(v21, v11, v12);
    v26 = IndexPath.section.getter();
    if (v26 >= [v51 numberOfSections] || (v27 = IndexPath.item.getter(), v27 >= objc_msgSend(v51, sel_numberOfItemsInSection_, IndexPath.section.getter())))
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.UI);
      (*(v13 + 16))(v16, v21, v12);
      swift_unknownObjectRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53 = v51;
        *v34 = 136315650;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEBC0, &v53);
        *(v34 + 12) = 2080;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
        v48 = v33;
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v38 = *(v13 + 8);
        v38(v16, v12);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v53);

        *(v34 + 14) = v39;
        *(v34 + 22) = 2080;
        v52 = v22;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
        v40 = String.init<A>(describing:)();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v53);

        *(v34 + 24) = v42;
        _os_log_impl(&dword_2493AC000, v32, v48, "%s Invalid index path %s for item %s", v34, 0x20u);
        v43 = v51;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v34, -1, -1);

        v38(v21, v12);
      }

      else
      {

        v44 = *(v13 + 8);
        v44(v16, v12);
        v44(v21, v12);
      }

      v45 = v49;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
      return (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    }

    else
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
      v29 = *(v28 + 48);
      v30 = v49;
      *v49 = v22;
      v25(v30 + v29, v21, v12);
      (*(*(v28 - 8) + 56))(v30, 0, 1, v28);
      return swift_unknownObjectRetain();
    }
  }
}

void *specialized Set.isSubset<A>(of:)(unint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v6 = *(a2 + 16);

    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_12:

    v9 = 1;
    return (v9 & 1);
  }

  if (a2 < 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_12;
  }

  if (__CocoaSet.count.getter() != 1)
  {
    v5 = __CocoaSet.count.getter();
    v2 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20UICollectionViewCellC_Tt1g5(v4, v5);
LABEL_13:
    v9 = specialized _NativeSet.isSubset<A>(of:)(a1, v2);

    return (v9 & 1);
  }

LABEL_10:

  result = specialized Collection.first.getter(v2);
  v11 = result;
  if (result)
  {
    MEMORY[0x28223BE20](result, v8);
    v10[2] = &v11;
    v9 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v10, a1);

    return (v9 & 1);
  }

  __break(1u);
  return result;
}

void closure #5 in DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:)(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(a2 + 16);
    if (v10)
    {
      v29 = *(v30 + 48);
      v11 = *((*MEMORY[0x277D85000] & *Strong) + 0xD88);
      v27 = (*MEMORY[0x277D85000] & *Strong) + 3464;
      v28 = v11;
      v12 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v26 = *(v3 + 72);
      do
      {
        outlined init with copy of DOCGridLayout.Spec?(v12, v9, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
        v13 = v28(&v9[v29], 0);
        if (v13)
        {
          v14 = v13;
          v15 = v25;
          outlined init with copy of DOCGridLayout.Spec?(v9, v25, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
          v16 = *v15;
          v17 = *(v30 + 48);
          v18 = type metadata accessor for IndexPath();
          v19 = *(*(v18 - 8) + 8);
          v19(&v15[v17], v18);
          LODWORD(v17) = [v14 isEqual_];
          swift_unknownObjectRelease();
          v20 = swift_unknownObjectRelease();
          if (v17)
          {
            v21 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1010))(v20);
            v22 = v25;
            outlined init with copy of DOCGridLayout.Spec?(v9, v25, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
            swift_unknownObjectRelease();
            v23 = *(v30 + 48);
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v19((v22 + v23), v18);
            [v21 deselectItemAtIndexPath:isa animated:1];
          }
        }

        outlined destroy of CharacterSet?(v9, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMR);
        v12 += v26;
        --v10;
      }

      while (v10);
    }
  }
}

uint64_t DOCItemCollectionViewController.selectAndScroll(to:animated:shouldEnqueue:)(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v101 = a2;
  LODWORD(v102) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v99 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v99 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.UI);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v100 = a1;
    v23 = v9;
    v24 = v18;
    v25 = v15;
    v26 = v14;
    v27 = v22;
    v28 = swift_slowAlloc();
    v103[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BDEC00, v103);
    _os_log_impl(&dword_2493AC000, v20, v21, "%s Scrolling to node", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1FE850](v28, -1, -1);
    v29 = v27;
    v14 = v26;
    v15 = v25;
    v18 = v24;
    v9 = v23;
    a1 = v100;
    MEMORY[0x24C1FE850](v29, -1, -1);
  }

  v30 = MEMORY[0x277D85000];
  v31 = (*((*MEMORY[0x277D85000] & *v4) + 0x1018))();
  if (!v31)
  {
    goto LABEL_8;
  }

  v32 = v31;
  (*((*v30 & *v4) + 0xD98))(a1);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    v31 = outlined destroy of CharacterSet?(v13, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
LABEL_8:
    if (v102)
    {
      v33 = a1;
      v34 = (*((*v30 & *v4) + 0xBF0))(v31);
      if (v35 != -1)
      {
        v36 = v34;
        v37 = v35;
        if (one-time initialization token for restorableSettingsCache != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for RestorableSettings(0);
        (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v9, v36, v37 & 1);
        v34 = swift_endAccess();
      }

      (*((*v30 & *v4) + 0x1648))(v34);
      v39 = v101 & 1;
      v40 = v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
      *v40 = v33;
      v40[8] = v39;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    return 0;
  }

  v42 = *(v15 + 32);
  v102 = v14;
  v42(v18, v13, v14);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v44 = [v32 cellForItemAtIndexPath_];

  if (v44)
  {
    v100 = a1;
    v45 = (*((*v30 & *v4) + 0x12F0))();
    v103[0] = v44;
    MEMORY[0x28223BE20](v45, v46);
    *(&v99 - 2) = v103;
    v47 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v99 - 4), v45);

    if (v47)
    {
      v49 = MEMORY[0x277D85000];
      v50 = (*((*MEMORY[0x277D85000] & *v4) + 0xBF0))(v48);
      if (v51 != -1)
      {
        v52 = v50;
        v53 = v51;
        if (one-time initialization token for restorableSettingsCache != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for RestorableSettings(0);
        (*(*(v54 - 8) + 56))(v9, 1, 1, v54);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v9, v52, v53 & 1);
        v50 = swift_endAccess();
      }

      v55 = (*((*v49 & *v4) + 0x1648))(v50);
      v56 = (*((*v49 & *v4) + 0x1338))(v55);
      if (v56 >> 62)
      {
        v98 = v56;
        v57 = __CocoaSet.count.getter();
        v56 = v98;
      }

      else
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = v100;
      if (v57 == 1)
      {
        v59 = v56;
        swift_getObjectType();
        v60 = specialized Array<A>.contains(node:)(v58, v59);

        if (v60)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
          v62 = (*(v15 + 80) + 32) & ~*(v15 + 80);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_249B9A480;
          (*(v15 + 16))(v63 + v62, v18, v102);
          (*((*v49 & *v4) + 0x1300))(0, v63);

          v64.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v65 = v44;
          v44 = v64.super.isa;
LABEL_41:
          [v32 selectItemAtIndexPath:v64.super.isa animated:v101 & 1 scrollPosition:0];

          (*(v15 + 8))(v18, v102);
          return 1;
        }
      }

      else
      {
      }

      (*((*v49 & *v4) + 0x1308))(v61);
      v64.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v65 = v64.super.isa;
      goto LABEL_41;
    }

    v30 = MEMORY[0x277D85000];
  }

  v66 = IndexPath._bridgeToObjectiveC()().super.isa;
  v67 = [v32 layoutAttributesForItemAtIndexPath_];

  if (!v67)
  {
    (*(v15 + 8))(v18, v102);

    return 0;
  }

  [v67 frame];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;

  v76 = (*((*v30 & *v4) + 0xBF0))();
  if (v77 != -1)
  {
    v78 = v76;
    v79 = v77;
    if (one-time initialization token for restorableSettingsCache != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for RestorableSettings(0);
    (*(*(v80 - 8) + 56))(v9, 1, 1, v80);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v9, v78, v79 & 1);
    v76 = swift_endAccess();
  }

  (*((*v30 & *v4) + 0x1648))(v76);
  v81.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v82 = *((*v30 & *v4) + 0x1010);
  v83 = v82();
  v84 = [v83 _isRectFullyVisible_];

  if (v84)
  {
    v85 = 0;
  }

  else
  {
    v104.origin.x = v69;
    v104.origin.y = v71;
    v104.size.width = v73;
    v104.size.height = v75;
    MinY = CGRectGetMinY(v104);
    v87 = v82();
    v88 = [v87 safeAreaLayoutGuide];

    [v88 layoutFrame];
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;

    v105.origin.x = v90;
    v105.origin.y = v92;
    v105.size.width = v94;
    v105.size.height = v96;
    if (MinY <= CGRectGetMinY(v105))
    {
      v85 = 1;
    }

    else
    {
      v85 = 4;
    }
  }

  v97 = v102;
  [v32 selectItemAtIndexPath:v81.super.isa animated:v101 & 1 scrollPosition:v85];

  (*(v15 + 8))(v18, v97);
  return 1;
}