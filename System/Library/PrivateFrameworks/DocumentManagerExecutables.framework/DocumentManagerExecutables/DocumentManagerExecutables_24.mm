uint64_t closure #1 in DOCSidebarViewController.initializeDiffableDataSourceSectionsIfNecessary()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v15 - v10;
  lazy protocol witness table accessor for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem();
  swift_unknownObjectRetain();
  v12 = NSDiffableDataSourceSectionSnapshot.init()();
  (*((*MEMORY[0x277D85000] & *a4) + 0x328))(v16, v12);
  if (v16[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMR);
    if (swift_dynamicCast())
    {
      v13 = v15[1];
      goto LABEL_8;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v16, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for nullDDS != -1)
  {
    swift_once();
  }

  v13 = static DOCSidebarViewController.nullDDS;
LABEL_8:
  v16[0] = a1;
  v16[1] = a2;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  (*(v8 + 8))(v11, v7);
  return swift_unknownObjectRelease();
}

void closure #1 in DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    DOCSidebarViewController.reloadOutlineDiffableData(animatingDifferences:reflectSelection:)(a2 & 1, a3 & 1);
  }
}

Swift::Void __swiftcall DOCSidebarViewController.reloadOutlineDiffableData(animatingDifferences:reflectSelection:)(Swift::Bool animatingDifferences, Swift::Bool reflectSelection)
{
  v3 = v2;
  v6 = [v2 viewIfLoaded];
  if (!v6)
  {
    return;
  }

  v7 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x388))())
  {
    v8 = DOCSidebarViewController.initializeDiffableDataSourceSectionsIfNecessary()();
  }

  if (!animatingDifferences || ![v2 doc_hasAppearedOrIsAppearing])
  {
    goto LABEL_12;
  }

  v9 = [v2 view];
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = v9;
  v11 = [v9 window];

  if (v11)
  {

    if ([v3 doc_isAppearing])
    {
      v12 = [v3 navigationController];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 topViewController];
        if (v14)
        {
          v15 = v14;
          type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
          v16 = v3;
          v17 = static NSObject.== infix(_:_:)();

          v18 = v17 ^ 1;
          goto LABEL_13;
        }
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

LABEL_13:
  v19 = DOCSidebarViewController.diffableDataSourceReloadability(_:)(1);
  if (!v19)
  {
    v23 = *((*v7 & *v3) + 0x350);
    v24 = v23(v38);
    if (__OFADD__(*v25, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v25;
      v24(v38, 0);
      (*((*v7 & *v3) + 0x360))(0);
      if (one-time initialization token for UI == -1)
      {
LABEL_19:
        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static Logger.UI);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 67109120;
          *(v29 + 4) = v18 & 1;
          _os_log_impl(&dword_2493AC000, v27, v28, "Sidebar: reloading diffable, animatingDifferences = %{BOOL}d", v29, 8u);
          MEMORY[0x24C1FE850](v29, -1, -1);
        }

        v30.n128_f64[0] = DOCSidebarViewController.initializeDiffableDataSourceSectionsIfNecessary()();
        v31 = (*((*v7 & *v3) + 0x248))(v30);
        v33 = MEMORY[0x28223BE20](v31, v32);
        (*(*v34 + 144))(partial apply for closure #1 in DOCSidebarViewController.reloadOutlineDiffableData(animatingDifferences:reflectSelection:), v33);

        v35 = v3;
        specialized DOCSidebarViewController.forEachVisibleSidebarItemCell(handler:)(v35, v35);

        DOCSidebarViewController.updatePreferredFocusIndexPath()();
        if (reflectSelection)
        {
          DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 0);
        }

        v36 = v23(v38);
        if (!__OFSUB__(*v37, 1))
        {
          --*v37;
          v36(v38, 0);
          return;
        }

        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }
    }

    swift_once();
    goto LABEL_19;
  }

  v20 = (*((*v7 & *v3) + 0x358))();
  v21 = *((*v7 & *v3) + 0x360);
  v22 = (v19 != 2) | v20 & 1u;

  v21(v22);
}

uint64_t closure #1 in DOCSidebarViewController.reloadOutlineDiffableData(animatingDifferences:reflectSelection:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v66 = &v59 - v15;
  ObjectType = swift_getObjectType();
  v17 = *((*MEMORY[0x277D85000] & *a4) + 0x440);
  v18 = swift_unknownObjectRetain();
  v65 = a4;
  v19 = v17(v18);
  v20 = *(a2 + 72);
  v67 = a1;
  v68 = a2;
  v21 = v20(v19, ObjectType, a2);
  v22 = *(v21 + 16);
  if (v22)
  {
    v60 = ObjectType;
    v61 = a5;
    v62 = v10;
    v63 = v9;
    *&v75[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = *&v75[0];
    v59 = v21;
    v24 = (v21 + 72);
    v25 = v67;
    do
    {
      v27 = *(v24 - 5);
      v26 = *(v24 - 4);
      v29 = *(v24 - 3);
      v28 = *(v24 - 2);
      v30 = *(v24 - 1);
      v31 = *v24;
      swift_unknownObjectRetain();
      v69 = v28;
      outlined copy of DOCSidebarItem(v27, v26, v29, v28, v30, v31);
      *&v75[0] = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v34 = v33 + 1;
        v25 = v67;
        v23 = *&v75[0];
      }

      v24 += 48;
      *(v23 + 16) = v34;
      v35 = v23 + (v33 << 6);
      v36 = v68;
      *(v35 + 32) = v25;
      *(v35 + 40) = v36;
      *(v35 + 48) = v27;
      *(v35 + 56) = v26;
      v37 = v69;
      *(v35 + 64) = v29;
      *(v35 + 72) = v37;
      *(v35 + 80) = v30;
      *(v35 + 88) = v31;
      --v22;
    }

    while (v22);

    v9 = v63;
    v10 = v62;
    ObjectType = v60;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v25 = v67;
  }

  v38 = v68;
  if ((*(v68 + 64))(ObjectType, v68))
  {
    v39 = *(v68 + 32);
    swift_unknownObjectRetain();
    v40 = v39(ObjectType, v68);
    v38 = v68;
    v41 = v40;
    v42 = -1;
    v43 = v25;
    v44 = v68;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v41 = 1;
  }

  *&v74[0] = v43;
  *(&v74[0] + 1) = v44;
  memset(&v74[1], 0, 40);
  BYTE8(v74[3]) = v42;
  v75[0] = v74[0];
  v75[1] = 0u;
  v76[0] = 0u;
  *(v76 + 9) = *(&v74[2] + 9);
  lazy protocol witness table accessor for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem();
  NSDiffableDataSourceSectionSnapshot.init()();
  if (*(v23 + 16))
  {
    (*((*MEMORY[0x277D85000] & *v65) + 0x328))(&v71, v23);
    if (v73)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMR);
      if (swift_dynamicCast())
      {
        v45 = v70;
LABEL_19:
        v71 = v67;
        v72 = v38;
        v46 = v64;
        UICollectionViewDiffableDataSource.snapshot(for:)();

        v47 = v66;
        (*(v10 + 8))(v66, v9);
        (*(v10 + 32))(v47, v46, v9);
        specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(headerItem:expanded:childItems:)(v75, v41 & 1, v23);
        goto LABEL_20;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v71, &_sypSgMd, &_sypSgMR);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v45 = static DOCSidebarViewController.nullDDS;
    goto LABEL_19;
  }

LABEL_20:

  v48 = v38;
  v49 = *(v38 + 16);
  swift_unknownObjectRetain();
  v50 = v49(ObjectType, v48);
  swift_unknownObjectRelease();
  v51 = v65;
  v52 = MEMORY[0x277D85000];
  v53 = (*((*MEMORY[0x277D85000] & *v65) + 0x560))(&v71);
  specialized Set._Variant.remove(_:)(v50);
  v54 = v53(&v71, 0);
  (*((*v52 & *v51) + 0x328))(&v71, v54);
  if (v73)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMR);
    if (swift_dynamicCast())
    {
      v55 = v70;
      v56 = v68;
      goto LABEL_27;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(&v71, &_sypSgMd, &_sypSgMR);
  }

  v56 = v68;
  if (one-time initialization token for nullDDS != -1)
  {
    swift_once();
  }

  v55 = static DOCSidebarViewController.nullDDS;
LABEL_27:
  v71 = v67;
  v72 = v56;
  v57 = v66;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  outlined destroy of CharacterSet?(v74, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
  (*(v10 + 8))(v57, v9);
  return swift_unknownObjectRelease();
}

uint64_t specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(headerItem:expanded:childItems:)(__int128 *a1, char a2, uint64_t a3)
{
  v24 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v29 = *(a1 + 4);
  v27 = *(a1 + 6);
  v28 = *(a1 + 5);
  v26 = *(a1 + 56);
  v6 = a1[1];
  v45 = *a1;
  v46 = v6;
  v47[0] = a1[2];
  *(v47 + 9) = *(a1 + 41);
  specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(&v48);
  v7 = v48;
  v22 = *(&v49 + 1);
  v23 = v49;
  v8 = *&v50[8];
  v21 = *v50;
  v9 = *&v50[16];
  v20 = v50[24];
  v10 = a1[1];
  v39 = *a1;
  v40 = v10;
  v11 = *(a1 + 41);
  *v41 = a1[2];
  *&v41[9] = v11;
  v42 = v48;
  v43 = v49;
  v44[0] = *v50;
  *(v44 + 9) = *&v50[9];
  v25 = v45;
  v19 = v5;
  v18 = *(&v48 + 1);
  if (v45)
  {
    if (v48)
    {
      v32 = v48;
      v33 = v49;
      v34 = *v50;
      *&v35 = *&v50[16];
      BYTE8(v35) = v50[24];
      v51[0] = v45;
      v51[1] = v24;
      v51[2] = v4;
      v51[3] = v5;
      v51[4] = v29;
      v51[5] = v28;
      v51[6] = v27;
      v52 = v26;
      outlined init with copy of DOCGridLayout.Spec?(&v48, v31, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
      outlined init with copy of DOCGridLayout.Spec?(a1, v31, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
      v12 = specialized static DOCSidebarViewController.OutlineItem.== infix(_:_:)(v51, &v32);
      swift_unknownObjectRelease();
      outlined consume of DOCSidebarItem?(v23, v22, v21, v8, v9, v20);
      outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v48)
  {
LABEL_5:
    v36 = v42;
    v37 = v43;
    v38[0] = v44[0];
    *(v38 + 9) = *(v44 + 9);
    v32 = v39;
    v33 = v40;
    v34 = *v41;
    v35 = *&v41[16];
    outlined init with copy of DOCGridLayout.Spec?(&v48, v51, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
    outlined init with copy of DOCGridLayout.Spec?(a1, v51, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
    outlined destroy of CharacterSet?(&v32, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSg_AFtMd, _s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSg_AFtMR);
    v12 = 0;
    goto LABEL_7;
  }

  v12 = 1;
LABEL_7:
  v13 = *(specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter() + 16);

  if (v13)
  {
    v14 = specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
    NSDiffableDataSourceSectionSnapshot.delete(_:)(v14);
  }

  if ((v12 & 1) == 0)
  {
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_249B9A480;
      *(v15 + 32) = v7;
      *(v15 + 40) = v18;
      *(v15 + 48) = v23;
      *(v15 + 56) = v22;
      *(v15 + 64) = v21;
      *(v15 + 72) = v8;
      *(v15 + 80) = v9;
      *(v15 + 88) = v20;
      outlined init with copy of DOCGridLayout.Spec?(&v48, &v39, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
      swift_unknownObjectRetain();
      outlined copy of DOCSidebarItem?(v23, v22, v21, v8, v9, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
      NSDiffableDataSourceSectionSnapshot.delete(_:)(v15);
      swift_unknownObjectRelease();
      outlined consume of DOCSidebarItem?(v23, v22, v21, v8, v9, v20);
    }

    if (*a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_249B9A480;
      *(v16 + 32) = v25;
      *(v16 + 40) = v24;
      *(v16 + 48) = v4;
      *(v16 + 56) = v19;
      *(v16 + 64) = v29;
      *(v16 + 72) = v28;
      *(v16 + 80) = v27;
      *(v16 + 88) = v26;
      v40 = 0u;
      memset(v41, 0, 25);
      v39 = 0u;
      outlined init with copy of DOCGridLayout.Spec?(a1, v31, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
      swift_unknownObjectRetain();
      outlined copy of DOCSidebarItem?(v4, v19, v29, v28, v27, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
      NSDiffableDataSourceSectionSnapshot.append(_:to:)();
      swift_unknownObjectRelease();

      outlined consume of DOCSidebarItem?(v4, v19, v29, v28, v27, v26);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(expanded:)(a2 & 1);
  return outlined destroy of CharacterSet?(&v48, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
}

uint64_t specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(headerItem:expanded:childItems:)(uint64_t a1, char a2, uint64_t a3)
{
  specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(v21);
  outlined init with copy of DOCGridLayout.Spec?(a1, &v16, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v21, v19, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
  if (!*(&v16 + 1))
  {
    if (!*(&v19[0] + 1))
    {
      outlined destroy of CharacterSet?(&v16, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
      v5 = 1;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  outlined init with copy of DOCGridLayout.Spec?(&v16, &v13, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
  if (!*(&v19[0] + 1))
  {
    outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(&v13);
LABEL_8:
    outlined destroy of CharacterSet?(&v16, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSg_AHtMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSg_AHtMR);
    v5 = 0;
    goto LABEL_11;
  }

  v11[0] = v19[0];
  v11[1] = v19[1];
  v12[0] = v20[0];
  *(v12 + 9) = *(v20 + 9);
  if (v13 == v19[0])
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(v11);
  outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(&v13);
  outlined destroy of CharacterSet?(&v16, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
LABEL_11:
  v6 = *(specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter() + 16);

  if (v6)
  {
    v7 = specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
    NSDiffableDataSourceSectionSnapshot.delete(_:)(v7);
  }

  if ((v5 & 1) == 0)
  {
    outlined init with copy of DOCGridLayout.Spec?(v21, &v13, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
    if (*(&v13 + 1))
    {
      v16 = v13;
      v17 = v14;
      v18[0] = v15[0];
      *(v18 + 9) = *(v15 + 9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_249B9A480;
      outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(&v16, v8 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
      NSDiffableDataSourceSectionSnapshot.delete(_:)(v8);

      outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(&v16);
    }

    else
    {
      outlined destroy of CharacterSet?(&v13, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
    }

    outlined init with copy of DOCGridLayout.Spec?(a1, &v13, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
    if (*(&v13 + 1))
    {
      v16 = v13;
      v17 = v14;
      v18[0] = v15[0];
      *(v18 + 9) = *(v15 + 9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_249B9A480;
      outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(&v16, v9 + 32);
      v14 = 0u;
      memset(v15, 0, 25);
      v13 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
      NSDiffableDataSourceSectionSnapshot.append(_:to:)();

      outlined destroy of CharacterSet?(&v13, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
      outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(&v16);
    }

    else
    {
      outlined destroy of CharacterSet?(&v13, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(expanded:)(a2 & 1);
  return outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
}

Swift::Void __swiftcall DOCSidebarViewController.updateContentsOfAllVisibleCells()()
{
  v1 = v0;
  specialized DOCSidebarViewController.forEachVisibleSidebarItemCell(handler:)(v1, v1);
}

char *DOCSidebarViewController.updateDiffableDataSourceByInsertingFavorites(_:at:)(unint64_t a1, uint64_t a2)
{
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
  v101 = *(v102 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v102, v5);
  v8 = &v93 - v7;
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v2) + 0x248);
  v103 = v2;
  v11 = v10(v6);
  v12 = (*(*v11 + 136))(2);
  v111 = v13;

  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_16:
    swift_unknownObjectRetain();
    v114 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_3:
  *&v125 = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v113 = a2;
    v16 = v8;
    v17 = v125;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        v19 = MEMORY[0x24C1FC540](v18, a1);
        *&v125 = v17;
        v20 = v12;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        swift_unknownObjectRetain();
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v17 = v125;
        }

        ++v18;
        *(v17 + 16) = v22 + 1;
        v23 = v17 + (v22 << 6);
        v24 = v111;
        *(v23 + 32) = v20;
        *(v23 + 40) = v24;
        *(v23 + 48) = v19;
        *(v23 + 56) = 0u;
        *(v23 + 72) = 0u;
        *(v23 + 88) = 0;
        v12 = v20;
      }

      while (v14 != v18);
    }

    else
    {
      v25 = (a1 + 32);
      do
      {
        v26 = *v25;
        *&v125 = v17;
        v27 = v17;
        v29 = *(v17 + 16);
        v28 = *(v17 + 24);
        swift_unknownObjectRetain();
        v30 = v26;
        if (v29 >= v28 >> 1)
        {
          v33 = v30;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v30 = v33;
          v27 = v125;
        }

        *(v27 + 16) = v29 + 1;
        v31 = v27 + (v29 << 6);
        v32 = v111;
        *(v31 + 32) = v12;
        *(v31 + 40) = v32;
        *(v31 + 48) = v30;
        *(v31 + 56) = 0u;
        *(v31 + 72) = 0u;
        ++v25;
        *(v31 + 88) = 0;
        --v14;
        v17 = v27;
      }

      while (v14);
    }

    v114 = v17;
    v8 = v16;
    v9 = MEMORY[0x277D85000];
LABEL_17:
    v34 = IndexPath.row.getter();
    ObjectType = swift_getObjectType();
    v36 = v12;
    isUniquelyReferenced_nonNull_native = (*(v111 + 64))();
    if (__OFSUB__(v34, isUniquelyReferenced_nonNull_native & 1))
    {
      goto LABEL_61;
    }

    v104 = v34 - (isUniquelyReferenced_nonNull_native & 1);
    v98 = ObjectType;
    v40 = (*v9 & *v103) + 808;
    v100 = *((*v9 & *v103) + 0x328);
    v99 = v40;
    v100(&v125);
    if (v126)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMR);
      if (swift_dynamicCast())
      {
        v41 = v116;
        goto LABEL_25;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v125, &_sypSgMd, &_sypSgMR);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v41 = static DOCSidebarViewController.nullDDS;
LABEL_25:
    *&v125 = v12;
    *(&v125 + 1) = v111;
    UICollectionViewDiffableDataSource.snapshot(for:)();

    v36 = v8;
    specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(&v125);
    isUniquelyReferenced_nonNull_native = specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter();
    v39 = v104;
    if (v104 < 0)
    {
      goto LABEL_62;
    }

    v42 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v42 < v104)
    {
      goto LABEL_63;
    }

    v109 = isUniquelyReferenced_nonNull_native;
    if (v42 == v104)
    {
      v44 = v104;

      v110 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native + 32, 0, (2 * v104) | 1);
      v110 = isUniquelyReferenced_nonNull_native;
      v44 = *(isUniquelyReferenced_nonNull_native + 16);
    }

    v36 = v114;
    v96 = v12;
    v97 = v8;
    if (v44)
    {
      v45 = 0;
      v39 = v110 + 48;
      v94 = v44 - 1;
      v105 = MEMORY[0x277D84F90];
      v106 = v44;
      v95 = v110 + 48;
      do
      {
        v46 = v39 + (v45 << 6);
        while (1)
        {
          if (v45 >= *(v110 + 16))
          {
            __break(1u);
            goto LABEL_60;
          }

          v112 = &v93;
          v48 = *(v46 - 16);
          v47 = *(v46 - 8);
          v50 = *v46;
          v49 = *(v46 + 8);
          v52 = *(v46 + 16);
          v51 = *(v46 + 24);
          v53 = *(v46 + 32);
          v54 = *(v46 + 40);
          v113 = v45 + 1;
          v116 = v48;
          v117 = v47;
          v108 = v47;
          v118 = v50;
          v119 = v49;
          v120 = v52;
          v121 = v51;
          v122 = v53;
          v123 = v54;
          v107 = v45;
          MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v43);
          *(&v93 - 2) = &v116;
          swift_unknownObjectRetain();
          outlined copy of DOCSidebarItem?(v50, v49, v52, v51, v53, v54);
          v36 = v114;
          if ((specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v93 - 4), v114) & 1) == 0)
          {
            break;
          }

          swift_unknownObjectRelease();
          outlined consume of DOCSidebarItem?(v50, v49, v52, v51, v53, v54);
          v46 += 64;
          v45 = v113;
          v39 = &v127;
          if (v106 == v113)
          {
            goto LABEL_44;
          }
        }

        v55 = v105;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v55;
        v124 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1);
          v36 = v114;
          v56 = v124;
        }

        v57 = v108;
        v59 = v56[2];
        v58 = v56[3];
        v60 = (v59 + 1);
        if (v59 >= v58 >> 1)
        {
          v112 = (v59 + 1);
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
          v60 = v112;
          v57 = v108;
          v36 = v114;
          v56 = v124;
        }

        v56[2] = v60;
        v105 = v56;
        v61 = &v56[8 * v59];
        v61[4] = v48;
        v61[5] = v57;
        v61[6] = v50;
        v61[7] = v49;
        v61[8] = v52;
        v61[9] = v51;
        v61[10] = v53;
        *(v61 + 88) = v54;
        v39 = v95;
        v45 = v113;
      }

      while (v94 != v107);
    }

    else
    {
      v105 = MEMORY[0x277D84F90];
    }

LABEL_44:

    isUniquelyReferenced_nonNull_native = v109;
    v39 = *(v109 + 16);
    v38 = v104;
    if (v39 < v104)
    {
      goto LABEL_64;
    }

    if (v104)
    {
      goto LABEL_65;
    }

    for (; v39; isUniquelyReferenced_nonNull_native = v83)
    {
      v63 = 0;
      v64 = isUniquelyReferenced_nonNull_native + 48;
      v107 = v39;
      v95 = v39 - 1;
      v39 = &v127;
      v106 = MEMORY[0x277D84F90];
      v109 = isUniquelyReferenced_nonNull_native;
      v104 = isUniquelyReferenced_nonNull_native + 48;
LABEL_48:
      v65 = v64 + (v63 << 6);
      while (v63 < *(isUniquelyReferenced_nonNull_native + 16))
      {
        v112 = &v93;
        v67 = *(v65 - 16);
        v66 = *(v65 - 8);
        v68 = *v65;
        v69 = *(v65 + 8);
        v70 = *(v65 + 16);
        v71 = *(v65 + 24);
        v72 = *(v65 + 32);
        v73 = *(v65 + 40);
        v113 = v63 + 1;
        v116 = v67;
        v117 = v66;
        v110 = v66;
        v118 = v68;
        v119 = v69;
        v120 = v70;
        v121 = v71;
        v122 = v72;
        v123 = v73;
        v108 = v63;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v62);
        *(&v93 - 2) = &v116;
        swift_unknownObjectRetain();
        outlined copy of DOCSidebarItem?(v68, v69, v70, v71, v72, v73);
        v36 = v114;
        if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v93 - 4), v114) & 1) == 0)
        {
          v74 = v106;
          v75 = swift_isUniquelyReferenced_nonNull_native();
          v76 = v74;
          v124 = v74;
          if ((v75 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 16) + 1, 1);
            v36 = v114;
            v76 = v124;
          }

          isUniquelyReferenced_nonNull_native = v109;
          v77 = v110;
          v79 = *(v76 + 16);
          v78 = *(v76 + 24);
          v80 = (v79 + 1);
          if (v79 >= v78 >> 1)
          {
            v112 = (v79 + 1);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
            v80 = v112;
            v77 = v110;
            isUniquelyReferenced_nonNull_native = v109;
            v36 = v114;
            v76 = v124;
          }

          *(v76 + 16) = v80;
          v106 = v76;
          v81 = v76 + (v79 << 6);
          *(v81 + 32) = v67;
          *(v81 + 40) = v77;
          *(v81 + 48) = v68;
          *(v81 + 56) = v69;
          *(v81 + 64) = v70;
          *(v81 + 72) = v71;
          *(v81 + 80) = v72;
          *(v81 + 88) = v73;
          v39 = v108;
          v64 = v104;
          v63 = v113;
          if (v95 != v108)
          {
            goto LABEL_48;
          }

          goto LABEL_67;
        }

        swift_unknownObjectRelease();
        outlined consume of DOCSidebarItem?(v68, v69, v70, v71, v72, v73);
        v65 += 64;
        v39 = v113;
        v63 = v113;
        isUniquelyReferenced_nonNull_native = v109;
        if (v107 == v113)
        {
          goto LABEL_67;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      specialized _copyCollectionToContiguousArray<A>(_:)(isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native + 32, v38, (2 * v39) | 1);
      v83 = v82;

      v39 = *(v83 + 16);
    }

    v106 = MEMORY[0x277D84F90];
LABEL_67:

    v115 = v105;
    specialized Array.append<A>(contentsOf:)(v36);
    specialized Array.append<A>(contentsOf:)(v106);
    v84 = v115;
    v85 = v96;
    v86 = (*(v111 + 32))(v98);
    v87 = v97;
    specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(headerItem:expanded:childItems:)(&v125, v86 & 1, v84);

    v88 = swift_unknownObjectRelease();
    (v100)(&v116, v88);
    if (v119)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMR);
      v89 = swift_dynamicCast();
      v90 = v102;
      v91 = v101;
      if (v89)
      {
        v92 = v124;
LABEL_74:
        v116 = v85;
        v117 = v111;
        UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

        outlined destroy of CharacterSet?(&v125, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVSgMR);
        (*(v91 + 8))(v87, v90);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v116, &_sypSgMd, &_sypSgMR);
      v90 = v102;
      v91 = v101;
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v92 = static DOCSidebarViewController.nullDDS;
    goto LABEL_74;
  }

  __break(1u);
  return result;
}

void specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
  v2 = NSDiffableDataSourceSectionSnapshot.items.getter();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    v6 = *(v2 + 72);
    v7 = *(v2 + 80);
    v8 = *(v2 + 88);
    v11 = *(v2 + 32);
    swift_unknownObjectRetain();
    outlined copy of DOCSidebarItem?(v3, v4, v5, v6, v7, v8);

    if (v8 == 255)
    {
      v9 = -1;
      v10 = v11;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    outlined consume of DOCSidebarItem?(v3, v4, v5, v6, v7, v8);
  }

  else
  {
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v9 = 0;
  v10 = 0uLL;
LABEL_7:
  *a1 = v10;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v9;
}

void specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
  v2 = NSDiffableDataSourceSectionSnapshot.items.getter();
  if (*(v2 + 16))
  {
    outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(v2 + 32, v5);

    *&v9[9] = *&v6[9];
    v7 = v5[0];
    v8 = v5[1];
    *v9 = *v6;
    if (v6[24])
    {
      v3 = v8;
      *a1 = v7;
      a1[1] = v3;
      a1[2] = *v9;
      v4 = *&v9[9];
    }

    else
    {
      outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(&v7);
      v4 = 0uLL;
      *a1 = 0u;
      a1[1] = 0u;
      a1[2] = 0u;
    }

    *(a1 + 41) = v4;
  }

  else
  {

    *(a1 + 41) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }
}

double DOCSidebarViewController.commitDeletionOfSidebarItem(_:in:animatingDeletionOfItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = (*(a3 + 16))(ObjectType, a3);
  v11 = *(**(v4 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

  v12 = v11(v10);

  if (closure #1 in DOCSidebarViewController.commitDeletionOfSidebarItem(_:in:animatingDeletionOfItem:)(v12, a1, v4, a4))
  {
    v13 = (*((*MEMORY[0x277D85000] & *v4) + 0x550))();
    v14 = specialized Set.contains(_:)(v10, v13);

    if (*(v5 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
    {
      DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)((v14 & 1) == 0, 1);
    }

    else
    {
      DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
    }
  }

  return result;
}

uint64_t closure #1 in DOCSidebarViewController.commitDeletionOfSidebarItem(_:in:animatingDeletionOfItem:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v9 = *(v8 - 8);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = &v34 - v12;
  v14 = MEMORY[0x277D85000];
  v15 = (*((*MEMORY[0x277D85000] & *a3) + 0x440))(v11);
  (*(*a1 + 400))(a2, v15);
  v16 = *a4;
  if (*a4)
  {
    v17 = v8;
    v36 = v9;
    v18 = a4[1];
    v19 = *((*v14 & *a3) + 0x328);
    v20 = *(a4 + 1);
    v42[0] = *a4;
    v21 = *(a4 + 2);
    v42[1] = v20;
    v43[0] = v21;
    *(v43 + 9) = *(a4 + 41);
    v22 = outlined init with copy of DOCSidebarViewController.OutlineItem(v42, &v40);
    v35 = v19;
    v19(v38, v22);
    if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMR);
      if (swift_dynamicCast())
      {
        v23 = v40;
        goto LABEL_9;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v38, &_sypSgMd, &_sypSgMR);
    }

    if (one-time initialization token for nullDDS != -1)
    {
      swift_once();
    }

    v23 = static DOCSidebarViewController.nullDDS;
LABEL_9:
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249B9A480;
    v44[0] = v16;
    v44[1] = v18;
    v26 = *(a4 + 2);
    v40 = *(a4 + 1);
    v25 = v40;
    v41[0] = v26;
    *(v41 + 9) = *(a4 + 41);
    v27 = *(v41 + 9);
    *(v24 + 32) = v16;
    *(v24 + 40) = v18;
    *(v24 + 48) = v25;
    *(v24 + 64) = v26;
    *(v24 + 73) = v27;
    outlined init with copy of DOCSidebarViewController.OutlineSection(v44, v38);
    outlined init with copy of DOCGridLayout.Spec?(&v40, v38, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v24);

    v35(v38, v28);
    if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC14OutlineSectionVAF0L4ItemVGMR);
      v29 = swift_dynamicCast();
      v30 = v36;
      v31 = &OBJC_IVAR___DOCTagRenderingRequest__selectionOutlineColor;
      if (v29)
      {
        v32 = v37;
LABEL_16:
        dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

        outlined destroy of DOCSidebarViewController.OutlineSection(v44);
        outlined destroy of CharacterSet?(&v40, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        (*(v30 + 8))(v13, v17);
        goto LABEL_17;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v38, &_sypSgMd, &_sypSgMR);
      v30 = v36;
      v31 = &OBJC_IVAR___DOCTagRenderingRequest__selectionOutlineColor;
    }

    if (*(v31 + 400) != -1)
    {
      swift_once();
    }

    v32 = static DOCSidebarViewController.nullDDS;
    goto LABEL_16;
  }

LABEL_17:
  DOCSidebarViewController.updatePreferredFocusIndexPath()();
  return 0;
}

id DOCSidebarViewController.collectionViewLayout.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  result = objc_msgSendSuper2(&v4, sel_collectionView);
  if (result)
  {
    v2 = result;
    v3 = [result collectionViewLayout];

    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.configureLayout()()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(MEMORY[0x277D752B8]);
  aBlock[4] = partial apply for closure #1 in DOCSidebarViewController.configureLayout();
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  aBlock[3] = &block_descriptor_22_0;
  v3 = _Block_copy(aBlock);

  v4 = [v2 initWithSectionProvider_];
  _Block_release(v3);

  v7.receiver = v0;
  v7.super_class = type metadata accessor for DOCSidebarViewController(0);
  v5 = objc_msgSendSuper2(&v7, sel_collectionView);
  if (v5)
  {
    v6 = v5;
    [v5 setCollectionViewLayout_];
  }

  else
  {
    __break(1u);
  }
}

void *closure #1 in DOCSidebarViewController.configureLayout()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v46 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v50 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v38 - v21;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    DOCSidebarViewController.diffableSnapshot()();
    MEMORY[0x24C1F80E0](0, a1);
    v25 = IndexPath.section.getter();
    v49 = v19;
    v26 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    if ((v25 & 0x8000000000000000) != 0 || v25 >= *(v26 + 16))
    {

      (*(v15 + 8))(v18, v14);
      (*(v50 + 8))(v22, v49);
      return 0;
    }

    v40 = *(v26 + 16 * v25 + 32);
    swift_unknownObjectRetain();

    (*(v15 + 8))(v18, v14);
    v27 = [v24 traitCollection];
    v39 = [v27 sourceOutlineStyle];

    ObjectType = swift_getObjectType();
    v29 = *(&v40 + 1);
    v30 = *(*(&v40 + 1) + 64);
    swift_unknownObjectRetain();
    v31 = v30(ObjectType, v29);
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D74D50];
    if (v39 != 1)
    {
      v32 = MEMORY[0x277D74D70];
    }

    (*(v41 + 104))(v10, *v32, v7);
    v33 = v46;
    UICollectionLayoutListConfiguration.init(appearance:)();
    v34 = MEMORY[0x277D74D98];
    if ((v31 & 1) == 0)
    {
      v34 = MEMORY[0x277D74DA0];
    }

    (*(v43 + 104))(v42, *v34, v44);
    UICollectionLayoutListConfiguration.headerMode.setter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = v24;
    UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    UICollectionLayoutListConfiguration._willBeginSwipingHandler.setter();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    UICollectionLayoutListConfiguration._didEndSwipingHandler.setter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutSection, 0x277CFB868);
    v36 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    v51 = v40;
    v37 = v49;
    if (NSDiffableDataSourceSnapshot.numberOfItems(inSection:)() <= 0)
    {
      if (one-time initialization token for disableWorkaroundFor75093950 != -1)
      {
        swift_once();
      }

      if (disableWorkaroundFor75093950)
      {
        swift_unknownObjectRelease();

        (*(v47 + 8))(v33, v48);
        (*(v50 + 8))(v22, v37);
        return 0;
      }

      [v36 contentInsets];
      [v36 setContentInsets_];
      [v36 contentInsets];
      [v36 setContentInsets_];
    }

    swift_unknownObjectRelease();

    (*(v47 + 8))(v33, v48);
    (*(v50 + 8))(v22, v37);
    return v36;
  }

  return result;
}

uint64_t NSDiffableDataSourceSnapshot<>.outlineSection(at:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = IndexPath.section.getter();
  NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if (v5 < 0)
  {

    v6 = *(a2 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
    if (v5 < MEMORY[0x24C1FB170]())
    {
      Array.subscript.getter();

      v7 = *(*(v6 - 8) + 56);
      v8 = a3;
      v9 = 0;
      goto LABEL_7;
    }
  }

  v7 = *(*(v6 - 8) + 56);
  v8 = a3;
  v9 = 1;
LABEL_7:

  return v7(v8, v9, 1, v6);
}

id DOCSidebarViewController.outlineStyle.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 sourceOutlineStyle];

  return v2;
}

id closure #1 in closure #1 in DOCSidebarViewController.configureLayout()(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D75AD8]) init];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v7;
  }

  v9 = Strong;
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(&v17);
  if (!v17)
  {
    (*(v3 + 8))(v6, v2);
LABEL_11:

    return v7;
  }

  v19[0] = v17;
  *&v19[1] = *v18;
  *&v19[3] = *&v18[16];
  *&v19[5] = *&v18[32];
  v20 = v18[48];
  *&v22[9] = *&v18[33];
  v21 = *&v18[8];
  *v22 = *&v18[24];
  if (v18[48] == 255)
  {
    (*(v3 + 8))(v6, v2);
    v23 = *v19;
    outlined destroy of DOCSidebarViewController.OutlineSection(&v23);
    goto LABEL_11;
  }

  v16 = MEMORY[0x277D84F90];
  v10 = DOCSidebarViewController.actionForSwipeToDelete(of:)(v19);
  if (v10)
  {
    v11 = v10;
    MEMORY[0x24C1FB090]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15[1] = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextualAction, 0x277D753C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [objc_opt_self() configurationWithActions_];

  v23 = *v19;
  outlined destroy of DOCSidebarViewController.OutlineSection(&v23);
  outlined destroy of CharacterSet?(&v21, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSDiffableDataSourceSnapshot<>.outlineSection(at:)(a2, v10);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v5);
    v16 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    v17 = IndexPath.item.getter();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = *(a2 + 24);
      if (v17 < MEMORY[0x24C1FB170](v16, v18))
      {
        Array.subscript.getter();

        (*(v11 + 8))(v15, v5);
        return (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
      }
    }

    (*(v11 + 8))(v15, v5);
  }

  return (*(*(*(a2 + 24) - 8) + 56))(a3, 1, 1, *(a2 + 24));
}

void closure #2 in closure #1 in DOCSidebarViewController.configureLayout()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    type metadata accessor for DOCSidebarViewController.SwipeToDeletePresentationContext();
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x478))();
    if (!(*((*v4 & *v2) + 0x440))(v5))
    {
      DOCSidebarViewController.setEditMode(_:animated:)(DocumentManagerExecutables_DOCCollectionViewEditMode_individualRow, 1);
    }
  }
}

void closure #3 in closure #1 in DOCSidebarViewController.configureLayout()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x470))();
    if (v4)
    {
      (*(*v4 + 112))(v4);
    }

    v5 = (*((*v3 & *v2) + 0x478))(0);
    if ((*((*v3 & *v2) + 0x440))(v5) == 1)
    {
      DOCSidebarViewController.setEditMode(_:animated:)(DocumentManagerExecutables_DOCCollectionViewEditMode_notEditing, 1);
    }
  }
}

void DOCSidebarViewController.reloadContentsOfCell(_:)(char *a1)
{
  DOCSidebarViewController.sidebarItem(for:)(a1, v4);
  if (v6 != 255)
  {
    v7[0] = v4[0];
    v7[1] = v4[1];
    v8 = v5;
    v9 = v6;
    v2 = DOCSidebarViewController.sidebarSection(for:)(a1);
    if (v2)
    {
      DOCSidebarViewController.updateContentsOfCell(_:withSidebarItem:sidebarSection:)(a1, v7, v2, v3);
      swift_unknownObjectRelease();
    }

    outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
  }
}

uint64_t DOCSidebarViewController.updateIconOfCell(_:withSidebarItem:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a2;
  v7 = *(a2 + 40);
  if (*(a2 + 40))
  {
    v8 = v7 == 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = v6;
    v10 = [objc_msgSend(*(v3 + OBJC_IVAR___DOCSidebarViewController_configuration) sourceListUI)];

    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = v11;
LABEL_15:
      v18 = type metadata accessor for DOCSidebarItemCell.RawImageIconProvider();
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      *(v15 + 24) = v12 & 1;
      v26 = v18;
      v27 = &protocol witness table for DOCSidebarItemCell.RawImageIconProvider;

      goto LABEL_16;
    }

LABEL_10:
    v16 = DOCSidebarItem.sidebarStaticIcon.getter();
    if (v16)
    {
      v12 = v17;
      v11 = v16;
      v13 = v11;
    }

    else
    {
      if (one-time initialization token for blank != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = byte_27EF185B0;
      v11 = static DOCSidebarIcon.blank;
      v13 = 0;
    }

    goto LABEL_15;
  }

  if (v7 != 2)
  {
    goto LABEL_10;
  }

  v14 = type metadata accessor for DOCSidebarItemCell.TagIconProvider();
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = [v6 labelIndex] == 0;
  v26 = v14;
  v27 = &protocol witness table for DOCSidebarItemCell.TagIconProvider;
LABEL_16:
  v25[0] = v15;
  v24[3] = &unk_285C922E8;
  v24[4] = &protocol witness table for DOCSidebarViewController.CacheableIconProvider;
  v19 = swift_allocObject();
  v24[0] = v19;
  outlined init with copy of DOCSidebarItemIconProvider(v25, v19 + 72);
  swift_unknownObjectWeakInit();
  v20 = *(a2 + 16);
  *(v19 + 24) = *a2;
  *(v19 + 40) = v20;
  *(v19 + 49) = *(a2 + 25);
  v21 = direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  outlined init with copy of DOCSidebarItem(a2, &v23);
  outlined assign with copy of DOCSidebarItemIconProvider?(v24, a1 + v21);
  swift_endAccess();
  DOCSidebarItemCell.updateContentViewIcons()();
  outlined destroy of CharacterSet?(v24, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMR);
  return __swift_destroy_boxed_opaque_existential_0(v25);
}

void DOCSidebarViewController.updateEjectController(_:withSidebarItem:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    type metadata accessor for DOCFileProviderSource();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = type metadata accessor for DOCEjectionController();
      v8 = objc_allocWithZone(v7);
      swift_unknownObjectWeakInit();
      *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
      swift_unknownObjectWeakInit();
      *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
      *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = v6;
      swift_unknownObjectWeakAssign();
      outlined init with copy of DOCSidebarItem(a2, v24);
      outlined init with copy of DOCSidebarItem(a2, v24);
      outlined init with copy of DOCSidebarItem(a2, v24);
      outlined init with copy of DOCSidebarItem(a2, v24);
      v23.receiver = v8;
      v23.super_class = v7;
      v9 = v2;
      v10 = objc_msgSendSuper2(&v23, sel_init);
      v24[0] = v6;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = v10;
      v12 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      outlined destroy of DOCSidebarItem(a2);
      v13 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
      swift_beginAccess();
      v14 = *&v11[v13];
      *&v11[v13] = v12;

      v15 = direct field offset for DOCSidebarItemCell.ejectionController;
      swift_beginAccess();
      v16 = *(a1 + v15);
      *(a1 + v15) = v10;
      if (v16)
      {
        v17 = v11;
        v18 = v16;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {

LABEL_11:
          outlined destroy of DOCSidebarItem(a2);
          outlined destroy of DOCSidebarItem(a2);
          return;
        }

        if (!*(a1 + v15))
        {
LABEL_10:
          DOCSidebarItemCell.ejectionStateDidChange()();

          goto LABEL_11;
        }
      }

      else
      {
        v22 = v11;
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      goto LABEL_10;
    }
  }

  v20 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v21 = *(a1 + v20);
  *(a1 + v20) = 0;
  if (v21)
  {
    DOCSidebarItemCell.ejectionStateDidChange()();
  }
}

uint64_t DOCSidebarViewController.unseenIndicatorState(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  ObjectType = swift_getObjectType();
  if ((*(a3 + 16))(ObjectType, a3) == 3)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  result = (*((*MEMORY[0x277D85000] & *v3) + 0x428))(v9);
  if (result)
  {
    if ((*(result + 16) & 1) == 0)
    {

      return 0;
    }

    if (*(a1 + 40) == 1)
    {
      v11 = *a1;
      v12 = v6;
      DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
      v13 = [v11 identifier];
      v14 = specialized Set.contains(_:)();

      if ((v14 & 1) == 0 && [v11 status])
      {
        v15 = [v11 status];
        outlined destroy of DOCSidebarItem(a1);

        if (v15 != 2)
        {
          return 1;
        }

        return 2;
      }

      outlined destroy of DOCSidebarItem(a1);
    }

    return 2;
  }

  return result;
}

uint64_t DOCSidebarViewController.isCellEnabledForSelection(item:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    v11 = (*((*MEMORY[0x277D85000] & *v1) + 0x200))();
    v12 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v2, v11);

    return v12 & 1;
  }

  if (v3 == 5)
  {
    v10 = 0;
    return v10 & 1;
  }

  if (v3 != 1)
  {
LABEL_10:
    v10 = 1;
    return v10 & 1;
  }

  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x200))();
  type metadata accessor for DOCFileProviderSource();
  v6 = swift_dynamicCastClass();
  if (!v6 || (v7 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) == 0)
  {

    goto LABEL_10;
  }

  v8 = a1;
  outlined init with copy of DOCSidebarItem(a1, &v14);
  v9 = v7;
  v10 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v9, v5);

  outlined destroy of DOCSidebarItem(v8);
  return v10 & 1;
}

id DOCSidebarViewController.CacheableIconProvider.icon(with:cell:variant:)(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for blank != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    return static DOCSidebarIcon.blank;
  }

  v15 = Strong;
  v16 = *(v6 + 24);
  v45 = *(v6 + 8);
  v46[0] = v16;
  *(v46 + 9) = *(v6 + 33);
  v17 = DOCSidebarViewController.cachedIcon(requestedSize:variant:item:)(a3, &v45, a4, a5);
  if (v17)
  {
    v18 = v17;
LABEL_15:

    return v18;
  }

  v19 = *(v6 + 80);
  v20 = *(v6 + 88);
  __swift_project_boxed_opaque_existential_1((v6 + 56), v19);
  v21 = (*(v20 + 8))(a1, a2, a3, v19, v20, a4, a5, a6);
  v23 = v22;
  v24 = *((*MEMORY[0x277D85000] & *v15) + 0x3B0);
  v18 = v21;
  v25 = v24(v44);
  v27 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v27;
  v29 = v43;
  *v27 = 0x8000000000000000;
  v31 = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
  v32 = v29[2];
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v30;
  if (v29[3] >= v34)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

LABEL_18:
    specialized _NativeDictionary.copy()();
    goto LABEL_12;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
  v35 = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
  if ((v7 & 1) == (v36 & 1))
  {
    v31 = v35;
LABEL_12:
    *v27 = v43;

    v37 = *v27;
    if ((v7 & 1) == 0)
    {
      v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      specialized _NativeDictionary._insert(at:key:value:)(v31, &v45, v38, v37);
      outlined init with copy of DOCSidebarItem(&v45, &v43);
    }

    v39 = v37[7];
    v40 = a3;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v39 + 8 * v31);
    *(v39 + 8 * v31) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v23 & 1, v40, v41, a4, a5);

    *(v39 + 8 * v31) = v43;
    v25(v44, 0);
    goto LABEL_15;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id DOCSidebarViewController.cachedIcon(requestedSize:variant:item:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = (*((*MEMORY[0x277D85000] & *v4) + 0x3A0))();
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 32 * v13;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);

    if (v17 == a3 && v16 == a4)
    {
      return v18;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t NSDiffableDataSourceSnapshot<>.indexPath(forItem:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a4;
  v6 = *(a2 + 24);
  v7 = type metadata accessor for Optional();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v36 - v9;
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = *(v14 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(v43, v6, a3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19DOCUIOutlineSection_pMd, &_s26DocumentManagerExecutables19DOCUIOutlineSection_pMR);
  swift_dynamicCast();
  v21 = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v22)
  {
    goto LABEL_7;
  }

  v23 = v21;
  v24 = NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  if (v25)
  {
    goto LABEL_7;
  }

  v36 = v23;
  v37 = v24;
  v43[0] = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  v26 = v41;
  if ((*(v41 + 48))(v10, 1, v6) == 1)
  {
    (*(v38 + 8))(v10, v39);

LABEL_7:
    v31 = 1;
    v32 = v42;
LABEL_8:
    v33 = type metadata accessor for IndexPath();
    (*(*(v33 - 8) + 56))(v32, v31, 1, v33);
    return (*(v15 + 8))(v20, v14);
  }

  v27 = v40;
  (*(v26 + 32))(v40, v10, v6);
  v28 = v27;

  v29 = NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  if (v30)
  {
    (*(v26 + 8))(v27, v6);
    goto LABEL_7;
  }

  v35 = __OFSUB__(v37, v29);
  result = v37 - v29;
  v32 = v42;
  if (!v35)
  {
    if (result < 0)
    {
      (*(v26 + 8))(v28, v6);
      v31 = 1;
    }

    else
    {
      MEMORY[0x24C1F80E0]();
      (*(v26 + 8))(v28, v6);
      v31 = 0;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t specialized NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC18TestOutlineSectionVAH0mN4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC18TestOutlineSectionVAH0mN4ItemVGMR);
  result = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v14)
  {
    return 0;
  }

  if (__OFSUB__(result, 1))
  {
    __break(1u);
    return result;
  }

  MEMORY[0x24C1F80E0](0, result - 1);
  if (IndexPath.section.getter() < 0)
  {
LABEL_10:
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  v15 = IndexPath.section.getter();
  v16 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((v15 & 0x8000000000000000) != 0 || v15 >= *(v16 + 16))
  {

    goto LABEL_10;
  }

  v17 = v16 + 24 * v15;
  v18 = *(v17 + 32);
  v19 = *(v17 + 48);
  v20 = *(v17 + 40);

  if ((a4 & 1) != 0 && (v22[0] = v18, v22[1] = v20, v23 = v19, NSDiffableDataSourceSnapshot.numberOfItems(inSection:)() <= 0))
  {
    v21 = specialized NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(v18, v20, v19, 1);

    (*(v9 + 8))(v12, v8);
    return v21;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return v18;
  }
}

uint64_t specialized NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v11 = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  result = 0;
  if (v13)
  {
    return result;
  }

  if (__OFSUB__(v11, 1))
  {
    __break(1u);
    return result;
  }

  MEMORY[0x24C1F80E0](0, v11 - 1);
  if (IndexPath.section.getter() < 0)
  {
LABEL_10:
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v14 = IndexPath.section.getter();
  v15 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((v14 & 0x8000000000000000) != 0 || v14 >= *(v15 + 16))
  {

    goto LABEL_10;
  }

  v18[0] = *(v15 + 16 * v14 + 32);
  v16 = *&v18[0];
  swift_unknownObjectRetain();

  if ((a3 & 1) != 0 && (v18[1] = v18[0], NSDiffableDataSourceSnapshot.numberOfItems(inSection:)() <= 0))
  {
    v17 = specialized NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(v16, *(&v18[0] + 1), 1);
    swift_unknownObjectRelease();
    (*(v7 + 8))(v10, v6);
    return v17;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return v16;
  }
}

uint64_t NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)@<X0>(int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v33 = a2;
  v8 = *(a3 + 16);
  v9 = type metadata accessor for Optional();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v27 - v11;
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v23)
  {
    v24 = *(v34 + 56);

    return v24(a6, 1, 1, v8);
  }

  v28 = a6;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    return result;
  }

  MEMORY[0x24C1F80E0](0, result - 1);
  if (IndexPath.section.getter() < 0)
  {
    (*(v18 + 8))(v21, v17);
    return (*(v34 + 56))(v28, 1, 1, v8);
  }

  NSDiffableDataSourceSnapshot<>.outlineSection(at:)(a3, v12);
  if ((*(v34 + 48))(v12, 1, v8) == 1)
  {
    (*(v18 + 8))(v21, v17);
    (*(v31 + 8))(v12, v32);
    return (*(v34 + 56))(v28, 1, 1, v8);
  }

  v25 = *(v34 + 32);
  v25(v16, v12, v8);
  if ((v33 & 1) != 0 && NSDiffableDataSourceSnapshot.numberOfItems(inSection:)() < 1)
  {
    NSDiffableDataSourceSnapshot<>.outlineSection(aboveSection:visibleOnly:)(v16, 1, a3, v29, v30, v28);
    (*(v34 + 8))(v16, v8);
    return (*(v18 + 8))(v21, v17);
  }

  else
  {
    (*(v18 + 8))(v21, v17);
    v26 = v28;
    v25(v28, v16, v8);
    return (*(v34 + 56))(v26, 0, 1, v8);
  }
}

uint64_t NSDiffableDataSourceSnapshot<>.numberOfChildItems(inSection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v5)
  {
    return 0;
  }

  v7 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
  return v7 - ((*(a3 + 8))(*(a2 + 16), a3) & (v7 > 0));
}

double NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.first(where:)();

  return result;
}

uint64_t closure #1 in NSDiffableDataSourceSnapshot<>.outlineChildItem(representing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 24);
  v43 = *(a3 + 16);
  v30 = *(a3 + 32);
  v32 = v14;
  v29 = *(a3 + 40);
  v34[3] = a5;
  v34[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  outlined init with copy of DOCSidebarItemIconProvider(v34, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16DOCUIOutlineItem_pMd, &_s26DocumentManagerExecutables16DOCUIOutlineItem_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v34);
    v20 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
LABEL_8:
    outlined init with copy of DOCSidebarItem(a3, v35);
    outlined consume of DOCSidebarItem?(v17, v16, v19, v18, v20, 0xFFu);
    outlined consume of DOCSidebarItem?(v12, v13, v43, v32, v30, v29);
    v26 = 0;
    return v26 & 1;
  }

  v28 = v13;
  v17 = v36;
  v16 = v37;
  v19 = v38;
  v18 = v39;
  v20 = v40;
  v21 = v41;
  __swift_destroy_boxed_opaque_existential_0(v34);
  swift_unknownObjectRelease();
  if (v21 == 255)
  {
    v13 = v28;
    goto LABEL_8;
  }

  v43 = v8;
  v35[0] = v17;
  v35[1] = v16;
  v36 = v19;
  v37 = v18;
  v33 = v20;
  v38 = v20;
  v31 = v21;
  LOBYTE(v39) = v21;
  outlined init with copy of DOCSidebarItem(a3, v34);
  v22 = DOCSidebarItem.hashComparableValue.getter();
  v24 = v23;
  if (v22 == DOCSidebarItem.hashComparableValue.getter() && v24 == v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined destroy of DOCSidebarItem(a3);
  outlined consume of DOCSidebarItem?(v17, v16, v19, v18, v33, v31);
  return v26 & 1;
}

uint64_t NSDiffableDataSourceSnapshot<>.indexPathForAppendingItem(toSection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = v8;
    v12 = (*(a3 + 8))(*(a2 + 16), a3) & 1;
    v13 = NSDiffableDataSourceSnapshot<>.numberOfChildItems(inSection:)(a1, a2, a3);
    v14 = __OFADD__(v13, v12);
    result = v13 + v12;
    if (v14)
    {
      __break(1u);
      return result;
    }

    MEMORY[0x24C1F80E0](result, v11);
    v10 = 0;
  }

  v16 = type metadata accessor for IndexPath();
  v17 = *(*(v16 - 8) + 56);

  return v17(a4, v10, 1, v16);
}

void specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(expanded:)(int a1)
{
  specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(v12);
  v2 = v12[0];
  if (v12[0])
  {
    v4 = v12[1];
    v3 = v12[2];
    v5 = v12[3];
    v6 = v12[4];
    v7 = v12[5];
    v8 = v12[6];
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
    if ((NSDiffableDataSourceSectionSnapshot.isExpanded(_:)() ^ a1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
      v11 = a1;
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_249B9A480;
      *(v10 + 32) = v2;
      *(v10 + 40) = v4;
      *(v10 + 48) = v3;
      *(v10 + 56) = v5;
      *(v10 + 64) = v6;
      *(v10 + 72) = v7;
      *(v10 + 80) = v8;
      *(v10 + 88) = v9;
      swift_unknownObjectRetain();
      outlined copy of DOCSidebarItem?(v3, v5, v6, v7, v8, v9);
      if (v11)
      {
        NSDiffableDataSourceSectionSnapshot.expand(_:)(v10);
      }

      else
      {
        NSDiffableDataSourceSectionSnapshot.collapse(_:)(v10);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    outlined consume of DOCSidebarItem?(v3, v5, v6, v7, v8, v9);
  }
}

uint64_t specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(expanded:)(int a1)
{
  specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(v4);
  if (!*(&v4[0] + 1))
  {
    return outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
  }

  v6[0] = v4[0];
  v6[1] = v4[1];
  v7[0] = v5[0];
  *(v7 + 9) = *(v5 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
  if ((NSDiffableDataSourceSectionSnapshot.isExpanded(_:)() ^ a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_249B9A480;
    outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(v6, v2 + 32);
    if (a1)
    {
      NSDiffableDataSourceSectionSnapshot.expand(_:)(v2);
    }

    else
    {
      NSDiffableDataSourceSectionSnapshot.collapse(_:)(v2);
    }
  }

  return outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(v6);
}

uint64_t static DOCSidebarViewController.XCTest.TestOutlineSection.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int DOCSidebarViewController.XCTest.TestOutlineSection.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCSidebarViewController.XCTest.TestOutlineSection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCSidebarViewController.XCTest.TestOutlineSection(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCSidebarViewController.XCTest.TestOutlineSection(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t DOCSidebarViewController.XCTest.TestOutlineItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DOCSidebarViewController.XCTest.TestOutlineItem.outlineSection.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return outlined init with take of DOCGoToFolderCandidate(a1, v1 + 16);
}

uint64_t static DOCSidebarViewController.XCTest.TestOutlineItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int DOCSidebarViewController.XCTest.TestOutlineItem.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DOCSidebarViewController.XCTest.TestOutlineItem.init(identifier:outlineSection:isHeader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  result = outlined init with take of DOCGoToFolderCandidate(a3, a5 + 16);
  *(a5 + 56) = a4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCSidebarViewController.XCTest.TestOutlineItem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCSidebarViewController.XCTest.TestOutlineItem(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static DOCSidebarViewController.XCTest.state(for:)(_OWORD *a1)
{
  specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(v5);
  if (!*(&v5[0] + 1))
  {
    v3 = 1;
    goto LABEL_5;
  }

  result = outlined init with copy of DOCGridLayout.Spec?(v5, v4, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
  if (v4[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
    v3 = NSDiffableDataSourceSectionSnapshot.isExpanded(_:)();
    outlined destroy of DOCSidebarViewController.XCTest.TestOutlineItem(v4);
LABEL_5:
    specialized NSDiffableDataSourceSectionSnapshot<>.sectionContentItems.getter();
    specialized NSDiffableDataSourceSectionSnapshot<>.sectionHeaderItem.getter(a1);
    outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
    return v3 & 1;
  }

  __break(1u);
  return result;
}

uint64_t DOCSidebarViewController.XCTest.SectionSpec.section.getter()
{
  v1 = *v0;

  return v1;
}

__n128 DOCSidebarViewController.XCTest.SectionSpec.init(section:headerItem:childItems:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v6;
  *(a6 + 56) = *(a4 + 32);
  result = *(a4 + 41);
  *(a6 + 65) = result;
  *(a6 + 88) = a5;
  return result;
}

void static DOCSidebarViewController.XCTest.update(_:sectionSpecs:insertEmptySections:)(uint64_t a1, uint64_t a2, int a3)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMd, &_s5UIKit35NSDiffableDataSourceSectionSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC18TestOutlineSectionVAH0mN4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC18TestOutlineSectionVAH0mN4ItemVGMR);
  v14 = *(*(v13 - 8) + 8);
  v34 = a1;
  v14(a1, v13);
  v15 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v16 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC6XCTestC18TestOutlineSectionVAH0mN4ItemVGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables010DOCSidebarC10ControllerC6XCTestC18TestOutlineSectionVAH0mN4ItemVGMR));
  v33 = v16;
  v41 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v18 = *(a2 + 16);
  if (v18)
  {
    v19 = a2 + 32;
    v39 = v6;
    v20 = (v6 + 8);
    v21 = a2 + 32;
    v22 = v18;
    v40 = v20;
    do
    {
      outlined init with copy of DOCSidebarViewController.XCTest.SectionSpec(v21, &v48);
      v23 = lazy protocol witness table accessor for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem();
      NSDiffableDataSourceSectionSnapshot.init()();
      v45 = v48;
      LOBYTE(v46) = v49;

      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();
      v24 = v40;

      v25 = *v24;
      (*v24)(v12, v5);
      outlined destroy of DOCSidebarViewController.XCTest.SectionSpec(&v48);
      v21 += 96;
      --v22;
    }

    while (v22);
    v38 = v23;
    v36 = v12;
    v35 = (v39 + 32);
    v26 = v41;
    do
    {
      outlined init with copy of DOCSidebarViewController.XCTest.SectionSpec(v19, &v48);
      v29 = v48;
      v30 = v49;
      v31 = v50[8];
      if (v49 == 1)
      {
        outlined init with copy of DOCSidebarViewController.XCTest.TestOutlineItem(v50, &v45);
      }

      else
      {
        v46 = 0u;
        memset(v47, 0, sizeof(v47));
        v45 = 0u;
      }

      v39 = v18;
      NSDiffableDataSourceSectionSnapshot.init()();
      if (*(v31 + 16) || (v37 & 1) != 0)
      {
        v43 = v29;
        v44 = v30;
        v27 = v36;
        UICollectionViewDiffableDataSource.snapshot(for:)();
        v25(v42, v5);
        v28 = v27;
        v26 = v41;
        (*v35)(v42, v28, v5);
        specialized NSDiffableDataSourceSectionSnapshot<>.updateBySetting(headerItem:expanded:childItems:)(&v45, 1, v31);
      }

      v43 = v29;
      v44 = v30;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();
      v25(v42, v5);
      outlined destroy of CharacterSet?(&v45, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMd, &_s26DocumentManagerExecutables24DOCSidebarViewControllerC6XCTestC15TestOutlineItemVSgMR);
      outlined destroy of DOCSidebarViewController.XCTest.SectionSpec(&v48);
      v19 += 96;
      v18 = v39 - 1;
    }

    while (v39 != 1);
  }

  else
  {
    v26 = v41;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
}

void one-time initialization function for disableWorkaroundFor75093950()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001CLL, 0x8000000249BD9AF0);
  v2 = [v0 BOOLForKey_];

  disableWorkaroundFor75093950 = v2;
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t specialized static DOCSidebarViewController.OutlineItem.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  ObjectType = swift_getObjectType();
  if (((*(v4 + 104))(v5, v6, ObjectType, v4) & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v16 = a2[5];
  v18 = a2[6];
  v19 = *(a2 + 56);
  if (v13 == 255)
  {
    if (v19 == 255)
    {
      v27 = 1;
      return v27 & 1;
    }

    goto LABEL_8;
  }

  if (v19 == 255)
  {
LABEL_8:
    v37 = a2[2];
    v38 = a2[6];
    v28 = v8;
    v29 = v18;
    v30 = v19;
    outlined copy of DOCSidebarItem?(v14, v15, v17, v16, v29, v19);
    outlined copy of DOCSidebarItem?(v9, v28, v11, v10, v12, v13);
    outlined consume of DOCSidebarItem?(v9, v28, v11, v10, v12, v13);
    outlined consume of DOCSidebarItem?(v37, v15, v17, v16, v38, v30);
LABEL_9:
    v27 = 0;
    return v27 & 1;
  }

  v36 = a2[2];
  v20 = v8;
  v32 = v16;
  v21 = v16;
  v22 = v19;
  outlined copy of DOCSidebarItem?(v14, v15, v17, v21, v18, v19);
  v33 = v20;
  v34 = v11;
  v35 = v12;
  outlined copy of DOCSidebarItem?(v9, v20, v11, v10, v12, v13);
  v23 = DOCSidebarItem.hashComparableValue.getter();
  v25 = v24;
  if (v23 == DOCSidebarItem.hashComparableValue.getter() && v25 == v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined consume of DOCSidebarItem?(v36, v15, v17, v32, v18, v22);
  outlined consume of DOCSidebarItem?(v9, v33, v34, v10, v35, v13);
  return v27 & 1;
}

uint64_t partial apply for closure #3 in DOCSidebarViewController.configureDataSource()(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables016DOCSidebarHeaderD0CAF0iB10ControllerC11OutlineItemVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables016DOCSidebarHeaderD0CAF0iB10ControllerC11OutlineItemVGMR) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables014DOCSidebarItemD0CAF0iB10ControllerC07OutlineJ0VGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables014DOCSidebarItemD0CAF0iB10ControllerC07OutlineJ0VGMR) - 8);
  v11 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return closure #3 in DOCSidebarViewController.configureDataSource()(a1, a2, a3, v3 + v8, v11);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UICollectionView, @in_guaranteed IndexPath, @guaranteed DOCSidebarViewController.OutlineItem) -> (@owned UICollectionViewCell)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = *(v3 + 16);
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  v8[0] = a3[2];
  *(v8 + 9) = *(a3 + 41);
  return v4(a1, a2, v7);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(_OWORD *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v9[0] = v2[2];
  *(v9 + 9) = *(v2 + 41);
  return specialized closure #1 in Sequence<>.contains(_:)(v6, v8) & 1;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineItem and conformance DOCSidebarViewController.XCTest.TestOutlineItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.OutlineCellType and conformance DOCSidebarViewController.OutlineCellType()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineCellType and conformance DOCSidebarViewController.OutlineCellType;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineCellType and conformance DOCSidebarViewController.OutlineCellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineCellType and conformance DOCSidebarViewController.OutlineCellType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.OutlineSection and conformance DOCSidebarViewController.OutlineSection()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineSection and conformance DOCSidebarViewController.OutlineSection;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineSection and conformance DOCSidebarViewController.OutlineSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineSection and conformance DOCSidebarViewController.OutlineSection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.OutlineItem and conformance DOCSidebarViewController.OutlineItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.XCTest.TestOutlineSection and conformance DOCSidebarViewController.XCTest.TestOutlineSection()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineSection and conformance DOCSidebarViewController.XCTest.TestOutlineSection;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineSection and conformance DOCSidebarViewController.XCTest.TestOutlineSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.XCTest.TestOutlineSection and conformance DOCSidebarViewController.XCTest.TestOutlineSection);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables14DOCSidebarItemO(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 5)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables14DOCSidebarItemOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.OutlineItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.OutlineItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.XCTest.TestOutlineSection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.XCTest.TestOutlineSection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.XCTest.TestOutlineItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.XCTest.TestOutlineItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.XCTest.SectionSpec(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.XCTest.SectionSpec(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_60Tm()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    outlined consume of DOCSidebarItem(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t getEnumTagSinglePayload for DOCSidebarViewController.CacheableIconProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCSidebarViewController.CacheableIconProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*DOCItemCollectionView.displayDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_displayDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

uint64_t DOCItemCollectionView.displayMode.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xA0))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

void (*DOCItemCollectionView.focusableCollectionViewDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.gestureDelegate.modify;
}

double DOCItemCollectionView.focusableCollectionViewState.getter()
{
  swift_beginAccess();

  return result;
}

double DOCItemCollectionView.focusableCollectionViewState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewState;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void (*DOCItemCollectionView.gestureDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_gestureDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

id DOCItemCollectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCItemCollectionView.init(configuration:collectionViewLayout:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_displayDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView__dragInteraction] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewState;
  type metadata accessor for DOCFocusableCollectionViewState(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForMostRecentlySelectedItem;
  v8 = type metadata accessor for IndexPath();
  v9 = *(*(v8 - 8) + 56);
  v9(v6 + v7, 1, 1, v8);
  v9(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForSelectionExtensionStart, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_hasFocus) = 0;
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_gestureDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_backgroundTapGestureRecognizer;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_containerIsShowingNoContentUI] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_currentEventIsTrackpad] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_configuration] = a1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DOCItemCollectionView();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_collectionViewLayout_, a2, 0.0, 0.0, 0.0, 0.0);
  DOCItemCollectionView.setup()();

  return v12;
}

id DOCItemCollectionView.setup()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_backgroundTapGestureRecognizer];
  [v1 addTarget:v0 action:sel__backgroundTapGestureRecognized_];
  [v1 setDelegate_];
  [v1 setCancelsTouchesInView_];
  [v0 addGestureRecognizer_];
  v2 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  return [v0 setClipsToBounds_];
}

Swift::Void __swiftcall DOCItemCollectionView.layoutSubviews()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x148))();
  if (v1)
  {
    isEscapingClosureAtFileLocation = v1;
    if ([v1 doc_isAppearing])
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v5 = swift_allocObject();
      v6 = partial apply for closure #1 in DOCItemCollectionView.layoutSubviews();
      *(v5 + 16) = partial apply for closure #1 in DOCItemCollectionView.layoutSubviews();
      *(v5 + 24) = v4;
      v13[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v13[5] = v5;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = thunk for @escaping @callee_guaranteed () -> ();
      v13[3] = &block_descriptor_48;
      v7 = _Block_copy(v13);
      v8 = v0;

      [v3 performWithoutAnimation_];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_7;
      }

      __break(1u);
    }
  }

  v9 = type metadata accessor for DOCItemCollectionView();
  v14.receiver = v0;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v6 = 0;
  v4 = 0;
LABEL_7:
  if ([v0 delegate])
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() defaultCenter];
      if (one-time initialization token for DOCItemCollectionViewDidLayoutSubviews != -1)
      {
        swift_once();
      }

      [v12 postNotificationName:static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews object:v11];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6, v4);
}

CGPoint __swiftcall DOCItemCollectionView.topContentOffset()()
{
  [v0 _effectiveContentInset];
  v2 = -v1;
  v3 = 0.0;
  result.y = v2;
  result.x = v3;
  return result;
}

CGPoint __swiftcall DOCItemCollectionView.bottomContentOffset()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x138))();
  v2 = v1;
  v3 = [v0 collectionViewLayout];
  [v3 collectionViewContentSize];
  v5 = v4;

  [v0 bounds];
  v6 = v5 - CGRectGetHeight(v11);
  [v0 _effectiveContentInset];
  if (v2 > v6 + v7)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6 + v7;
  }

  v9 = 0.0;
  result.y = v8;
  result.x = v9;
  return result;
}

void DOCItemCollectionView.itemCollectionViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCItemCollectionView.itemCollectionViewController.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_itemCollectionViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

Swift::Void __swiftcall DOCItemCollectionView.scrollToTop()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x138))();
  v3 = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCItemCollectionView();
  objc_msgSendSuper2(&v4, sel_setContentOffset_, v1, v3);
}

uint64_t DOCItemCollectionView.containerIsShowingNoContentUI.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_containerIsShowingNoContentUI;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionView.containerIsShowingNoContentUI.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_containerIsShowingNoContentUI;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionView.currentEventIsTrackpad.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_currentEventIsTrackpad;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionView.currentEventIsTrackpad.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_currentEventIsTrackpad;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void @objc DOCItemCollectionView.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0x190);
  v9 = a4;
  v10 = a1;
  v8(0);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v12.receiver = v10;
  v12.super_class = type metadata accessor for DOCItemCollectionView();
  objc_msgSendSuper2(&v12, *a5, isa, v9);
}

void DOCItemCollectionView.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = MEMORY[0x277D85000];
  if (v7 == 1)
  {
    v9 = specialized Collection.first.getter(a1);
    if (v9)
    {
      v10 = v9;
      if ([v9 type] == 3)
      {
        (*((*v8 & *v2) + 0x190))(1);
      }
    }
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for DOCItemCollectionView();
  objc_msgSendSuper2(&v19, sel_touchesEnded_withEvent_, isa, a2);

  (*((*v8 & *v3) + 0x190))(0);
  if (v6)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      return;
    }
  }

  else if (*(a1 + 16) != 1)
  {
    return;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.UI);
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000249BD9BB0, &v18);
    *(v16 + 12) = 1024;
    *(v16 + 14) = (*((*v8 & *v13) + 0x188))() & 1;

    _os_log_impl(&dword_2493AC000, v14, v15, "%s currentEventIsTrackpad=%{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t DOCItemCollectionView.indexPathForItem(at:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v45 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = v45 - v26;
  if (DOCDeviceIsPad())
  {
    v28 = *(v8 + 56);
    v28(v27, 1, 1, v7);
    v29 = type metadata accessor for DOCItemCollectionView();
    v48.receiver = v3;
    v48.super_class = v29;
    v30 = objc_msgSendSuper2(&v48, sel_indexPathForItemAtPoint_, a2, a3);
    if (!v30)
    {
      return outlined init with take of IndexPath?(v27, a1);
    }

    v47 = a1;
    v31 = v28;
    v32 = v30;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    outlined destroy of IndexPath?(v27);
    v45[0] = *(v8 + 32);
    v45[1] = v8 + 32;
    (v45[0])(v15, v11, v7);
    (*(v8 + 16))(v27, v15, v7);
    v46 = v31;
    v31(v27, 0, 1, v7);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v34 = [v3 cellForItemAtIndexPath_];

    if (v34)
    {
      type metadata accessor for DOCItemCollectionCell();
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = v35;
        v37 = [v3 convertPoint:v35 toCoordinateSpace:{a2, a3}];
        v38 = (*((*MEMORY[0x277D85000] & *v36) + 0x300))(v37);

        outlined destroy of IndexPath?(v27);
        if (v38)
        {
          (v45[0])(v23, v15, v7);
          v39 = 0;
        }

        else
        {
          (*(v8 + 8))(v15, v7);
          v39 = 1;
        }

        a1 = v47;
        v46(v23, v39, 1, v7);
        outlined init with take of IndexPath?(v23, v27);
        return outlined init with take of IndexPath?(v27, a1);
      }
    }

    (*(v8 + 8))(v15, v7);
    a1 = v47;
    return outlined init with take of IndexPath?(v27, a1);
  }

  v40 = type metadata accessor for DOCItemCollectionView();
  v49.receiver = v3;
  v49.super_class = v40;
  v41 = objc_msgSendSuper2(&v49, sel_indexPathForItemAtPoint_, a2, a3);
  if (v41)
  {
    v42 = v41;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  (*(v8 + 56))(v19, v43, 1, v7);
  v27 = v19;
  return outlined init with take of IndexPath?(v27, a1);
}

uint64_t DOCItemCollectionView.dragInteraction.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView__dragInteraction;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView__dragInteraction];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView__dragInteraction];
    v4 = v2;
    return v3;
  }

  v6 = [v0 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIInteraction_pMd, &_sSo13UIInteraction_pMR);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_5:
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v12 = v10;

          v13 = *&v0[v1];
          *&v0[v1] = v12;
          swift_unknownObjectRetain();

          return v12;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_17:
          v8 = __CocoaSet.count.getter();
          if (!v8)
          {
            break;
          }

          goto LABEL_5;
        }

        v10 = swift_unknownObjectRetain();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_14;
        }
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      ++v9;
    }

    while (v11 != v8);
  }

  return 0;
}

id DOCItemCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

id DOCItemCollectionView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCItemCollectionView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*protocol witness for DOCFocusableCollectionView.focusableCollectionViewDelegate.modify in conformance DOCItemCollectionView(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

Swift::Bool __swiftcall DOCItemCollectionView.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if (static NSObject.== infix(_:_:)())
  {
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x108))();
    if (v3)
    {
      v5 = v4;
      [(UIGestureRecognizer *)a1 locationInView:v1];
      v7 = v6;
      v9 = v8;
      ObjectType = swift_getObjectType();
      if ((*(v5 + 16))(v1, ObjectType, v5, v7, v9))
      {
        v11 = (*(v5 + 24))(v1, ObjectType, v5);
        swift_unknownObjectRelease();
        LOBYTE(v3) = v11 & 1;
      }

      else
      {
        swift_unknownObjectRelease();
        LOBYTE(v3) = 0;
      }
    }
  }

  else
  {
    v13.receiver = v1;
    v13.super_class = type metadata accessor for DOCItemCollectionView();
    LOBYTE(v3) = [(UIGestureRecognizer *)&v13 gestureRecognizerShouldBegin:a1];
  }

  return v3;
}

Swift::Void __swiftcall DOCItemCollectionView._backgroundTapGestureRecognized(_:)(UITapGestureRecognizer *a1)
{
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x108))(a1))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(v1, ObjectType, v3);

    swift_unknownObjectRelease();
  }
}

void specialized DOCItemCollectionView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_displayDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView__dragInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_focusableCollectionViewState;
  type metadata accessor for DOCFocusableCollectionViewState(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForMostRecentlySelectedItem;
  v4 = type metadata accessor for IndexPath();
  v5 = *(*(v4 - 8) + 56);
  v5(v2 + v3, 1, 1, v4);
  v5(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForSelectionExtensionStart, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_hasFocus) = 0;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_gestureDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_backgroundTapGestureRecognizer;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_containerIsShowingNoContentUI) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionView_currentEventIsTrackpad) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id partial apply for closure #1 in DOCItemCollectionView.layoutSubviews()()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for DOCItemCollectionView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.with(priority:)(__C::UILayoutPriority priority)
{
  [v1 setPriority_];

  return v3;
}

id NSLayoutAnchor.doc_constraint(equalTo:constant:priority:)(uint64_t a1, double a2, float a3)
{
  v5 = [v3 constraintEqualToAnchor:a1 constant:a2];
  *&v6 = a3;
  [v5 setPriority_];
  return v5;
}

id @objc NSLayoutAnchor.doc_constraint(equalTo:constant:priority:)(void *a1, double a2, float a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = NSLayoutAnchor.doc_constraint(equalTo:constant:priority:)(v8, a2, a3);

  return v10;
}

id NSLayoutAnchor.doc_constraint(greaterThanOrEqualTo:constant:priority:)(uint64_t a1, double a2, float a3)
{
  v5 = [v3 constraintGreaterThanOrEqualToAnchor:a1 constant:a2];
  *&v6 = a3;
  [v5 setPriority_];
  return v5;
}

id @objc NSLayoutAnchor.doc_constraint(greaterThanOrEqualTo:constant:priority:)(void *a1, double a2, float a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = NSLayoutAnchor.doc_constraint(greaterThanOrEqualTo:constant:priority:)(v8, a2, a3);

  return v10;
}

id NSLayoutAnchor.doc_constraint(lessThanOrEqualTo:constant:priority:)(uint64_t a1, double a2, float a3)
{
  v5 = [v3 constraintLessThanOrEqualToAnchor:a1 constant:a2];
  *&v6 = a3;
  [v5 setPriority_];
  return v5;
}

id @objc NSLayoutAnchor.doc_constraint(lessThanOrEqualTo:constant:priority:)(void *a1, double a2, float a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = NSLayoutAnchor.doc_constraint(lessThanOrEqualTo:constant:priority:)(v8, a2, a3);

  return v10;
}

id NSLayoutDimension.doc_constraint(equalToConstant:priority:)(double a1, float a2)
{
  v4 = [v2 constraintEqualToConstant_];
  *&v5 = a2;
  [v4 setPriority_];
  return v4;
}

id @objc NSLayoutDimension.doc_constraint(equalToConstant:priority:)(void *a1, double a2, float a3)
{
  v5 = a1;
  v6 = [v5 constraintEqualToConstant_];
  *&v7 = a3;
  [v6 setPriority_];

  return v6;
}

double NSDirectionalEdgeInsets.copyWith(top:leading:bottom:trailing:)(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return *&a1;
  }

  return result;
}

UIEdgeInsets __swiftcall UIEdgeInsets.by(adding:)(UIEdgeInsets adding)
{
  v5 = adding.top + v1;
  v6 = adding.left + v2;
  v7 = adding.bottom + v3;
  v8 = adding.right + v4;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

double CGRect.byPositioning(leadingRelativeToRect:offset:isRTL:)(char a1, double a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (a1)
  {
    v13 = CGRectGetMaxX(*&a2) + a6;
  }

  else
  {
    v14 = CGRectGetMinX(*&a2) - a6;
    v16.origin.x = a7;
    v16.origin.y = a8;
    v16.size.width = a9;
    v16.size.height = a10;
    v13 = v14 - CGRectGetWidth(v16);
  }

  v17.origin.x = a7;
  v17.origin.y = a8;
  v17.size.width = a9;
  v17.size.height = a10;
  CGRectGetMinY(v17);
  v18.origin.x = a7;
  v18.origin.y = a8;
  v18.size.width = a9;
  v18.size.height = a10;
  CGRectGetWidth(v18);
  v19.origin.x = a7;
  v19.origin.y = a8;
  v19.size.width = a9;
  v19.size.height = a10;
  CGRectGetHeight(v19);
  return v13;
}

double CGRect.byPositioning(trailingRelativeToRect:offset:isRTL:)(char a1, double a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (a1)
  {
    v13 = CGRectGetMinX(*&a2) - a6;
    v16.origin.x = a7;
    v16.origin.y = a8;
    v16.size.width = a9;
    v16.size.height = a10;
    v14 = v13 - CGRectGetWidth(v16);
  }

  else
  {
    v14 = CGRectGetMaxX(*&a2) + a6;
  }

  v17.origin.x = a7;
  v17.origin.y = a8;
  v17.size.width = a9;
  v17.size.height = a10;
  CGRectGetMinY(v17);
  v18.origin.x = a7;
  v18.origin.y = a8;
  v18.size.width = a9;
  v18.size.height = a10;
  CGRectGetWidth(v18);
  v19.origin.x = a7;
  v19.origin.y = a8;
  v19.size.width = a9;
  v19.size.height = a10;
  CGRectGetHeight(v19);
  return v14;
}

__C::CGRect __swiftcall CGRect.byCenteringVertically(relativeToRect:isRTL:)(__C::CGRect relativeToRect, Swift::Bool isRTL)
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  height = relativeToRect.size.height;
  width = relativeToRect.size.width;
  y = relativeToRect.origin.y;
  x = relativeToRect.origin.x;
  MinY = CGRectGetMinY(relativeToRect);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v14 = CGRectGetHeight(v23);
  v24.origin.x = v9;
  v24.origin.y = v8;
  v24.size.width = v7;
  v24.size.height = v6;
  v15 = MinY + (v14 - CGRectGetHeight(v24)) * 0.5;
  v25.origin.x = v9;
  v25.origin.y = v8;
  v25.size.width = v7;
  v25.size.height = v6;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = v9;
  v26.origin.y = v8;
  v26.size.width = v7;
  v26.size.height = v6;
  v17 = CGRectGetWidth(v26);
  v27.origin.x = v9;
  v27.origin.y = v8;
  v27.size.width = v7;
  v27.size.height = v6;
  v18 = CGRectGetHeight(v27);
  v19 = MinX;
  v20 = v15;
  v21 = v17;
  result.size.height = v18;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

void *DOCItemCollectionContainerDataSourceConfiguration.overrideAppearance.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

double DOCItemCollectionContainerDataSourceConfiguration.init(configuration:collectionViewPool:documentManager:location:source:actionManager:overrideAppearance:activateImmediately:itemHierarchyEventListener:isBrowsingTrash:shouldDisplayLoadingView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int16 a12)
{
  ObjectType = swift_getObjectType();
  specialized DOCItemCollectionContainerDataSourceConfiguration.init(configuration:collectionViewPool:documentManager:location:source:actionManager:overrideAppearance:activateImmediately:itemHierarchyEventListener:isBrowsingTrash:shouldDisplayLoadingView:)(a1, a2, a3, a4, a5, a6, a7, a8, v25, a10, a12, SHIBYTE(a12), ObjectType, a11);
  v19 = v25[3];
  *(a9 + 32) = v25[2];
  *(a9 + 48) = v19;
  *(a9 + 64) = v25[4];
  *(a9 + 80) = v26;
  result = *v25;
  v21 = v25[1];
  *a9 = v25[0];
  *(a9 + 16) = v21;
  return result;
}

uint64_t DOCItemCollectionContainerDataSource.selectedChildNode.setter(uint64_t a1)
{
  swift_beginAccess();
  v1[13] = a1;
  swift_unknownObjectRetain();
  v3 = swift_unknownObjectRelease();
  v4 = (*(*v1 + 128))(v3);
  if (v4)
  {
    v5 = *((*MEMORY[0x277D85000] & *v4) + 0x1270);
    v6 = v4;
    v7 = swift_unknownObjectRetain();
    v5(v7);
  }

  return swift_unknownObjectRelease();
}

void (*DOCItemCollectionContainerDataSource.selectedChildNode.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionContainerDataSource.selectedChildNode.modify;
}

void DOCItemCollectionContainerDataSource.selectedChildNode.modify(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*(**(a1 + 24) + 128))(v4);
    if (v5)
    {
      v6 = *((*MEMORY[0x277D85000] & *v5) + 0x1270);
      v8 = v5;
      v7 = swift_unknownObjectRetain();
      v6(v7);
    }
  }
}

void *DOCItemCollectionContainerDataSource._containedViewController.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void DOCItemCollectionContainerDataSource._containedViewController.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

char *DOCItemCollectionContainerDataSource.containedViewController.getter()
{
  v1 = v0;
  result = (*(*v0 + 128))();
  if (!result)
  {
    v3 = *(v0 + 40);
    v4 = [v3 sourceIdentifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v11 = *(v0 + 16);
    if (![v11 browserViewContext])
    {
      v119 = [v11 forPickingDocuments];
      goto LABEL_17;
    }

LABEL_10:
    v11 = *(v0 + 16);
    v12 = [v11 browserViewContext];
    if (v12 > 0)
    {
      if (v12 != 1)
      {
LABEL_81:
        if (v12 == 2 || v12 == 3)
        {
          v12 = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

LABEL_84:
        v111 = v12;
        type metadata accessor for DOCBrowserViewContext(0);
        *(&v124 + 1) = v112;
        *&v123 = v111;
        doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(&v123);
      }

      v13 = 3;
    }

    else
    {
      if (v12)
      {
        goto LABEL_84;
      }

      v13 = 2;
    }

    v119 = v13;
LABEL_17:
    v14 = *(v0 + 48);
    v15 = &selRef__setLocationsInBrowseTab_;
    v16 = [v14 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = MEMORY[0x277D85000];
    if (v17 == v20 && v19 == v21)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        v25 = v22;
        v26 = 10;
LABEL_23:
        v118 = v26;
        v117 = *(v0 + 96);
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = v28;
        v116 = v27;
        v29 = v14;
        v30 = v11;
        v31 = v29;
        v32 = v30;
        v120 = v3;
        v33 = [v3 node];
        v34 = v31;
        v35 = [v34 identifier];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
        if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
        {

LABEL_28:

          v41 = [objc_opt_self() defaultManager];
          v42 = [v41 newTrashCollection];

          v43 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
          v44 = DOCNodeCollection.init(itemCollection:observedNode:)(v42, 0);
          swift_unknownObjectRelease();
          v33 = 0;
          v45 = v25;
LABEL_29:
          *&v123 = v34;
          *(&v123 + 1) = v32;
          LOBYTE(v124) = v119;
          *(&v124 + 1) = v130[0];
          DWORD1(v124) = *(v130 + 3);
          *(&v124 + 1) = v120;
          LOBYTE(v125) = v118;
          BYTE1(v125) = v117;
          *(&v125 + 2) = v128;
          WORD3(v125) = v129;
          *(&v125 + 1) = v116;
          v126 = v115;
          *&v127 = v33;
          *(&v127 + 1) = v44;
          v47 = v1[3];
          v46 = v1[4];
          v48 = v1[7];
          v122[2] = v125;
          v122[3] = v115;
          v122[4] = v127;
          v122[0] = v123;
          v122[1] = v124;
          v49 = objc_allocWithZone(type metadata accessor for DOCItemCollectionViewController(0));
          outlined init with copy of DOCItemCollectionConfiguration(&v123, v121);
          v50 = v47;
          v51 = v46;
          v52 = v48;
          v53 = DOCItemCollectionViewController.init(configuration:collectionViewPool:documentManager:actionManager:)(v122, v50, v46, v48);
          v54 = *(*v1 + 104);
          v55 = v53;
          v56 = v54();
          (*((*v45 & *v55) + 0x1270))(v56);
          v57 = v1[11];
          v58 = *((*v45 & *v55) + 0x940);
          v59 = swift_unknownObjectRetain();
          v58(v59, v57);
          (*(*v1 + 136))(v55);
          outlined destroy of DOCItemCollectionConfiguration(&v123);
          return v55;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v40)
        {

          goto LABEL_28;
        }

        v60 = [v34 identifier];

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v62;
        if (v61 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v45 != v63)
        {
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v64)
          {
            __break(1u);
          }

          else
          {
            v45 = v25;
            if (*(v34 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8) == 1)
            {
              v65 = [objc_allocWithZone(MEMORY[0x277D061F8]) init];
              v66 = [v32 hostIdentifier];
              if (!v66)
              {
                v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v66 = MEMORY[0x24C1FAD20](v67);
              }

              [v65 setHostIdentifier_];

              v68 = [v32 maximumNumberOfItemsToFetch];
              v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
              v70 = v45;
              v113 = *((*v45 & *v34) + 0x278);
              v114 = v69;
              v71 = v113();
              v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v74 = v73;
              if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
              {

                v45 = v70;
LABEL_52:
                v82 = v114;
                [v65 setMaximumNumberOfItems_];
                isa = [v32 recentDocumentsContentTypes];
                if (!isa)
                {
                  type metadata accessor for UTType();
                  static Array._unconditionallyBridgeFromObjectiveC(_:)();
                  isa = Array._bridgeToObjectiveC()().super.isa;
                }

                [v65 setAllowedContentTypes_];
                goto LABEL_55;
              }

              v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v76 & 1) == 0)
              {
                v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v80 = v79;
                if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v80 == v81)
                {

                  goto LABEL_51;
                }

                v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v90 & 1) == 0)
                {
                  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v93 = v92;
                  v45 = v70;
                  if (v91 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v93 == v94)
                  {

                    v82 = v114;
                  }

                  else
                  {
                    v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v82 = v114;
                    if ((v108 & 1) == 0)
                    {
                      [v65 setMaximumNumberOfItems_];
                      v110 = [v32 documentContentTypes];
                      if (!v110)
                      {
                        type metadata accessor for UTType();
                        static Array._unconditionallyBridgeFromObjectiveC(_:)();
                        v110 = Array._bridgeToObjectiveC()().super.isa;
                      }

                      [v65 setAllowedContentTypes_];

                      goto LABEL_56;
                    }
                  }

                  v109 = [v32 recentDocumentsContentTypes];
                  if (!v109)
                  {
                    type metadata accessor for UTType();
                    static Array._unconditionallyBridgeFromObjectiveC(_:)();
                    v109 = Array._bridgeToObjectiveC()().super.isa;
                  }

                  [v65 setAllowedContentTypes_];

                  if ([v32 maximumNumberOfItemsToFetch] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    [v65 setMaximumNumberOfItems_];
                    goto LABEL_56;
                  }

                  isa = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                  [v65 setMaximumNumberOfItems_];
LABEL_55:

LABEL_56:
                  v84 = [objc_opt_self() defaultManager];
                  v85 = v113();

                  v86 = [v32 supportsRemovableFileProviders];
                  v87 = specialized FPItemManager.queryCollection(forIdentifier:properties:supportRemovableFileProviders:)(v85, v65, v86);

                  v88 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
                  v89 = v87;
                  v44 = DOCNodeCollection.init(itemCollection:observedNode:)(v89, 0);

                  swift_unknownObjectRelease();
                  v33 = 0;
                  goto LABEL_29;
                }
              }

LABEL_51:
              v45 = v70;
              goto LABEL_52;
            }

            if (v33)
            {

              v44 = 0;
              goto LABEL_29;
            }

            v15 = *(v34 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
            if (!v15)
            {

LABEL_58:
              v44 = 0;
              v33 = 0;
              goto LABEL_29;
            }

            v33 = v15;
            if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) == 0)
            {

              v95 = [objc_opt_self() defaultManager];
              v96 = [v95 rootCollectionForProviderDomain_];

              v97 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
              v98 = v96;
              v44 = DOCNodeCollection.init(itemCollection:observedNode:)(v98, 0);

              goto LABEL_64;
            }

            v77 = specialized static DOCRootNode.rootNode(for:)(v33);
            if (v77)
            {
              LOBYTE(v123) = 1;
              v44 = _s26DocumentManagerExecutables17DOCNodeCollectionC3for13configuration6source12extraOptionsACSo0D0_p_So16DOCConfigurationCSgAA21DOCFileProviderSourceCSgSo016NodeNotificationJ0VSgtcfCTf4ennnn_nSo6FINodeC_Tt3g5(v77, 0, v34, 0x100000000uLL);
LABEL_64:

              v33 = 0;
              goto LABEL_29;
            }

            if (one-time initialization token for UI == -1)
            {
LABEL_66:
              v99 = type metadata accessor for Logger();
              __swift_project_value_buffer(v99, static Logger.UI);
              v100 = v33;
              v101 = Logger.logObject.getter();
              v102 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v101, v102))
              {
                v103 = swift_slowAlloc();
                v104 = v45;
                v105 = swift_slowAlloc();
                *v103 = 138412290;
                *(v103 + 4) = v100;
                *v105 = v15;
                v106 = v100;
                _os_log_impl(&dword_2493AC000, v101, v102, "Getting nil rootNode for %@", v103, 0xCu);
                outlined destroy of NSObject?(v105);
                v107 = v105;
                v45 = v104;
                MEMORY[0x24C1FE850](v107, -1, -1);
                MEMORY[0x24C1FE850](v103, -1, -1);
              }

              else
              {
              }

              goto LABEL_58;
            }
          }

          swift_once();
          goto LABEL_66;
        }

        __break(1u);
        goto LABEL_81;
      }
    }

    v25 = v22;
    (*((*v22 & *v14) + 0x1B8))(&v123, v23);
    v26 = v123;
    goto LABEL_23;
  }

  return result;
}

void *DOCItemCollectionContainerDataSource.overrideAppearance.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

__n128 DOCItemCollectionContainerDataSource.__allocating_init(dataSourceConfiguration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  result = *a1;
  v5 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  return result;
}

uint64_t DOCItemCollectionContainerDataSource.init(dataSourceConfiguration:)(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return v1;
}

id DOCItemCollectionContainerDataSource.containedViewController(for:)(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return (*(*v1 + 152))(a1);
      }

      goto LABEL_14;
    }

    if (*(v1 + 97) == 1)
    {
      v19 = *(v1 + 16);
      v20 = *(v1 + 32);
      v21 = *(v1 + 56);
      *(objc_allocWithZone(type metadata accessor for DOCLoadingViewController()) + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCLoadingViewController____lazy_storage___task) = 0;
      v22 = v19;
      v23 = v20;
      v24 = v21;
      return DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v22, v20, v21);
    }

    return 0;
  }

  switch(a1)
  {
    case 2:
      return 0;
    case 3:
      return (*(*v1 + 152))(a1);
    case 4:
      a1 = [*(v1 + 40) node];
      if (a1)
      {
        type metadata accessor for DOCRootNode();
        v2 = swift_dynamicCastClass();
        if (!v2 || (v3 = v2, (v4 = [v2 enumeratorError]) == 0) || (*&v29[0] = v4, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), type metadata accessor for NSError(), (swift_dynamicCast() & 1) == 0))
        {
LABEL_23:
          a1 = swift_unknownObjectRelease();
          return (*(*v1 + 152))(a1);
        }

        v5 = [v28[0] domain];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
        {
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        if ([v28[0] code] == -1000)
        {
          v26 = [v3 subjectNode];
          type metadata accessor for DOCEncryptedVolumeNode();
          v27 = swift_dynamicCastClass();
          if (!v27)
          {

            swift_unknownObjectRelease();
            return (*(*v1 + 152))(a1);
          }

          (*((*MEMORY[0x277D85000] & *v27) + 0x98))();

          goto LABEL_23;
        }

LABEL_26:
        swift_unknownObjectRelease();
      }

      return (*(*v1 + 152))(a1);
  }

LABEL_14:
  v10 = *((*MEMORY[0x277D85000] & **(v1 + 48)) + 0x250);
  v11 = a1;
  v12 = a1;
  result = v10(v29);
  if (*v14 == -1)
  {
    __break(1u);
  }

  else
  {
    ++*v14;
    (result)(v29, 0);
    v15 = *(v1 + 48);
    v16 = *(v1 + 80);
    v29[3] = *(v1 + 64);
    v29[4] = v16;
    v30 = *(v1 + 96);
    v17 = *(v1 + 32);
    v29[0] = *(v1 + 16);
    v29[1] = v17;
    v29[2] = v15;
    outlined init with copy of DOCItemCollectionContainerDataSourceConfiguration(v29, v28);
    v18 = specialized DOCErrorViewController.__allocating_init(dataSourceConfiguration:error:)(v29, v11);
    outlined consume of DOCBrowserContainerState(v11);
    return v18;
  }

  return result;
}

void DOCItemCollectionContainerDataSource.activateContainedViewController(for:)(uint64_t a1)
{
  if (a1 == 4)
  {
    v4 = (*(*v1 + 152))();
    v5 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
    v6 = v5;

    if (v5)
    {
      (*((*MEMORY[0x277D85000] & *v6) + 0x1D8))();
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (a1 != 1)
  {
    return;
  }

  v2 = (*(*v1 + 152))();
  v3 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
  v6 = v3;

  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  (*((*MEMORY[0x277D85000] & *v6) + 0x1D0))();
LABEL_7:
}

id DOCItemCollectionContainerDataSource.accessibilityBrowsingRootIdentifierComponents.getter()
{
  v1 = *(v0 + 40);
  v2 = [v1 sourceIdentifier];
  v3 = [v1 displayName];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v2;
}

uint64_t DOCItemCollectionContainerDataSource.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t DOCItemCollectionContainerDataSource.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t specialized DOCItemCollectionContainerDataSourceConfiguration.init(configuration:collectionViewPool:documentManager:location:source:actionManager:overrideAppearance:activateImmediately:itemHierarchyEventListener:isBrowsingTrash:shouldDisplayLoadingView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a14;
  *(a9 + 80) = a11;
  *(a9 + 81) = a12;
  return result;
}

id specialized DOCErrorViewController.__allocating_init(dataSourceConfiguration:error:)(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *((*MEMORY[0x277D85000] & *v5) + 0x240);
  v29 = *a1;
  v9 = v6;
  v10 = v4;
  v11 = v5;
  v12 = v7;
  LOBYTE(v8) = v8() < 2;
  v13 = objc_allocWithZone(type metadata accessor for DOCErrorViewController());
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] = v11;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location] = v7;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error] = a2;
  v13[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI] = v8;
  v14 = v11;
  v15 = v12;
  v16 = a2;
  v17 = _convertErrorToNSError(_:)();
  v18 = [v17 domain];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {

LABEL_9:
      v26 = 0;
      goto LABEL_10;
    }
  }

  v24 = [v17 code];

  if (v24 != -1000)
  {
    goto LABEL_9;
  }

  v25 = *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (!v25)
  {
    goto LABEL_9;
  }

  v26 = [objc_opt_self() authenticationActionForProviderDomain_];
LABEL_10:
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction] = v26;
  v27 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v29, v9, v10);
  outlined destroy of DOCItemCollectionContainerDataSourceConfiguration(a1);

  return v27;
}

void outlined consume of DOCBrowserContainerState(id a1)
{
  if (a1 >= 5)
  {
  }
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionContainerDataSourceConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t storeEnumTagSinglePayload for DOCItemCollectionContainerDataSourceConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of DOCItemCollectionContainerDataSource.__allocating_init(dataSourceConfiguration:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 80);
  v5 = *(a1 + 81);
  v6 = *(v1 + 176);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = *(a1 + 32);
  v10 = v2;
  v11 = v3;
  v12 = *(a1 + 64);
  v13 = v4;
  v14 = v5;
  return v6(v9);
}

uint64_t DOCFileOperation.init(identifier:progress:dateStarted:iconType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyHashable(a1, a5);
  *(a5 + 40) = a2;
  outlined init with copy of Date?(a3, v13);
  v19 = *(v15 + 48);
  if (v19(v13, 1, v14) == 1)
  {
    Date.init(timeIntervalSinceNow:)();
    outlined destroy of Date?(a3);
    outlined destroy of AnyHashable(a1);
    if (v19(v13, 1, v14) != 1)
    {
      outlined destroy of Date?(v13);
    }
  }

  else
  {
    outlined destroy of Date?(a3);
    outlined destroy of AnyHashable(a1);
    (*(v15 + 32))(v18, v13, v14);
  }

  v20 = type metadata accessor for DOCFileOperation(0);
  (*(v15 + 32))(a5 + *(v20 + 24), v18, v14);
  return outlined init with take of DOCProgressProvidingOperationIconType(a4, a5 + *(v20 + 28));
}

uint64_t type metadata accessor for DOCFileOperation(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCFileOperation;
  if (!type metadata singleton initialization cache for DOCFileOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of DOCProgressProvidingOperationIconType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCProgressProvidingOperationIconType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DOCFileOperation.dateStarted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DOCFileOperation(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DOCFileOperation.dateStarted.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DOCFileOperation(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DOCFileOperation.iconType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DOCFileOperation(0) + 28);

  return outlined init with copy of DOCProgressProvidingOperationIconType(v3, a1);
}

uint64_t DOCFileOperation.iconType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DOCFileOperation(0) + 28);

  return outlined assign with take of DOCProgressProvidingOperationIconType(a1, v3);
}

unint64_t DOCFileOperation.description.getter()
{
  _StringGuts.grow(_:)(24);

  v0 = AnyHashable.description.getter();
  MEMORY[0x24C1FAEA0](v0);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

Swift::Int DOCFileOperation.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for DOCProgressProvidingOperation.dateStarted.getter in conformance DOCFileOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCFileOperation()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCFileOperation(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DOCFileOperation and conformance DOCFileOperation()
{
  result = lazy protocol witness table cache variable for type DOCFileOperation and conformance DOCFileOperation;
  if (!lazy protocol witness table cache variable for type DOCFileOperation and conformance DOCFileOperation)
  {
    type metadata accessor for DOCFileOperation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCFileOperation and conformance DOCFileOperation);
  }

  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCFileOperation()
{
  _StringGuts.grow(_:)(24);

  v0 = AnyHashable.description.getter();
  MEMORY[0x24C1FAEA0](v0);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

unint64_t type metadata completion function for DOCFileOperation(uint64_t a1)
{
  result = type metadata accessor for NSProgress();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DOCProgressProvidingOperationIconType(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  outlined init with copy of DOCGridLayout.Spec?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of CharacterSet?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of CharacterSet?(a3, &_sScPSgMd, &_sScPSgMR);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CharacterSet?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo24_SWCollaborationMetadataCSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  outlined init with copy of DOCGridLayout.Spec?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of CharacterSet?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_SWCollaborationMetadataCSgMd, &_sSo24_SWCollaborationMetadataCSgMR);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of CharacterSet?(a3, &_sScPSgMd, &_sScPSgMR);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CharacterSet?(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_SWCollaborationMetadataCSgMd, &_sSo24_SWCollaborationMetadataCSgMR);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t FamilyFolderDetails.isCreated.setter(char a1)
{
  result = type metadata accessor for FamilyFolderDetails(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t FamilyFolderDetails.init(url:isCreated:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  outlined init with take of URL?(a1, a3);
  result = type metadata accessor for FamilyFolderDetails(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t DOCTipsManager.familyFetcher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFetcher;
  swift_beginAccess();
  return outlined init with copy of DOCSidebarItemIconProvider(v1 + v3, a1);
}

uint64_t DOCTipsManager.familyFetcher.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFetcher;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of DOCGoToFolderCandidate(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for DOCTipsManager.familyFolderFilePath : DOCTipsManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD0))(v7);
}

uint64_t DOCTipsManager.familyFolderFilePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFolderFilePath;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v1 + v3, a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t DOCTipsManager.familyFolderFilePath.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFolderFilePath;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v1 + v3);
  return swift_endAccess();
}

void *DOCTipsManager.familySharedFolderTipView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familySharedFolderTipView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCTipsManager.familySharedFolderTipView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familySharedFolderTipView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *DOCTipsManager.init(_:_:_:_:)(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_fileManager;
  *&v3[v7] = [objc_opt_self() defaultManager];
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_fpItemManager;
  *&v3[v8] = [objc_opt_self() defaultManager];
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFolderFilePath;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familySharedFolderTipView] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sharingFlowTask] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of DOCSidebarItemIconProvider(a2, &v3[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familyFetcher]);
  if (a3)
  {
    v11 = objc_opt_self();
    v12 = a3;
    v13 = [v11 defaultPermission];
    v14 = [v13 userActionForConfiguration_];

    v15 = [v12 hostIdentifier];
    if (!v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = MEMORY[0x24C1FAD20](v16);
    }

    v17 = [objc_allocWithZone(DOCSourceObserver) initWithUserAction:v14 hostIdentifier:v15];

    *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sourceObserver] = v17;
    v18 = v17;
    [v18 startObservingSources];
  }

  else
  {
    *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sourceObserver] = 0;
  }

  v28.receiver = v3;
  v28.super_class = type metadata accessor for DOCTipsManager(0);
  v19 = objc_msgSendSuper2(&v28, sel_init);
  if (DOCIsInternalBuild())
  {
    if (one-time initialization token for docUserDefaults != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static NSUserDefaults.docUserDefaults)
    {
      v20 = static NSUserDefaults.docUserDefaults;
      v21 = MEMORY[0x24C1FAD20](0xD000000000000015, 0x8000000249BD9EF0);
      v22 = [v20 BOOLForKey_];

      if (v22)
      {
        static Tips.showAllTipsForTesting()();
      }
    }
  }

  lazy protocol witness table accessor for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = objc_allocWithZone(type metadata accessor for TipUIView());

  v24 = TipUIView.init(_:arrowEdge:actionHandler:)();

  __swift_destroy_boxed_opaque_existential_0(a2);

  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_familySharedFolderTipView;
  swift_beginAccess();
  v26 = *&v19[v25];
  *&v19[v25] = v24;

  return v19;
}

unint64_t lazy protocol witness table accessor for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip()
{
  result = lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip;
  if (!lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip;
  if (!lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip);
  }

  return result;
}

void closure #1 in DOCTipsManager.init(_:_:_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x190))(a1);
  }
}

id DOCTipsManager.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sourceObserver] stopObservingSources];
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sharingFlowTask];
  if (v1)
  {

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x24C1FB330](v1, MEMORY[0x277D84F78] + 8, v2, MEMORY[0x277D84950]);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCTipsManager(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall DOCTipsManager.setFamilySharedFolderTipViewEnabled(_:)(Swift::Bool a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
  if (v3)
  {
    v4 = v3;
    [v3 setUserInteractionEnabled_];
  }
}

Swift::Void __swiftcall DOCTipsManager.messageComposeViewController(_:didFinishWith:)(MFMessageComposeViewController *_, MessageComposeResult didFinishWith)
{
  v3 = v2;
  v89[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v86 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v88 = &v86 - v17;
  v18 = type metadata accessor for Tips.InvalidationReason();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x277D85700];
  if (didFinishWith == MessageComposeResultCancelled)
  {
    v86 = _;
    v87 = v11;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.DocumentManager);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v24;
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2493AC000, v38, v39, "Files Family Tip, user cancelled invite", v41, 2u);
      v42 = v41;
      v24 = v40;
      MEMORY[0x24C1FE850](v42, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v3) + 0xC8))();
    v43 = v87;
    if ((*(v87 + 48))(v9, 1, v10) == 1)
    {
      outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _ = v86;
      v26 = v88;
      goto LABEL_29;
    }

    (*(v43 + 32))(v14, v9, v10);
    v44 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_fileManager);
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_fileManager);
    v46 = v45;
    type metadata accessor for NSURLResourceKey(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v89[0] = 0;
    v48 = [v44 contentsOfDirectoryAtURL:v46 includingPropertiesForKeys:isa options:0 error:v89];

    v49 = v89[0];
    if (!v48)
    {
      v56 = v89[0];
      v57 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v58 = v57;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      v61 = os_log_type_enabled(v59, v60);
      v26 = v88;
      if (v61)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        v64 = v57;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v62 + 4) = v65;
        *v63 = v65;
        _os_log_impl(&dword_2493AC000, v59, v60, "Files Family Tip, Failed to get folder contents with error: %@", v62, 0xCu);
        outlined destroy of CharacterSet?(v63, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v63, -1, -1);
        MEMORY[0x24C1FE850](v62, -1, -1);
      }

      else
      {
      }

      (*(v87 + 8))(v14, v10);
      _ = v86;
      v24 = MEMORY[0x277D85700];
      goto LABEL_29;
    }

    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v49;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v54 = os_log_type_enabled(v52, v53);
    v26 = v88;
    if (v54)
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = *(v50 + 16);

      _os_log_impl(&dword_2493AC000, v52, v53, "Files Family Tip, items in Family folder  %ld", v55, 0xCu);
      MEMORY[0x24C1FE850](v55, -1, -1);
    }

    else
    {
    }

    v24 = MEMORY[0x277D85700];
    v66 = *(v50 + 16);

    if (!v66)
    {
      URL._bridgeToObjectiveC()(v67);
      v69 = v68;
      v89[0] = 0;
      v70 = [v44 removeItemAtURL:v68 error:v89];

      if (v70)
      {
        v71 = *(v87 + 8);
        v72 = v89[0];
        v71(v14, v10);
        goto LABEL_24;
      }

      v77 = v89[0];
      v78 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v79 = v78;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138412290;
        v84 = v78;
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 4) = v85;
        *v83 = v85;
        _os_log_impl(&dword_2493AC000, v80, v81, "Files Family Tip, Failed to remove family folder with error: %@", v82, 0xCu);
        outlined destroy of CharacterSet?(v83, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v83, -1, -1);
        MEMORY[0x24C1FE850](v82, -1, -1);
      }

      else
      {
      }
    }

    (*(v87 + 8))(v14, v10);
LABEL_24:
    _ = v86;
    goto LABEL_29;
  }

  v25 = v3;
  v26 = v88;
  if (didFinishWith == MessageComposeResultSent)
  {
    v27 = v21;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.DocumentManager);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2493AC000, v29, v30, "Files Family Tip, user sent folder invite", v31, 2u);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v25) + 0xE0))();
    (*(v19 + 104))(v23, *MEMORY[0x277CE1A08], v27);
    lazy protocol witness table accessor for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip();
    Tip.invalidate(reason:)();
    (*(v19 + 8))(v23, v27);
    v32 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
    if (v32)
    {
      v33 = v32;
      [v32 setBool:1 forKey:*MEMORY[0x277D05E40]];
    }

    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v26, 1, 1, v34);
    type metadata accessor for MainActor();
    v35 = static MainActor.shared.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v24;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v26, &async function pointer to partial apply for closure #1 in DOCTipsManager.messageComposeViewController(_:didFinishWith:), v36);
  }

LABEL_29:
  v73 = type metadata accessor for TaskPriority();
  (*(*(v73 - 8) + 56))(v26, 1, 1, v73);
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v75 = static MainActor.shared.getter();
  v76 = swift_allocObject();
  v76[2] = v75;
  v76[3] = v24;
  v76[4] = v74;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v26, &async function pointer to partial apply for closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:), v76);

  [(MFMessageComposeViewController *)_ dismissViewControllerAnimated:1 completion:0];
}

uint64_t closure #1 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DOCTipsManager.messageComposeViewController(_:didFinishWith:), v2, v1);
}

{

  if (one-time initialization token for $hasSharedFolderWithAdultFamilyMember != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  __swift_project_value_buffer(v1, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
  *(v0 + 48) = 1;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:), v6, v5);
}

uint64_t closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    (*((*MEMORY[0x277D85000] & *Strong) + 0x130))(1);
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall DOCTipsManager.configureTipsCenter()()
{
  v0 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v9[0] = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO19ConfigurationOptionVGMd, &_ss23_ContiguousArrayStorageCy6TipKit4TipsO19ConfigurationOptionVGMR);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
  static Tips.ConfigurationOption.analyticsEngine(_:)();
  (*(v5 + 8))(v8, v4);
  static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v9[0] + 8))(v3, v0);
  static Tips.configure(_:)();
}

uint64_t DOCTipsManager.getICloudDriveDomain()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](DOCTipsManager.getICloudDriveDomain(), 0, 0);
}

{
  v1 = *(v0[19] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sourceObserver);
  v0[20] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = DOCTipsManager.getICloudDriveDomain();
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo17DOCDocumentSourceCGs5Error_pGMd, &_sSccySaySo17DOCDocumentSourceCGs5Error_pGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray, @unowned NSError?) -> () with result type [DOCDocumentSource];
    v0[13] = &block_descriptor_49;
    v0[14] = v2;
    [v1 retrieveAllSourcesCompletionBlock_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v3 = v0[1];

    return v3(0);
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = DOCTipsManager.getICloudDriveDomain();
  }

  else
  {
    v2 = DOCTipsManager.getICloudDriveDomain();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[18];
  if (v1 >> 62)
  {
LABEL_28:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_21:
    v5 = v0[20];

    v7 = 0;
    goto LABEL_22;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_21;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C1FC540](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v0 = (v3 + 1);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    type metadata accessor for DOCFileProviderSource();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v7)
      {
        break;
      }
    }

LABEL_5:

    ++v3;
    if (v0 == v2)
    {
      v0 = v18;
      goto LABEL_21;
    }
  }

  v8 = v6;
  v9 = v7;
  if ([v8 status] | 2) != 2 || !objc_msgSend(v9, sel_isiCloudDriveProvider) || (objc_msgSend(v9, sel_isEnterpriseDomain))
  {

    goto LABEL_5;
  }

  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.DocumentManager);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v0 = v18;
  v14 = v18[20];
  if (v13)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2493AC000, v11, v12, "Files Family Tip, found main iCloud Drive Provider", v15, 2u);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  else
  {

    v5 = v14;
  }

LABEL_22:

  v16 = v0[1];

  return v16(v7);
}

uint64_t DOCTipsManager.getICloudDriveDomain()(uint64_t a1)
{
  v2 = v1[21];
  swift_willThrow();

  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.DocumentManager);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2493AC000, v4, v5, "Files Family Tip, failed to get sources", v8, 2u);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  else
  {

    v4 = v7;
  }

  v9 = v1[1];

  return v9(0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray, @unowned NSError?) -> () with result type [DOCDocumentSource](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t DOCTipsManager.createICloudDriveFolder(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[24] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](DOCTipsManager.createICloudDriveFolder(_:), 0, 0);
}

uint64_t DOCTipsManager.createICloudDriveFolder(_:)()
{
  v1 = v0[22];
  v0[28] = [objc_opt_self() defaultManager];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x148);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = DOCTipsManager.createICloudDriveFolder(_:);

  return v5();
}

{
  v31 = v0;
  v1 = *(v0 + 240);
  if (!v1)
  {
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.DocumentManager);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2493AC000, v19, v20, "Files Family Tip, No iCloud Drive Domain found", v21, 2u);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    v22 = *(v0 + 200);
    v23 = *(v0 + 208);
    v24 = *(v0 + 152);

    (*(v23 + 56))(v24, 1, 1, v22);
    goto LABEL_27;
  }

  if (![*(v0 + 240) isEnabled] || (objc_msgSend(v1, sel_isHidden) & 1) != 0)
  {
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.DocumentManager);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v29 = *(v0 + 224);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v6 = 136315394;
      v8 = [v3 isEnabled];
      v9 = v8 == 0;
      if (v8)
      {
        v10 = 1702195828;
      }

      else
      {
        v10 = 0x65736C6166;
      }

      if (v9)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v30);

      *(v6 + 4) = v12;
      *(v6 + 12) = 2080;
      v13 = [v3 isHidden];
      v14 = v13 == 0;
      if (v13)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v14)
      {
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v30);

      *(v6 + 14) = v17;
      _os_log_impl(&dword_2493AC000, v4, v5, "Files Family Tip, Did not attempt to create folder, iCloud Domain isEnabled: %s , isHidden: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 208) + 56))(*(v0 + 152), 1, 1, *(v0 + 200));
LABEL_27:
    *(*(v0 + 152) + *(type metadata accessor for FamilyFolderDetails(0) + 20)) = 0;

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = *(v0 + 224);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = DOCTipsManager.createICloudDriveFolder(_:);
  v28 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7DOCNode_ps5Error_pGMd, &_sSccySo7DOCNode_ps5Error_pGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned DOCNode?, @unowned NSError?) -> () with result type DOCNode;
  *(v0 + 104) = &block_descriptor_55_2;
  *(v0 + 112) = v28;
  [v27 doc:v1 fetchRootNodeForProviderDomain:v0 + 80 completionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = DOCTipsManager.createICloudDriveFolder(_:);
  }

  else
  {
    v2 = DOCTipsManager.createICloudDriveFolder(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 256) = *(v0 + 144);
  swift_getObjectType();
  v1 = DOCNode.fpfs_syncFetchFPItem()();
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 168);
    v4 = *(v0 + 160);
    v5 = swift_allocObject();
    *(v0 + 272) = v5;
    swift_unknownObjectWeakInit();
    v6 = swift_task_alloc();
    *(v0 + 280) = v6;
    v6[2] = v5;
    v6[3] = v4;
    v6[4] = v3;
    v6[5] = v2;
    v7 = swift_task_alloc();
    *(v0 + 288) = v7;
    *v7 = v0;
    v7[1] = DOCTipsManager.createICloudDriveFolder(_:);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000021, 0x8000000249BDA080, partial apply for closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:), v6, v9);
  }

  else
  {
    v10 = *(v0 + 240);

    swift_unknownObjectRelease();
    (*(*(v0 + 208) + 56))(*(v0 + 152), 1, 1, *(v0 + 200));
    *(*(v0 + 152) + *(type metadata accessor for FamilyFolderDetails(0) + 20)) = 0;

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = DOCTipsManager.createICloudDriveFolder(_:);
  }

  else
  {

    v2 = DOCTipsManager.createICloudDriveFolder(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);

  swift_unknownObjectRelease();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    outlined destroy of CharacterSet?(*(v0 + 192), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(*(v0 + 208) + 56))(*(v0 + 152), 1, 1, *(v0 + 200));
    v6 = 0;
  }

  else
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 152);
    v11 = *(v8 + 32);
    v11(v7, *(v0 + 192), v9);
    v11(v10, v7, v9);
    v6 = 1;
    (*(v8 + 56))(v10, 0, 1, v9);
  }

  *(*(v0 + 152) + *(type metadata accessor for FamilyFolderDetails(0) + 20)) = v6;

  v12 = *(v0 + 8);

  return v12();
}

{
  v21 = v0;
  v1 = v0[33];

  swift_unknownObjectRelease();
  v2 = v0[37];
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.DocumentManager);

  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  v9 = v0[28];
  if (v7)
  {
    v11 = v0[20];
    v10 = v0[21];
    v19 = v0[30];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v20);
    *(v12 + 12) = 2112;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_2493AC000, v5, v6, "Files Family Tip, Failed to create folder %s with error: %@", v12, 0x16u);
    outlined destroy of CharacterSet?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 56))(v0[19], 1, 1, v0[25]);
  *(v0[19] + *(type metadata accessor for FamilyFolderDetails(0) + 20)) = 0;

  v17 = v0[1];

  return v17();
}

uint64_t DOCTipsManager.createICloudDriveFolder(_:)(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](DOCTipsManager.createICloudDriveFolder(_:), 0, 0);
}

{
  v21 = v1;
  swift_willThrow();
  v2 = v1[31];
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.DocumentManager);

  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[30];
  v9 = v1[28];
  if (v7)
  {
    v11 = v1[20];
    v10 = v1[21];
    v19 = v1[30];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v20);
    *(v12 + 12) = 2112;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_2493AC000, v5, v6, "Files Family Tip, Failed to create folder %s with error: %@", v12, 0x16u);
    outlined destroy of CharacterSet?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  else
  {
  }

  (*(v1[26] + 56))(v1[19], 1, 1, v1[25]);
  *(v1[19] + *(type metadata accessor for FamilyFolderDetails(0) + 20)) = 0;

  v17 = v1[1];

  return v17();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned DOCNode?, @unowned NSError?) -> () with result type DOCNode(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  swift_unknownObjectRetain();

  return swift_continuation_throwingResume();
}

void DOCTipsManager.createFamilyFolder(folderName:rootItem:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(MEMORY[0x277CC63A0]);
  v12 = MEMORY[0x24C1FAD20](a1, a2);
  v13 = [v11 initWithParentItem:a3 folderName:v12];

  [v13 setShouldBounceOnCollision_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a4;
  v15[6] = a5;
  v17[4] = partial apply for closure #1 in DOCTipsManager.createFamilyFolder(folderName:rootItem:completion:);
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v17[3] = &block_descriptor_51_0;
  v16 = _Block_copy(v17);

  [v13 setCreateFolderCompletionBlock_];
  _Block_release(v16);
  [*(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_fpItemManager) scheduleAction_];
}

void closure #1 in DOCTipsManager.createFamilyFolder(folderName:rootItem:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v13 = type metadata accessor for URL();
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v62 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    if (a2)
    {
      v27 = a2;
      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.DocumentManager);
      v29 = a2;

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v68 = a6;
        v34 = v33;
        v35 = swift_slowAlloc();
        v69 = a7;
        v36 = v35;
        v72 = v35;
        *v32 = 136315394;
        *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v72);
        *(v32 + 12) = 2112;
        v37 = a2;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 14) = v38;
        *v34 = v38;
        _os_log_impl(&dword_2493AC000, v30, v31, "Files Family Tip, Failed to create folder %s with error: %@", v32, 0x16u);
        outlined destroy of CharacterSet?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v39 = v34;
        a6 = v68;
        MEMORY[0x24C1FE850](v39, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x24C1FE850](v36, -1, -1);
        MEMORY[0x24C1FE850](v32, -1, -1);
      }

      (*(v70 + 56))(v24, 1, 1, v71);
      v40 = a2;
      a6(v24, a2);

      outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else if (a1)
    {
      v41 = a1;
      v42 = [v41 fileURL];
      if (v42)
      {
        v67 = v41;
        v69 = a7;
        v43 = v42;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        if (one-time initialization token for DocumentManager != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.DocumentManager);
        v45 = v70;
        v66 = *(v70 + 16);
        v66(v16, v20, v71);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v72 = v63;
          *v48 = 136315138;
          v49 = URL.absoluteString.getter();
          v68 = a6;
          v51 = v50;
          v52 = *(v70 + 8);
          v64 = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v65 = v52;
          v53 = v16;
          v54 = v71;
          v52(v53, v71);
          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v72);
          a6 = v68;

          *(v48 + 4) = v55;
          _os_log_impl(&dword_2493AC000, v46, v47, "Files Family Tip, got url for Family folder %s", v48, 0xCu);
          v56 = v63;
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x24C1FE850](v56, -1, -1);
          v57 = v48;
          v45 = v70;
          MEMORY[0x24C1FE850](v57, -1, -1);

          v58 = v54;
        }

        else
        {

          v59 = *(v45 + 8);
          v64 = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v65 = v59;
          v58 = v71;
          v59(v16, v71);
        }

        v60 = v66;
        v66(v24, v20, v58);
        v61 = *(v45 + 56);
        v61(v24, 0, 1, v58);
        (*((*MEMORY[0x277D85000] & *v26) + 0xD0))(v24);
        v60(v24, v20, v58);
        v61(v24, 0, 1, v58);
        a6(v24, 0);

        outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v65(v20, v58);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd, &_sScCy10Foundation3URLVSgs5Error_pGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v10 + 16))(v13, a1, v9);
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v13, v9);
    DOCTipsManager.createFamilyFolder(folderName:rootItem:completion:)(a3, a4, a5, partial apply for closure #1 in closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:), v17);
  }
}

uint64_t closure #1 in closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  if (a2)
  {
    v9[1] = a2;
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd, &_sScCy10Foundation3URLVSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v9 - v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd, &_sScCy10Foundation3URLVSgs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t DOCTipsManager.getRecipientsForShare()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](DOCTipsManager.getRecipientsForShare(), 0, 0);
}

{
  (*((*MEMORY[0x277D85000] & **(v0 + 56)) + 0xB0))();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = DOCTipsManager.getRecipientsForShare();

  return v5(v1, v2);
}

{
  v1 = v0[9];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v32 = v1;
    v2 = [v1 members];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FAFamilyMember, 0x277D08268);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v5 = 0;
      v6 = &selRef_setCancelsTouchesInView_;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v7 memberType] || (objc_msgSend(v8, v6[9]) & 1) != 0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v6 = &selRef_setCancelsTouchesInView_;
        }

        ++v5;
        if (v9 == i)
        {
          v10 = v34;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_25:

    if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
    {
LABEL_46:
      v16 = __CocoaSet.count.getter();
      if (v16)
      {
LABEL_28:
        v17 = 0;
        v15 = MEMORY[0x277D84F90];
        do
        {
          v18 = v17;
          while (1)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x24C1FC540](v18, v10);
            }

            else
            {
              if (v18 >= *(v10 + 16))
              {
                goto LABEL_45;
              }

              v19 = *(v10 + 8 * v18 + 32);
            }

            v20 = v19;
            v17 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v21 = [v19 appleID];
            if (v21)
            {
              break;
            }

            ++v18;
            if (v17 == v16)
            {
              goto LABEL_48;
            }
          }

          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v26 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
          }

          v28 = *(v15 + 2);
          v27 = *(v15 + 3);
          if (v28 >= v27 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v15);
          }

          *(v15 + 2) = v28 + 1;
          v29 = &v15[16 * v28];
          *(v29 + 4) = v23;
          *(v29 + 5) = v26;
        }

        while (v17 != v16);
        goto LABEL_48;
      }
    }

    else
    {
      v16 = *(v10 + 16);
      if (v16)
      {
        goto LABEL_28;
      }
    }

    v15 = MEMORY[0x277D84F90];
LABEL_48:

    v0 = v33;
    goto LABEL_49;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.DocumentManager);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2493AC000, v12, v13, "Files Family Tip, No Family found", v14, 2u);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_49:
  v30 = v0[1];

  return v30(v15);
}

uint64_t DOCTipsManager.getRecipientsForShare()(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](DOCTipsManager.getRecipientsForShare(), 0, 0);
}

void closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:completion:)(void *a1, void *a2, uint64_t a3, id a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a2;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.DocumentManager);
    (*(v9 + 16))(v13, a3, v8);
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40 = a4;
      v20 = v19;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v20 = 136315394;
      v21 = URL.absoluteString.getter();
      v23 = v22;
      (*(v9 + 8))(v13, v8);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v41);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2112;
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v26;
      v27 = v38;
      *v38 = v26;
      _os_log_impl(&dword_2493AC000, v17, v18, "Files Family Tip, error getting metadata for file %s %@", v20, 0x16u);
      outlined destroy of CharacterSet?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v27, -1, -1);
      v28 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1FE850](v28, -1, -1);
      v29 = v20;
      a4 = v40;
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    v37 = a2;
    (a4)(0, a2);
  }

  else if (a1)
  {
    v30 = one-time initialization token for DocumentManager;
    v31 = a1;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.DocumentManager);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2493AC000, v33, v34, "Files Family Tip, got metadata for file", v35, 2u);
      MEMORY[0x24C1FE850](v35, -1, -1);
    }

    v40 = v31;
    (a4)(a1, 0);

    v36 = v40;
  }

  else
  {
    (a4)(0, 0, v11);
  }
}

uint64_t DOCTipsManager.fetchCollaborationMetadata(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](DOCTipsManager.fetchCollaborationMetadata(for:), 0, 0);
}

uint64_t DOCTipsManager.fetchCollaborationMetadata(for:)()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[5] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_SWCollaborationMetadataCSgMd, &_sSo24_SWCollaborationMetadataCSgMR);
  *v4 = v0;
  v4[1] = DOCTipsManager.fetchCollaborationMetadata(for:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000020, 0x8000000249BDA020, partial apply for closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:), v3, v5);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = DOCTipsManager.fetchCollaborationMetadata(for:);
  }

  else
  {

    v2 = DOCNode.fpfs_fetchFINode();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMd, &_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &aBlock[-1] - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    (*(v9 + 16))(v12, a1, v8);
    v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v15 = swift_allocObject();
    (*(v9 + 32))(v15 + v14, v12, v8);
    v16 = v24;
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    (*(v5 + 16))(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v4);
    v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v21 = swift_allocObject();
    (*(v5 + 32))(v21 + v20, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = partial apply for closure #1 in closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:);
    v22[1] = v15;
    aBlock[4] = partial apply for closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:completion:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_43_0;
    v23 = _Block_copy(aBlock);

    SWCollaborationMetadataForDocumentURL();
    _Block_release(v23);
  }
}

uint64_t closure #1 in closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:)(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMd, &_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMd, &_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

Swift::Void __swiftcall DOCTipsManager.initiateShareFlow()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
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
    _os_log_impl(&dword_2493AC000, v7, v8, "Files Family Tip, Initiating tips share flow", v9, 2u);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sharingFlowTask) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in DOCTipsManager.initiateShareFlow(), v13);
}

uint64_t closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v4[12] = *(v6 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for FamilyFolderDetails(0);
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v8;
  v4[19] = v7;

  return MEMORY[0x2822009F8](closure #1 in DOCTipsManager.initiateShareFlow(), v8, v7);
}

id closure #1 in DOCTipsManager.initiateShareFlow()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v12._object = 0x8000000249BDA0B0;
      v4._countAndFlagsBits = 0x796C696D6146;
      v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v5.value._object = 0xEB00000000656C62;
      v4._object = 0xE600000000000000;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v12._countAndFlagsBits = 0xD000000000000039;
      v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v12);

      v0[21] = v7._object;
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = closure #1 in DOCTipsManager.initiateShareFlow();
      v9 = v0[16];

      return DOCTipsManager.createICloudDriveFolder(_:)(v9, v7._countAndFlagsBits, v7._object);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t closure #1 in DOCTipsManager.initiateShareFlow()()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](closure #1 in DOCTipsManager.initiateShareFlow(), v3, v2);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  outlined init with copy of DOCGridLayout.Spec?(v0[16], v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[9];

    outlined destroy of CharacterSet?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_8:
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.DocumentManager);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2493AC000, v15, v16, "Files Family Tip, Family folder details not found", v17, 2u);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    v18 = v0[20];
    v19 = v0[16];

    (*((*MEMORY[0x277D85000] & *v18) + 0x130))(1);
    outlined destroy of FamilyFolderDetails(v19);

    v20 = v0[1];

    return v20();
  }

  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[9];
  v11 = *(v9 + 32);
  v0[23] = v11;
  v0[24] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v7, v10, v8);
  if (*(v6 + *(v5 + 20)) != 1)
  {
    (*(v0[11] + 8))(v0[14], v0[10]);

    goto LABEL_8;
  }

  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = closure #1 in DOCTipsManager.initiateShareFlow();

  return DOCTipsManager.getRecipientsForShare()();
}

{
  if (!*(v0[26] + 16))
  {

    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.DocumentManager);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_17;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Files Family Tip, No family members found to use as recipients";
    goto LABEL_16;
  }

  if (![objc_opt_self() canSendText])
  {

    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.DocumentManager);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_17;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Files Family Tip, SMS services are not available";
LABEL_16:
    _os_log_impl(&dword_2493AC000, v38, v39, v41, v40, 2u);
    MEMORY[0x24C1FE850](v40, -1, -1);
LABEL_17:
    v43 = v0[20];
    v44 = v0[16];
    v45 = v0[14];
    v46 = v0[10];
    v47 = v0[11];

    (*((*MEMORY[0x277D85000] & *v43) + 0x130))(1);
    (*(v47 + 8))(v45, v46);
    goto LABEL_18;
  }

  v1 = v0[20];
  v2 = [objc_allocWithZone(MEMORY[0x277CD6888]) init];
  v0[27] = v2;
  [v2 setMessageComposeDelegate_];
  v3 = _DocumentManagerBundle();
  if (!v3)
  {
    __break(1u);
    return MEMORY[0x282200430](v3, v4, v5, v6, v7);
  }

  v8 = v3;
  v52._object = 0x8000000249BDA130;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._object = 0x8000000249BDA0F0;
  v10._countAndFlagsBits = 0x1000000000000035;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0xD000000000000056;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v52);

  v12 = static String.localizedStringWithFormat(_:_:)();
  v14 = v13;

  v15 = MEMORY[0x24C1FAD20](v12, v14);

  [v2 setBody_];

  v16 = objc_allocWithZone(MEMORY[0x277CCAA88]);
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v20 = [v16 initWithContentsOfURL_];
  v0[28] = v20;

  if (v20)
  {
    v21 = v0[23];
    v22 = v0[20];
    v24 = v0[13];
    v23 = v0[14];
    v25 = v0[11];
    v26 = v0[10];
    v27 = v0[7];
    v28 = v0[8];
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    (*(v25 + 16))(v24, v23, v26);
    v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v22;
    v21(v31 + v30, v24, v26);
    outlined init with copy of DOCGridLayout.Spec?(v28, v27, &_sScPSgMd, &_sScPSgMR);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = 3;
    v32[5] = &async function pointer to partial apply for closure #1 in closure #1 in DOCTipsManager.initiateShareFlow();
    v32[6] = v31;
    v32[7] = 0x3FF0000000000000;
    v33 = v22;
    v34 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo24_SWCollaborationMetadataCSg_Tt2g5(0, 0, v27, &async function pointer to partial apply for specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:), v32);
    v0[29] = v34;
    outlined destroy of CharacterSet?(v28, &_sScPSgMd, &_sScPSgMR);
    v35 = swift_task_alloc();
    v0[30] = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_SWCollaborationMetadataCSgMd, &_sSo24_SWCollaborationMetadataCSgMR);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v35 = v0;
    v35[1] = closure #1 in DOCTipsManager.initiateShareFlow();
    v7 = MEMORY[0x277D84950];
    v3 = v0 + 5;
    v4 = v34;
    v5 = v36;

    return MEMORY[0x282200430](v3, v4, v5, v6, v7);
  }

  v50 = v0[20];

  v44 = v0[16];
  (*(v0[11] + 8))(v0[14], v0[10]);
LABEL_18:
  outlined destroy of FamilyFolderDetails(v44);

  v48 = v0[1];

  return v48();
}

{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = closure #1 in DOCTipsManager.initiateShareFlow();
  }

  else
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = closure #1 in DOCTipsManager.initiateShareFlow();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = v0[5];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 defaultShareOptions];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
      }
    }

    else
    {
      v5 = 0;
    }

    v8 = v0[27];
    [v8 insertCollaborationItemProvider:v0[28] collaborationShareOptions:v5 collaborationMetadata:v2 isCollaboration:1];

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setRecipients_];

    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = v0[27];
    v12 = v0[28];
    v7 = v0[20];
    if (Strong)
    {
      v13 = Strong;
      [Strong presentViewController:v0[27] animated:1 completion:0];
    }

    else
    {
    }

    v6 = v2;
  }

  else
  {
    v6 = v0[27];
    v2 = v0[28];
    v7 = v0[20];
  }

  v14 = v0[16];
  (*(v0[11] + 8))(v0[14], v0[10]);
  outlined destroy of FamilyFolderDetails(v14);

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[20];

  (*((*MEMORY[0x277D85000] & *v4) + 0x130))(1);

  v5 = v0[16];
  (*(v0[11] + 8))(v0[14], v0[10]);
  outlined destroy of FamilyFolderDetails(v5);

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x2822009F8](closure #1 in DOCTipsManager.initiateShareFlow(), v4, v3);
}

uint64_t closure #1 in closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = closure #1 in closure #1 in DOCTipsManager.initiateShareFlow();

  return DOCTipsManager.fetchCollaborationMetadata(for:)(a3);
}

uint64_t closure #1 in closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCTipsManager.initiateShareFlow(), 0, 0);
  }
}

void __swiftcall DOCTipsManager.createTipsHeaderView()(UIView *__return_ptr retstr)
{
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
  if (v2)
  {
    v3 = v2;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.DocumentManager);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v54[0] = v9;
      *v8 = 136315138;
      v10 = [v5 isUserInteractionEnabled];
      v11 = v10 == 0;
      if (v10)
      {
        v12 = 1702195828;
      }

      else
      {
        v12 = 0x65736C6166;
      }

      if (v11)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0xE400000000000000;
      }

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v54);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_2493AC000, v6, v7, "Files Family Tip, familySharedFolderTipView isUserInteractionEnabled value %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1FE850](v9, -1, -1);
      MEMORY[0x24C1FE850](v8, -1, -1);
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v55 = v19;
      *v18 = 136315138;
      if (one-time initialization token for $hasFamilyWithAdultMember != -1)
      {
        swift_once();
      }

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints, &_s6TipKit4TipsO9ParameterVy_SbGMR);
      __swift_project_value_buffer(v20, static DOCTipsFamilyTip.$hasFamilyWithAdultMember);
      swift_beginAccess();
      Tips.Parameter.wrappedValue.getter();
      swift_endAccess();
      if (v53)
      {
        v21 = 1702195828;
      }

      else
      {
        v21 = 0x65736C6166;
      }

      if (v53)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v55);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2493AC000, v16, v17, "Files Family Tip, tip hasFamilyWithAdultMember parameter value %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55 = v27;
      *v26 = 136315138;
      if (one-time initialization token for $hasSharedFolderWithAdultFamilyMember != -1)
      {
        swift_once();
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints, &_s6TipKit4TipsO9ParameterVy_SbGMR);
      __swift_project_value_buffer(v28, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
      swift_beginAccess();
      Tips.Parameter.wrappedValue.getter();
      swift_endAccess();
      if (v53)
      {
        v29 = 1702195828;
      }

      else
      {
        v29 = 0x65736C6166;
      }

      if (v53)
      {
        v30 = 0xE400000000000000;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v55);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2493AC000, v24, v25, "Files Family Tip, tip hasSharedFolderWithAdultFamilyMember parameter value %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    v32 = v5;
    [v32 setTranslatesAutoresizingMaskIntoConstraints_];
    v33 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v33 addSubview_];
    v34 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_249BA0470;
    v36 = [v32 leadingAnchor];
    v37 = [v33 layoutMarginsGuide];
    v38 = [v37 leadingAnchor];

    v39 = [v36 constraintEqualToAnchor_];
    *(v35 + 32) = v39;
    v40 = [v32 trailingAnchor];
    v41 = [v33 layoutMarginsGuide];
    v42 = [v41 trailingAnchor];

    v43 = [v40 constraintEqualToAnchor_];
    *(v35 + 40) = v43;
    v44 = [v32 topAnchor];
    v45 = [v33 layoutMarginsGuide];
    v46 = [v45 topAnchor];

    v47 = [v44 constraintEqualToAnchor_];
    *(v35 + 48) = v47;
    v48 = [v32 bottomAnchor];

    v49 = [v33 layoutMarginsGuide];
    v50 = [v49 bottomAnchor];

    v51 = [v48 constraintEqualToAnchor_];
    *(v35 + 56) = v51;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v34 activateConstraints_];
  }

  else
  {
    v15 = objc_allocWithZone(MEMORY[0x277D75D18]);

    [v15 init];
  }
}

uint64_t DOCTipsManager.familySharedFolderTipActionTapped(_:)()
{
  v1 = v0;
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.DocumentManager);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "Files Family Tip, Set up shared folder button tapped", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x130))(0);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = (*((*v6 & *v7) + 0xF8))();
    if (v12)
    {
      v13 = v12;
      [v12 isUserInteractionEnabled];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_2493AC000, v8, v9, "Files Family Tip, familySharedFolderTipView isUserInteractionEnabled value in action handler %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  return (*((*v6 & *v7) + 0x180))();
}

id DOCTipsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t partial apply for closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)();
}

uint64_t partial apply for closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCTipsManager.initiateShareFlow()(a1, v4, v5, v6);
}

void type metadata completion function for FamilyFolderDetails(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata completion function for DOCTipsManager(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DOCTipsManager.getICloudDriveDomain()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x148);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return v5();
}

uint64_t partial apply for closure #1 in closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMd, &_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMR);

  return closure #1 in closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:)(a1, a2);
}

void partial apply for closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:completion:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:completion:)(a1, a2, v2 + v6, v7);
}

double block_copy_helper_41_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:)(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd, &_sScCy10Foundation3URLVSgs5Error_pGMR);

  return closure #1 in closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:)(a1, a2);
}

uint64_t outlined destroy of FamilyFolderDetails(uint64_t a1)
{
  v2 = type metadata accessor for FamilyFolderDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #1 in DOCTipsManager.initiateShareFlow()(a1, v6, v1 + v5);
}

uint64_t specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);

  return specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(a5, a6, a7, a2);
}

uint64_t specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t partial apply for specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(a1, v9, v4, v5, v6, v7, v8);
}

uint64_t specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 48) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:), 0, 0);
}

void specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)()
{
  v1 = v0[3];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = v0[4];
      v0[7] = 0;
      v5 = (v2 + *v2);
      v3 = swift_task_alloc();
      v0[8] = v3;
      *v3 = v0;
      v4 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
    }

    else
    {
      static Task<>.checkCancellation()();
      v5 = (v0[4] + *v0[4]);
      v3 = swift_task_alloc();
      v0[12] = v3;
      *v3 = v0;
      v4 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
    }

    v3[1] = v4;

    v5(v0 + 2);
  }
}

uint64_t specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  else
  {
    v2 = DOCNode.fpfs_fetchFPItem();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  else
  {
    v2 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56) + 1;

  if (v2 == v1)
  {
    v3 = *(v0 + 88);
    static Task<>.checkCancellation()();
    if (v3)
    {
      v4 = *(v0 + 8);

      return v4();
    }

    v8 = (*(v0 + 32) + **(v0 + 32));
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v7 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  else
  {
    ++*(v0 + 56);
    v8 = (*(v0 + 32) + **(v0 + 32));
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v7 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  v6[1] = v7;

  return v8(v0 + 16);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  else
  {
    v2 = DOCNode.fpfs_fetchFPItem();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(unint64_t a1)
{
  v2 = *(v1 + 48) * 1000000000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v1;
  v3[1] = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  a1 = v2;

  return MEMORY[0x282200480](a1);
}

uint64_t DOCConfiguration.defaultEffectiveTabForLocationRestore.getter()
{
  v1 = [v0 defaultEffectiveTabIdentifierForLocationRestore];
  v2 = DOCTabIdentifier.tab.getter(v1);

  return v2;
}

id static DOCTab.tabIdentifier(for:)(id result)
{
  if (result <= 2)
  {
    return **(&unk_278FA38A0 + result);
  }

  __break(1u);
  return result;
}

void DOCConfiguration.configureContextForDisplayingTab(_:)(unint64_t a1)
{
  if (a1 > 2)
  {
    __break(1u);
  }

  else
  {
    v2 = **(&unk_278FA38A0 + a1);
    [v1 setDefaultEffectiveTabIdentifierForLocationRestore_];
  }
}

void @objc DOCConfiguration.configureContextForDisplayingTab(_:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 2)
  {
    __break(1u);
  }

  else
  {
    v5 = **(&unk_278FA38A0 + a3);
    [a1 setDefaultEffectiveTabIdentifierForLocationRestore_];
  }
}

uint64_t DOCTab.init(tabIdentifier:)(void *a1)
{
  v2 = DOCTabIdentifier.tab.getter(a1);

  return v2;
}

uint64_t DOCConfiguration.canPresentContentForTab(_:)(unint64_t a1)
{
  if (![v1 forSavingDocuments])
  {
    LOBYTE(v3) = 1;
    return v3 & 1;
  }

  if (a1 < 3)
  {
    v3 = 4u >> (a1 & 7);
    return v3 & 1;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t @objc DOCConfiguration.canPresentContentForTab(_:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  if (![v4 forSavingDocuments])
  {
    LOBYTE(v5) = 1;
    goto LABEL_5;
  }

  if (a3 < 3)
  {
    v5 = 4u >> (a3 & 7);
LABEL_5:

    return v5 & 1;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCUserInterfaceState.mostRecentlyVisitedBrowseSource(withFallback:)(uint64_t a1)
{
  v3 = [v1 mostRecentlyVisitedEffectiveTabIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = DOCTabIdentifier.tab.getter(v3);
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      return v5;
    }
  }

  return a1;
}

uint64_t DOCTabIdentifier.tab.getter(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    return 0;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    return 1;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return 1;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

    return 2;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t @objc DOCUserInterfaceState.mostRecentlyVisitedBrowseSource(withFallback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [v4 mostRecentlyVisitedEffectiveTabIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = DOCTabIdentifier.tab.getter(v5);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      return v7;
    }
  }

  else
  {
  }

  return a3;
}

id DOCUserInterfaceState.updateMostRecentlyVisitedBrowseSource(toTab:)(id result)
{
  if (result <= 2)
  {
    return [v1 setMostRecentlyVisitedEffectiveTabIdentifier_];
  }

  __break(1u);
  return result;
}

id @objc DOCUserInterfaceState.updateMostRecentlyVisitedBrowseSource(toTab:)(id result, uint64_t a2, unint64_t a3)
{
  if (a3 <= 2)
  {
    return [result setMostRecentlyVisitedEffectiveTabIdentifier_];
  }

  __break(1u);
  return result;
}

id DOCTabIdentifier.init(_:)(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return **(&unk_278FA38A0 + a1);
  }
}

uint64_t DOCPromptHeaderView.promptText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText);

  return v1;
}

id DOCPromptHeaderView.init(text:glyphName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_metrics];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  *v10 = 0x4030000000000000;
  *(v10 + 1) = v11;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel] = 0;
  v12 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_glyphName];
  *v13 = a3;
  *(v13 + 1) = a4;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  DOCPromptHeaderView.setUpPromptLabel()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249B9A480;
  v16 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v17 = MEMORY[0x277D74DB8];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v14;
}

void DOCPromptHeaderView.setUpPromptLabel()()
{
  v1 = DOCPromptHeaderView.promptLabel.getter();
  [v0 addSubview_];

  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA0470;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel;
  v5 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel] leadingAnchor];
  v6 = [v0 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v3 + 32) = v7;
  v8 = [*&v0[v4] trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v3 + 40) = v10;
  v11 = [*&v0[v4] topAnchor];
  v12 = [v0 topAnchor];
  v13 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_metrics];
  v14 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_metrics];
  v15 = [v11 constraintEqualToAnchor:v12 constant:v14];

  *(v3 + 48) = v15;
  v16 = [*&v0[v4] bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-v14];

  *(v3 + 56) = v18;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints_];

  v20 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_glyphName + 8];
  if (v20)
  {
    v21 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_glyphName];
    v22 = *&v0[v4];
    v23 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText];
    v24 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText + 8];
    v25 = *(v13 + 1);
    v26 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v27 = v22;
    v28 = MEMORY[0x24C1FAD20](v23, v24);
    v29 = [v26 initWithString_];

    v30 = objc_opt_self();
    v42 = v29;
    v31 = MEMORY[0x24C1FAD20](v21, v20);
    v32 = [v30 _systemImageNamed_withConfiguration_];

    if (!v32)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v33 = [objc_opt_self() textAttachmentWithImage_];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
    v34 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v36 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
    v37 = [v35 initWithString_];

    [v42 insertAttributedString:v37 atIndex:0];
    [v42 insertAttributedString:v34 atIndex:0];
    [v42 addAttribute:*MEMORY[0x277D740A8] value:v25 range:{0, objc_msgSend(v42, sel_length)}];

    [v27 setAttributedText_];
  }

  else
  {
    v38 = *&v0[v4];
    v39 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText];
    v40 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText];
    v41 = *(v39 + 1);
    v27 = v38;
    v42 = MEMORY[0x24C1FAD20](v40, v41);
    [v27 setText_];
  }
}

Swift::Void __swiftcall DOCPromptHeaderView.updateForChangedTraitsAffectingFonts()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_glyphName + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_glyphName);
    v3 = DOCPromptHeaderView.promptLabel.getter();
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText);
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText + 8);
    v6 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_metrics + 8);
    v7 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v8 = MEMORY[0x24C1FAD20](v4, v5);
    v9 = [v7 initWithString_];

    v10 = objc_opt_self();
    v18 = v9;
    v11 = MEMORY[0x24C1FAD20](v2, v1);
    v12 = [v10 _systemImageNamed_withConfiguration_];

    if (v12)
    {

      v13 = [objc_opt_self() textAttachmentWithImage_];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
      v14 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
      v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v16 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
      v17 = [v15 initWithString_];

      [v18 insertAttributedString:v17 atIndex:0];
      [v18 insertAttributedString:v14 atIndex:0];
      [v18 addAttribute:*MEMORY[0x277D740A8] value:v6 range:{0, objc_msgSend(v18, sel_length)}];

      [v3 setAttributedText_];
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

id DOCPromptHeaderView.promptLabel.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel);
  }

  else
  {
    v4 = closure #1 in DOCPromptHeaderView.promptLabel.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCPromptHeaderView.promptLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setFont_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setTextAlignment_];
  [v2 setNumberOfLines_];
  return v2;
}

id DOCPromptHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCPromptHeaderView.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel);
}

id DOCPromptHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UITraitCollection.doc_value<A>(_:withAXFallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [v4 preferredContentSizeCategory];
  v10 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v11 = *(*(a3 - 8) + 16);
  if (v10)
  {
    v12 = a2;
  }

  else
  {
    v12 = a1;
  }

  return v11(a4, v12, a3);
}

uint64_t UITraitCollection.doc_hasChanged(_:comparesTo:)(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  if (specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.hSizeClass))
  {
    if (a2)
    {
      v7 = [a2 horizontalSizeClass];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 != [v2 horizontalSizeClass];
  }

  else
  {
    v8 = 0;
  }

  if (one-time initialization token for vSizeClass != -1)
  {
    swift_once();
  }

  v9 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.vSizeClass);
  if (v8 || !v9)
  {
    v10 = v9 || v8;
  }

  else
  {
    if (a2)
    {
      v11 = [a2 verticalSizeClass];
    }

    else
    {
      v11 = 0;
    }

    v10 = v11 != [v2 verticalSizeClass];
  }

  if (one-time initialization token for displayScale != -1)
  {
    swift_once();
  }

  v12 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.displayScale);
  if (v10 || !v12)
  {
    v13 = v12 || v10;
  }

  else
  {
    if (a2)
    {
      [a2 displayScale];
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    [v2 displayScale];
    v13 = v15 != v16;
  }

  if (one-time initialization token for userInterfaceStyle != -1)
  {
    swift_once();
  }

  v17 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.userInterfaceStyle);
  if (v13 || !v17)
  {
    v18 = v17 || v13;
  }

  else
  {
    if (a2)
    {
      v19 = [a2 userInterfaceStyle];
    }

    else
    {
      v19 = 0;
    }

    v18 = v19 != [v2 userInterfaceStyle];
  }

  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v20 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.sizeCategory);
  if (v18 || !v20)
  {
    v21 = v20 || v18;
  }

  else
  {
    v21 = UITraitCollection.doc_isPreferredContentSizeCategoryChanged(from:)(a2);
  }

  if (one-time initialization token for userInterfaceIdiom != -1)
  {
    swift_once();
  }

  v22 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.userInterfaceIdiom);
  if (v21 & 1 | !v22)
  {
    v23 = v22 | v21;
  }

  else
  {
    if (a2)
    {
      v24 = [a2 userInterfaceIdiom];
    }

    else
    {
      v24 = -1;
    }

    v23 = v24 != [v2 userInterfaceIdiom];
  }

  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v25 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.layoutDirection);
  if (v23 & 1 | !v25)
  {
    v26 = v25 | v23;
  }

  else
  {
    if (a2)
    {
      v27 = [a2 layoutDirection];
    }

    else
    {
      v27 = -1;
    }

    v26 = v27 != [v2 layoutDirection];
  }

  if (one-time initialization token for sourceOutlineStyle != -1)
  {
    swift_once();
  }

  v28 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.sourceOutlineStyle);
  if (v26 & 1 | !v28)
  {
    v29 = v28 | v26;
  }

  else
  {
    v30 = [v2 sourceOutlineStyle];
    if (a2)
    {
      v29 = v30 != [a2 sourceOutlineStyle];
    }

    else
    {
      v29 = 1;
    }
  }

  if (one-time initialization token for legibilityWeight != -1)
  {
    swift_once();
  }

  v31 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.legibilityWeight);
  if (v29 & 1 | !v31)
  {
    v32 = v31 | v29;
  }

  else
  {
    if (a2)
    {
      v33 = [a2 legibilityWeight];
    }

    else
    {
      v33 = -1;
    }

    v32 = v33 != [v2 legibilityWeight];
  }

  if (one-time initialization token for browserLayoutConfiguration != -1)
  {
    swift_once();
  }

  v34 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.browserLayoutConfiguration);
  if (v32 & 1 | !v34)
  {
    v35 = v34 | v32;
  }

  else
  {
    lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
    UITraitCollection.subscript.getter();
    if (a2)
    {
      UITraitCollection.subscript.getter();
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }
  }

  return v35 & 1;
}

void specialized OptionSet<>.remove(_:)(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v7 = *v4;
  _StringGuts.grow(_:)(18);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v8);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  v9 = v7 & a1;
  _StringGuts.grow(_:)(18);

  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v10);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v12 = 0x6172287469617254;
  v11 = 0xEF3A65756C615677;
  if (specialized SetAlgebra.isEmpty.getter(v7 & a1))
  {

    v9 = 0;
    v12 = 0;
    v11 = 0;
  }

  else
  {
    specialized SetAlgebra.subtract(_:)(a1);
  }

  *a4 = v9;
  a4[1] = v12;
  a4[2] = v11;
}

void specialized OptionSet<>.update(with:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  _StringGuts.grow(_:)(18);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v7);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  v8 = v6 & a1;
  _StringGuts.grow(_:)(18);

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v9);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v11 = 0x6172287469617254;
  v10 = 0xEF3A65756C615677;

  UITraitCollection.Traits.init(rawValue:)(v6 | a1, v3);
  if (specialized SetAlgebra.isEmpty.getter(v6 & a1))
  {

    v8 = 0;
    v11 = 0;
    v10 = 0;
  }

  *a2 = v8;
  a2[1] = v11;
  a2[2] = v10;
}

double specialized SetAlgebra.subtracting(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  _StringGuts.grow(_:)(18);

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v6);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  v7 = a2 ^ a1;
  _StringGuts.grow(_:)(18);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v8);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  UITraitCollection.Traits.init(rawValue:)(a2, a3);
  v9 = *a3;

  UITraitCollection.Traits.init(rawValue:)(v9 & v7, a3);

  return result;
}

BOOL specialized SetAlgebra.isSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(18);

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v6);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  _StringGuts.grow(_:)(18);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v7);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  return (a4 & a1) == a4;
}

uint64_t specialized SetAlgebra.isDisjoint(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(18);

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v6);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  _StringGuts.grow(_:)(18);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v7);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  LOBYTE(a4) = specialized SetAlgebra.isEmpty.getter(a4 & a1);

  return a4 & 1;
}

BOOL specialized SetAlgebra.isEmpty.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(18);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  return a1 == 0;
}

void specialized SetAlgebra.init<A>(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  _StringGuts.grow(_:)(18);

  v14 = 0;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v4);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v5 = 0x6172287469617254;
  v6 = 0xEF3A65756C615677;
  v15 = 0;
  v16 = 0x6172287469617254;
  v17 = 0xEF3A65756C615677;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (a1 + 48);
    while (v8 < *(a1 + 16))
    {
      ++v8;
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 2);

      specialized OptionSet<>.insert(_:)(&v14, v12, v11, v10);

      v9 += 3;
      if (v7 == v8)
      {
        v13 = v15;
        v5 = v16;
        v6 = v17;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = 0;
LABEL_7:

    *a2 = v13;
    a2[1] = v5;
    a2[2] = v6;
  }
}

double specialized SetAlgebra.subtract(_:)(uint64_t a1)
{
  v3 = *v1;
  _StringGuts.grow(_:)(18);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v4);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  _StringGuts.grow(_:)(18);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v5);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  UITraitCollection.Traits.init(rawValue:)((v3 ^ a1) & v3, v1);

  return result;
}

uint64_t static Array<A>.doc_traitsAffectingFonts.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  v1 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v2 = MEMORY[0x277D74DB8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t UITraitCollection.doc_hasSpecified(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v5 = !specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.hSizeClass) || [v1 horizontalSizeClass] != 0;
  if (one-time initialization token for vSizeClass != -1)
  {
    swift_once();
  }

  v6 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.vSizeClass);
  if (v6 && v5)
  {
    v7 = [v1 verticalSizeClass] != 0;
  }

  else
  {
    v7 = !v6 && v5;
  }

  if (one-time initialization token for displayScale != -1)
  {
    swift_once();
  }

  v8 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.displayScale);
  if (v8 & v7)
  {
    [v1 displayScale];
    v10 = v9 > 0.0;
  }

  else
  {
    v10 = !v8 & v7;
  }

  if (one-time initialization token for userInterfaceStyle != -1)
  {
    swift_once();
  }

  v11 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.userInterfaceStyle);
  if (v11 & v10)
  {
    v12 = [v1 userInterfaceStyle] != 0;
  }

  else
  {
    v12 = !v11 & v10;
  }

  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v13 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.sizeCategory);
  if (v13 & v12)
  {
    v14 = [v1 preferredContentSizeCategory];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {

      v19 = 0;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v19 = v20 ^ 1;
    }
  }

  else
  {
    v19 = !v13 & v12;
  }

  if (one-time initialization token for userInterfaceIdiom != -1)
  {
    swift_once();
  }

  v21 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.userInterfaceIdiom);
  if (v21 & v19)
  {
    v22 = [v1 userInterfaceIdiom] != -1;
  }

  else
  {
    v22 = !v21 & v19;
  }

  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v23 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.layoutDirection);
  if (v23 & v22)
  {
    v24 = [v1 layoutDirection] != -1;
  }

  else
  {
    v24 = !v23 & v22;
  }

  if (one-time initialization token for legibilityWeight != -1)
  {
    swift_once();
  }

  v25 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.legibilityWeight);
  if (v25 & v24)
  {
    v26 = [v1 legibilityWeight] != -1;
  }

  else
  {
    v26 = !v25 & v24;
  }

  return v26 & 1;
}

unint64_t DOCSourceOutlineStyle.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t DOCSourceOutlinePresentationContext.sourceOutlineStyle.getter(unint64_t result)
{
  if (result >= 2)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t UITraitCollection.Traits.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UITraitCollection.Traits.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  _StringGuts.grow(_:)(18);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v4);

  result = MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  *a2 = a1;
  a2[1] = 0x6172287469617254;
  a2[2] = 0xEF3A65756C615677;
  return result;
}

uint64_t UITraitCollection.Traits.init(rawValue:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double one-time initialization function for hSizeClass()
{
  *&result = 1;
  static UITraitCollection.Traits.hSizeClass = xmmword_249BA8390;
  qword_27EEE9C60 = 0x8000000249BDA370;
  return result;
}

double one-time initialization function for vSizeClass()
{
  *&result = 2;
  static UITraitCollection.Traits.vSizeClass = xmmword_249BA83A0;
  qword_27EEE9C78 = 0x8000000249BDA350;
  return result;
}

double one-time initialization function for displayScale()
{
  *&result = 4;
  static UITraitCollection.Traits.displayScale = xmmword_249BA83B0;
  qword_27EEE9C90 = 0xEC000000656C6163;
  return result;
}