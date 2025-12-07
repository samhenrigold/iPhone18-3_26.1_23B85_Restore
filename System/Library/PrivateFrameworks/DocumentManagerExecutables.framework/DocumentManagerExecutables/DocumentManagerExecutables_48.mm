uint64_t partial apply for closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(a1, v4, v5, v6, v7, v8);
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:canHandle:)(void *a1)
{
  v66 = type metadata accessor for UTType();
  v2 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DOCDragPasteboardType(0);
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v52 - v12;
  v14 = &selRef_initWithFrame_;
  v15 = [a1 items];
  v16 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
LABEL_44:
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v40 = static DOCLog.UI;
    v41 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_249B9A480;
    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v42 + 32) = 0xD00000000000001CLL;
    *(v42 + 40) = 0x8000000249BECCA0;
    os_log(_:dso:log:type:_:)("%@: session contains no items", 29, 2, &dword_2493AC000, v40, v41, v42);

    return 0;
  }

  v19 = [a1 v14[98]];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    goto LABEL_47;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_48:

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v49 = static DOCLog.UI;
    v50 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_249B9A480;
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v51 + 32) = 0xD00000000000001CLL;
    *(v51 + 40) = 0x8000000249BECCA0;
    os_log(_:dso:log:type:_:)("%@: all dragging items have representations we can accept", 57, 2, &dword_2493AC000, v49, v50, v51);

    return 1;
  }

  while (1)
  {
    v22 = 0;
    a1 = (v20 & 0xC000000000000001);
    v23 = v20 & 0xFFFFFFFFFFFFFF8;
    v24 = v20 + 32;
    v64 = (v2 + 8);
    v65 = (v2 + 32);
    v60 = 0x8000000249BC5FD0;
    v61 = 0x8000000249BC6000;
    v58 = v20;
    v59 = 0x8000000249BC5FA0;
    v62 = "com.apple.icloud.applecorporate";
    v63 = "ntManager.FINode.File";
    v55 = v21;
    v56 = v16;
    v53 = v20 & 0xFFFFFFFFFFFFFF8;
    v54 = (v20 & 0xC000000000000001);
    v52 = v20 + 32;
LABEL_7:
    if (a1)
    {
      break;
    }

    if (v22 < *(v23 + 16))
    {
      v25 = *(v24 + 8 * v22);
      goto LABEL_10;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v21 = __CocoaSet.count.getter();
    if (!v21)
    {
      goto LABEL_48;
    }
  }

  v25 = MEMORY[0x24C1FC540](v22, v20);
LABEL_10:
  v69 = v25;
  v2 = v67;
  v27 = __OFADD__(v22, 1);
  v28 = v22 + 1;
  if (v27)
  {
    goto LABEL_46;
  }

  v57 = v28;
  if (one-time initialization token for DOCAcceptableDragPasteboardTypes != -1)
  {
    swift_once();
  }

  rawValue = DOCAcceptableDragPasteboardTypes._rawValue;
  v16 = *(DOCAcceptableDragPasteboardTypes._rawValue + 2);
  if (v16)
  {
    v14 = 0;
    v68 = DOCAcceptableDragPasteboardTypes._rawValue + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    while (1)
    {
      if (v14 >= rawValue[2])
      {
        __break(1u);
        goto LABEL_44;
      }

      outlined init with copy of DOCDragPasteboardType(&v68[*(v70 + 72) * v14], v13, v26);
      v30 = [v69 itemProvider];
      outlined init with copy of DOCDragPasteboardType(v13, v8, v31);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          if (*v8)
          {
            v33 = 0xD000000000000029;
            v34 = *v8 == 1 ? v60 : v61;
          }

          else
          {
            v33 = 0xD000000000000025;
            v34 = v59;
          }
        }

        else
        {
          v36 = v66;
          (*v65)(v5, v8, v66);
          v33 = UTType.identifier.getter();
          v34 = v37;
          v38 = v36;
          v2 = v67;
          (*v64)(v5, v38);
        }
      }

      else
      {
        if (*v8)
        {
          v33 = 0xD000000000000029;
        }

        else
        {
          v33 = 0xD000000000000025;
        }

        v35 = v63;
        if (!*v8)
        {
          v35 = v62;
        }

        v34 = v35 | 0x8000000000000000;
      }

      a1 = MEMORY[0x24C1FAD20](v33, v34);

      v39 = [v30 hasRepresentationConformingToTypeIdentifier:a1 fileOptions:0];

      outlined destroy of FPAction(v13, type metadata accessor for DOCDragPasteboardType);
      if (v39)
      {
        break;
      }

      v14 = (v14 + 1);
      if (v16 == v14)
      {
        goto LABEL_39;
      }
    }

    a1 = v54;
    v22 = v57;
    v20 = v58;
    v24 = v52;
    v23 = v53;
    if (v57 != v55)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_39:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v43 = static DOCLog.UI;
  v44 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_249B9FA70;
  *(v45 + 56) = MEMORY[0x277D837D0];
  *(v45 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v45 + 32) = 0xD00000000000001CLL;
  *(v45 + 40) = 0x8000000249BECCA0;
  *(v45 + 96) = v56;
  *(v45 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type UIDragItem and conformance NSObject, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v46 = v69;
  *(v45 + 72) = v69;
  v47 = v46;
  os_log(_:dso:log:type:_:)("%@: dragging item %@ does not have any representations we can accept", 68, 2, &dword_2493AC000, v43, v44, v45);

  return 0;
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:dropSessionDidExit:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  DOCItemCollectionViewController.updateDropTargetHighlightedCell(toIndexPath:)(v4);
  outlined destroy of CharacterSet?(v4, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v7 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for DOCItemCollectionViewDropSessionDidExit != -1)
  {
    swift_once();
  }

  [v7 postNotificationName:static NSNotificationName.DOCItemCollectionViewDropSessionDidExit object:v0];

  v6(v4, 1, 1, v5);
  return (*((*MEMORY[0x277D85000] & *v0) + 0x988))(v4);
}

uint64_t outlined destroy of FPAction(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized Sequence.first(where:)(uint64_t (*result)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v20 = a3;
    v4 = a2 + 48;
    while (1)
    {
      v23 = v3;
      v5 = *(v4 - 8);
      v6 = *v4;
      v7 = *(v4 + 8);
      v8 = *(v4 + 16);
      v9 = *(v4 + 24);
      v10 = *(v4 + 32);
      v11 = *(v4 + 40);
      v25[0] = *(v4 - 16);
      v25[1] = v5;
      v21 = v5;
      v25[2] = v6;
      v25[3] = v7;
      v25[4] = v8;
      v25[5] = v9;
      v25[6] = v10;
      v26 = v11;
      v12 = v25[0];
      swift_unknownObjectRetain();
      v13 = v6;
      v24 = v7;
      v14 = v7;
      v15 = v8;
      outlined copy of DOCSidebarItem?(v6, v14, v8, v9, v10, v11);
      v16 = v27;
      v17 = result(v25);
      if (v16)
      {
        swift_unknownObjectRelease();
        outlined consume of DOCSidebarItem?(v13, v24, v8, v9, v10, v11);
        return;
      }

      if (v17)
      {
        break;
      }

      v27 = 0;
      v4 += 64;
      swift_unknownObjectRelease();
      outlined consume of DOCSidebarItem?(v13, v24, v8, v9, v10, v11);
      v3 = v23 - 1;
      if (v23 == 1)
      {
        v12 = 0;
        v18 = 0;
        v13 = 0;
        v19 = 0;
        v15 = 0;
        v9 = 0;
        v10 = 0;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    v18 = v21;
    LOBYTE(v3) = v11;
    v19 = v24;
  }

  else
  {
    v12 = 0;
    v18 = 0;
    v13 = 0;
    v19 = 0;
    v15 = 0;
    v9 = 0;
    v10 = 0;
  }

LABEL_10:
  *a3 = v12;
  *(a3 + 8) = v18;
  *(a3 + 16) = v13;
  *(a3 + 24) = v19;
  *(a3 + 32) = v15;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
  *(a3 + 56) = v3;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
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
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            swift_unknownObjectRelease();
            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        swift_unknownObjectRelease();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DOCBrowserHistoryItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of DOCBrowserHistoryItem(v13, v11);
      v15 = a1(v11);
      if (v3)
      {
        return outlined destroy of DOCBrowserHistoryItem(v11);
      }

      if (v15)
      {
        break;
      }

      outlined destroy of DOCBrowserHistoryItem(v11);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    outlined init with take of DOCBrowserHistoryItem(v11, v19);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      if (__OFSUB__(v6--, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v6 < *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(a3 + 32 + 8 * v6);
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      v6 = __CocoaSet.count.getter();
      if (!v6)
      {
        return 0;
      }
    }

    v8 = MEMORY[0x24C1FC540](v6, a3);
LABEL_8:
    v9 = v8;
    v12 = v8;
    v10 = a1(&v12);
    if (v3)
    {
      break;
    }

    if (v10)
    {
      return v9;
    }

    if (!v6)
    {
      return 0;
    }
  }

  return v9;
}

{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

{
  return sub_2493EE408(a1, a2, a3);
}

Swift::Void __swiftcall DOCSidebarViewController.updatePreferredFocusIndexPath()()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v67 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v6);
  v66 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v77 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v76 = &v61 - v13;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v61 - v17;
  v78 = v2;
  v63 = *(v2 + 56);
  v64 = v2 + 56;
  v63(&v61 - v17, 1, 1, v1, v16);
  v19 = MEMORY[0x277D85000];
  v20 = *MEMORY[0x277D85000] & *v0;
  v21 = *(v20 + 0x4A8);
  v62 = v18;
  v74 = v21;
  v75 = v20 + 1192;
  v22 = (v21)(v18);
  (*((*v19 & *v0) + 0x4B8))(v84, v22);
  v23 = v85;
  v79 = v1;
  v73 = v5;
  v81 = v0;
  if (v85 == 255)
  {
    DOCSidebarViewController.hierarchyControllerFirstReachableSidebarItem.getter(v86);
    v28 = v86[0];
    v26 = v86[1];
    v27 = v86[2];
    v24 = v86[3];
    v25 = v86[4];
    v23 = v87;
    outlined init with copy of DOCGridLayout.Spec?(v86, v99, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
    if (v23 == 255)
    {
      v68 = v28;
      v69 = v26;
      v70 = v27;
      v71 = v24;
      v72 = v25;
      v32 = v76;
      (v63)(v76, 1, 1, v1);
      outlined init with copy of DOCGridLayout.Spec?(v84, v99, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      v36 = -1;
      goto LABEL_8;
    }
  }

  else
  {
    v24 = v84[3];
    v25 = v84[4];
    v26 = v84[1];
    v27 = v84[2];
    v28 = v84[0];
  }

  v65 = v23;
  v103[0] = v28;
  v103[1] = v26;
  v103[2] = v27;
  v103[3] = v24;
  v103[4] = v25;
  v104 = v23;
  outlined init with copy of DOCGridLayout.Spec?(v84, v99, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
  outlined copy of DOCSidebarItem?(v28, v26, v27, v24, v25, v23);
  v29 = v66;
  DOCSidebarViewController.diffableSnapshot()();
  v30 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  MEMORY[0x28223BE20](v30, v31);
  *(&v61 - 2) = v29;
  *(&v61 - 1) = v103;
  specialized Sequence.first(where:)(partial apply for specialized closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:), v30, &v88);

  v71 = v24;
  v72 = v25;
  v69 = v26;
  v70 = v27;
  v68 = v28;
  if (v88)
  {
    *v99 = v88;
    *&v99[8] = v89;
    *&v99[24] = v90;
    *&v99[40] = v91;
    v99[56] = v92;
    v32 = v76;
    specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v99, v76);
    v100 = *v99;
    outlined destroy of DOCSidebarViewController.OutlineSection(&v100);
    v101 = *&v99[16];
    *v102 = *&v99[32];
    *&v102[9] = *&v99[41];
    outlined destroy of CharacterSet?(&v101, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
    v33 = v65;
    v34 = outlined consume of DOCSidebarItem?(v28, v26, v27, v24, v25, v65);
    (*(v67 + 8))(v29, v80, v34);
    v35 = v27;
    v36 = v33;
    v37.n128_f64[0] = outlined consume of DOCSidebarItem?(v28, v26, v35, v24, v25, v33);
    v1 = v79;
  }

  else
  {
    (*(v67 + 8))(v29, v80);
    v38 = v65;
    v39 = outlined consume of DOCSidebarItem?(v28, v26, v27, v24, v25, v65);
    v32 = v76;
    v1 = v79;
    v63(v76, 1, 1, v79, v39);
    v40 = v27;
    v36 = v38;
    v37.n128_f64[0] = outlined consume of DOCSidebarItem?(v28, v26, v40, v24, v25, v38);
  }

LABEL_8:
  v41 = v81;
  v42 = v74(v32, v37);
  v43 = *((*MEMORY[0x277D85000] & *v41) + 0x4A0);
  v44 = v77;
  (v43)(v42);
  v45 = v78;
  if ((*(v78 + 48))(v44, 1, v1) == 1)
  {
    outlined consume of DOCSidebarItem?(v68, v69, v70, v71, v72, v36);
    outlined destroy of CharacterSet?(v44, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    return;
  }

  (*(v45 + 32))(v73, v44, v1);
  v46 = type metadata accessor for DOCSidebarViewController(0);
  v83.receiver = v41;
  v83.super_class = v46;
  v47 = objc_msgSendSuper2(&v83, sel_collectionView);
  if (!v47)
  {
    __break(1u);
    goto LABEL_28;
  }

  v48 = v47;
  v80 = type metadata accessor for DOCSidebarCollectionView();
  v49 = [swift_dynamicCastClassUnconditional() indexPathsForSelectedItems];

  if (!v49)
  {
    (*(v45 + 8))(v73, v79);
LABEL_21:
    outlined consume of DOCSidebarItem?(v68, v69, v70, v71, v72, v36);
    return;
  }

  v50 = v79;
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = v73;
  v53 = specialized Sequence<>.contains(_:)(v73, v51);

  if (!v53)
  {
    (*(v78 + 8))(v52, v50);
    goto LABEL_21;
  }

  v82.receiver = v41;
  v82.super_class = v46;
  v54 = objc_msgSendSuper2(&v82, sel_collectionView);
  if (!v54)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v55 = v54;
  [swift_dynamicCastClassUnconditional() setSelectionFollowsFocus_];

  v56 = v62;
  v43();
  v57 = DOCSidebarViewController.sidebarItemCell(at:)(v56);
  outlined destroy of CharacterSet?(v56, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v58 = v78;
  if (!v57)
  {
    (*(v78 + 8))(v52, v79);
    goto LABEL_21;
  }

  DOCSidebarViewController.sidebarItem(for:)(v57, v93);
  if (v95 == 255)
  {
    outlined consume of DOCSidebarItem?(v68, v69, v70, v71, v72, v36);
  }

  else
  {
    v96[0] = v93[0];
    v96[1] = v93[1];
    v97 = v94;
    v98 = v95;
    v59 = DOCSidebarViewController.sidebarSection(for:)(v57);
    if (v59)
    {
      DOCSidebarViewController.updateContentsOfCell(_:withSidebarItem:sidebarSection:)(v57, v96, v59, v60);
      outlined consume of DOCSidebarItem?(v68, v69, v70, v71, v72, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      outlined consume of DOCSidebarItem?(v68, v69, v70, v71, v72, v36);
    }

    outlined destroy of CharacterSet?(v93, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
  }

  (*(v58 + 8))(v52, v79);
}

void specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(uint64_t a2@<X8>)
{
  v3 = IndexPath.section.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v4 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((v3 & 0x8000000000000000) != 0 || v3 >= *(v4 + 16))
  {

LABEL_8:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    goto LABEL_9;
  }

  swift_unknownObjectRetain();

  v5 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  v6 = IndexPath.item.getter();
  if ((v6 & 0x8000000000000000) != 0 || v6 >= *(v5 + 16))
  {

    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v7 = v5 + (v6 << 6);
  v15 = *(v7 + 32);
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  v10 = *(v7 + 64);
  v11 = *(v7 + 72);
  v12 = *(v7 + 80);
  v13 = *(v7 + 88);
  swift_unknownObjectRetain();
  outlined copy of DOCSidebarItem?(v8, v9, v10, v11, v12, v13);
  swift_unknownObjectRelease();

  v14 = v15;
LABEL_9:
  *a2 = v14;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
}

void DOCSidebarViewController.sidebarItem(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  MEMORY[0x28223BE20](v6, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0uLL;
  if (!a1)
  {
    v19 = 0;
    v20 = -1;
    v25 = 0uLL;
    goto LABEL_18;
  }

  v39 = v8;
  v12 = *((*MEMORY[0x277D85000] & *v3) + 0x428);
  v13 = a1;
  v14 = v12();
  if (v14)
  {
    v15 = (*(*v14 + 112))(v14);

    if (v15)
    {
      type metadata accessor for DOCSidebarItemCell(0);
      v16 = v13;
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        v18 = v12();
        if (v18)
        {
          (*(*v18 + 136))(&v41);
          v37 = v42;
          v38 = v41;
          v19 = v43;
          v20 = v44;

LABEL_10:
          v25 = v37;
          v11 = v38;
LABEL_18:
          *a2 = v11;
          *(a2 + 16) = v25;
          *(a2 + 32) = v19;
          *(a2 + 40) = v20;
          return;
        }

        goto LABEL_17;
      }
    }
  }

  v21 = type metadata accessor for DOCSidebarViewController(0);
  v40.receiver = v3;
  v40.super_class = v21;
  v22 = objc_msgSendSuper2(&v40, sel_collectionView);
  if (v22)
  {
    v23 = v22;
    type metadata accessor for DOCSidebarCollectionView();
    v24 = [swift_dynamicCastClassUnconditional() indexPathForCell_];

    if (v24)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v10, 1, &v41);
      v37 = v42;
      v38 = v41;
      v19 = v43;
      v20 = v44;

      (*(v39 + 8))(v10, v6);
      goto LABEL_10;
    }

    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.Sidebar);
    v27 = v13;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v41 = v31;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000249BECDA0, &v41);
      *(v30 + 12) = 2080;
      v32 = [v27 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_2493AC000, v28, v29, "%s: Could not find sidebar item (can determine index path) for cell: %s.", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }

LABEL_17:
    v19 = 0;
    v20 = -1;
    v25 = 0uLL;
    v11 = 0uLL;
    goto LABEL_18;
  }

  __break(1u);
}

id DOCSidebarViewController.sidebarSection(for:)(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v8 = type metadata accessor for DOCSidebarViewController(0);
  v21.receiver = v1;
  v21.super_class = v8;
  v9 = a1;
  result = objc_msgSendSuper2(&v21, sel_collectionView);
  if (result)
  {
    v11 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v12 = [swift_dynamicCastClassUnconditional() indexPathForCell_];

    if (v12)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v7, 0);
      (*(v4 + 8))(v7, v3);
      return v13;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    v15 = v9;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = a1;
      v20 = v15;
      _os_log_impl(&dword_2493AC000, v16, v17, "Couldn't find section: unable to determine indexPath for %@", v18, 0xCu);
      outlined destroy of CharacterSet?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

void DOCSidebarViewController.forEachVisibleSidebarItemCell(handler:)(uint64_t a1, uint64_t a2)
{
  v56[1] = a2;
  v56[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v70 = v56 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v10 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v11);
  v13 = v56 - v12;
  v14 = type metadata accessor for IndexPath();
  v77 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v69 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v56 - v19;
  v21 = type metadata accessor for DOCSidebarViewController(0);
  v80 = v2;
  v87.receiver = v2;
  v87.super_class = v21;
  v65 = v21;
  v22 = objc_msgSendSuper2(&v87, sel_collectionView);
  if (!v22)
  {
    goto LABEL_39;
  }

  v23 = v22;
  v64 = type metadata accessor for DOCSidebarCollectionView();
  v24 = [swift_dynamicCastClassUnconditional() indexPathsForVisibleItems];

  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v25;
  v76 = *(v25 + 16);
  if (!v76)
  {
LABEL_36:

    return;
  }

  v26 = 0;
  v27 = (*MEMORY[0x277D85000] & *v80) + 808;
  v75 = *((*MEMORY[0x277D85000] & *v80) + 0x328);
  v74 = v27;
  v73 = v79 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v81 = v77 + 16;
  v72 = (v10 + 8);
  v68 = (v77 + 56);
  v67 = (v77 + 48);
  v63 = (v77 + 32);
  v66 = v6;
  v78 = (v77 + 8);
  v58 = v14;
  v57 = v13;
  while (v26 < *(v79 + 16))
  {
    v28 = *(v77 + 16);
    v29 = v28(v20, v73 + *(v77 + 72) * v26, v14);
    v75(&v85, v29);
    if (v86)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMR);
      if (swift_dynamicCast())
      {
        v30 = v83;
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v85, &_sypSgMd, &_sypSgMR);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v30 = static DOCSidebarViewController.nullDDS;
LABEL_14:
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v31 = IndexPath.section.getter();
    v32 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    if ((v31 & 0x8000000000000000) != 0 || v31 >= *(v32 + 16))
    {

      (*v72)(v13, v82);
    }

    else
    {
      v71 = *(v32 + 16 * v31 + 32);
      swift_unknownObjectRetain();

      v85 = v71;
      v33 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
      v34 = IndexPath.item.getter();
      if ((v34 & 0x8000000000000000) != 0 || v34 >= *(v33 + 16))
      {

        (*v72)(v13, v82);
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = v33 + (v34 << 6);
        *&v71 = *(v35 + 32);
        v36 = *(v35 + 48);
        v62 = *(v35 + 56);
        v38 = *(v35 + 64);
        v37 = *(v35 + 72);
        v39 = *(v35 + 80);
        v40 = *(v35 + 88);
        swift_unknownObjectRetain();
        v61 = v36;
        v41 = v36;
        v13 = v57;
        v42 = v37;
        v43 = v62;
        v59 = v42;
        v60 = v39;
        outlined copy of DOCSidebarItem?(v41, v62, v38, v42, v39, v40);

        (*v72)(v13, v82);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v40 == 255)
        {
          v14 = v58;
          (*v78)(v20, v58);
LABEL_35:
          v6 = v66;
          goto LABEL_5;
        }

        outlined consume of DOCSidebarItem?(v61, v43, v38, v59, v60, v40);
        v6 = v66;
        v14 = v58;
      }
    }

    v44 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v20, 0);
    if (v44)
    {
      v46 = v44;
      v47 = v45;
      DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v20, 1, v88);
      if (v90 == 255)
      {
        (*v78)(v20, v14);
        swift_unknownObjectRelease();
      }

      else
      {
        v91[0] = v88[0];
        v91[1] = v88[1];
        v92 = v89;
        v93 = v90;
        v48 = v70;
        v28(v70, v20, v14);
        (*v68)(v48, 0, 1, v14);
        outlined init with copy of DOCGridLayout.Spec?(v48, v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        if ((*v67)(v6, 1, v14) != 1)
        {
          (*v63)(v69, v6, v14);
          v84.receiver = v80;
          v84.super_class = v65;
          v49 = objc_msgSendSuper2(&v84, sel_collectionView);
          if (!v49)
          {
            goto LABEL_38;
          }

          v50 = v49;
          v51 = swift_dynamicCastClassUnconditional();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v53 = [v51 cellForItemAtIndexPath_];

          v54 = *v78;
          (*v78)(v69, v14);
          outlined destroy of CharacterSet?(v70, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          if (v53)
          {
            type metadata accessor for DOCSidebarItemCell(0);
            v55 = swift_dynamicCastClass();
            if (v55)
            {
              (v56[0])(v55, v91, v46, v47);
              swift_unknownObjectRelease();
              outlined destroy of CharacterSet?(v88, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
            }

            else
            {
              swift_unknownObjectRelease();

              outlined destroy of CharacterSet?(v88, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
            }

            v54(v20, v14);
          }

          else
          {
            v54(v20, v14);
            swift_unknownObjectRelease();
            outlined destroy of CharacterSet?(v88, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
          }

          goto LABEL_35;
        }

        swift_unknownObjectRelease();
        outlined destroy of CharacterSet?(v88, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        (*v78)(v20, v14);
        outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }
    }

    else
    {
      (*v78)(v20, v14);
    }

LABEL_5:
    if (v76 == ++v26)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v3)
  {
    goto LABEL_10;
  }

  v4 = NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  if (v5)
  {
    goto LABEL_10;
  }

  v6 = v4;
  v7 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  if (!*(v7 + 16))
  {

LABEL_10:
    v19 = type metadata accessor for IndexPath();
    v20 = *(*(v19 - 8) + 56);
    v21 = a2;
    goto LABEL_11;
  }

  v22 = v6;
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  v11 = *(v7 + 64);
  v10 = *(v7 + 72);
  v12 = *(v7 + 80);
  v13 = *(v7 + 88);
  swift_unknownObjectRetain();
  outlined copy of DOCSidebarItem?(v8, v9, v11, v10, v12, v13);

  v14 = NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  if (v15)
  {
LABEL_8:
    swift_unknownObjectRelease();
    outlined consume of DOCSidebarItem?(v8, v9, v11, v10, v12, v13);
    v19 = type metadata accessor for IndexPath();
    v20 = *(*(v19 - 8) + 56);
    v21 = a2;
LABEL_11:
    v20(v21, 1, 1, v19);
    return outlined destroy of DOCSidebarViewController.OutlineSection(&v23);
  }

  v16 = __OFSUB__(v22, v14);
  result = v22 - v14;
  if (!v16)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x24C1F80E0]();
      swift_unknownObjectRelease();
      outlined consume of DOCSidebarItem?(v8, v9, v11, v10, v12, v13);
      v18 = type metadata accessor for IndexPath();
      (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
      return outlined destroy of DOCSidebarViewController.OutlineSection(&v23);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v25 = *(a3 + 8);
  v7 = *(a3 + 16);
  v43 = *(a3 + 24);
  v28 = *(a3 + 32);
  v26 = *(a3 + 40);
  v39[3] = &type metadata for DOCSidebarViewController.OutlineItem;
  v39[4] = &protocol witness table for DOCSidebarViewController.OutlineItem;
  v8 = swift_allocObject();
  v39[0] = v8;
  v9 = a1[1];
  v42 = *a1;
  v10 = a1[2];
  v40 = v9;
  v41[0] = v10;
  *(v41 + 9) = *(a1 + 41);
  v11 = *(v41 + 9);
  v8[1] = v42;
  v8[2] = v9;
  v8[3] = v10;
  *(v8 + 57) = v11;
  outlined init with copy of DOCSidebarItemIconProvider(v39, v38);
  outlined init with copy of DOCSidebarViewController.OutlineSection(&v42, v30);
  outlined init with copy of DOCGridLayout.Spec?(&v40, v30, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16DOCUIOutlineItem_pMd, &_s26DocumentManagerExecutables16DOCUIOutlineItem_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v39);
    v16 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
LABEL_8:
    outlined init with copy of DOCSidebarItem(a3, v31);
    outlined consume of DOCSidebarItem?(v13, v12, v15, v14, v16, 0xFFu);
    outlined consume of DOCSidebarItem?(v6, v25, v7, v43, v28, v26);
    v22 = 0;
    return v22 & 1;
  }

  v24 = v7;
  v13 = v32;
  v12 = v33;
  v15 = v34;
  v14 = v35;
  v16 = v36;
  v17 = v37;
  __swift_destroy_boxed_opaque_existential_0(v39);
  swift_unknownObjectRelease();
  if (v17 == 255)
  {
    v7 = v24;
    goto LABEL_8;
  }

  v43 = v3;
  v31[0] = v13;
  v31[1] = v12;
  v32 = v15;
  v33 = v14;
  v29 = v16;
  v34 = v16;
  v27 = v17;
  LOBYTE(v35) = v17;
  outlined init with copy of DOCSidebarItem(a3, v30);
  v18 = DOCSidebarItem.hashComparableValue.getter();
  v20 = v19;
  if (v18 == DOCSidebarItem.hashComparableValue.getter() && v20 == v21)
  {
    v22 = 1;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined destroy of DOCSidebarItem(a3);
  outlined consume of DOCSidebarItem?(v13, v12, v15, v14, v29, v27);
  return v22 & 1;
}

void DOCSidebarViewController.sidebarItem(at:logIfMissing:)(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v38 = a3;
  v4 = type metadata accessor for IndexPath();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v32 - v10;
  DOCSidebarViewController.diffableSnapshot()();
  v33 = a1;
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v40);
  v12 = v40[0];
  v13 = v40[2];
  v14 = v40[3];
  v15 = v40[4];
  v16 = v40[5];
  v17 = v40[6];
  v18 = v41;
  (*(v8 + 8))(v11, v7);
  if (!v12 || (v42[0] = v12, v42[1] = v40[1], swift_unknownObjectRetain(), outlined copy of DOCSidebarItem?(v13, v14, v15, v16, v17, v18), outlined destroy of DOCSidebarViewController.OutlineSection(v42), v18 == 255))
  {
    if (v37)
    {
      if (one-time initialization token for Sidebar != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.Sidebar);
      v21 = v34;
      v20 = v35;
      v22 = v36;
      (*(v35 + 16))(v34, v33, v36);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v39 = v26;
        *v25 = 136315394;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BECDC0, &v39);
        *(v25 + 12) = 2080;
        v27 = MEMORY[0x24C1F8080]();
        v29 = v28;
        (*(v20 + 8))(v21, v22);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v39);

        *(v25 + 14) = v30;
        _os_log_impl(&dword_2493AC000, v23, v24, "%s: Could not find sidebar item at index path: %s.", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v26, -1, -1);
        MEMORY[0x24C1FE850](v25, -1, -1);
        outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
      }

      else
      {
        outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);

        (*(v20 + 8))(v21, v22);
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = -1;
  }

  else
  {
    outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
  }

  v31 = v38;
  *v38 = v13;
  v31[1] = v14;
  v31[2] = v15;
  v31[3] = v16;
  v31[4] = v17;
  *(v31 + 40) = v18;
}

id DOCSidebarViewController.sidebarItemCell(at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v12 = type metadata accessor for DOCSidebarViewController(0);
    v18.receiver = v1;
    v18.super_class = v12;
    result = objc_msgSendSuper2(&v18, sel_collectionView);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v15 = swift_dynamicCastClassUnconditional();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [v15 cellForItemAtIndexPath_];

    (*(v8 + 8))(v11, v7);
    if (v17)
    {
      type metadata accessor for DOCSidebarItemCell(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

Swift::Void __swiftcall DOCSidebarViewController.updateObservableScrollView()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCSidebarViewController(0);
  v1 = objc_msgSendSuper2(&v3, sel_collectionView);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for DOCSidebarCollectionView();
    [v0 setContentScrollView:swift_dynamicCastClassUnconditional() forEdge:15];
  }

  else
  {
    __break(1u);
  }
}

double DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  specialized DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)(a1, a2, &v6);
  v4 = v7[0];
  *a3 = v6;
  a3[1] = v4;
  result = *(v7 + 9);
  *(a3 + 25) = *(v7 + 9);
  return result;
}

double closure #1 in DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)(__int128 *result, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 40) == 255)
  {
    v20 = v3;
    v21 = v4;
    v17 = result[1];
    v18 = *result;
    v6 = *(result + 4);
    v7 = *(result + 40);
    if (a3())
    {
      v10 = result;
      v11 = *a2;
      v12 = *(a2 + 8);
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
      v15 = *(a2 + 32);
      *a2 = v18;
      *(a2 + 16) = v17;
      *(a2 + 32) = v6;
      v16 = *(a2 + 40);
      *(a2 + 40) = v7;
      outlined init with copy of DOCSidebarItem(v10, v19);
      return outlined consume of DOCSidebarItem?(v11, v12, v13, v14, v15, v16);
    }
  }

  return v9;
}

BOOL DOCSidebarViewController.isOutlineHeaderItem(at:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - v4;
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v14);
  (*(v2 + 8))(v5, v1);
  if (!v14[0])
  {
    return 0;
  }

  v7 = v14[5];
  v6 = v14[6];
  v9 = v14[3];
  v8 = v14[4];
  v10 = v14[2];
  v11 = v15;
  v12 = v15 == 255;
  v16[0] = v14[0];
  v16[1] = v14[1];
  outlined destroy of DOCSidebarViewController.OutlineSection(v16);
  outlined consume of DOCSidebarItem?(v10, v9, v8, v7, v6, v11);
  return v12;
}

uint64_t DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(uint64_t a1, char a2)
{
  v69 = type metadata accessor for IndexPath();
  v4 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v68 = &v65 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v65 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v70 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v65 - v21;
  DOCSidebarViewController.diffableSnapshot()();
  v23 = IndexPath.section.getter();
  v71 = v19;
  v24 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((v23 & 0x8000000000000000) != 0 || v23 >= *(v24 + 16))
  {

    if (a2)
    {
      v26 = IndexPath.section.getter();
      MEMORY[0x24C1F80E0](0, v26);
      v27 = IndexPath.section.getter();
      v28 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      if ((v27 & 0x8000000000000000) == 0 && v27 < *(v28 + 16))
      {
        v67 = *(v28 + 16 * v27 + 32);
        v25 = v67;
        swift_unknownObjectRetain();

        v29 = v69;
        v66 = *(v4 + 8);
        v66(v14, v69);
        v72 = v67;
        NSDiffableDataSourceSnapshot.indexOfSection(_:)();
        v30 = *(&v67 + 1);
        if (v31)
        {
          v32 = 0;
        }

        else
        {
          v52 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
          ObjectType = swift_getObjectType();
          v32 = v52 - ((*(v30 + 64))(ObjectType, v30) & (v52 > 0));
        }

        if (v32 < IndexPath.row.getter())
        {
          goto LABEL_4;
        }

        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, static Logger.UI);
        v55 = v68;
        (*(v4 + 16))(v68, a1, v29);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = v55;
          *&v67 = swift_slowAlloc();
          *&v72 = v67;
          *v58 = 136446210;
          lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v61;
          v66(v59, v29);
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v72);

          *(v58 + 4) = v63;
          _os_log_impl(&dword_2493AC000, v56, v57, "Couldn't find section: indexPath %{public}s) isn't valid for insertion", v58, 0xCu);
          v64 = v67;
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x24C1FE850](v64, -1, -1);
          MEMORY[0x24C1FE850](v58, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v66(v55, v29);
        }

LABEL_22:
        (*(v70 + 8))(v22, v71);
        return 0;
      }

      v44 = *(v4 + 8);
      v45 = v14;
      v46 = v69;
      v44(v45, v69);

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.UI);
      (*(v4 + 16))(v7, a1, v46);
      v35 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v35, v48))
      {
        v44(v7, v46);
        goto LABEL_21;
      }

      v49 = swift_slowAlloc();
      *v49 = 134349056;
      v50 = IndexPath.section.getter();
      v44(v7, v46);
      *(v49 + 4) = v50;
      _os_log_impl(&dword_2493AC000, v35, v48, "Couldn't find section: section %{public}ld is not valid", v49, 0xCu);
      v43 = v49;
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.UI);
      v34 = v69;
      (*(v4 + 16))(v18, a1, v69);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v35, v36))
      {

        (*(v4 + 8))(v18, v34);
        goto LABEL_22;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v72 = v38;
      *v37 = 136446210;
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v4 + 8))(v18, v34);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v72);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_2493AC000, v35, v36, "Could not find section: indexPath %{public}s is not valid", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1FE850](v38, -1, -1);
      v43 = v37;
    }

    MEMORY[0x24C1FE850](v43, -1, -1);
LABEL_21:

    goto LABEL_22;
  }

  v25 = *(v24 + 16 * v23 + 32);
  swift_unknownObjectRetain();

LABEL_4:
  (*(v70 + 8))(v22, v71);
  return v25;
}

void closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:)(__int128 *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *), uint64_t a6)
{
  v42 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for IndexPath();
  MEMORY[0x28223BE20](v16, v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v41 = a1[2];
  *&v41[9] = *(a1 + 41);
  v22 = a1[1];
  v39 = *a1;
  v40 = v22;
  v23 = v41[24];
  if (v41[24] != 255)
  {
    v30 = a4;
    v31 = v19;
    v33 = a5;
    v34 = v18;
    v32 = a6;
    v35 = v6;
    v24 = v40;
    v25 = *v41;
    v26 = *&v41[16];
    v36[0] = v40;
    v36[1] = *v41;
    v37 = *&v41[16];
    v38 = v41[24];
    outlined copy of DOCSidebarItem(v40, *(&v40 + 1), *v41, *&v41[8], *&v41[16], v41[24]);
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }

    specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(&v39, v15);
    v27 = v31;
    if ((*(v31 + 48))(v15, 1, v34) == 1)
    {
      outlined consume of DOCSidebarItem?(v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v23);
      outlined destroy of CharacterSet?(v15, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      return;
    }

    v28 = v15;
    v29 = v34;
    (*(v27 + 32))(v21, v28, v34);
    LODWORD(v42) = specialized Sequence<>.contains(_:)(v21, v30);
    (*(v27 + 8))(v21, v29);
    if (v42)
    {
LABEL_6:
      v33(v36);
    }

    outlined consume of DOCSidebarItem?(v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v23);
  }
}

BOOL DOCSidebarViewController.isOutlineChildItem(at:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - v4;
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v14);
  (*(v2 + 8))(v5, v1);
  if (!v14[0])
  {
    return 1;
  }

  v7 = v14[5];
  v6 = v14[6];
  v9 = v14[3];
  v8 = v14[4];
  v10 = v14[2];
  v11 = v15;
  v12 = v15 != 255;
  v16[0] = v14[0];
  v16[1] = v14[1];
  outlined destroy of DOCSidebarViewController.OutlineSection(v16);
  outlined consume of DOCSidebarItem?(v10, v9, v8, v7, v6, v11);
  return v12;
}

id DOCSidebarViewController.sidebarHeaderCell(forSection:)(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DOCSidebarViewController(0);
  v14.receiver = v1;
  v14.super_class = v8;
  result = objc_msgSendSuper2(&v14, sel_collectionView);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  type metadata accessor for DOCSidebarCollectionView();
  v11 = swift_dynamicCastClassUnconditional();
  MEMORY[0x24C1F80E0](0, a1);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);
  v13 = [v11 cellForItemAtIndexPath_];

  if (v13)
  {
    type metadata accessor for DOCSidebarHeaderCell(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t DOCSidebarViewController.indexPath(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  MEMORY[0x28223BE20](v24, v10);
  v13 = &v22 - v12;
  if (v9 == 255)
  {
    v19 = type metadata accessor for IndexPath();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }

  else
  {
    v22 = v11;
    v23 = a2;
    v14 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v14;
    v32 = *(a1 + 32);
    v33 = v9;
    outlined copy of DOCSidebarItem(v4, v5, v6, v7, v8, v9);
    DOCSidebarViewController.diffableSnapshot()();
    v15 = v24;
    v16 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    MEMORY[0x28223BE20](v16, v17);
    *(&v22 - 2) = v13;
    *(&v22 - 1) = v31;
    specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v16, &v25);

    if (v25)
    {
      *v30 = v25;
      *&v30[8] = v26;
      *&v30[24] = v27;
      *&v30[40] = v28;
      v30[56] = v29;
      specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v30, v23);
      v34 = *v30;
      outlined destroy of DOCSidebarViewController.OutlineSection(&v34);
      v35 = *&v30[16];
      *v36 = *&v30[32];
      *&v36[9] = *&v30[41];
      outlined destroy of CharacterSet?(&v35, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      return (*(v22 + 8))(v13, v15);
    }

    else
    {
      (*(v22 + 8))(v13, v15);
      outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      v21 = type metadata accessor for IndexPath();
      return (*(*(v21 - 8) + 56))(v23, 1, 1, v21);
    }
  }
}

uint64_t DOCSidebarViewController.indexPath(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - v7;
  if (a1)
  {
    v9 = a1;
    DOCSidebarViewController.sidebarItem(for:)(a1, &v38);
    v10 = v41;
    if (v41 != 255)
    {
      v35 = v9;
      v36 = v5;
      v37 = a2;
      v11 = v38;
      v12 = v39;
      v13 = v40;
      v48[0] = v38;
      v48[1] = v39;
      v49 = v40;
      v50 = v41;
      v54[0] = v38;
      v54[1] = v39;
      v55 = v40;
      v56 = v41;
      outlined init with copy of DOCSidebarItem(v48, v47);
      v31 = v11;
      v32 = v13;
      v33 = *(&v12 + 1);
      v34 = v12;
      outlined copy of DOCSidebarItem(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, v10);
      DOCSidebarViewController.diffableSnapshot()();
      v14 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      MEMORY[0x28223BE20](v14, v15);
      *(&v31 - 2) = v8;
      *(&v31 - 1) = v54;
      specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v14, &v42);

      if (v42)
      {
        *v47 = v42;
        *&v47[8] = v43;
        *&v47[24] = v44;
        *&v47[40] = v45;
        v47[56] = v46;
        specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v47, v37);
        outlined destroy of CharacterSet?(&v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        outlined destroy of CharacterSet?(&v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);

        v51 = *v47;
        outlined destroy of DOCSidebarViewController.OutlineSection(&v51);
        v52 = *&v47[16];
        v53[0] = *&v47[32];
        *(v53 + 9) = *&v47[41];
        outlined destroy of CharacterSet?(&v52, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        outlined destroy of CharacterSet?(&v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        return (*(v36 + 8))(v8, v4);
      }

      else
      {
        outlined destroy of CharacterSet?(&v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        outlined destroy of CharacterSet?(&v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        outlined consume of DOCSidebarItem(v31, *(&v11 + 1), v34, v33, v32, v10);

        (*(v36 + 8))(v8, v4);
        v28 = type metadata accessor for IndexPath();
        return (*(*(v28 - 8) + 56))(v37, 1, 1, v28);
      }
    }

    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.Sidebar);
    v18 = v9;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v47 = v22;
      *v21 = 136315394;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7461507865646E69, 0xEF293A726F662868, v47);
      *(v21 + 12) = 2080;
      v23 = [v18 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v47);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_2493AC000, v19, v20, "%s: Could not find sidebar index path for cell: %s.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    else
    {
    }
  }

  v29 = type metadata accessor for IndexPath();
  v30 = *(*(v29 - 8) + 56);

  return v30(a2, 1, 1, v29);
}

uint64_t DOCSidebarViewController.selectSidebarItem(_:scrollToVisible:animated:)(__int128 *a1, int a2, int a3)
{
  v52 = a3;
  LODWORD(v53) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v55 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCSidebarItem(a1, v70);
  v54 = v3;
  DOCSidebarViewController.diffableSnapshot()();
  v18 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v56 = v9;
  v57 = a1;
  specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v18, &v65);

  if (v65)
  {
    *v70 = v65;
    *&v70[8] = v66;
    *&v70[24] = v67;
    *&v70[40] = v68;
    v70[56] = v69;
    specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v70, v13);
    v71 = *v70;
    outlined destroy of DOCSidebarViewController.OutlineSection(&v71);
    v72 = *&v70[16];
    v73[0] = *&v70[32];
    *(v73 + 9) = *&v70[41];
    outlined destroy of CharacterSet?(&v72, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
    outlined destroy of DOCSidebarItem(a1);
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    outlined destroy of DOCSidebarItem(a1);
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  v19 = v15;
  v20 = (*(v15 + 48))(v13, 1, v14);
  v21 = v55;
  if (v20 == 1)
  {
    outlined destroy of CharacterSet?(v13, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    return 2;
  }

  v50 = a1;
  (*(v15 + 32))(v55, v13, v14);
  v23 = type metadata accessor for DOCSidebarViewController(0);
  v24 = v54;
  v64.receiver = v54;
  v64.super_class = v23;
  v25 = v23;
  result = objc_msgSendSuper2(&v64, sel_collectionView);
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = result;
  v51 = v19;
  type metadata accessor for DOCSidebarCollectionView();
  v27 = [swift_dynamicCastClassUnconditional() indexPathsForSelectedItems];

  if (v27)
  {
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v28 = 0;
  }

  v29 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
  v30 = v51;
  v31 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_249B9A480;
  (*(v30 + 16))(v32 + v31, v21, v29);
  v33 = v29;
  if (v28)
  {
    v34 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation9IndexPathV_Tt1g5(v28, v32);
  }

  else
  {
    v34 = 0;
  }

  v63.receiver = v24;
  v63.super_class = v25;
  v35 = v25;
  result = objc_msgSendSuper2(&v63, sel_collectionView);
  if (!result)
  {
    goto LABEL_21;
  }

  v36 = result;
  v37 = [swift_dynamicCastClassUnconditional() indexPathsForVisibleItems];

  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = specialized Sequence<>.contains(_:)(v21, v38);

  v41 = v53 & ~v39;
  if (v34)
  {
    v58.receiver = v24;
    v58.super_class = v35;
    result = objc_msgSendSuper2(&v58, sel_collectionView);
    if (result)
    {
      v42 = result;
      v43 = swift_dynamicCastClassUnconditional();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v43 scrollToItemAtIndexPath:isa atScrollPosition:v41 & 1 animated:v52 & 1];

      (*(v51 + 8))(v21, v33);
      return 1;
    }

    goto LABEL_22;
  }

  v53 = v53 & ~v39;
  v45 = (*((*MEMORY[0x277D85000] & *v24) + 0x488))(v40);
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v62 = v60;
  MEMORY[0x24C1FAEA0](0xD00000000000001BLL, 0x8000000249BECDE0);
  v46 = v50[1];
  v60 = *v50;
  v61[0] = v46;
  *(v61 + 9) = *(v50 + 25);
  _print_unlocked<A, B>(_:_:)();
  (*(*v45 + 384))(v62, *(&v62 + 1));

  v59.receiver = v24;
  v59.super_class = v35;
  result = objc_msgSendSuper2(&v59, sel_collectionView);
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v47 = result;
  v48 = swift_dynamicCastClassUnconditional();
  v49 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v48 selectItemAtIndexPath:v49 animated:v52 & 1 scrollPosition:v53 & 1];

  (*(v51 + 8))(v21, v33);
  return 0;
}

Swift::Void __swiftcall DOCSidebarViewController.deselectAllSidebarItems()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v105 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v108 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v105 - v12;
  v133 = type metadata accessor for IndexPath();
  v107 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v14);
  v122 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v124 = &v105 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v127 = &v105 - v21;
  v22 = type metadata accessor for DOCSidebarViewController(0);
  v140.receiver = v0;
  v140.super_class = v22;
  v113 = v22;
  v23 = objc_msgSendSuper2(&v140, sel_collectionView);
  if (!v23)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v24 = v23;
  v112 = type metadata accessor for DOCSidebarCollectionView();
  v25 = [swift_dynamicCastClassUnconditional() indexPathsForSelectedItems];

  if (!v25)
  {
    return;
  }

  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = *(v26 + 16);
  v125 = v5;
  v126 = v6;
  v121 = v9;
  v132 = v1;
  if (!v28)
  {

    v83 = MEMORY[0x277D84F90];
    v84 = *(MEMORY[0x277D84F90] + 16);
    if (!v84)
    {
      goto LABEL_49;
    }

LABEL_39:
    v85 = 0;
    v86 = 0;
    v87 = (v83 + 32);
    v120 = (v107 + 56);
    v130 = (v107 + 48);
    v131 = (v108 + 8);
    v127 = "CollectionView - selecting ";
    v128 = (v107 + 32);
    v123 = v83;
    v124 = (v107 + 8);
    while (v85 < *(v83 + 2))
    {
      v88 = *v87;
      v89 = v87[1];
      *(v135 + 9) = *(v87 + 25);
      v134 = v88;
      v135[0] = v89;
      outlined init with copy of DOCSidebarItem(&v134, &v138);
      outlined init with copy of DOCSidebarItem(&v134, &v138);
      v90 = v121;
      DOCSidebarViewController.diffableSnapshot()();
      v91 = v126;
      v92 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      MEMORY[0x28223BE20](v92, v93);
      *(&v105 - 2) = v90;
      *(&v105 - 1) = &v134;
      specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v92, v141);

      if (*v141)
      {
        *&v142[0] = *v141;
        *(v142 + 8) = *&v141[8];
        *(&v142[1] + 8) = *&v141[24];
        *(&v142[2] + 8) = *&v141[40];
        BYTE8(v142[3]) = v141[56];
        specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v142, v5);
        v143 = v142[0];
        outlined destroy of DOCSidebarViewController.OutlineSection(&v143);
        v144 = v142[1];
        v145[0] = v142[2];
        *(v145 + 9) = *(&v142[2] + 9);
        outlined destroy of CharacterSet?(&v144, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        outlined destroy of DOCSidebarItem(&v134);
        (*v131)(v90, v91);
        v94 = v133;
      }

      else
      {
        outlined destroy of DOCSidebarItem(&v134);
        (*v131)(v90, v91);
        v94 = v133;
        (*v120)(v5, 1, 1, v133);
      }

      v95 = (*v130)(v5, 1, v94);
      v96 = v122;
      if (v95 == 1)
      {
        outlined destroy of DOCSidebarItem(&v134);
        outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      else
      {
        v129 = v86;
        v97 = v84;
        v98 = (*v128)(v122, v5, v94);
        v99 = v132;
        v100 = (*((*MEMORY[0x277D85000] & *v132) + 0x488))(v98);
        *&v138 = 0;
        *(&v138 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v137 = v138;
        MEMORY[0x24C1FAEA0](0xD00000000000001DLL, v127 | 0x8000000000000000);
        v138 = v134;
        v139[0] = v135[0];
        *(v139 + 9) = *(v135 + 9);
        _print_unlocked<A, B>(_:_:)();
        (*(*v100 + 384))(v137, *(&v137 + 1));

        v136.receiver = v99;
        v136.super_class = v113;
        v101 = objc_msgSendSuper2(&v136, sel_collectionView);
        if (!v101)
        {
          goto LABEL_52;
        }

        v102 = v101;
        v103 = swift_dynamicCastClassUnconditional();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v103 deselectItemAtIndexPath:isa animated:1];

        outlined destroy of DOCSidebarItem(&v134);
        (*v124)(v96, v94);
        v5 = v125;
        v84 = v97;
        v86 = v129;
      }

      ++v85;
      v87 += 3;
      v83 = v123;
      if (v84 == v85)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v128 = *(v107 + 16);
  v29 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v105 = v26;
  v30 = (v26 + v29);
  v31 = (*MEMORY[0x277D85000] & *v1);
  v120 = (v108 + 8);
  v117 = (v107 + 8);
  v111 = "sidebarItem(for:)";
  v123 = MEMORY[0x277D84F90];
  v31 += 101;
  v32 = *v31;
  v118 = v31;
  v119 = v32;
  v116 = *(v107 + 72);
  v129 = v107 + 16;
  v130 = (v28 - 1);
  *&v27 = 136315394;
  v110 = v27;
  v33 = v127;
  v115 = v13;
  while (1)
  {
    v131 = v30;
    v34 = v128(v33);
    v119(v142, v34);
    if (*(&v142[1] + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMR);
      if (swift_dynamicCast())
      {
        v35 = *v141;
        goto LABEL_12;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v142, &_sypSgMd, &_sypSgMR);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v35 = static DOCSidebarViewController.nullDDS;
LABEL_12:
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v36 = IndexPath.section.getter();
    v37 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    if ((v36 & 0x8000000000000000) != 0 || v36 >= *(v37 + 16))
    {

LABEL_25:
      (*v120)(v13, v6);
      memset(v142, 0, 57);
      goto LABEL_26;
    }

    v114 = *(v37 + 16 * v36 + 32);
    swift_unknownObjectRetain();

    v144 = v114;
    v38 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    v39 = IndexPath.item.getter();
    if ((v39 & 0x8000000000000000) != 0 || v39 >= *(v38 + 16))
    {

      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    v40 = v38 + (v39 << 6);
    v42 = *(v40 + 48);
    v41 = *(v40 + 56);
    v44 = *(v40 + 72);
    *&v114 = *(v40 + 64);
    v43 = v114;
    v45 = *(v40 + 80);
    v46 = *(v40 + 88);
    v109 = *(v40 + 32);
    swift_unknownObjectRetain();
    outlined copy of DOCSidebarItem?(v42, v41, v43, v44, v45, v46);
    v6 = v126;
    swift_unknownObjectRelease();
    v47 = v114;

    v134 = v109;
    *&v135[0] = v42;
    *(&v135[0] + 1) = v41;
    *&v135[1] = v47;
    *(&v135[1] + 1) = v44;
    *&v109 = v44;
    *&v135[2] = v45;
    BYTE8(v135[2]) = v46;
    *v141 = v134;
    *&v141[16] = v135[0];
    *&v141[32] = v135[1];
    *&v141[41] = *(&v135[1] + 9);
    (*v120)(v13, v6);
    if (v46 == 255)
    {
      break;
    }

    v48 = v46;
    v106 = v41;
    v49 = v109;
    v50 = v45;
    v51 = v48;
    outlined copy of DOCSidebarItem(v42, v41, v47, v109, v45, v48);
    outlined destroy of DOCSidebarViewController.OutlineItem(&v134);
    (*v117)(v127, v133);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v125;
    if (isUniquelyReferenced_nonNull_native)
    {
      v53 = v123;
    }

    else
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123 + 2) + 1, 1, v123);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v53);
      v57 = v50;
      v56 = v49;
      v53 = v82;
    }

    else
    {
      v56 = v49;
      v57 = v50;
    }

    *(v53 + 2) = v55 + 1;
    v123 = v53;
    v58 = &v53[48 * v55];
    v59 = v106;
    *(v58 + 4) = v42;
    *(v58 + 5) = v59;
    *(v58 + 6) = v114;
    *(v58 + 7) = v56;
    *(v58 + 8) = v57;
    v58[72] = v51;
    v6 = v126;
    v33 = v127;
    v61 = v130;
    v60 = v131;
    if (!v130)
    {
      goto LABEL_36;
    }

LABEL_32:
    v130 = (v61 - 1);
    v30 = v60 + v116;
  }

  v142[0] = *v141;
  v142[1] = *&v141[16];
  v142[2] = *&v141[32];
  *(&v142[2] + 9) = *&v141[41];
LABEL_26:
  v33 = v127;
  v62 = v6;
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Logger.Sidebar);
  v64 = v124;
  v65 = v133;
  (v128)(v124, v33, v133);
  v66 = v64;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();
  v69 = os_log_type_enabled(v67, v68);
  v70 = v117;
  if (v69)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v141 = v72;
    *v71 = v110;
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, v111 | 0x8000000000000000, v141);
    *(v71 + 4) = v73;
    *(v71 + 12) = 2080;
    v74 = MEMORY[0x24C1F8080](v73);
    v76 = v75;
    v77 = *v70;
    (*v70)(v124, v133);
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v141);
    v79 = v133;

    *(v71 + 14) = v78;
    v80 = v79;
    _os_log_impl(&dword_2493AC000, v67, v68, "%s: Could not find sidebar item at index path: %s.", v71, 0x16u);
    swift_arrayDestroy();
    v62 = v126;
    MEMORY[0x24C1FE850](v72, -1, -1);
    v81 = v71;
    v33 = v127;
    MEMORY[0x24C1FE850](v81, -1, -1);
    outlined destroy of CharacterSet?(v142, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);

    v5 = v125;
  }

  else
  {
    outlined destroy of CharacterSet?(v142, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);

    v77 = *v70;
    (*v70)(v66, v65);
    v5 = v125;
    v80 = v65;
  }

  v77(v33, v80);
  v13 = v115;
  v6 = v62;
  v61 = v130;
  v60 = v131;
  if (v130)
  {
    goto LABEL_32;
  }

LABEL_36:

  v83 = v123;
  v84 = *(v123 + 2);
  if (v84)
  {
    goto LABEL_39;
  }

LABEL_49:
}

id DOCSidebarViewController.deselectSidebarItem(_:animated:)(_OWORD *a1, int a2)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v29[-v11];
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v32 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of DOCSidebarItem(a1, v44);
  v31 = v2;
  DOCSidebarViewController.diffableSnapshot()();
  v17 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v33 = v8;
  v34 = a1;
  specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v17, &v39);

  if (v39)
  {
    *v44 = v39;
    *&v44[8] = v40;
    *&v44[24] = v41;
    *&v44[40] = v42;
    v44[56] = v43;
    specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v44, v12);
    v45 = *v44;
    outlined destroy of DOCSidebarViewController.OutlineSection(&v45);
    v46 = *&v44[16];
    v47[0] = *&v44[32];
    *(v47 + 9) = *&v44[41];
    outlined destroy of CharacterSet?(&v46, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
    outlined destroy of DOCSidebarItem(a1);
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    outlined destroy of DOCSidebarItem(a1);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  v18 = (*(v14 + 48))(v12, 1, v13);
  v19 = v32;
  if (v18 == 1)
  {
    return outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  v21 = (*(v14 + 32))(v32, v12, v13);
  v22 = v31;
  v23 = (*((*MEMORY[0x277D85000] & *v31) + 0x488))(v21);
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  v38 = v36;
  MEMORY[0x24C1FAEA0](0xD00000000000001DLL, 0x8000000249BECE00);
  v24 = a1[1];
  v36 = *a1;
  v37[0] = v24;
  *(v37 + 9) = *(a1 + 25);
  _print_unlocked<A, B>(_:_:)();
  (*(*v23 + 384))(v38, *(&v38 + 1));

  v25 = type metadata accessor for DOCSidebarViewController(0);
  v35.receiver = v22;
  v35.super_class = v25;
  result = objc_msgSendSuper2(&v35, sel_collectionView);
  if (result)
  {
    v26 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v27 = swift_dynamicCastClassUnconditional();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v27 deselectItemAtIndexPath:isa animated:v30 & 1];

    return (*(v14 + 8))(v19, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:)(int a1, void *a2)
{
  v3 = v2;
  v35 = a1;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DOCSidebarViewController(0);
  v45.receiver = v2;
  v45.super_class = v10;
  v36 = v10;
  v11 = objc_msgSendSuper2(&v45, sel_collectionView);
  if (!v11)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v12 = v11;
  v34 = type metadata accessor for DOCSidebarCollectionView();
  v13 = [swift_dynamicCastClassUnconditional() indexPathsForSelectedItems];

  if (v13)
  {
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(*((*MEMORY[0x277D85000] & *v3) + 0x488))();
    (*(v15 + 384))(0xD000000000000036, 0x8000000249BECE20);

    if (a2)
    {
      v43.receiver = v3;
      v43.super_class = v36;
      swift_unknownObjectRetain();
      v16 = objc_msgSendSuper2(&v43, sel_collectionView);
      if (v16)
      {
        v17 = v16;
        v18 = swift_dynamicCastClassUnconditional();
        v19 = swift_allocObject();
        *(v19 + 16) = v14;
        *(v19 + 24) = v18;
        v20 = v35 & 1;
        *(v19 + 32) = v35 & 1;
        v41 = partial apply for closure #2 in DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:);
        v42 = v19;
        aBlock = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v40 = &block_descriptor_112;
        v21 = _Block_copy(&aBlock);

        v22 = v17;

        v23 = swift_allocObject();
        *(v23 + 16) = v14;
        *(v23 + 24) = v18;
        *(v23 + 32) = v20;
        v41 = partial apply for closure #3 in DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:);
        v42 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v40 = &block_descriptor_11;
        v24 = _Block_copy(&aBlock);
        v25 = v22;

        [a2 animateAlongsideTransition:v21 completion:v24];
        _Block_release(v24);
        _Block_release(v21);
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_16;
    }

    v33 = *(v14 + 16);
    if (v33)
    {
      v26 = 0;
      v32 = v6 + 16;
      while (v26 < *(v14 + 16))
      {
        (*(v6 + 16))(v9, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v5);
        v27 = v3;
        v44.receiver = v3;
        v44.super_class = v36;
        v28 = objc_msgSendSuper2(&v44, sel_collectionView, v32);
        if (!v28)
        {
          goto LABEL_14;
        }

        v29 = v28;
        ++v26;
        v30 = swift_dynamicCastClassUnconditional();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v30 deselectItemAtIndexPath:isa animated:v35 & 1];

        (*(v6 + 8))(v9, v5);
        v3 = v27;
        if (v33 == v26)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_11:
  }
}

void closure #2 in DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v20 = a4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v15 = *(v7 + 16);
    v13 = v7 + 16;
    v14 = v15;
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v11, v16, v6, v9);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a3 deselectItemAtIndexPath:isa animated:v20 & 1];

      (*(v13 - 8))(v11, v6);
      v16 += v17;
      --v12;
    }

    while (v12);
  }
}

void closure #3 in DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:)(void *a1, uint64_t a2, void *a3, int a4)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v33[-v16];
  if ([a1 isCancelled])
  {
    v18 = *(a2 + 16);
    if (v18)
    {
      v19 = v9 + 16;
      v20 = *(v9 + 16);
      v21 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v22 = *(v19 + 56);
      do
      {
        v20(v17, v21, v8);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [a3 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

        (*(v19 - 8))(v17, v8);
        v21 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v24 = [a3 indexPathsForSelectedItems];
    v34 = a4;
    if (v24)
    {
      v25 = v24;
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v25) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation9IndexPathV_Tt1g5(v26, a2);

      if (v25)
      {
        v27 = *(a2 + 16);
        if (v27)
        {
          v28 = *(v9 + 16);
          v29 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v30 = *(v9 + 72);
          v31 = (v9 + 8);
          do
          {
            v28(v12, v29, v8);
            v32 = IndexPath._bridgeToObjectiveC()().super.isa;
            [a3 deselectItemAtIndexPath:v32 animated:v34 & 1];

            (*v31)(v12, v8);
            v29 += v30;
            --v27;
          }

          while (v27);
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCSidebarViewController.setUnderlyingCollectionViewIsEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v19[24] = _;
  if (animated && [v2 doc_hasAppearedOrIsAppearing])
  {
    v4 = [v2 view];
    if (!v4)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 window];

    if (v6)
    {

      if ([v2 doc_isAppearing])
      {
        v7 = [v2 navigationController];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 topViewController];
          if (v9)
          {
            v10 = v9;
            type metadata accessor for UIViewController();
            v11 = v2;
            v12 = static NSObject.== infix(_:_:)();

            if (v12)
            {
              goto LABEL_9;
            }
          }

          else
          {
          }
        }
      }

      v20.receiver = v2;
      v20.super_class = type metadata accessor for DOCSidebarViewController(0);
      v17 = objc_msgSendSuper2(&v20, sel_collectionView);
      if (v17)
      {
        v18 = v17;
        type metadata accessor for DOCSidebarCollectionView();
        [swift_dynamicCastClassUnconditional() setEditing_];

        return;
      }

      goto LABEL_16;
    }
  }

LABEL_9:
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in DOCSidebarViewController.setUnderlyingCollectionViewIsEditing(_:animated:);
  *(v14 + 24) = v19;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  *(v15 + 24) = v14;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_20_3;
  v16 = _Block_copy(aBlock);

  [v13 performWithoutAnimation_];
  _Block_release(v16);
  LODWORD(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }
}

void closure #1 in DOCSidebarViewController.setUnderlyingCollectionViewIsEditing(_:animated:)(void *a1, char a2)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    [swift_dynamicCastClassUnconditional() setEditing_];
  }

  else
  {
    __break(1u);
  }
}

void key path getter for DOCSidebarViewController.dragInteractionEnabled : DOCSidebarViewController(id *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v6.receiver = *a1;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v6, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    v5 = [swift_dynamicCastClassUnconditional() dragInteractionEnabled];

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

void key path setter for DOCSidebarViewController.dragInteractionEnabled : DOCSidebarViewController(unsigned __int8 *a1, id *a2)
{
  v2 = *a1;
  v5.receiver = *a2;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    [swift_dynamicCastClassUnconditional() setDragInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void DOCSidebarViewController.dragInteractionEnabled.setter(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    [swift_dynamicCastClassUnconditional() setDragInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void (*DOCSidebarViewController.dragInteractionEnabled.modify(objc_super **a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3].receiver = v1;
  v5 = type metadata accessor for DOCSidebarViewController(0);
  v4[3].super_class = v5;
  v4->receiver = v1;
  v4->super_class = v5;
  result = [(objc_super *)v4 collectionView];
  if (result)
  {
    v7 = result;
    v4[4].receiver = type metadata accessor for DOCSidebarCollectionView();
    v8 = [swift_dynamicCastClassUnconditional() dragInteractionEnabled];

    LOBYTE(v4[4].super_class) = v8;
    return DOCSidebarViewController.dragInteractionEnabled.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCSidebarViewController.dragInteractionEnabled.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  super_class_low = LOBYTE((*a1)[4].super_class);
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = receiver;
    v6[1].super_class = super_class;
    v6 = objc_msgSendSuper2(v6 + 1, sel_collectionView);
    if (v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6[2].receiver = receiver;
  v6[2].super_class = super_class;
  v6 = objc_msgSendSuper2(v6 + 2, sel_collectionView);
  if (!v6)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v7 = v6;
  [swift_dynamicCastClassUnconditional() setDragInteractionEnabled_];

  free(v2);
}

id DOCSidebarViewController.dragInteractionEnabled.getter(SEL *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  result = [(SEL *)&v6 collectionView];
  if (result)
  {
    v4 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v5 = [swift_dynamicCastClassUnconditional() *a1];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DOCSidebarViewController.backgroundColor.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  result = objc_msgSendSuper2(&v4, sel_collectionView);
  if (result)
  {
    v2 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v3 = [swift_dynamicCastClassUnconditional() backgroundColor];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void key path getter for DOCSidebarViewController.backgroundColor : DOCSidebarViewController(id *a1@<X0>, void *a2@<X8>)
{
  v6.receiver = *a1;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v6, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    v5 = [swift_dynamicCastClassUnconditional() backgroundColor];

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

void key path setter for DOCSidebarViewController.backgroundColor : DOCSidebarViewController(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v5.receiver = *a2;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    [swift_dynamicCastClassUnconditional() setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void DOCSidebarViewController.backgroundColor.setter(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_collectionView);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSidebarCollectionView();
    [swift_dynamicCastClassUnconditional() setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void (*DOCSidebarViewController.backgroundColor.modify(objc_super **a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3].super_class = v1;
  v5 = type metadata accessor for DOCSidebarViewController(0);
  v4[4].receiver = v5;
  v4->receiver = v1;
  v4->super_class = v5;
  result = [(objc_super *)v4 collectionView];
  if (result)
  {
    v7 = result;
    v4[4].super_class = type metadata accessor for DOCSidebarCollectionView();
    v8 = [swift_dynamicCastClassUnconditional() backgroundColor];

    v4[3].receiver = v8;
    return DOCSidebarViewController.backgroundColor.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCSidebarViewController.backgroundColor.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v4 = (*a1)[4].receiver;
  if ((a2 & 1) == 0)
  {
    v2[2].receiver = super_class;
    v2[2].super_class = v4;
    v9 = objc_msgSendSuper2(v2 + 2, sel_collectionView);
    if (v9)
    {
      v10 = v9;
      [swift_dynamicCastClassUnconditional() setBackgroundColor_];

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v2[1].receiver = super_class;
  v2[1].super_class = v4;
  v6 = receiver;
  v7 = objc_msgSendSuper2(v2 + 1, sel_collectionView);
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [swift_dynamicCastClassUnconditional() setBackgroundColor_];

  receiver = v2[3].receiver;
LABEL_6:

  free(v2);
}

id DOCSidebarViewController.isHandlingTouchesEnded.getter()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCSidebarViewController(0);
  result = objc_msgSendSuper2(&v5, sel_collectionView);
  if (result)
  {
    v2 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v3 = swift_dynamicCastClassUnconditional();
    v4 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))();

    return (v4 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.configureFocusHandling()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  v1 = objc_msgSendSuper2(&v4, sel_collectionView);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for DOCSidebarCollectionView();
    v3 = swift_dynamicCastClassUnconditional();
    (*((*MEMORY[0x277D85000] & *v3) + 0x88))(1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCSidebarViewController.indexPathForPreferredFocusedView(in:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v5);
  v69 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v71 = &v59 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v64 = &v59 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v59 - v18;
  v20 = type metadata accessor for IndexPath();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v63 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v65 = &v59 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v59 - v29;
  v33.n128_f64[0] = MEMORY[0x28223BE20](v31, v32);
  v35 = &v59 - v34;
  (*((*MEMORY[0x277D85000] & *v2) + 0x4A0))(v33);
  v36 = *(v21 + 48);
  v72 = v21 + 48;
  v68 = v36;
  v37 = v36(v19, 1, v20);
  v73 = a2;
  if (v37 == 1)
  {
    outlined destroy of CharacterSet?(v19, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  else
  {
    v62 = a1;
    v60 = *(v21 + 32);
    v60(v35, v19, v20);
    if (DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v35, 0))
    {
      v39 = v38;
      v61 = v21;
      ObjectType = swift_getObjectType();
      if ((*(v39 + 32))(ObjectType, v39))
      {
        v41 = v64;
        UICollectionView.doc_validatedIndexPath(_:indexPathDebugName:)(v35, 0xD000000000000017, 0x8000000249BECE80, v64);
        swift_unknownObjectRelease();
        (*(v61 + 8))(v35, v20);
        v42 = v68(v41, 1, v20);
        v43 = v73;
        if (v42 != 1)
        {
          v57 = v60;
          v60(v30, v41, v20);
          v57(v43, v30, v20);
          v49 = 0;
          v21 = v61;
          return (*(v21 + 56))(v43, v49, 1, v20);
        }

        outlined destroy of CharacterSet?(v41, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        v21 = v61;
      }

      else
      {
        v21 = v61;
        (*(v61 + 8))(v35, v20);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(v21 + 8))(v35, v20);
    }
  }

  DOCSidebarViewController.hierarchyControllerFirstReachableSidebarItem.getter(&v74);
  v45 = v70;
  v44 = v71;
  v46 = v69;
  if (v79 == 255)
  {
    v49 = 1;
    v43 = v73;
  }

  else
  {
    v89[0] = v74;
    v89[1] = v75;
    v89[2] = v76;
    v89[3] = v77;
    v89[4] = v78;
    v90 = v79;
    outlined copy of DOCSidebarItem(v74, v75, v76, v77, v78, v79);
    DOCSidebarViewController.diffableSnapshot()();
    v47 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    MEMORY[0x28223BE20](v47, v48);
    *(&v59 - 2) = v46;
    *(&v59 - 1) = v89;
    specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v47, &v80);

    if (v80)
    {
      *&v85[0] = v80;
      *(v85 + 8) = v81;
      *(&v85[1] + 8) = v82;
      *(&v85[2] + 8) = v83;
      BYTE8(v85[3]) = v84;
      specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v85, v44);
      v86 = v85[0];
      outlined destroy of DOCSidebarViewController.OutlineSection(&v86);
      v87 = v85[1];
      v88[0] = v85[2];
      *(v88 + 9) = *(&v85[2] + 9);
      outlined destroy of CharacterSet?(&v87, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      outlined destroy of CharacterSet?(&v74, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      (*(v67 + 8))(v46, v45);
    }

    else
    {
      (*(v67 + 8))(v46, v45);
      outlined destroy of CharacterSet?(&v74, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      (*(v21 + 56))(v44, 1, 1, v20);
    }

    v50 = v68;
    if (v68(v44, 1, v20) == 1)
    {
      outlined destroy of CharacterSet?(&v74, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      v43 = v73;
    }

    else
    {
      v51 = *(v21 + 32);
      v52 = v50;
      v53 = v65;
      v51(v65, v44, v20);
      v54 = v66;
      UICollectionView.doc_validatedIndexPath(_:indexPathDebugName:)(v53, 0xD000000000000015, 0x8000000249BECE60, v66);
      outlined destroy of CharacterSet?(&v74, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      (*(v21 + 8))(v53, v20);
      v55 = v52(v54, 1, v20);
      v43 = v73;
      if (v55 != 1)
      {
        v56 = v63;
        v51(v63, v54, v20);
        v51(v43, v56, v20);
        v49 = 0;
        return (*(v21 + 56))(v43, v49, 1, v20);
      }

      v44 = v54;
    }

    outlined destroy of CharacterSet?(v44, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v49 = 1;
  }

  return (*(v21 + 56))(v43, v49, 1, v20);
}

void DOCSidebarViewController.hierarchyControllerFirstReachableSidebarItem.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v75 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v13 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v14);
  v87 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v89 = &v75 - v19;
  v20 = [v2 splitViewController];
  if (!v20)
  {
    goto LABEL_29;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

    goto LABEL_31;
  }

  v90 = v8;
  v22 = [v21 fullDocumentManagerViewController];

  if (!v22)
  {
LABEL_31:
    v101 = 0;
    v20 = 0;
    goto LABEL_32;
  }

  v20 = [v22 hierarchyController];

  if (!v20)
  {
LABEL_29:
    v101 = 0;
LABEL_32:
    v26 = 0;
    v73 = 0;
    v54 = 0;
    LOBYTE(v13) = -1;
LABEL_33:
    *a1 = v101;
    *(a1 + 8) = v20;
    *(a1 + 16) = v26;
    *(a1 + 24) = v73;
    *(a1 + 32) = v54;
    *(a1 + 40) = v13;
    return;
  }

  v23 = v20;
  v96 = v2;
  v77 = a1;
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v76 = v23;
  v25 = *&v23[v24];
  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  v74 = v25;
  v26 = __CocoaSet.count.getter();
  v25 = v74;
  if (!v26)
  {
LABEL_40:

LABEL_28:
    v101 = 0;
    v20 = 0;
    v73 = 0;
    v54 = 0;
    LOBYTE(v13) = -1;
LABEL_35:
    a1 = v77;
    goto LABEL_33;
  }

LABEL_7:
  v88 = v25 & 0xC000000000000001;
  v81 = v25 + 32;
  v82 = v25 & 0xFFFFFFFFFFFFFF8;
  v98 = (v13 + 8);
  v83 = (v9 + 48);
  v78 = (v9 + 56);
  v79 = (v9 + 32);
  v80 = (v9 + 8);
  v86 = v25;

  v27 = 0;
  v84 = v12;
  v85 = v7;
  while (1)
  {
    v28 = __OFSUB__(v26, 1);
    v29 = v26 - 1;
    if (v28)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v88)
    {
      v30 = MEMORY[0x24C1FC540](v29, v86);
    }

    else
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v29 >= *(v82 + 16))
      {
        goto LABEL_38;
      }

      v30 = *(v81 + 8 * v29);
    }

    v32 = v30;
    v99 = v29;
    v101 = &v75;
    MEMORY[0x28223BE20](v30, v31);
    v100 = &v75;
    *(&v75 - 2) = v33;
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v106 = -1;
    MEMORY[0x28223BE20](v33, v34);
    *(&v75 - 4) = &v103;
    *(&v75 - 3) = partial apply for closure #1 in DOCSidebarViewController.sidebarItem(for:);
    *(&v75 - 2) = v35;
    v36 = type metadata accessor for DOCSidebarViewController(0);
    v7 = v96;
    v102.receiver = v96;
    v102.super_class = v36;
    v12 = v32;
    v37 = objc_msgSendSuper2(&v102, sel_collectionView);
    if (!v37)
    {
      break;
    }

    v38 = v37;
    type metadata accessor for DOCSidebarCollectionView();
    v39 = [swift_dynamicCastClassUnconditional() indexPathsForVisibleItems];

    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v89;
    DOCSidebarViewController.diffableSnapshot()();
    v42 = v97;
    v43 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    MEMORY[0x28223BE20](v43, v44);
    *(&v75 - 48) = 0;
    *(&v75 - 5) = v41;
    *(&v75 - 4) = v40;
    *(&v75 - 3) = closure #1 in DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)partial apply;
    *(&v75 - 2) = (&v75 - 6);
    specialized Sequence.forEach(_:)(closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:)partial apply, (&v75 - 8), v43);

    v9 = *v98;
    (*v98)(v41, v42);
    v13 = v106;
    if (v106 == 255)
    {

      v26 = v99;
      if (!v99)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v93 = v9;
      v100 = v12;
      v20 = *(&v103 + 1);
      v45 = v103;
      v46 = v104;
      v47 = v105;
      v116[0] = v103;
      v116[1] = v104;
      v117 = v105;
      v118 = v106;
      outlined copy of DOCSidebarItem(v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106);
      v101 = v45;
      v92 = v47;
      outlined copy of DOCSidebarItem(v45, v20, v46, *(&v46 + 1), v47, v13);
      v48 = v87;
      DOCSidebarViewController.diffableSnapshot()();
      v49 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      MEMORY[0x28223BE20](v49, v50);
      *(&v75 - 2) = v48;
      *(&v75 - 1) = v116;
      specialized Sequence.first(where:)(closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)specialized partial apply, v49, &v107);
      v91 = v27;

      v95 = v13;
      v94 = *(&v46 + 1);
      if (v107)
      {
        *&v112[0] = v107;
        *(v112 + 8) = v108;
        *(&v112[1] + 8) = v109;
        *(&v112[2] + 8) = v110;
        BYTE8(v112[3]) = v111;
        v51 = v48;
        v7 = v85;
        specialized NSDiffableDataSourceSnapshot<>.indexPath(forItem:)(v112, v85);
        v113 = v112[0];
        outlined destroy of DOCSidebarViewController.OutlineSection(&v113);
        v114 = v112[1];
        v115[0] = v112[2];
        v52 = v101;
        *(v115 + 9) = *(&v112[2] + 9);
        outlined destroy of CharacterSet?(&v114, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        v53 = v46;
        v54 = v92;
        v55 = outlined consume of DOCSidebarItem?(v52, v20, v46, *(&v46 + 1), v92, v13);
        v93(v51, v97, v55);
        v56 = v90;
      }

      else
      {
        v53 = v46;
        v54 = v92;
        v57 = outlined consume of DOCSidebarItem?(v101, v20, v46, *(&v46 + 1), v92, v13);
        v93(v48, v42, v57);
        v7 = v85;
        v56 = v90;
        (*v78)(v85, 1, 1, v90);
      }

      v12 = v84;
      if ((*v83)(v7, 1, v56) == 1)
      {
        v58 = v101;
        v9 = v53;
        v59 = v53;
        v12 = v54;
        v60 = v94;
        v61 = v95;
        outlined consume of DOCSidebarItem?(v101, v20, v59, v94, v12, v95);
        outlined consume of DOCSidebarItem?(v58, v20, v9, v60, v12, v61);

        v25 = outlined destroy of CharacterSet?(v7, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      else
      {
        (*v79)(v12, v7, v56);
        v62 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v12, 0);
        v7 = v56;
        if (v62)
        {
          v9 = v62;
          v64 = v63;
          ObjectType = swift_getObjectType();
          LOBYTE(v64) = (*(v64 + 32))(ObjectType, v64);
          v26 = v53;
          v66 = v53;
          v67 = v94;
          v13 = v95;
          outlined consume of DOCSidebarItem?(v101, v20, v66, v94, v54, v95);

          swift_unknownObjectRelease();
          (*v80)(v12, v7);
          if (v64)
          {

            v73 = v67;
            goto LABEL_35;
          }

          outlined consume of DOCSidebarItem?(v101, v20, v26, v67, v54, v13);
        }

        else
        {

          v68 = v101;
          v9 = v53;
          v69 = v53;
          v70 = v94;
          v71 = v95;
          outlined consume of DOCSidebarItem?(v101, v20, v69, v94, v54, v95);
          v72 = outlined consume of DOCSidebarItem?(v68, v20, v9, v70, v54, v71);
          v25 = (*v80)(v12, v7, v72);
        }
      }

      v27 = v91;
      v26 = v99;
      if (!v99)
      {
LABEL_27:

        goto LABEL_28;
      }
    }
  }

  __break(1u);
}

uint64_t partial apply for specialized closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return specialized closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)(v6, v2, v3) & 1;
}

id specialized DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22[-v10];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v30 = -1;
  v23 = &v27;
  v24 = a1;
  v25 = a2;
  v12 = type metadata accessor for DOCSidebarViewController(0);
  v26.receiver = v3;
  v26.super_class = v12;
  result = objc_msgSendSuper2(&v26, sel_collectionView);
  if (result)
  {
    v14 = result;
    type metadata accessor for DOCSidebarCollectionView();
    v15 = [swift_dynamicCastClassUnconditional() indexPathsForVisibleItems];

    type metadata accessor for IndexPath();
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    DOCSidebarViewController.diffableSnapshot()();
    v17 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    MEMORY[0x28223BE20](v17, v18);
    v22[-48] = 0;
    *&v22[-40] = v11;
    *&v22[-32] = v16;
    *&v22[-24] = partial apply for closure #1 in DOCSidebarViewController.firstSidebarItemMatching(visibleOnly:predicate:);
    *&v22[-16] = v22;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:), &v22[-64], v17);

    result = (*(v8 + 8))(v11, v7);
    v19 = v29;
    v20 = v30;
    v21 = v28;
    *a3 = v27;
    *(a3 + 16) = v21;
    *(a3 + 32) = v19;
    *(a3 + 40) = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized DOCSidebarViewController.forEachVisibleSidebarItemCell(handler:)(void *a1, uint64_t a2)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v77 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v79 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v64 - v12;
  v14 = type metadata accessor for IndexPath();
  v87 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v72 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v64 - v19;
  v21 = type metadata accessor for DOCSidebarViewController(0);
  v22 = a1;
  v94.receiver = a1;
  v94.super_class = v21;
  v71 = v21;
  v23 = objc_msgSendSuper2(&v94, sel_collectionView, v64);
  if (!v23)
  {
    goto LABEL_40;
  }

  v24 = v23;
  v70 = type metadata accessor for DOCSidebarCollectionView();
  v25 = [swift_dynamicCastClassUnconditional() indexPathsForVisibleItems];

  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v86 = *(v26 + 16);
  if (!v86)
  {
LABEL_37:

    return;
  }

  v28 = 0;
  v29 = (*MEMORY[0x277D85000] & *v22) + 808;
  v85 = *((*MEMORY[0x277D85000] & *v22) + 0x328);
  v84 = v29;
  v83 = v26 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
  v89 = v87 + 16;
  v82 = (v10 + 8);
  v81 = (v87 + 8);
  v76 = (v87 + 56);
  v75 = (v87 + 48);
  v69 = (v87 + 32);
  v73 = v22;
  v88 = v9;
  v78 = v26;
  v74 = v14;
  while (v28 < *(v27 + 16))
  {
    v30 = *(v87 + 16);
    v31 = v30(v20, v83 + *(v87 + 72) * v28, v14);
    v85(&v92, v31);
    if (v93)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMR);
      if (swift_dynamicCast())
      {
        v32 = v90;
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v92, &_sypSgMd, &_sypSgMR);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v32 = static DOCSidebarViewController.nullDDS;
LABEL_14:
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v33 = IndexPath.section.getter();
    v34 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    if ((v33 & 0x8000000000000000) != 0 || v33 >= *(v34 + 16))
    {

      (*v82)(v13, v9);
      v47 = v22;
    }

    else
    {
      v35 = v27;
      v80 = *(v34 + 16 * v33 + 32);
      swift_unknownObjectRetain();

      v92 = v80;
      v36 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
      v37 = IndexPath.item.getter();
      if ((v37 & 0x8000000000000000) != 0 || v37 >= *(v36 + 16))
      {

        (*v82)(v13, v9);
        swift_unknownObjectRelease();
        v47 = v22;
        v27 = v35;
      }

      else
      {
        v38 = v36 + (v37 << 6);
        *&v80 = *(v38 + 32);
        v39 = *(v38 + 48);
        v40 = *(v38 + 56);
        v41 = *(v38 + 72);
        v68 = *(v38 + 64);
        v42 = *(v38 + 80);
        v67 = *(v38 + 88);
        swift_unknownObjectRetain();
        v65 = v39;
        v43 = v39;
        v66 = v40;
        v44 = v40;
        v45 = v68;
        v46 = v67;
        outlined copy of DOCSidebarItem?(v43, v44, v68, v41, v42, v67);

        (*v82)(v13, v88);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v46 == 255)
        {
          v14 = v74;
          (*v81)(v20, v74);
          v22 = v73;
LABEL_36:
          v27 = v78;
          goto LABEL_5;
        }

        outlined consume of DOCSidebarItem?(v65, v66, v45, v41, v42, v46);
        v47 = v73;
        v27 = v78;
      }

      v14 = v74;
    }

    v48 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v20, 0);
    if (v48)
    {
      v50 = v48;
      v51 = v49;
      v22 = v47;
      DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v20, 1, v95);
      if (v97 != 255)
      {
        *&v80 = v51;
        v98[0] = v95[0];
        v98[1] = v95[1];
        v99 = v96;
        v100 = v97;
        v52 = v79;
        v30(v79, v20, v14);
        (*v76)(v52, 0, 1, v14);
        v53 = v77;
        outlined init with copy of DOCGridLayout.Spec?(v52, v77, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        if ((*v75)(v53, 1, v14) == 1)
        {
          swift_unknownObjectRelease();
          outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
          outlined destroy of CharacterSet?(v52, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          (*v81)(v20, v14);
          outlined destroy of CharacterSet?(v53, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        }

        else
        {
          v54 = v13;
          v55 = v72;
          (*v69)(v72, v53, v14);
          v91.receiver = v22;
          v91.super_class = v71;
          v56 = objc_msgSendSuper2(&v91, sel_collectionView);
          if (!v56)
          {
            goto LABEL_39;
          }

          v57 = v56;
          v58 = swift_dynamicCastClassUnconditional();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v60 = [v58 cellForItemAtIndexPath_];

          v61 = *v81;
          (*v81)(v55, v14);
          outlined destroy of CharacterSet?(v79, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          v62 = v80;
          if (v60)
          {
            type metadata accessor for DOCSidebarItemCell(0);
            v63 = swift_dynamicCastClass();
            v13 = v54;
            if (v63)
            {
              DOCSidebarViewController.updateContentsOfCell(_:withSidebarItem:sidebarSection:)(v63, v98, v50, v62);
              swift_unknownObjectRelease();
              outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
            }

            else
            {
              swift_unknownObjectRelease();

              outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
            }

            v61(v20, v14);
            v27 = v78;
            v22 = v73;
            goto LABEL_5;
          }

          v61(v20, v14);
          swift_unknownObjectRelease();
          outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
          v22 = v73;
          v13 = v54;
        }

        goto LABEL_36;
      }

      (*v81)(v20, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      (*v81)(v20, v14);
      v22 = v47;
    }

LABEL_5:
    ++v28;
    v9 = v88;
    if (v86 == v28)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

id specialized DOCSidebarViewController._newCollectionView(withFrame:collectionViewLayout:)(id result, double a2, double a3, double a4, double a5)
{
  if (result)
  {
    v5 = [objc_allocWithZone(type metadata accessor for DOCSidebarCollectionView()) initWithFrame:result collectionViewLayout:{a2, a3, a4, a5}];
    [v5 setAlwaysBounceVertical_];
    v6 = objc_opt_self();
    v7 = v5;
    [v6 sidebar];
    swift_getObjCClassMetadata();
    v8 = [swift_getObjCClassFromMetadata() containerView];
    if (!v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = MEMORY[0x24C1FAD20](v9);
    }

    [v7 setAccessibilityIdentifier_];

    v10 = v7;
    [v10 setAllowsFocus_];
    [v10 _setShouldPersistSelectionOnReloadDataWhenPossible_];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

void specialized DOCSidebarViewController.collectionView(_:didUpdateFocusIn:with:)(void *a1, void *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v37 - v19;
  type metadata accessor for DOCSidebarCollectionView();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v38 = v12;
    v39 = a1;
    v23 = [a2 previouslyFocusedIndexPath];
    if (v23)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = v5;
      v25 = *(v5 + 56);
      v25(v20, 0, 1, v4);
    }

    else
    {
      v24 = v5;
      v25 = *(v5 + 56);
      v25(v20, 1, 1, v4);
    }

    outlined destroy of CharacterSet?(v20, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v26 = [a2 nextFocusedIndexPath];
    if (v26)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = 1;
      v25(v16, 0, 1, v4);
      outlined destroy of CharacterSet?(v16, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      if (!v23)
      {
        v28 = [a2 nextFocusedIndexPath];
        if (v28)
        {
          v29 = v28;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = v24;
          v31 = *(v24 + 32);
          v32 = v38;
          v31(v38, v8, v4);
          v33 = [v22 indexPathsForSelectedItems];
          if (v33)
          {
            v34 = v33;
            v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v35 = MEMORY[0x277D84F90];
          }

          v27 = specialized Sequence<>.contains(_:)(v32, v35);

          (*(v30 + 8))(v32, v4);
        }
      }
    }

    else
    {
      v27 = 1;
      v25(v16, 1, 1, v4);
      outlined destroy of CharacterSet?(v16, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }

    v36 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v40) + 0x1D8))(v26 != 0);
    (*((*v36 & *v22) + 0x88))(v26 == 0);
    [v22 setSelectionFollowsFocus_];
  }
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.SelectionResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
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

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
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

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.SelectionResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
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
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
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

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
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

void partial apply for closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:)(__int128 *a1)
{
  partial apply for closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:)(a1);
}

{
  closure #1 in DOCSidebarViewController.forEachSidebarItem(visibleOnly:handler:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t one-time initialization function for documentCreation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.documentCreation);
  __swift_project_value_buffer(v0, static Logger.documentCreation);

  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for FileProviderSyncState()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.FileProviderSyncState);
  __swift_project_value_buffer(v0, static Logger.FileProviderSyncState);

  return Logger.init(subsystem:category:)();
}

Swift::Bool __swiftcall Logger.doc_isEnabled(for:)(os_log_type_t a1)
{
  type metadata accessor for OS_os_log();
  v2 = static OS_os_log.default.getter();
  v3 = os_log_type_enabled(v2, a1);

  return v3;
}

uint64_t specialized static DOCKeyboardNotifications.addObserver(keyboardAppearanceBlock:keyboardDisappearanceBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BA37E0;
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  v9 = *MEMORY[0x277D76C60];
  v10 = objc_opt_self();
  v11 = [v10 mainQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v35 = partial apply for closure #1 in static DOCKeyboardNotifications.addObserver(keyboardAppearanceBlock:keyboardDisappearanceBlock:);
  v36 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v34 = &block_descriptor_113;
  v13 = _Block_copy(&aBlock);

  v14 = [v8 addObserverForName:v9 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);

  *(v6 + 32) = v14;
  v15 = [v7 defaultCenter];
  v16 = *MEMORY[0x277D76B98];
  v17 = [v10 mainQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v35 = partial apply for closure #1 in closure #1 in closure #1 in _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:);
  v36 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v34 = &block_descriptor_8_0;
  v19 = _Block_copy(&aBlock);

  v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
  _Block_release(v19);

  *(v6 + 40) = v20;
  v21 = [v7 defaultCenter];
  v22 = *MEMORY[0x277D76C50];
  v23 = [v10 mainQueue];
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v35 = partial apply for closure #1 in static DOCKeyboardNotifications.addObserver(keyboardAppearanceBlock:keyboardDisappearanceBlock:);
  v36 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v34 = &block_descriptor_14_1;
  v25 = _Block_copy(&aBlock);

  v26 = [v21 addObserverForName:v22 object:0 queue:v23 usingBlock:v25];
  _Block_release(v25);

  *(v6 + 48) = v26;
  return v6;
}

uint64_t closure #1 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013QuickLookFileD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013QuickLookFileD0VGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v2);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables013QuickLookFileD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables013QuickLookFileD0V_GMR);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x2079616C70736944;
  v7._object = 0xEB0000000020796DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
  v21[1] = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x656C696620;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21[0] = *(v25 + 8);
  v24 = v9;
  v25 += 8;
  v10 = v23;
  (v21[0])(v4, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x6F4C206B63697551;
  v11._object = 0xEB00000000206B6FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v21[0];
  (v21[0])(v4, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x8000000249BED830;
  v14._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013QuickLookFileG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013QuickLookFileG0VGGGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249BA08C0;
  v18 = v22;
  *(v17 + 32) = v24;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v19;
}

uint64_t closure #1 in closure #2 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #3 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011RevealItemsD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011RevealItemsD0VGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v2);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables011RevealItemsD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables011RevealItemsD0V_GMR);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000249BED7D0;
  v7._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);
  v21[1] = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21[0] = *(v25 + 8);
  v24 = v9;
  v25 += 8;
  v10 = v23;
  (v21[0])(v4, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x6D20657461636F4CLL;
  v11._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x656C696620;
  v12._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v21[0];
  (v21[0])(v4, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x206C6165766552;
  v14._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011RevealItemsG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011RevealItemsG0VGGGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249BA08C0;
  v18 = v22;
  *(v17 + 32) = v24;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v19;
}

uint64_t closure #20 in static FileAssistantIntents.intents.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = type metadata accessor for _AssistantIntent.Value();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  a3(v10);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v11 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v6 + 8))(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  *(v12 + 32) = v11;
  v13 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v13;
}

uint64_t closure #1 in closure #4 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #5 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v56 = a1;
  v63 = type metadata accessor for _AssistantIntent.PhraseToken();
  v1 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v2);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables012CreateFolderD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables012CreateFolderD0V_GMR);
  MEMORY[0x28223BE20](v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables012CreateFolderD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables012CreateFolderD0VGMR);
  v65 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v49 - v10;
  lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v12 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = *(v8 + 8);
  v54 = v12;
  v55 = v13;
  v13(v11, v7);
  v64 = v8 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x8000000249BED660;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v60 = *MEMORY[0x277CB9F50];
  v15 = *(v1 + 104);
  v61 = v1 + 104;
  v62 = v15;
  v16 = v4;
  v57 = v4;
  v17 = v4;
  v18 = v63;
  v15(v17);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v19 = *(v1 + 8);
  v58 = v1 + 8;
  v59 = v19;
  v19(v16, v18);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v55;
  v55(v11, v65);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000016;
  v22._object = 0x8000000249BED680;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  v49[1] = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR, lazy protocol witness table accessor for type String and conformance String);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 544106784;
  v23._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v11, v65);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x6120657461657243;
  v25._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x207265646C6F6620;
  v26._object = 0xEB00000000206E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28 = v65;
  v21(v11, v65);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x2077656E20646441;
  v29._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x6F74636572696420;
  v30._object = 0xEA00000000007972;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v11, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0xD000000000000028;
  v31._object = 0x8000000249BED6A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v57;
  v33 = v63;
  v62(v57, v60, v63);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v59(v32, v33);
  v34._object = 0x8000000249BED6D0;
  v34._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 63;
  v35._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49[0] = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v36 = v55;
  v55(v11, v65);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0xD000000000000018;
  v37._object = 0x8000000249BED6F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 544106784;
  v38._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  v39 = v57;
  v40 = v63;
  v62(v57, v60, v63);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v59(v39, v40);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v36(v11, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables012CreateFolderG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables012CreateFolderG0VGGGMR);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_249BA2880;
  v44 = v53;
  *(v43 + 32) = v54;
  *(v43 + 40) = v44;
  v45 = v51;
  *(v43 + 48) = v52;
  *(v43 + 56) = v45;
  v46 = v49[0];
  *(v43 + 64) = v50;
  *(v43 + 72) = v46;
  *(v43 + 80) = v42;
  v47 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v47;
}

uint64_t closure #6 in static FileAssistantIntents.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR, lazy protocol witness table accessor for type String and conformance String);

  lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9FA70;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t closure #1 in closure #6 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #2 in closure #6 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA08C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t closure #7 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables014DuplicateItemsD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables014DuplicateItemsD0VGMR);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables014DuplicateItemsD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables014DuplicateItemsD0V_GMR);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type DuplicateItemsIntent and conformance DuplicateItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x746163696C707544;
  v7._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v25 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);
  v31 = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = *(v32 + 8);
  v28 = v9;
  v29 = v10;
  v32 += 8;
  v11 = v30;
  v10(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000016;
  v12._object = 0x8000000249BED5C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v29;
  v29(v4, v11);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x8000000249BED5E0;
  v15._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v30;
  v14(v4, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD000000000000014;
  v18._object = 0x8000000249BED600;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x73656C696620;
  v19._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29(v4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables014DuplicateItemsG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables014DuplicateItemsG0VGGGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_249BA08D0;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v26;
  *(v21 + 56) = v20;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t closure #1 in closure #8 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #9 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v45 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010TrashItemsD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010TrashItemsD0VGMR);
  v52 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v1);
  v3 = &v37 - v2;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables010TrashItemsD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables010TrashItemsD0V_GMR);
  MEMORY[0x28223BE20](v9, v10);
  v11 = lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x2065766F4DLL;
  v12._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v44 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x73617274206F7420;
  v13._object = 0xED0000206E692068;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v51 = *MEMORY[0x277CB9F50];
  v46 = *(v5 + 104);
  v47 = v5 + 104;
  v43 = v4;
  v46(v8);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v14 = *(v5 + 8);
  v49 = v5 + 8;
  v50 = v14;
  v14(v8, v4);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = v11;
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v38 = *(v52 + 8);
  v52 += 8;
  v16 = v48;
  v38(v3, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x206873617254;
  v17._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 544106784;
  v18._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v43;
  (v46)(v8, v51, v43);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v50(v8, v19);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v37 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v16;
  v22 = v38;
  v38(v3, v21);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x206574656C6544;
  v23._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 544106784;
  v24._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v43;
  v26 = v46;
  (v46)(v8, v51, v43);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v50(v8, v25);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v28 = v37;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22(v28, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._object = 0x8000000249BED520;
  v29._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  (v26)(v8, v51, v25);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v50(v8, v25);
  v30._countAndFlagsBits = 8250;
  v30._object = 0xE200000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22(v28, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010TrashItemsG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010TrashItemsG0VGGGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_249BA08D0;
  v34 = v40;
  *(v33 + 32) = v41;
  *(v33 + 40) = v34;
  *(v33 + 48) = v39;
  *(v33 + 56) = v32;
  v35 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v35;
}

uint64_t closure #1 in closure #10 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #11 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v17[1] = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersD0VGMR);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v2);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015FavoriteFoldersD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015FavoriteFoldersD0V_GMR);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 543450177;
  v7._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x6F766166206F7420;
  v8._object = 0xED00007365746972;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v1 + 8);
  v10 = v19;
  v9(v4, v19);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656B614DLL;
  v11._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x726F766166206120;
  v12._object = 0xEB00000000657469;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersG0VGGGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249B9FA70;
  *(v14 + 32) = v18;
  *(v14 + 40) = v13;
  v15 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v15;
}

uint64_t closure #16 in static FileAssistantIntents.intents.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for _AssistantIntent.Value();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FavoriteFolderOperation and conformance FavoriteFolderOperation();

  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v8 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v9 = *(v4 + 8);
  v9(v7, v3);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  _AssistantIntent.Value.init<A>(for:builder:)();
  v10 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v9(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9FA70;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  v12 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v12;
}

uint64_t closure #13 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v17[1] = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersD0VGMR);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v2);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015FavoriteFoldersD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015FavoriteFoldersD0V_GMR);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x2065766F6D6552;
  v7._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x6166206D6F726620;
  v8._object = 0xEF73657469726F76;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v1 + 8);
  v10 = v19;
  v9(v4, v19);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656B6154;
  v11._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._object = 0x8000000249BED410;
  v12._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersG0VGGGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249B9FA70;
  *(v14 + 32) = v18;
  *(v14 + 40) = v13;
  v15 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v15;
}

uint64_t closure #15 in static FileAssistantIntents.intents.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersD0VGMR);
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015FavoriteFoldersD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015FavoriteFoldersD0V_GMR);
  MEMORY[0x28223BE20](v5, v6);
  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v27 = lazy protocol witness table accessor for type FavoriteFolderOperation and conformance FavoriteFolderOperation();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v26 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v29;
  v24 = *(v30 + 8);
  v30 += 8;
  v24(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 544499027;
  v11._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 544432416;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v24;
  v24(v4, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x7420746E61772049;
  v15._object = 0xEA0000000000206FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 544828704;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v4, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015FavoriteFoldersG0VGGGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249BA08C0;
  v20 = v25;
  *(v19 + 32) = v28;
  *(v19 + 40) = v20;
  *(v19 + 48) = v18;
  v21 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v21;
}

uint64_t closure #1 in closure #16 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249B9FA70;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t closure #2 in closure #12 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA08C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t closure #17 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v25[1] = a1;
  v1 = type metadata accessor for _AssistantIntent.PhraseToken();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v28 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables018GetContentOfFolderD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables018GetContentOfFolderD0VGMR);
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables018GetContentOfFolderD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables018GetContentOfFolderD0V_GMR);
  MEMORY[0x28223BE20](v8, v9);
  lazy protocol witness table accessor for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x739980E274616857;
  v10._object = 0xAC000000206E6920;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v4 + 8;
  v13 = *(v4 + 8);
  v25[2] = v12;
  v14 = v26;
  v13(v7, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x8000000249BED3C0;
  v15._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x207265646C6F6620;
  v16._object = 0xED0000206D6F7266;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v18 = v28;
  v17 = v29;
  v19 = v30;
  (*(v29 + 104))(v28, *MEMORY[0x277CB9F50], v30);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v17 + 8))(v18, v19);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v7, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables018GetContentOfFolderG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables018GetContentOfFolderG0VGGGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249B9FA70;
  *(v22 + 32) = v27;
  *(v22 + 40) = v21;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t closure #2 in static FileAssistantIntents.intents.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = type metadata accessor for _AssistantIntent.Value();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  a3(v10);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v11 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v6 + 8))(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  *(v12 + 32) = v11;
  v13 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v13;
}

uint64_t closure #1 in closure #18 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA08D0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t closure #19 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables08GetFilesD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables08GetFilesD0VGMR);
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v23 - v3;
  v5 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables08GetFilesD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables08GetFilesD0V_GMR);
  MEMORY[0x28223BE20](v10, v11);
  lazy protocol witness table accessor for type GetFilesIntent and conformance GetFilesIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 544499015;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v25 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x206D6F726620;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  (*(v6 + 104))(v9, *MEMORY[0x277CB9F50], v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v6 + 8))(v9, v5);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v28;
  v16 = *(v27 + 8);
  v16(v4, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x207463656C6553;
  v17._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v4, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables08GetFilesG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables08GetFilesG0VGGGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249B9FA70;
  *(v20 + 32) = v24;
  *(v20 + 40) = v19;
  v21 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v21;
}

uint64_t closure #1 in closure #20 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA08C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t closure #21 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsD0VGMR);
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v3);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables09MoveItemsD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables09MoveItemsD0V_GMR);
  MEMORY[0x28223BE20](v6, v7);
  lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x2065766F4DLL;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v27[2] = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);
  v31 = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 544175136;
  v9._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v33 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v27[0] = v5;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = *(v2 + 8);
  v12 = v34;
  v11(v5, v34);
  v32 = v11;
  v27[1] = v2 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x2065766F4DLL;
  v13._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v15 = v27[0];
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v15, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x6C69662065766F4DLL;
  v16._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x796D206F746E6920;
  v17._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x7265646C6F6620;
  v18._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v15, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x2065766F4DLL;
  v19._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 544175136;
  v20._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._object = 0x8000000249BED340;
  v21._countAndFlagsBits = 0xD000000000000022;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v15, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsG0VGGGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249BA08D0;
  v24 = v29;
  *(v23 + 32) = v30;
  *(v23 + 40) = v24;
  *(v23 + 48) = v28;
  *(v23 + 56) = v22;
  v25 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v25;
}

uint64_t closure #23 in static FileAssistantIntents.intents.getter()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsD0VGMR);
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v0);
  v2 = &v21 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables09MoveItemsD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables09MoveItemsD0V_GMR);
  MEMORY[0x28223BE20](v3, v4);
  lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x2065766F4DLL;
  v5._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v23 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 544175136;
  v6._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v27 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0xD000000000000020;
  v7._object = 0x8000000249BED2C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = *(v28 + 8);
  v28 += 8;
  v8 = v26;
  v22(v2, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x2065766F4DLL;
  v9._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544175136;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._object = 0x8000000249BED2F0;
  v11._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v22;
  v22(v2, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x6C69662065766F4DLL;
  v13._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x796D206F746E6920;
  v14._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0xD000000000000021;
  v15._object = 0x8000000249BED310;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v2, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables09MoveItemsG0VGGGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249BA08C0;
  v18 = v24;
  *(v17 + 32) = v25;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v19;
}

uint64_t closure #22 in static FileAssistantIntents.intents.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v4 = type metadata accessor for _AssistantIntent.Value();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v9 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v11 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10(v8, v4);
  swift_getKeyPath();
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Bool? and conformance <A> A?, &_sSbSgMd, &_sSbSgMR, lazy protocol witness table accessor for type Bool and conformance Bool);

  _AssistantIntent.Value.init<A>(for:builder:)();
  v12 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249BA08C0;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  *(v13 + 48) = v12;
  v14 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v14;
}

uint64_t closure #1 in closure #22 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #25 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013CompressItemsD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013CompressItemsD0VGMR);
  v2 = *(v1 - 8);
  v76 = v1;
  v77 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v62 - v4;
  v6 = type metadata accessor for _AssistantIntent.PhraseToken();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables013CompressItemsD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables013CompressItemsD0V_GMR);
  MEMORY[0x28223BE20](v11, v12);
  lazy protocol witness table accessor for type CompressItemsIntent and conformance CompressItemsIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x73736572706D6F43;
  v13._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v75 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 544106784;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  (*(v7 + 104))(v10, *MEMORY[0x277CB9F50], v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v7 + 8))(v10, v6);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v69 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v76;
  v17 = *(v77 + 8);
  v77 += 8;
  v17(v5, v76);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x2065766968637241;
  v18._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 544175136;
  v19._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  v71 = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type FINodeEntity? and conformance <A> A?, &_s26DocumentManagerExecutables12FINodeEntityVSgMd, &_s26DocumentManagerExecutables12FINodeEntityVSgMR, MEMORY[0x277CBA590]);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v68 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v73 = v17;
  v17(v5, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 544237914;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._object = 0x8000000249BED190;
  v22._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v74 = v5;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v67 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v5, v76);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x73736572706D6F43;
  v24._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._object = 0x8000000249BED1B0;
  v25._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v66 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28 = v76;
  v29 = v73;
  v73(v27, v76);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0xD00000000000001FLL;
  v30._object = 0x8000000249BED1D0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29(v32, v28);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._countAndFlagsBits = 0x2065766968637241;
  v33._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 544432416;
  v34._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();
  v70 = lazy protocol witness table accessor for type CompressionFormat and conformance CompressionFormat();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  v36 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v37 = v76;
  v73(v36, v76);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38._countAndFlagsBits = 0x73736572706D6F43;
  v38._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39._countAndFlagsBits = 544432416;
  v39._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  v41 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v42 = v37;
  v43 = v73;
  v73(v41, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v44._countAndFlagsBits = 0x2065766968637241;
  v44._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v44);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v45._countAndFlagsBits = 544432416;
  v45._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v45);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v46._countAndFlagsBits = 0x206F746E6920;
  v46._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v46);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  v48 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v62 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v49 = v48;
  v43(v48, v76);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50._countAndFlagsBits = 0x73736572706D6F43;
  v50._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v50);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v51._countAndFlagsBits = 544432416;
  v51._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v51);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v52._countAndFlagsBits = 0xD000000000000011;
  v52._object = 0x8000000249BED1F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v52);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v53);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v73(v49, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013CompressItemsG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables013CompressItemsG0VGGGMR);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_249BB28A0;
  v56 = v68;
  *(v55 + 32) = v69;
  *(v55 + 40) = v56;
  v57 = v66;
  *(v55 + 48) = v67;
  *(v55 + 56) = v57;
  v58 = v64;
  *(v55 + 64) = v65;
  *(v55 + 72) = v58;
  v59 = v62;
  *(v55 + 80) = v63;
  *(v55 + 88) = v59;
  *(v55 + 96) = v54;
  v60 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v60;
}

uint64_t closure #26 in static FileAssistantIntents.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  lazy protocol witness table accessor for type CompressItemsIntent and conformance CompressItemsIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type FINodeEntity? and conformance <A> A?, &_s26DocumentManagerExecutables12FINodeEntityVSgMd, &_s26DocumentManagerExecutables12FINodeEntityVSgMR, MEMORY[0x277CBA590]);

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9FA70;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t closure #1 in closure #26 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA08C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t closure #2 in closure #26 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA08C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t closure #27 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v28[1] = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemD0VGMR);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v1);
  v3 = v28 - v2;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables010RenameItemD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables010RenameItemD0V_GMR);
  MEMORY[0x28223BE20](v9, v10);
  lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656D616E6552;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v33 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 544106784;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  (*(v5 + 104))(v8, *MEMORY[0x277CB9F50], v4);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v5 + 8))(v8, v4);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29 = *(v34 + 8);
  v34 += 8;
  v14 = v32;
  v29(v3, v32);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x20656D616E6552;
  v15._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 544175136;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  lazy protocol witness table accessor for type String and conformance String();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v14;
  v19 = v29;
  v29(v3, v18);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._object = 0x8000000249BED0E0;
  v20._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 544175136;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v3, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemG0VGGGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_249BA08C0;
  v25 = v30;
  *(v24 + 32) = v31;
  *(v24 + 40) = v25;
  *(v24 + 48) = v23;
  v26 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v26;
}

uint64_t closure #30 in static FileAssistantIntents.intents.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v4 = type metadata accessor for _AssistantIntent.Value();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v9 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  swift_getKeyPath();
  lazy protocol witness table accessor for type String and conformance String();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v11 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10(v8, v4);
  swift_getKeyPath();
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Bool? and conformance <A> A?, &_sSbSgMd, &_sSbSgMR, lazy protocol witness table accessor for type Bool and conformance Bool);

  _AssistantIntent.Value.init<A>(for:builder:)();
  v12 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249BA08C0;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  *(v13 + 48) = v12;
  v14 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v14;
}

uint64_t closure #29 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v36 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemD0VGMR);
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v1);
  v3 = &v33 - v2;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables010RenameItemD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables010RenameItemD0V_GMR);
  MEMORY[0x28223BE20](v9, v10);
  lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20656D616E6552;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v39 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 544106784;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  (*(v5 + 104))(v8, *MEMORY[0x277CB9F50], v4);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v5 + 8))(v8, v4);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = *(v40 + 8);
  v40 += 8;
  v15 = v37;
  v14(v3, v37);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x20656D616E6552;
  v16._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 544175136;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  v38 = lazy protocol witness table accessor for type String and conformance String();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0xD00000000000001FLL;
  v18._object = 0x8000000249BED0A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v33 = v14;
  v34 = v19;
  v14(v3, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x20656D616E6552;
  v20._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 544175136;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._object = 0x8000000249BED0C0;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v37;
  v14(v3, v37);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x8000000249BED0E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 544175136;
  v26._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._object = 0x8000000249BED100;
  v27._countAndFlagsBits = 0xD00000000000001ALL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v33(v3, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables010RenameItemG0VGGGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_249BA08D0;
  v30 = v34;
  *(v29 + 32) = v35;
  *(v29 + 40) = v30;
  *(v29 + 48) = v23;
  *(v29 + 56) = v28;
  v31 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v31;
}

uint64_t closure #1 in closure #28 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #2 in closure #28 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249BA2880;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t closure #1 in closure #12 in static FileAssistantIntents.intents.getter(uint64_t a1, uint64_t a2)
{
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  *(v3 + 32) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t closure #31 in static FileAssistantIntents.intents.getter(uint64_t a1)
{
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011SaveToFilesD0VGMd, &_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011SaveToFilesD0VGMR);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables011SaveToFilesD0V_GMd, &_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables011SaveToFilesD0V_GMR);
  MEMORY[0x28223BE20](v9, v10);
  lazy protocol witness table accessor for type SaveToFilesIntent and conformance SaveToFilesIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x2065766153;
  v11._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v35[1] = lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 544175136;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v41 = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
  v35[0] = a1;

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v43;
  v16 = *(v42 + 8);
  v42 += 8;
  v39 = v14;
  v40 = v16;
  v16(v8, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x2065766153;
  v17._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 544106784;
  v18._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v36;
  v20 = v37;
  v21 = v38;
  (*(v37 + 104))(v36, *MEMORY[0x277CB9F50], v38);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v20 + 8))(v19, v21);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v40(v8, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x6C69662065766153;
  v23._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x796D206F746E6920;
  v24._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x7265646C6F6620;
  v25._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26 = v40;
  v40(v8, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 543450177;
  v27._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 0x20656874206F7420;
  v28._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x6F74636572696420;
  v29._object = 0xEA00000000007972;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v8, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011SaveToFilesG0VGGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables011SaveToFilesG0VGGGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_249BA08D0;
  v32 = v38;
  *(v31 + 32) = v39;
  *(v31 + 40) = v32;
  *(v31 + 48) = v37;
  *(v31 + 56) = v30;
  v33 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v33;
}

uint64_t closure #32 in static FileAssistantIntents.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](&lazy protocol witness table cache variable for type [FINodeEntity] and conformance <A> [A], &_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR, MEMORY[0x277CBA540]);

  lazy protocol witness table accessor for type SaveToFilesIntent and conformance SaveToFilesIntent();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9FA70;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t closure #1 in closure #32 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BB2890;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #2 in closure #22 in static FileAssistantIntents.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249BB28B0;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t static FileAssistantIntents.negativePhrases.getter()
{
  v0 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV08NegativefG7PhrasesVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV08NegativefG7PhrasesVGGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249B9A480;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #1 in static FileAssistantIntents.negativePhrases.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249B9A480;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t protocol witness for static _AssistantIntentsProvider.negativePhrases.getter in conformance FileAssistantIntents()
{
  v0 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV08NegativefG7PhrasesVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV08NegativefG7PhrasesVGGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249B9A480;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v7;
}

uint64_t specialized static FileAssistantIntents.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Folder = specialized QuickLookFileIntent.init()();
  lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v46 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v4, v0);
  Folder = specialized RevealItemsIntent.init()();
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v45 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized CreateFolderIntent.init()();
  v48 = v6;
  v49 = v7;
  lazy protocol witness table accessor for type CreateFolderIntent and conformance CreateFolderIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v44 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized DuplicateItemsIntent.init()();
  lazy protocol witness table accessor for type DuplicateItemsIntent and conformance DuplicateItemsIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v43 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized TrashItemsIntent.init()();
  lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v42 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized FavoriteFoldersIntent.init()();
  v48 = v8;
  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v41 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized FavoriteFoldersIntent.init()();
  v48 = v9;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v40 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized FavoriteFoldersIntent.init()();
  v48 = v10;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v39 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized GetContentOfFolderIntent.init()();
  lazy protocol witness table accessor for type GetContentOfFolderIntent and conformance GetContentOfFolderIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v38 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized GetFilesIntent.init()();
  lazy protocol witness table accessor for type GetFilesIntent and conformance GetFilesIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v37 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized MoveItemsIntent.init()();
  v48 = v11;
  v49 = v12;
  lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v13 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized MoveItemsIntent.init()();
  v48 = v14;
  v49 = v15;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v16 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized CompressItemsIntent.init()();
  v48 = v17;
  v49 = v18;
  lazy protocol witness table accessor for type CompressItemsIntent and conformance CompressItemsIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v19 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized RenameItemIntent.init()();
  v48 = v20;
  v49 = v21;
  lazy protocol witness table accessor for type RenameItemIntent and conformance RenameItemIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v22 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized RenameItemIntent.init()();
  v48 = v23;
  v49 = v24;
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v25 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  Folder = specialized SaveToFilesIntent.init()();
  v48 = v26;
  lazy protocol witness table accessor for type SaveToFilesIntent and conformance SaveToFilesIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v27 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentVGGMd, &_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentVGGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_249BB28C0;
  v29 = v45;
  *(v28 + 32) = v46;
  *(v28 + 40) = v29;
  v30 = v43;
  *(v28 + 48) = v44;
  *(v28 + 56) = v30;
  v31 = v41;
  *(v28 + 64) = v42;
  *(v28 + 72) = v31;
  v32 = v39;
  *(v28 + 80) = v40;
  *(v28 + 88) = v32;
  v33 = v37;
  *(v28 + 96) = v38;
  *(v28 + 104) = v33;
  *(v28 + 112) = v13;
  *(v28 + 120) = v16;
  *(v28 + 128) = v19;
  *(v28 + 136) = v22;
  *(v28 + 144) = v25;
  *(v28 + 152) = v27;
  v34 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v34;
}

unint64_t lazy protocol witness table accessor for type DuplicateItemsIntent and conformance DuplicateItemsIntent()
{
  result = lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent;
  if (!lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent;
  if (!lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent;
  if (!lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DuplicateItemsIntent and conformance DuplicateItemsIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent()
{
  result = lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent;
  if (!lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent;
  if (!lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent;
  if (!lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent;
  if (!lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetFilesIntent and conformance GetFilesIntent()
{
  result = lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent;
  if (!lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent;
  if (!lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent;
  if (!lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetFilesIntent and conformance GetFilesIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent()
{
  result = lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent;
  if (!lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent;
  if (!lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent;
  if (!lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent;
  if (!lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent;
  if (!lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveItemsIntent and conformance MoveItemsIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressItemsIntent and conformance CompressItemsIntent()
{
  result = lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent;
  if (!lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent;
  if (!lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent;
  if (!lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent;
  if (!lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressItemsIntent and conformance CompressItemsIntent);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Bool and conformance Bool()
{
  result = lazy protocol witness table cache variable for type Bool and conformance Bool;
  if (!lazy protocol witness table cache variable for type Bool and conformance Bool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Bool and conformance Bool);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressionFormat and conformance CompressionFormat()
{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat;
  if (!lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionFormat and conformance CompressionFormat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FavoriteFolderOperation and conformance FavoriteFolderOperation()
{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation;
  if (!lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoriteFolderOperation and conformance FavoriteFolderOperation);
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3 = a2;
    if (!(*v4 >> 62))
    {
      v5 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = -v5;
      if (!__OFSUB__(0, v5))
      {
        goto LABEL_5;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v9 = result;
  v11 = a3;
  v10 = __CocoaSet.count.getter();
  a3 = v11;
  v5 = v10;
  result = v9;
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_19;
  }

LABEL_5:
  v7 = -result;
  if (v6 <= 0 && v6 > v7)
  {
    goto LABEL_22;
  }

  result = v5 - result;
  if (__OFADD__(v5, v7))
  {
    goto LABEL_20;
  }

  if (v5 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return a3();
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, type metadata accessor for DOCItemCollectionCell);
}

{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C1FC540](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (!swift_dynamicCastObjCProtocolConditional())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __CocoaSet.count.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return v8;
}

{
  v6 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    __CocoaSet.count.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
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
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
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

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1, void (*a2)(void))
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a2(0);
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v8 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __CocoaSet.count.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return v10;
}

id DOCBrowserNavigationDataSource.historyDataSource.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_historyDataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCBrowserNavigationDataSource.historyDataSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_historyDataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Class @objc DOCBrowserNavigationDataSource.containerControllers.getter(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void, __n128))
{
  v6 = *a3;
  swift_beginAccess();
  if (*(a1 + v6))
  {
    (a4)(0);

    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

void @objc DOCBrowserNavigationDataSource.containerControllers.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v6 = a3;
  if (a3)
  {
    (a4)(0, a2);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *a5;
  swift_beginAccess();
  *&a1[v8] = v6;
  v9 = a1;

  (*((*MEMORY[0x277D85000] & *v9) + 0x188))(v10);
}

uint64_t key path setter for DOCBrowserNavigationDataSource.containerControllers : DOCBrowserNavigationDataSource(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return (*((*MEMORY[0x277D85000] & *v6) + 0x188))(v8);
}

uint64_t DOCBrowserNavigationDataSource.currentViewControllers.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x188))() == 3)
  {
    v2 = (*((*v1 & *v0) + 0xD8))();
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = (*((*v1 & *v0) + 0xC0))();
    if (!v2)
    {
LABEL_9:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v3 = v2;
  if (v2 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
    v4 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
    v4 = v3;
  }

  return v4;
}

uint64_t DOCBrowserNavigationDataSource.currentViewControllers.setter(unint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x188);
  if (v3() == 3)
  {
    v4 = specialized _arrayConditionalCast<A, B>(_:)(a1, type metadata accessor for DOCColumnViewController);

    if (v4)
    {
      v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_columnViewControllers;
LABEL_6:
      swift_beginAccess();
      *(v1 + v5) = v4;

      return (v3)(v6);
    }
  }

  else
  {
    v4 = specialized _arrayConditionalCast<A, B>(_:)(a1, type metadata accessor for DOCBrowserContainerController);

    if (v4)
    {
      v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_containerControllers;
      goto LABEL_6;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*DOCBrowserNavigationDataSource.currentViewControllers.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = DOCBrowserNavigationDataSource.currentViewControllers.getter();
  return DOCBrowserNavigationDataSource.currentViewControllers.modify;
}

void DOCBrowserNavigationDataSource.currentViewControllers.modify(unint64_t *a1, char a2)
{
  if (a2)
  {

    DOCBrowserNavigationDataSource.currentViewControllers.setter(v2);
  }

  else
  {
    DOCBrowserNavigationDataSource.currentViewControllers.setter(*a1);
  }
}

double DOCBrowserNavigationDataSource.currentContainers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_currentContainers;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

Swift::Void __swiftcall DOCBrowserNavigationDataSource.popLastViewController()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x118))(v18);
  v5 = v3;
  if (!(*v3 >> 62))
  {
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_3:
  v6 = specialized Array._customRemoveLast()(specialized _ArrayBuffer._consumeAndCreateNew());
  if (v6)
  {
    goto LABEL_7;
  }

  if (*v5 >> 62)
  {
    goto LABEL_18;
  }

  v8 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  while (1)
  {
    v6 = specialized Array.remove(at:)(v10, v7);
LABEL_7:

    v4(v18, 0);
    v1 = (*((*v2 & *v1) + 0x100))(v18);
    v5 = v11;
    if (*v11 >> 62)
    {
      break;
    }

    if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    v16 = __CocoaSet.count.getter();
    v9 = __OFSUB__(v16, 1);
    v10 = v16 - 1;
    if (v9)
    {
      goto LABEL_20;
    }
  }

LABEL_16:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_17;
  }

LABEL_9:
  v12 = specialized Array._customRemoveLast()(specialized _ArrayBuffer._consumeAndCreateNew());
  if (v12)
  {
LABEL_13:

    (v1)(v18, 0);
    return;
  }

  if (*v5 >> 62)
  {
LABEL_21:
    v17 = __CocoaSet.count.getter();
    v9 = __OFSUB__(v17, 1);
    v15 = v17 - 1;
    if (v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    v12 = specialized Array.remove(at:)(v15, v13);
    goto LABEL_13;
  }

  v14 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_23:
  __break(1u);
}

uint64_t DOCBrowserNavigationDataSource.shortDebugID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_shortDebugID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void DOCBrowserNavigationDataSource.shortDebugID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_shortDebugID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v2) + 0xA8))(v6);
  v9 = *v5;
  v10 = v5[1];
  v11 = *((*v7 & *v8) + 0x70);

  v11(v9, v10);
}

uint64_t (*DOCBrowserNavigationDataSource.shortDebugID.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_shortDebugID;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCBrowserNavigationDataSource.shortDebugID.modify;
}

void DOCBrowserNavigationDataSource.shortDebugID.modify(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = (v5 + v3[4]);
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v5) + 0xA8))(v4);
    v9 = *v6;
    v10 = v6[1];
    v11 = *((*v7 & *v8) + 0x70);

    v11(v9, v10);
  }

  free(v3);
}

void (*DOCBrowserNavigationDataSource.updateObserver.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_updateObserver;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCBrowserNavigationDataSource.updateObserver.modify;
}

void (*DOCBrowserNavigationDataSource.itemProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_itemProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCItemInfoContentViewController.actionDelegate.modify;
}

uint64_t DOCBrowserNavigationDataSource.viewStyleInFlight.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyleInFlight;
  swift_beginAccess();
  return *v1;
}

void DOCBrowserNavigationDataSource.viewStyleInFlight.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyleInFlight;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void DOCBrowserNavigationDataSource.viewStyle.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyle;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 == a1 || a1 != 3 && v5 != 3)
  {
    return;
  }

  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x108))(v4);
  if (v5 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249BA0290;
    v9 = (*((*v6 & *v1) + 0x158))();
    if (!v9)
    {
      goto LABEL_80;
    }

    v10 = v9;
    type metadata accessor for DOCBrowserContainerController();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v10 provideColumnViewControllerWithContains_];
    swift_unknownObjectRelease();

    *(v8 + 32) = v12;
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_columnViewControllers;
    swift_beginAccess();
    *(v1 + v13) = v8;

    v15 = *((*v6 & *v1) + 0x188);
    v15(v14);
    v16 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_containerControllers;
    swift_beginAccess();
    *(v1 + v16) = 0;

    v18 = (v15)(v17);
    goto LABEL_73;
  }

  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables29DOCBrowserContainerControllerC_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v7 >> 62)
  {
LABEL_60:
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v1;
  v71 = v20;
  v72 = v7;
  if (!v20)
  {
    goto LABEL_43;
  }

  v21 = 0;
  v22 = v7 & 0xC000000000000001;
  v67 = v7 & 0xFFFFFFFFFFFFFF8;
  v69 = v7 & 0xC000000000000001;
  do
  {
    if (v22)
    {
      v23 = MEMORY[0x24C1FC540](v21, v7);
    }

    else
    {
      if (v21 >= *(v67 + 16))
      {
        goto LABEL_59;
      }

      v23 = *(v7 + 8 * v21 + 32);
    }

    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v25 = v6;
    v26 = *((*v6 & *v23) + 0x208);
    v7 = v23;
    v6 = v26();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v19;
    v1 = v19;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    v30 = v19[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_55;
    }

    v34 = v29;
    if (v19[3] < v33)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
      v1 = v73;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_79;
      }

LABEL_23:
      v19 = v73;
      if (v34)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v1 = &v73;
    v38 = v28;
    specialized _NativeDictionary.copy()();
    v28 = v38;
    v19 = v73;
    if (v34)
    {
LABEL_11:
      *(v19[7] + v28) = v6 & 1;

      goto LABEL_12;
    }

LABEL_24:
    v19[(v28 >> 6) + 8] |= 1 << v28;
    *(v19[6] + 8 * v28) = v7;
    *(v19[7] + v28) = v6 & 1;
    v36 = v19[2];
    v32 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v32)
    {
      goto LABEL_58;
    }

    v19[2] = v37;
LABEL_12:
    v6 = v25;
    v1 = v7;
    (*((*v25 & *v7) + 0x210))(0);

    ++v21;
    v20 = v71;
    v7 = v72;
    v22 = v69;
  }

  while (v24 != v71);
  v68 = v19;
  if (v71 < 1)
  {
    goto LABEL_78;
  }

  for (i = 0; i != v71; ++i)
  {
    if (v69)
    {
      v40 = MEMORY[0x24C1FC540](i, v72);
    }

    else
    {
      v40 = *(v72 + 8 * i + 32);
    }

    v41 = v40;
    [v40 doc:0 removeFromParentWithRemoveSubviewBlock:?];
  }

  for (j = 0; j != v71; ++j)
  {
    if (v69)
    {
      v43 = MEMORY[0x24C1FC540](j, v72);
    }

    else
    {
      v43 = *(v72 + 8 * j + 32);
    }

    v44 = v43;
    if (v68[2])
    {
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
      if (v46)
      {
        (*((*v6 & *v44) + 0x210))(*(v68[7] + v45));
      }
    }
  }

  v1 = v66;
LABEL_43:
  v47 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_containerControllers;
  swift_beginAccess();
  v19 = *(v1 + v47);
  *(v1 + v47) = v7;

  v49 = *((*v6 & *v1) + 0x188);
  v50 = v49(v48);
  v51 = (*((*v6 & *v1) + 0xD8))(v50);
  if (v51)
  {
    v52 = v51;
    v53 = v51 & 0xFFFFFFFFFFFFFF8;
    v70 = v49;
    if (v51 >> 62)
    {
      v54 = __CocoaSet.count.getter();
      if (v54)
      {
LABEL_46:
        v7 = 0;
        v55 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v52 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x24C1FC540](v7, v52);
          }

          else
          {
            if (v7 >= *(v53 + 16))
            {
              goto LABEL_57;
            }

            v56 = *(v52 + 8 * v7 + 32);
          }

          v1 = v56;
          v19 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            break;
          }

          (*((*v6 & *v56) + 0xB8))(v55);

          ++v7;
          if (v19 == v54)
          {
            goto LABEL_62;
          }
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      v54 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
        goto LABEL_46;
      }
    }

LABEL_62:

    v20 = v71;
    v7 = v72;
    v49 = v70;
  }

  v57 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_columnViewControllers;
  swift_beginAccess();
  *(v66 + v57) = 0;

  v49(v58);
  if (!v20)
  {
LABEL_72:

    v1 = v66;
LABEL_73:
    v63 = (*((*v6 & *v1) + 0x140))(v18);
    if (v63)
    {
      v64 = v63;
      (*((*v6 & *v1) + 0xF0))();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
      v65 = Array._bridgeToObjectiveC()().super.isa;

      [v64 dataSource:v1 didUpdate:v65 animated:0];

      swift_unknownObjectRelease();
    }

    return;
  }

  v59 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x24C1FC540](v59, v7);
    }

    else
    {
      if (v59 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v60 = *(v7 + 8 * v59 + 32);
    }

    v61 = v60;
    v62 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    (*((*v6 & *v60) + 0x240))([v60 navigationItem]);

    ++v59;
    if (v62 == v20)
    {
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  type metadata accessor for DOCBrowserContainerController();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_80:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCBrowserNavigationDataSource.createColumnViewController(containerControllers:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for DOCBrowserContainerController();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v4 = [v2 provideColumnViewControllerWithContains_];
    swift_unknownObjectRelease();

    return v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t DOCBrowserNavigationDataSource.viewStyle.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCBrowserNavigationDataSource.viewStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyle;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 != a1)
  {
    v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x140))(v4);
    if (v6)
    {
      [v6 dataSource:v1 willSwitchFrom:*(v1 + v3) to:a1];
      swift_unknownObjectRelease();
    }
  }

  *(v1 + v3) = a1;
  DOCBrowserNavigationDataSource.viewStyle.didset(v5);
}

void (*DOCBrowserNavigationDataSource.viewStyle.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_viewStyle;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCBrowserNavigationDataSource.viewStyle.modify;
}

void DOCBrowserNavigationDataSource.viewStyle.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  if (v5 != v2)
  {
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x140))();
    v4 = v1[4];
    v3 = v1[5];
    if (v6)
    {
      [v6 dataSource:v1[4] willSwitchFrom:*(v4 + v3) to:v2];
      swift_unknownObjectRelease();
      v4 = v1[4];
      v3 = v1[5];
    }
  }

  *(v4 + v3) = v2;
  DOCBrowserNavigationDataSource.viewStyle.didset(v5);

  free(v1);
}

id DOCBrowserNavigationDataSource.__allocating_init(configuration:sourceObserver:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized DOCBrowserNavigationDataSource.init(configuration:sourceObserver:)(a1, a2);

  return v6;
}

id DOCBrowserNavigationDataSource.init(configuration:sourceObserver:)(void *a1, void *a2)
{
  v4 = specialized DOCBrowserNavigationDataSource.init(configuration:sourceObserver:)(a1, a2);

  return v4;
}

uint64_t DOCBrowserNavigationDataSource.description.getter()
{
  _StringGuts.grow(_:)(19);

  v9 = 0x72756F5361746144;
  v10 = 0xEB00000000286563;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x128))(v1);
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](539828265, 0xE400000000000000);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for DOCBrowserNavigationDataSource();
  v3 = objc_msgSendSuper2(&v8, sel_description);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x24C1FAEA0](v4, v6);

  return v9;
}

id DOCBrowserNavigationDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCBrowserNavigationDataSource.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCBrowserNavigationDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void DOCBrowserNavigationDataSource.hierarchyController(_:prepareByDismissingSearchWithCompletion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = (*((*MEMORY[0x277D85000] & *v3) + 0x108))(a1);
  v5 = v4;
  v32 = MEMORY[0x277D84F90];
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_24:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_25:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v29 = v9;
    v10 = v8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v10, v5);
      }

      else
      {
        if (v10 >= *(v6 + 16))
        {
          goto LABEL_23;
        }

        v12 = *(v5 + 8 * v10 + 32);
      }

      v11 = v12;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v13 = (*((*MEMORY[0x277D85000] & *v12) + 0xE8))();
      if (!v13)
      {
        goto LABEL_6;
      }

      v14 = v13;
      type metadata accessor for DOCItemCollectionViewController(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        break;
      }

      v11 = v14;
LABEL_6:

LABEL_7:
      ++v10;
      if (v8 == v7)
      {
        v9 = v29;
        goto LABEL_26;
      }
    }

    v16 = (*((*MEMORY[0x277D85000] & *v15) + 0xBB8))();

    if (!v16)
    {
      goto LABEL_7;
    }

    MEMORY[0x24C1FB090]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v32;
  }

  while (v8 != v7);
LABEL_26:

  if (v9 >> 62)
  {
LABEL_43:
    v17 = __CocoaSet.count.getter();
    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

  v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_44:

    a2(v28);
    return;
  }

LABEL_28:
  v18 = 0;
  v19 = v9 & 0xC000000000000001;
  v20 = v9 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v19)
    {
      v21 = v9;
      v22 = MEMORY[0x24C1FC540](v18, v9);
    }

    else
    {
      if (v18 >= *(v20 + 16))
      {
        goto LABEL_42;
      }

      v21 = v9;
      v22 = *(v9 + 8 * v18 + 32);
    }

    v23 = v22;
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if ([v22 isActive])
    {
      break;
    }

    ++v18;
    v24 = v9 == v17;
    v9 = v21;
    if (v24)
    {
      goto LABEL_44;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v26 = *((*MEMORY[0x277D85000] & *v23) + 0x360);
  v27 = v23;

  v26(partial apply for thunk for @callee_guaranteed () -> (), v25, 0);
}

id DOCBrowserNavigationDataSource.hierarchyChangeTransitionCoordinator.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x140))();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 hierarchyChangeTransitionCoordinator];
  swift_unknownObjectRelease();
  return v2;
}

id DOCBrowserNavigationDataSource.createContainerController(location:source:isUserInteraction:isBrowsingTrash:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = (*((*MEMORY[0x277D85000] & *v4) + 0x158))();
  if (v9)
  {
    v10 = [v9 provideContainerControllerAt:a1 from:a2 isUserInteraction:a3 & 1 isBrowsingTrash:a4 & 1];
    swift_unknownObjectRelease();
    return v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double closure #2 in DOCBrowserNavigationDataSource.hierarchyController(_:prepareControllersFor:_:isUserInteraction:isBrowsingTrash:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);

    v15 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_9;
  }

  *(a1 + 16) = v9;
  if (v9)
  {
    return result;
  }

  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = (a2 + 40);
    do
    {
      v13 = *v12;
      v12 += 2;
      v14 = v13;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v10;
    }

    while (v10);
    v11 = v16;
  }

  if (v11 >> 62)
  {
    goto LABEL_12;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
  v15 = v11;
LABEL_9:

  a3(v15);

  return result;
}

void DOCBrowserNavigationDataSource.prepareController(_:for:completion:)(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v12);
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchTime();
  v52 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v14);
  v51 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16, v17);
  v59 = &v50 - v19;
  v20 = (*((*MEMORY[0x277D85000] & *v4) + 0x158))(v18);
  if (!v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = (v22 + 16);
  *(v22 + 24) = 0;
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a1;
  v24[5] = v22;
  swift_beginAccess();
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  *(v22 + 16) = partial apply for closure #1 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:);
  *(v22 + 24) = v24;

  v27 = a1;

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v25, v26);
  v28 = [v21 presentationContextShowsProvidersAsBrowserRoot];
  v58 = v9;
  if (v28)
  {
    v29 = 0;
    v30 = v61;
  }

  else
  {
    v31 = (*((*MEMORY[0x277D85000] & *v5) + 0xF0))();
    if (v31 >> 62)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v61;

    v29 = v32 == 0;
  }

  v33 = [v30 sourceIdentifier];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (((v29 | v38) & 1) == 0)
    {
      v42 = *((*MEMORY[0x277D85000] & *v27) + 0x178);

      v42(partial apply for closure #2 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:), v22);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v50 = static OS_dispatch_queue.main.getter();
      v43 = v51;
      static DispatchTime.now()();
      [*(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_configuration) thumbnailFetchingTimeOut];
      + infix(_:_:)();
      v61 = *(v52 + 8);
      v61(v43, v60);
      aBlock[4] = partial apply for closure #3 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:);
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_128;
      v44 = _Block_copy(aBlock);

      v45 = v53;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v46 = v55;
      v47 = v58;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v48 = v59;
      v49 = v50;
      MEMORY[0x24C1FB940](v59, v45, v46, v44);
      _Block_release(v44);
      swift_unknownObjectRelease();

      (*(v57 + 8))(v46, v47);
      (*(v54 + 8))(v45, v56);
      v61(v48, v60);

      return;
    }
  }

  v39 = *v23;
  if (*v23)
  {
    v40 = *(v22 + 24);

    v39(v41);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v39, v40);
  }

  swift_unknownObjectRelease();
}

uint64_t closure #1 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:)(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  (*((*MEMORY[0x277D85000] & *a3) + 0x178))(0, 0);
  swift_beginAccess();
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6, v7);
}

void closure #2 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:)(uint64_t a1, uint64_t a2)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3 || a1 == 4)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v3 = 0xE700000000000000;
  if (a1)
  {
    if (a1 == 1)
    {
      goto LABEL_15;
    }

LABEL_12:
    v4 = _convertErrorToNSError(_:)();
    v5 = [v4 domain];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    [v4 code];
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;

    MEMORY[0x24C1FAEA0](v9, v11);

    v3 = v8;
    if (v6 != 0x676E6964616F6CLL)
    {
      goto LABEL_15;
    }
  }

  if (v3 == 0xE700000000000000)
  {

    return;
  }

LABEL_15:
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    swift_beginAccess();
    v13 = *(a2 + 16);
    if (v13)
    {
      v14 = *(a2 + 24);

      v13(v15);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v13, v14);
    }
  }
}

void closure #3 in DOCBrowserNavigationDataSource.prepareController(_:for:completion:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);

    v2(v4);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2, v3);
  }
}

void DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:)(unint64_t a1, unint64_t a2, char a3)
{
  v4 = a1;
  v60 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_36:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v5 = MEMORY[0x277D84F90];
    if (a2)
    {
      goto LABEL_18;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_40;
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v5; ++i)
    {
      MEMORY[0x24C1FC540](i, v4);
      type metadata accessor for DOCBrowserContainerController();
      swift_dynamicCastClassUnconditional();
      v8 = swift_unknownObjectRetain();
      MEMORY[0x24C1FB090](v8);
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v10 = (v4 + 32);
    type metadata accessor for DOCBrowserContainerController();
    do
    {
      v11 = *v10;
      swift_dynamicCastClassUnconditional();
      v12 = v11;
      MEMORY[0x24C1FB090]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      ++v10;
      --v5;
    }

    while (v5);
  }

  v5 = v60;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_18:
  v59 = v6;
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_20;
    }

LABEL_39:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

LABEL_38:
  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_39;
  }

LABEL_20:
  v13 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v14 = v13;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1FC540](v14, a2);
      }

      else
      {
        if (v14 >= *(v6 + 16))
        {
          goto LABEL_35;
        }

        v15 = *(a2 + 8 * v14 + 32);
      }

      v16 = v15;
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      type metadata accessor for DOCBrowserContainerController();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v14;
      if (v13 == v4)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x24C1FB090]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v59;
  }

  while (v13 != v4);
LABEL_40:
  v17 = swift_allocObject();
  *(v17 + 16) = v57;
  *(v17 + 24) = v5;
  *(v17 + 32) = a3 & 1;
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *v57) + 0x188);
  swift_bridgeObjectRetain_n();
  v20 = v57;
  if (v19() != 3)
  {

    if (v5 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);

      v26 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
      v26 = v5;
    }

    (*((*v18 & *v20) + 0xF8))(v26);
    specialized closure #2 in DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:)(v20, v5, a3 & 1);

    return;
  }

  v56 = v17;
  v55 = v19;
  if (v5 >> 62)
  {
    goto LABEL_58;
  }

  v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
    do
    {
      v23 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x24C1FC540](v23, v5);
        }

        else
        {
          if (v23 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v24 = *(v5 + 8 * v23 + 32);
        }

        v25 = v24;
        v17 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        (*((*v18 & *v24) + 0x1C0))(1);

        ++v23;
        if (v17 == v22)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v21 = __CocoaSet.count.getter();
      v22 = v21;
    }

    while (v21);
  }

LABEL_59:
  if (v9)
  {

    v5 = v9;
  }

  v27 = (*((*v18 & *v20) + 0xD8))(v21);
  v28 = v5 >> 62;
  if (!v27)
  {
LABEL_73:
    v38 = (*((*v18 & *v20) + 0x158))(v27);
    if (!v38)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v39 = v38;
    type metadata accessor for DOCBrowserContainerController();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v9 = [v39 provideColumnViewControllerWithContains_];
    swift_unknownObjectRelease();

    v41 = (*((*v18 & *v20) + 0x140))();
    if (!v41)
    {
      goto LABEL_78;
    }

    v17 = v41;
    if (!v28)
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
LABEL_77:
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
      v42 = Array._bridgeToObjectiveC()().super.isa;

      [v17 dataSource:v20 willSet:v42 on:v9 animated:a3 & 1];

      swift_unknownObjectRelease();
      goto LABEL_78;
    }

LABEL_95:
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);

    _bridgeCocoaArray<A>(_:)();

    goto LABEL_77;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  if (!(v27 >> 62))
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    goto LABEL_72;
  }

  v36 = v27;
  v37 = __CocoaSet.count.getter();
  v27 = v36;
  if (!v37)
  {
LABEL_72:

    goto LABEL_73;
  }

LABEL_64:
  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_93;
  }

  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_95;
  }

  for (j = *(v27 + 32); ; j = MEMORY[0x24C1FC540](0))
  {
    v31 = j;

    v32 = *((*v18 & *v31) + 0xB8);
    v9 = v31;

    v34 = v32(v33);
    v35 = (*((*v18 & *v20) + 0x158))(v34);
    if (v35)
    {
      [v35 configureColumnViewController_];
      swift_unknownObjectRelease();
    }

LABEL_78:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_249BA0290;
    *(v43 + 32) = v9;
    v44 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_columnViewControllers;
    swift_beginAccess();
    *(v20 + v44) = v43;
    v45 = v9;

    (v55)(v46);
    if (v28)
    {
      break;
    }

    v47 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = v56;
    if (!v47)
    {
      goto LABEL_87;
    }

LABEL_80:
    v49 = __OFSUB__(v47, 1);
    v50 = v47 - 1;
    if (v49)
    {
      __break(1u);
LABEL_90:
      v51 = MEMORY[0x24C1FC540](v50, v5);
LABEL_85:
      v52 = v51;

      goto LABEL_88;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      goto LABEL_90;
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v50 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v51 = *(v5 + 8 * v50 + 32);
      goto LABEL_85;
    }

    __break(1u);
LABEL_93:
    ;
  }

  v47 = __CocoaSet.count.getter();
  v48 = v56;
  if (v47)
  {
    goto LABEL_80;
  }

LABEL_87:

  v52 = 0;
LABEL_88:
  v53 = swift_allocObject();
  *(v53 + 16) = partial apply for specialized closure #2 in DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:);
  *(v53 + 24) = v48;
  v54 = *((*v18 & *v45) + 0x1F0);

  v54(v52, a3 & 1, partial apply for thunk for @callee_guaranteed () -> (), v53);
}