void type metadata accessor for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    _ss11AnyHashableVSgMaTm_3(255, a3, a4, a5);
    v6 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<PopoverStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<PopoverStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<PopoverStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(255, &lazy cache variable for type metadata for StyleContextWriter<PopoverStyleContext>, MEMORY[0x1E697F788], MEMORY[0x1E697F780], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<PopoverStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.commitUpdates()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  *(v0 + *((v2 & v1) + 0xC8)) = 1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *((v2 & v1) + 0x60);
  *(v5 + 24) = *(v3 + 104);
  *(v5 + 40) = *((v2 & v1) + 0x78);
  *(v5 + 48) = v4;

  static Update.enqueueAction(reason:_:)();
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v43 = a1;
  v8 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), *(*((*MEMORY[0x1E69E7D40] & *v4) + 0x70) + 8), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v40 - v10;
  if (a2 == 0xD000000000000011 && 0x800000018CD4D770 == a3)
  {

    goto LABEL_5;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    v21 = MEMORY[0x18D00C850](a2, a3);
    v22 = MEMORY[0x18D00C850](0x646165487473694CLL, 0xEA00000000007265);

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v43 = [v43 dequeueReusableSupplementaryViewOfKind:v21 withReuseIdentifier:v22 forIndexPath:isa];

    swift_getAssociatedTypeWitness();
    v18 = swift_dynamicCastUnknownClassUnconditional();
    swift_getAssociatedConformanceWitness();
    PlatformListViewBase.updateViewGraphForDisplay(_:)(0);
    v24 = IndexPath.section.getter();
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v25 == a3)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        v35 = MEMORY[0x1E69E7D40];
        v27 = v9;
        v36 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x88);
        swift_beginAccess();
        v29 = v44;
        (*(v27 + 16))(v44, &v5[v36], v8);
        v37 = *((*v35 & *v5) + 0xA0);
        swift_beginAccess();
        v33 = *&v5[v37];
        outlined copy of Transaction?(v33);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
        ListCoreDataSource.configureFooter(_:transaction:forSectionAtOffset:)(v18, v33, v24, v8, WitnessTable);
LABEL_15:
        outlined consume of ListItemTint?(v33);
        (*(v27 + 8))(v29, v8);
        return v18;
      }
    }

    v27 = v9;
    type metadata accessor for ListCollectionViewCell(0);
    v28 = swift_dynamicCastClass();
    v29 = v44;
    v30 = MEMORY[0x1E69E7D40];
    if (v28)
    {
      *(v28 + direct field offset for ListCollectionViewCellBase.shouldHugContent) = v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x140)];
    }

    v31 = *((*v30 & *v5) + 0x88);
    swift_beginAccess();
    (*(v27 + 16))(v29, &v5[v31], v8);
    v32 = *((*v30 & *v5) + 0xA0);
    swift_beginAccess();
    v33 = *&v5[v32];
    outlined copy of Transaction?(v33);
    v34 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
    ListCoreDataSource.configureHeader(_:transaction:forSectionAtOffset:)(v18, v33, v24, v8, v34);
    goto LABEL_15;
  }

LABEL_5:
  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x88);
  swift_beginAccess();
  v40 = *(v9 + 16);
  v41 = v12;
  v13 = v44;
  v40(v44, &v5[v12], v8);
  LOBYTE(v12) = ShadowListDataSource.hasGlobalHeader.getter(v8);
  v42 = *(v9 + 8);
  v42(v13, v8);
  if (v12)
  {
    v14 = MEMORY[0x18D00C850](a2, a3);
    v15 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD4D770);

    v16 = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [v43 dequeueReusableSupplementaryViewOfKind:v14 withReuseIdentifier:v15 forIndexPath:v16];

    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();
    v40(v13, &v5[v41], v8);
    v19 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xA0);
    swift_beginAccess();
    v20 = *&v5[v19];
    outlined copy of Transaction?(v20);
    ShadowListDataSource.configureGlobalHeader(_:transaction:)(v18, v20, v8);
    outlined consume of ListItemTint?(v20);
    v42(v13, v8);
    return v18;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(double (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v27 = a1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v25 = type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  UICollectionViewListCoordinatorBase.currentSelection.getter(v14);
  if ((*(v15 + 48))(v14, 1, v4) == 1)
  {
    return (*(v9 + 8))(v14, v8);
  }

  (*(v15 + 32))(v18, v14, v4);
  v27(v18);
  if (static CoreTesting.isRunning.getter())
  {
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x110);
    swift_beginAccess();
    (*(v23 + 16))(v7, &v3[v20], v24);
    v21 = v25;
    v22 = *(v25 - 8);
    result = (*(v22 + 48))(v7, 1, v25);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      specialized Binding.wrappedValue.setter(v18);
      (*(v15 + 8))(v18, v4);
      return (*(v22 + 8))(v7, v21);
    }
  }

  else
  {
    (*(v15 + 16))(v11, v18, v4);
    (*(v15 + 56))(v11, 0, 1, v4);
    specialized UICollectionViewListCoordinatorBase.pendingSelection.setter(v11);
    (*(v9 + 8))(v11, v8);
    return (*(v15 + 8))(v18, v4);
  }

  return result;
}

BOOL UICollectionViewListCoordinatorBase.collectionView(_:canPerformPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = IndexPath.section.getter();
  if (v9 == NSNotFound.getter())
  {
    return 0;
  }

  if ([a1 isEditing])
  {
    UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(a2, v11, v8);
    v12 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness);
    (*(v6 + 8))(v8, v5);
    if (v12 == 1)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v14 = [a1 cellForItemAtIndexPath_];

      if (v14)
      {
        v15 = swift_getAssociatedTypeWitness();
        if (swift_dynamicCastUnknownClass())
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v17 = *(AssociatedConformanceWitness + 16);
          v18 = v14;
          v17(v21, v15, AssociatedConformanceWitness);

          v23[0] = v21[0];
          v23[1] = v21[1];
          v23[2] = v21[2];
          v23[3] = v21[3];
          v24 = v22;
          if (*(&v21[0] + 1) != 1)
          {
            v19 = *(&v21[0] + 1) != 0;
            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(v23, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
            return v19;
          }
        }

        else
        {
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v154 = *MEMORY[0x1E69E7D40] & v6;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v142 = &v132[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v132[-v11];
  v148 = type metadata accessor for IndexPath();
  v151 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v157 = &v132[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = *((v7 & v6) + 0x70);
  v13 = *(v147 + 8);
  v14 = *((v7 & v6) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v152 = *(AssociatedTypeWitness - 8);
  v16 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v138 = &v132[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v132[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v153 = &v132[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v140 = &v132[-v22];
  v156 = *((v7 & v6) + 0x68);
  v158 = type metadata accessor for Binding();
  v160 = type metadata accessor for Optional();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v155 = &v132[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v132[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v132[-v27];
  v162 = type metadata accessor for Optional();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v139 = &v132[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v137 = &v132[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v132[-v33];
  MEMORY[0x1EEE9AC00](v35);
  v163 = &v132[-v36];
  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(a2, v37, &v132[-v36]);
  v145 = a2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v143 = a1;
  v39 = [a1 cellForItemAtIndexPath_];

  v150 = v14;
  v136 = v13;
  if (!v39)
  {
    goto LABEL_5;
  }

  v41 = swift_getAssociatedTypeWitness();
  v40 = swift_dynamicCastUnknownClass();
  if (!v40)
  {
    goto LABEL_5;
  }

  v134 = v28;
  v149 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v39;
  v44 = *(AssociatedConformanceWitness + 16);
  v144 = v43;
  v45 = v43;
  v44(v165, v41, AssociatedConformanceWitness);
  v168 = v165[0];
  v169 = v165[1];
  v170 = v165[2];
  v171 = v165[3];
  v172 = v166;
  v164 = *(&v165[0] + 1);
  if (*(&v165[0] + 1) != 1)
  {
    v74 = v45;
    v75 = v168;
    v49 = v169;
    v76 = BYTE2(v168);
    v77 = [v143 isEditing];
    if (v76)
    {
      v78 = (*(v152 + 48))(v163, 1, v149);
      v50 = v161;
      v79 = v134;
      if (v78 != 1)
      {
        if (v75)
        {
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v168, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

          LODWORD(v153) = 0;
          v164 = 0;
          v49 = 0;
          AssociatedTypeWitness = v149;
          v51 = v157;
          v39 = v144;
          v52 = MEMORY[0x1E69E7D40];
          goto LABEL_46;
        }

        v133 = v77;
        LODWORD(v140) = v75;
        LODWORD(v153) = 0;
LABEL_33:
        AssociatedTypeWitness = v149;
        v52 = MEMORY[0x1E69E7D40];
        v98 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x110);
        swift_beginAccess();
        v99 = v159;
        v100 = &v3[v98];
        v101 = v160;
        (*(v159 + 16))(v79, v100, v160);
        v102 = (*(*(v158 - 8) + 48))(v79, 1);
        (*(v99 + 8))(v79, v101);
        if (v102 == 1)
        {
          v50 = v161;
          v51 = v157;
          v39 = v144;
          if ((v133 & 1) == 0)
          {
            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v168, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

LABEL_56:
            v164 = 0;
            v49 = 0;
            goto LABEL_8;
          }
        }

        else
        {
          v50 = v161;
          v51 = v157;
          v39 = v144;
          if ((v133 & 1) == 0)
          {

LABEL_42:
            if ((v153 & 1) == 0)
            {
              _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v168, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
              LODWORD(v153) = 0;
              goto LABEL_56;
            }

LABEL_43:
            v104 = v164;
            outlined copy of AppIntentExecutor?(v164, v49);
            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v168, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
            if (v104)
            {

              v86 = v164;
              v87 = v140;
              goto LABEL_45;
            }

            v164 = 0;
            LODWORD(v153) = 1;
            if (v140)
            {
              goto LABEL_46;
            }

LABEL_8:
            v53 = v50;
            v54 = v49;
            v55 = *((*v52 & *v3) + 0x110);
            swift_beginAccess();
            v56 = v159;
            v57 = &v3[v55];
            v58 = v155;
            v59 = v160;
            (*(v159 + 16))(v155, v57, v160);
            if ((*(*(v158 - 8) + 48))(v58, 1) == 1)
            {
              outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v164, v54);

              (*(v56 + 8))(v58, v59);
              v60 = v162;
              v50 = v53;
              return (*(v50 + 8))(v163, v60);
            }

            v149 = AssociatedTypeWitness;
            (*(v56 + 8))(v58, v59);
            v61 = *((*v52 & *v3) + 0xE0);
            swift_beginAccess();
            v62 = v146;
            outlined init with copy of SwipeActions.Configuration?(&v3[v61], v146, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
            v63 = v151;
            v64 = v148;
            if ((*(v151 + 48))(v62, 1, v148) == 1)
            {

              _s10Foundation9IndexPathVSgWOhTm_1(v62, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
              v60 = v162;
              v65 = v54;
            }

            else
            {
              (*(v63 + 32))(v51, v62, v64);
              _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
              v71 = v51;
              if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
              {
                v140 = v54;
                v88 = v139;
                UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v51, v72, v139);
                v89 = v152;
                v90 = v149;
                v50 = v53;
                if ((*(v152 + 48))(v88, 1, v149) == 1)
                {
                  v63 = v151;
                  (*(v151 + 8))(v71, v64);

                  v60 = v162;
                  (*(v53 + 8))(v88, v162);
                }

                else
                {
                  v144 = v39;
                  (*(v89 + 32))(v138, v88, v90);
                  v91 = IndexPath._bridgeToObjectiveC()().super.isa;
                  v92 = [v143 cellForItemAtIndexPath_];

                  v94 = v147;
                  v95 = v156;
                  if (v92)
                  {
                    v96 = swift_getAssociatedTypeWitness();
                    if (swift_dynamicCastUnknownClass() && (v97 = swift_getAssociatedConformanceWitness(), (*(v97 + 16))(&v168, v96, v97), *(&v168 + 1) != 1))
                    {
                      v120 = *(&v169 + 1);
                      v121 = v170;
                      outlined copy of AppIntentExecutor?(*(&v169 + 1), v170);
                      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v168, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
                      v95 = v156;
                      if (v120)
                      {
                        v122 = swift_allocObject();
                        *(v122 + 16) = v120;
                        *(v122 + 24) = v121;
                        v123 = swift_allocObject();
                        *(v123 + 16) = partial apply for thunk for @callee_guaranteed () -> ();
                        *(v123 + 24) = v122;
                        v167 = 17;
                        swift_retain_n();
                        static Update.enqueueAction(reason:_:)();

                        v50 = v161;
                      }

                      v64 = v148;
                    }

                    else
                    {

                      v64 = v148;
                      v95 = v156;
                    }
                  }

                  MEMORY[0x1EEE9AC00](v93);
                  *&v132[-48] = v150;
                  *&v132[-40] = v95;
                  v124 = *(v154 + 120);
                  *&v132[-32] = v94;
                  *&v132[-24] = v124;
                  v125 = v138;
                  *&v132[-16] = v138;
                  UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #6 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:), &v132[-64]);
                  v126 = v157;
                  v127 = IndexPath._bridgeToObjectiveC()().super.isa;
                  [v143 deselectItemAtIndexPath:v127 animated:0];

                  v63 = v151;
                  (*(v151 + 8))(v126, v64);
                  (*(v152 + 8))(v125, v149);
                  v60 = v162;
                }

                v73 = v164;
                v65 = v140;
                goto LABEL_62;
              }

              (*(v63 + 8))(v51, v64);

              v65 = v54;
              v60 = v162;
            }

            v50 = v53;
            v73 = v164;
LABEL_62:
            if (v153)
            {
              if (v73)
              {
                outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v73, v65);
                v128 = *(v63 + 16);
                v129 = v63;
                v130 = v142;
                v128(v142, v145, v64);
                (*(v129 + 56))(v130, 0, 1, v64);
                swift_beginAccess();
                outlined assign with take of IndexPath?(v130, &v3[v61], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
                swift_endAccess();
              }
            }

            else
            {
              outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v73, v65);
            }

            return (*(v50 + 8))(v163, v60);
          }
        }

        if (one-time initialization token for allowNonMomentaryEditModeSelection != -1)
        {
          swift_once();
        }

        v103 = allowNonMomentaryEditModeSelection;

        if (!v103)
        {
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v168, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
          goto LABEL_56;
        }

        goto LABEL_42;
      }

      if ((v75 & 1) == 0)
      {
LABEL_20:
        v133 = v77;
        LODWORD(v140) = v75;
        LODWORD(v153) = 1;
        goto LABEL_33;
      }
    }

    else
    {
      v50 = v161;
      v79 = v134;
      if ((v75 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    LODWORD(v140) = v75;

    AssociatedTypeWitness = v149;
    v51 = v157;
    v39 = v144;
    v52 = MEMORY[0x1E69E7D40];
    goto LABEL_43;
  }

  AssociatedTypeWitness = v149;
  v39 = v144;
LABEL_5:
  MEMORY[0x1EEE9AC00](v40);
  *&v132[-16] = v3;
  v46 = *(v154 + 120);
  v47 = v156;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  static Update.ensure<A>(_:)();
  v48 = v168;
  if (v168 <= 1)
  {
    v164 = 0;
    v49 = 0;
    LODWORD(v153) = 1;
    v50 = v161;
    v51 = v157;
LABEL_7:
    v52 = MEMORY[0x1E69E7D40];
    goto LABEL_8;
  }

  v144 = v39;
  v66 = AssociatedTypeWitness;
  v67 = *(&v168 + 1);
  v68 = swift_allocObject();
  v68[2] = v150;
  v68[3] = v47;
  v68[4] = v147;
  v68[5] = v46;
  v68[6] = v48;
  v68[7] = v67;
  v69 = v162;
  v50 = v161;
  (*(v161 + 16))(v34, v163, v162);
  v70 = v152;
  if ((*(v152 + 48))(v34, 1, v66) == 1)
  {

    (*(v50 + 8))(v34, v69);
    v164 = 0;
    v49 = 0;
    LODWORD(v153) = 1;
    AssociatedTypeWitness = v66;
    v51 = v157;
    v39 = v144;
    goto LABEL_7;
  }

  v80 = v70 + 32;
  v81 = *(v70 + 32);
  v82 = v140;
  v81(v140, v34, v66);
  v83 = v153;
  v81(v153, v82, v66);
  v84 = (*(v80 + 48) + 64) & ~*(v80 + 48);
  v49 = swift_allocObject();
  v85 = v156;
  v49[2] = v150;
  v49[3] = v85;
  v49[4] = v147;
  v49[5] = v46;
  v49[6] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.ListCoreDataSource.SelectionValue>) -> (@out ());
  v49[7] = v68;
  v81(v49 + v84, v83, v66);
  v50 = v161;

  v86 = partial apply for closure #2 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:);
  v87 = 1;
  AssociatedTypeWitness = v66;
  v39 = v144;
  v52 = MEMORY[0x1E69E7D40];
LABEL_45:
  v105 = swift_allocObject();
  v164 = v86;
  *(v105 + 16) = v86;
  *(v105 + 24) = v49;
  v106 = swift_allocObject();
  *(v106 + 16) = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  *(v106 + 24) = v105;
  LOBYTE(v168) = 17;

  static Update.enqueueAction(reason:_:)();

  LODWORD(v153) = 1;
  v51 = v157;
  if ((v87 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_46:
  v140 = v49;
  v107 = *((*v52 & *v3) + 0x110);
  swift_beginAccess();
  v108 = v159;
  v109 = v141;
  v110 = v160;
  (*(v159 + 16))(v141, &v3[v107], v160);
  LODWORD(v107) = (*(*(v158 - 8) + 48))(v109, 1);
  (*(v108 + 8))(v109, v110);
  if (v107 != 1 && (v153 & 1) == 0)
  {
    LODWORD(v153) = 0;
    v49 = v140;
    goto LABEL_8;
  }

  v111 = v137;
  v112 = v162;
  (*(v50 + 16))(v137, v163, v162);
  v113 = v152;
  if ((*(v152 + 48))(v111, 1, AssociatedTypeWitness) == 1)
  {
    (*(v50 + 8))(v111, v112);
  }

  else
  {
    v114 = v135;
    v115 = (*(v113 + 32))(v135, v111, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v115);
    v116 = v156;
    *&v132[-48] = v150;
    *&v132[-40] = v116;
    v117 = *(v154 + 120);
    *&v132[-32] = v147;
    *&v132[-24] = v117;
    *&v132[-16] = v114;
    UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #6 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:), &v132[-64]);
    (*(v113 + 8))(v114, AssociatedTypeWitness);
  }

  v118 = v140;
  v119 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v143 deselectItemAtIndexPath:v119 animated:1];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v164, v118);

  v60 = v162;
  return (*(v50 + 8))(v163, v60);
}

uint64_t UICollectionViewListCoordinatorBase.canSelect(rowAt:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = (*MEMORY[0x1E69E7D40] & *v2);
  v34 = v7[14];
  v33 = *((v6 & v5) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(a2, v17, v12);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    (*(v13 + 56))(a1, 1, 1, AssociatedTypeWitness);
    return 0;
  }

  else
  {
    v32 = a1;
    (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
    v19 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x130));
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v24 = v7[15];
    v25 = v7[13];
    swift_getAssociatedConformanceWitness();
    v26 = WeakSelectionBasedStorage.$isSelectionEnabled.getter(v20, v21, v22, v23);
    if ((v26 & 0x100000000) != 0)
    {
      v18 = 1;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v26);
      v27 = v34;
      *(&v31 - 6) = v33;
      *(&v31 - 5) = v25;
      *(&v31 - 4) = v27;
      *(&v31 - 3) = v24;
      *(&v31 - 4) = v28;
      *(&v31 - 1) = v16;
      static Update.ensure<A>(_:)();
      v18 = v35;
    }

    v29 = v32;
    (*(v13 + 16))(v32, v16, AssociatedTypeWitness);
    (*(v13 + 56))(v29, 0, 1, AssociatedTypeWitness);
    (*(v13 + 8))(v16, AssociatedTypeWitness);
  }

  return v18;
}

BOOL UICollectionViewListCoordinatorBase.collectionView(_:selectionFollowsFocusForItemAt:)(void *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v19 - v6;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 cellForItemAtIndexPath_];

  if (v9)
  {
    v11 = swift_getAssociatedTypeWitness();
    v12 = swift_dynamicCastUnknownClass();
    if (v12)
    {
      v19 = v5;
      v20 = a2;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v14 = *(AssociatedConformanceWitness + 16);
      v15 = v9;
      v14(v22, v11, AssociatedConformanceWitness);

      if (v22[1] == 1)
      {
        a2 = v20;
      }

      else
      {
        v16 = v22[0];
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(v22, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        a2 = v20;
        if ((v16 & 1) == 0)
        {

          return 1;
        }
      }

      v5 = v19;
    }

    else
    {
    }
  }

  else
  {
    v12 = 0;
  }

  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(a2, v10, v7);

  v17 = (*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness) != 1;
  (*(v5 + 8))(v7, v21);
  return v17;
}

void UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(void *a1, int a2)
{
  isEscapingClosureAtFileLocation = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v70 = *MEMORY[0x1E69E7D40] & v6;
  v8 = *((v7 & v6) + 0x60);
  v9 = type metadata accessor for Optional();
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v76 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v66 - v15;
  v67 = *((v7 & v6) + 0x70);
  v16 = *(*(v67 + 8) + 8);
  v75 = v8;
  v18 = type metadata accessor for ListCoreBatchUpdates(0, v8, v16, v17);
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v66 - v20;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v66 - v23;
  *(isEscapingClosureAtFileLocation + *((v7 & v6) + 0xD8)) = 1;
  v77 = a2;
  if (a2)
  {
    UICollectionViewListCoordinatorBase.updateEditingState(_:)(a1);
  }

  v78 = a1;
  v25 = type metadata accessor for IndexPath();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = MEMORY[0x1E69E7D40];
  v27 = *((*MEMORY[0x1E69E7D40] & *isEscapingClosureAtFileLocation) + 0xE0);
  swift_beginAccess();
  outlined assign with take of IndexPath?(v24, isEscapingClosureAtFileLocation + v27, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
  swift_endAccess();
  v28 = *((*v26 & *isEscapingClosureAtFileLocation) + 0xB8);
  swift_beginAccess();
  v29 = *(v19 + 16);
  v29(v21, isEscapingClosureAtFileLocation + v28, v18);
  LOBYTE(v27) = ListCoreBatchUpdates.isEmpty.getter(v18);
  v71 = *(v19 + 8);
  v71(v21, v18);
  if ((v27 & 1) == 0)
  {
    v66 = v29;
    v30 = *((*v26 & *isEscapingClosureAtFileLocation) + 0xD0);
    swift_beginAccess();
    v31 = v72;
    v32 = v11;
    v33 = v11;
    v34 = v73;
    (*(v72 + 16))(v33, isEscapingClosureAtFileLocation + v30, v73);
    v35 = v75;
    if ((*(v76 + 48))(v32, 1, v75) != 1)
    {
LABEL_11:
      v47 = v35;
      v48 = v76;
      v49 = *(v76 + 32);
      v50 = v74;
      v49(v74, v32, v35);
      v51 = v69;
      (*(v48 + 16))(v69, v50, v35);
      v52 = (*(v48 + 80) + 56) & ~*(v48 + 80);
      v53 = (v68 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      *(v54 + 2) = v35;
      v55 = v70;
      v56 = v67;
      *(v54 + 3) = *(v70 + 104);
      *(v54 + 4) = v56;
      *(v54 + 5) = *(v55 + 120);
      *(v54 + 6) = isEscapingClosureAtFileLocation;
      v49(&v54[v52], v51, v35);
      v57 = v78;
      *&v54[v53] = v78;
      v58 = swift_allocObject();
      *(v58 + 16) = partial apply for closure #1 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
      *(v58 + 24) = v54;
      v83 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
      v84 = v58;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = thunk for @escaping @callee_guaranteed () -> ();
      v82 = &block_descriptor_90_0;
      v59 = _Block_copy(&aBlock);
      v60 = isEscapingClosureAtFileLocation;
      v61 = v57;

      v62 = swift_allocObject();
      *(v62 + 16) = v60;
      *(v62 + 24) = v61;
      *(v62 + 32) = v77 & 1;
      v83 = partial apply for closure #2 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
      v84 = v62;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v82 = &block_descriptor_96_0;
      v63 = _Block_copy(&aBlock);
      v64 = v60;
      v65 = v61;

      [v65 performBatchUpdates:v59 completion:v63];
      _Block_release(v63);
      _Block_release(v59);
      (*(v48 + 8))(v74, v47);

      return;
    }

    (*(v31 + 8))(v32, v34);
    v29 = v66;
  }

  if (v77)
  {
    v29(v21, isEscapingClosureAtFileLocation + v28, v18);
    v36 = ListCoreBatchUpdates.isEmpty.getter(v18);
    v71(v21, v18);
    if (v36)
    {
      v37 = swift_allocObject();
      v38 = v78;
      *(v37 + 16) = isEscapingClosureAtFileLocation;
      *(v37 + 24) = v38;
      *(v37 + 32) = 1;
      v83 = partial apply for closure #3 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
      v84 = v37;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v82 = &block_descriptor_80;
      v39 = _Block_copy(&aBlock);
      v40 = isEscapingClosureAtFileLocation;
      v41 = v38;

      [v41 performBatchUpdates:0 completion:v39];
      _Block_release(v39);
      return;
    }
  }

  v42 = objc_opt_self();
  v43 = swift_allocObject();
  v32 = v78;
  *(v43 + 16) = v78;
  *(v43 + 24) = isEscapingClosureAtFileLocation;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for closure #4 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
  *(v35 + 24) = v43;
  v83 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v84 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = thunk for @escaping @callee_guaranteed () -> ();
  v82 = &block_descriptor_74;
  v44 = _Block_copy(&aBlock);
  v45 = isEscapingClosureAtFileLocation;
  v46 = v32;

  [v42 performWithoutAnimation_];
  _Block_release(v44);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_11;
  }
}

void UICollectionViewListCoordinatorBase.finishBatchUpdate(collectionView:shouldSetEditing:)(UIView *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ListCoreBatchUpdates(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), *(*(*((*MEMORY[0x1E69E7D40] & *v4) + 0x70) + 8) + 8), a4);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = [(UIView *)a1 window];
  if (v14)
  {

    v15 = *((*v8 & *v5) + 0xB8);
    swift_beginAccess();
    (*(v10 + 16))(v13, &v5[v15], v9);
    LOBYTE(v15) = ListCoreBatchUpdates.isEmpty.getter(v9);
    v16 = (*(v10 + 8))(v13, v9);
    if (v15)
    {
      UICollectionViewListCoordinatorBase.updateEditingState(_:)(a1);
      UICollectionViewListCoordinatorBase.enqueueLayoutInvalidationIfNeeded(_:)(a1);
      UICollectionViewListCoordinatorBase.updateListContents(_:)(a1, v17, v18, v19);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v16);
      *(&v20 - 4) = v5;
      *(&v20 - 3) = a1;
      *(&v20 - 16) = a2 & 1;
      static Update.ensure<A>(_:)();
    }
  }

  else
  {
    v5[*((*v8 & *v5) + 0xD8)] = 0;
  }
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.disableFocusEventsForDeletedCells(collectionView:)(UICollectionView *collectionView)
{
  v77 = collectionView;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v68 = *MEMORY[0x1E69E7D40] & *v1;
  v78 = type metadata accessor for IndexPath();
  v4 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v67 - v8;
  v76 = type metadata accessor for IndexSet.Index();
  v79 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1 + *((v3 & v2) + 0xB8);
  swift_beginAccess();
  v19 = *(v11 + 16);
  v67 = v18;
  v19(v13, v18, v10);
  v20 = MEMORY[0x1E6969B50];
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  dispatch thunk of Sequence.makeIterator()();
  v74 = *(v15 + 44);
  v21 = _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, v20, MEMORY[0x1E6969B88]);
  v22 = v10;
  v73 = v79 + 1;
  v79 = MEMORY[0x1E69E7CC0];
  v70 = v17;
  v71 = v10;
  v72 = v21;
  while (1)
  {
    v23 = v75;
    dispatch thunk of Collection.endIndex.getter();
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v24 = v76;
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v73)(v23, v24);
    if (v25)
    {
      break;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v28 = *v27;
    v26(v81, 0);
    v29 = v22;
    dispatch thunk of Collection.formIndex(after:)();
    v30 = [(UICollectionView *)v77 numberOfItemsInSection:v28];
    if (v30 < 0)
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
      return;
    }

    v31 = v30;
    if (v30)
    {
      v81[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v32 = 0;
      v33 = v81[0];
      v34 = v78;
      do
      {
        MEMORY[0x18D0006A0](v32, v28);
        v81[0] = v33;
        v36 = *(v33 + 16);
        v35 = *(v33 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
          v33 = v81[0];
        }

        ++v32;
        *(v33 + 16) = v36 + 1;
        (*(v4 + 32))(v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v6, v34);
      }

      while (v31 != v32);
      v17 = v70;
      v29 = v71;
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    v37 = *(v33 + 16);
    v38 = v79[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      goto LABEL_39;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v79;
    if (!isUniquelyReferenced_nonNull_native || v39 > v79[3] >> 1)
    {
      if (v38 <= v39)
      {
        v42 = v38 + v37;
      }

      else
      {
        v42 = v38;
      }

      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v42, 1, v79);
    }

    v43 = *(v33 + 16);
    v79 = v41;
    if (v43)
    {
      if ((v41[3] >> 1) - v41[2] < v37)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      v22 = v29;
      if (v37)
      {
        v44 = v79[2];
        v45 = __OFADD__(v44, v37);
        v46 = v44 + v37;
        if (v45)
        {
          goto LABEL_42;
        }

        v79[2] = v46;
      }
    }

    else
    {

      v22 = v29;
      if (v37)
      {
        goto LABEL_40;
      }
    }
  }

  _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v17, type metadata accessor for IndexingIterator<IndexSet>);
  v47 = *(v68 + 96);
  v48 = *(*(v68 + 112) + 8);
  type metadata accessor for ListCoreBatchUpdates(0, v47, *(v48 + 8), v49);
  v81[0] = v79;

  specialized Array.append<A>(contentsOf:)(v50);
  v51 = *(v81[0] + 16);
  v52 = v69;
  if (v51)
  {
    v54 = *(v4 + 16);
    v53 = v4 + 16;
    v79 = v54;
    v55 = *(v53 + 64);
    v72 = v81[0];
    v56 = v81[0] + ((v55 + 32) & ~v55);
    v76 = *(v53 + 56);
    v74 = v48;
    v75 = (v53 - 8);
    v57 = &protocol requirements base descriptor for ListCoreDataSource;
    v73 = v47;
    do
    {
      v58 = v78;
      (v79)(v52, v56, v78);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*v75)(v52, v58);
      v60 = [(UICollectionView *)v77 cellForItemAtIndexPath:isa];

      if (v60)
      {
        v61 = v57;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        if (swift_dynamicCastUnknownClass())
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v64 = (*(*(AssociatedConformanceWitness + 8) + 56))(AssociatedTypeWitness);
          if (v64)
          {
            v65 = v64;
            _UIHostingView.viewGraph.getter(v64);
            GraphHost.environment.getter();

            if (v81[1])
            {
              type metadata accessor for EnvironmentPropertyKey<FocusBridgeKey>();
              _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<FocusBridgeKey>, MEMORY[0x1E697FE40]);

              v52 = v69;
              PropertyList.Tracker.value<A>(_:for:)();
            }

            else
            {
              type metadata accessor for EnvironmentPropertyKey<FocusBridgeKey>();
              _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<FocusBridgeKey>, MEMORY[0x1E697FE40]);
              PropertyList.subscript.getter();
            }

            Strong = swift_weakLoadStrong();

            _s10Foundation9IndexPathVSgWOhTm_1(&v80, &lazy cache variable for type metadata for WeakBox<FocusBridge>, type metadata accessor for FocusBridge, MEMORY[0x1E6981A78]);
            v57 = &protocol requirements base descriptor for ListCoreDataSource;
            if (Strong)
            {
              *(Strong + 177) = 1;
            }
          }

          else
          {

            v57 = &protocol requirements base descriptor for ListCoreDataSource;
          }
        }

        else
        {

          v57 = v61;
        }
      }

      v56 += v76;
      --v51;
    }

    while (v51);
  }
}

id UICollectionViewListCoordinatorBase.leadingSwipeActionsConfiguration(indexPath:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v23 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v22[2] = v1;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v10 = [v8 cellForItemAtIndexPath_];

    if (v10)
    {
      type metadata accessor for AnyListCollectionViewCell();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        (*((*v3 & *v11) + 0x80))(v33);
        v44 = v33[10];
        v45 = v33[11];
        v46 = v33[12];
        v47 = v33[13];
        v40 = v33[6];
        v41 = v33[7];
        v42 = v33[8];
        v43 = v33[9];
        v36 = v33[2];
        v37 = v33[3];
        v38 = v33[4];
        v39 = v33[5];
        v34 = v33[0];
        v35 = v33[1];
        if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(&v34) != 1)
        {
          outlined init with copy of SwipeActions.Configuration?(&v34, &v25, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListVSgMaTm_0);
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(v33, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
          v12 = *(&v35 + 1);
          if (*(&v35 + 1))
          {
            v54 = v35;
            v50 = v38;
            v51 = v39;
            v52 = v40;
            v53 = v34;
            v48 = v36;
            v49 = v37;
            v22[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration, 0x1E69DCFC0);
            v25 = v34;
            v26 = v35;
            v27 = v12;
            v30 = v38;
            v31 = v39;
            v32 = v40;
            v28 = v36;
            v29 = v37;
            v13 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (*(v5 + 16))(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
            v14 = (*(v5 + 80) + 56) & ~*(v5 + 80);
            v15 = swift_allocObject();
            v16 = v23;
            *(v15 + 16) = *(v23 + 96);
            *(v15 + 24) = *(v16 + 104);
            *(v15 + 40) = *(v16 + 120);
            *(v15 + 48) = v13;
            (*(v5 + 32))(v15 + v14, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
            v17 = v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v17 = v53;
            *(v17 + 16) = v54;
            *(v17 + 24) = v12;
            v18 = v51;
            *(v17 + 64) = v50;
            *(v17 + 80) = v18;
            *(v17 + 96) = v52;
            v19 = v49;
            *(v17 + 32) = v48;
            *(v17 + 48) = v19;
            v20 = MEMORY[0x1E69E6720];
            outlined init with copy of SwipeActions.Configuration?(&v34, v24, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListVSgMaTm_0);
            outlined init with copy of SwipeActions.Configuration?(&v34, v24, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v20, _s7SwiftUI16PlatformItemListVSgMaTm_0);

            v21 = specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(&v25, 0, partial apply for closure #1 in UICollectionViewListCoordinatorBase.leadingSwipeActionsConfiguration(indexPath:), v15);

            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v34, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);

            return v21;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

id UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  v84 = (*MEMORY[0x1E69E7D40] & *v3);
  v8 = type metadata accessor for IndexPath();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v7 & v6) + 0x60);
  v85 = *((v7 & v6) + 0x70);
  v86 = v10;
  v12 = type metadata accessor for ShadowListDataSource(0, v10, *(v85 + 8), v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v72 - v14;
  v16 = *a2;
  v17 = a2[1];
  v80 = v16;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v19 = result;
  v78 = v17;
  v79 = a1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v21 = [v19 cellForItemAtIndexPath_];

  result = 0;
  if (!v21)
  {
    return result;
  }

  type metadata accessor for AnyListCollectionViewCell();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    return 0;
  }

  v77 = v21;
  v23 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v22) + 0x80))(v94);
  v99 = v94[10];
  v100 = v94[11];
  v101 = v94[12];
  v102 = v94[13];
  v95[6] = v94[6];
  v96 = v94[7];
  v97 = v94[8];
  v98 = v94[9];
  v95[2] = v94[2];
  v95[3] = v94[3];
  v95[4] = v94[4];
  v95[5] = v94[5];
  v95[0] = v94[0];
  v95[1] = v94[1];
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(v95) == 1)
  {
    v74 = v9;
    v76 = 0;
  }

  else
  {
    v107 = v100;
    v108 = v101;
    v109 = v102;
    v103 = v96;
    v104 = v97;
    v105 = v98;
    v106 = v99;
    outlined init with copy of SwipeActions.Configuration?(&v96, &v87, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListVSgMaTm_0);
    v24 = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(v94, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
    MEMORY[0x1EEE9AC00](v24);
    v25 = v79;
    *(&v72 - 2) = v3;
    *(&v72 - 1) = v25;
    v26 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI12SwipeActionsO13ConfigurationV_s5NeverOSo07UISwipefG0CTB5(partial apply for closure #1 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:));
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v96, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
    if (v26)
    {
      v76 = v26;
      v27 = [v26 actions];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextualAction, 0x1E69DC8E8);
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v28 >> 62)
      {
        v29 = __CocoaSet.count.getter();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = v77;
      v23 = MEMORY[0x1E69E7D40];

      if (v29)
      {

        return v76;
      }

      v74 = v9;
    }

    else
    {
      v74 = v9;
      v76 = 0;
      v23 = MEMORY[0x1E69E7D40];
    }
  }

  v31 = *((*v23 & *v3) + 0x88);
  swift_beginAccess();
  v32 = (*(v13 + 16))(v15, &v3[v31], v12);
  MEMORY[0x1EEE9AC00](v32);
  v33 = v84;
  v34 = v85;
  v35 = v13;
  v36 = v84[13];
  *(&v72 - 4) = v86;
  *(&v72 - 3) = v36;
  v37 = v33[15];
  *(&v72 - 2) = v34;
  *(&v72 - 1) = v37;
  KeyPath = swift_getKeyPath();
  v84 = &v72;
  v39 = MEMORY[0x1EEE9AC00](KeyPath);
  v75 = v36;
  *(&v72 - 4) = v36;
  *(&v72 - 3) = v34;
  v73 = v37;
  *(&v72 - 2) = v37;
  *(&v72 - 1) = v40;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v12, v39);
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(v79, partial apply for implicit closure #2 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:), (&v72 - 6), v12, MEMORY[0x1E69E6370], WitnessTable, &v87);

  (*(v35 + 8))(v15, v12);
  if (v87 == 2 || (v42 = v77, (v87 & 1) == 0))
  {

    return v76;
  }

  v43 = static Text.System.uiDelete.getter();
  v45 = v44;
  v47 = v46;
  v48 = v80;
  if (v80 == 1)
  {
    EnvironmentValues.init()();
    v50 = v87;
    v49 = v88;
    v51 = v78;
  }

  else
  {
    v51 = v78;
    v87 = v80;
    v88 = v78;
    v49 = v78;
    v50 = v80;
  }

  v93[3] = v50;
  v93[4] = v49;
  v93[1] = 0;
  v93[2] = 0;
  v52 = outlined copy of EnvironmentValues?(v48, v51);
  MEMORY[0x18D009CB0](v93, v52);
  v84 = Text.resolveString(in:with:idiom:)();
  v54 = v53;
  outlined consume of Text.Storage(v43, v45, v47 & 1);

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = v81;
  v56 = v82;
  v58 = v83;
  (*(v82 + 16))(v81, v79, v83);
  v59 = (*(v56 + 80) + 56) & ~*(v56 + 80);
  v60 = swift_allocObject();
  v61 = v75;
  *(v60 + 2) = v86;
  *(v60 + 3) = v61;
  v62 = v73;
  *(v60 + 4) = v85;
  *(v60 + 5) = v62;
  *(v60 + 6) = v55;
  (*(v56 + 32))(&v60[v59], v57, v58);

  v63 = MEMORY[0x18D00C850](v84, v54);

  v91 = partial apply for closure #2 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:);
  v92 = v60;
  v87 = MEMORY[0x1E69E9820];
  v88 = 1107296256;
  v89 = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
  v90 = &block_descriptor_53_0;
  v64 = _Block_copy(&v87);
  v65 = [objc_opt_self() contextualActionWithStyle:1 title:v63 handler:v64];

  _Block_release(v64);

  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v66 = MEMORY[0x18D00C850](0x6873617274, 0xE500000000000000);
    v67 = [objc_opt_self() systemImageNamed_];

    [v65 setImage_];
  }

  _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_18CD69590;
  *(v68 + 32) = v65;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextualAction, 0x1E69DC8E8);
  v69 = v65;
  v70 = Array._bridgeToObjectiveC()().super.isa;

  v71 = [objc_opt_self() configurationWithActions_];

  return v71;
}

void (*UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(void *a1, uint64_t a2, int a3))()
{
  v20 = a3;
  v19 = a1;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v18 = *MEMORY[0x1E69E7D40] & v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v11 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *((v6 & v5) + 0x60);
  *(v12 + 24) = *(v18 + 104);
  v13 = *((v6 & v5) + 0x78);
  v14 = v19;
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *(v12 + 56) = v10;
  (*(v8 + 32))(v12 + v11, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + v11 + v9) = v20;
  v15 = v14;
  return partial apply for closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:);
}

uint64_t UICollectionViewListCoordinatorBase.appIntentsDataSourcePayloadProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x178);
  swift_beginAccess();
  return outlined init with copy of SwipeActions.Configuration?(v1 + v3, a1, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
}

double UICollectionViewListCoordinatorBase.id(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v33 = *MEMORY[0x1E69E7D40] & *v3;
  v7 = *((v6 & v5) + 0x60);
  v8 = *((v6 & v5) + 0x70);
  v31 = v7;
  v32 = v8;
  v9 = type metadata accessor for ShadowListDataSource(0, v7, *(v8 + 8), a2);
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for IntelligenceDataSourceItem();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v18);
  if ((*(v13 + 88))(v15, v12) == *MEMORY[0x1E69DBC38])
  {
    (*(v13 + 96))(v15, v12);
    (*(v17 + 32))(v20, v15, v16);
    v21 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x88);
    swift_beginAccess();
    v22 = v34;
    v23 = (*(v34 + 16))(v11, &v3[v21], v9);
    v24 = MEMORY[0x1EEE9AC00](v23);
    v25 = v33;
    v26 = *(v33 + 104);
    *(&v31 - 4) = v31;
    *(&v31 - 3) = v26;
    v27 = *(v25 + 120);
    *(&v31 - 2) = v32;
    *(&v31 - 1) = v27;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9, v24);
    ListCoreDataSource.visitContent<A>(atRow:visitor:)(v20, partial apply for closure #1 in UICollectionViewListCoordinatorBase.id(for:), (&v31 - 6), v9, MEMORY[0x1E69E69B8], WitnessTable, v35);
    (*(v22 + 8))(v11, v9);
    (*(v17 + 8))(v20, v16);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    v30 = v35;
    *(v35 + 32) = 0;
    result = 0.0;
    *v30 = 0u;
    v30[1] = 0u;
  }

  return result;
}

id UICollectionViewListCoordinatorBaseBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UICollectionViewListCoordinatorBaseBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *closure #1 in variable initialization expression of UICollectionViewListCoordinatorBase.helper()
{
  v0 = type metadata accessor for ScrollViewHelper();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState] = 0;
  v3 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState] = 0;
  v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState] = 0;
  v5 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize] = 0;
  EnvironmentValues.init()();
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties];
  *v6 = 257;
  *(v6 + 21) = 0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 67) = 0u;
  *(v6 + 44) = 4;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v6 + 13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v7);
  v6[112] = 0;
  v6[120] = 0;
  *(v6 + 16) = 0;
  *(v6 + 68) = 0;
  v6[144] = 0;
  *(v6 + 19) = 0;
  *(v6 + 158) = 0;
  v6[166] = 1;
  *(v6 + 167) = 0u;
  *(v6 + 183) = 0u;
  v6[199] = 0;
  static EdgeInsets.zero.getter();
  *(v6 + 25) = v8;
  *(v6 + 26) = v9;
  *(v6 + 27) = v10;
  *(v6 + 28) = v11;
  v12 = static EdgeInsets.zero.getter();
  *(v6 + 29) = v13;
  *(v6 + 30) = v14;
  *(v6 + 31) = v15;
  *(v6 + 32) = v16;
  v17 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v18 = MEMORY[0x18D007050](v42, v12);
  v19 = MEMORY[0x18D007050](v44, v18);
  v20 = MEMORY[0x18D007050](v46, v19);
  MEMORY[0x18D007050](v48, v20);
  v21 = v42[1];
  *v17 = v42[0];
  v17[1] = v21;
  v17[2] = v43[0];
  *(v17 + 41) = *(v43 + 9);
  v22 = v44[1];
  v17[4] = v44[0];
  v17[5] = v22;
  v17[6] = v45[0];
  *(v17 + 105) = *(v45 + 9);
  v23 = v46[0];
  v24 = v46[1];
  v25 = v47[0];
  *(v17 + 169) = *(v47 + 9);
  v17[9] = v24;
  v17[10] = v25;
  v17[8] = v23;
  v26 = v48[1];
  v17[12] = v48[0];
  v17[13] = v26;
  v17[14] = v49[0];
  *(v17 + 233) = *(v49 + 9);
  v27 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_scrollContentBackground];
  *v27 = 0;
  *(v27 + 4) = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 6;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_hasScrollPosition] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v28 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastScrollOffset];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest] = 0;
  v31 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState];
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v31[66] = 0;
  *(v31 + 32) = 512;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase] = 0;
  v32 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastVelocity];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastBoundsSize];
  *v34 = 0;
  *(v34 + 1) = 0;
  v34[16] = 1;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate] = 2;
  v35 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_accessoryPlacementInsets];
  static EdgeInsets.zero.getter();
  *v35 = v36;
  v35[1] = v37;
  v35[2] = v38;
  v35[3] = v39;
  *&v1[v2] = 0;
  *&v1[v3] = 0;
  *&v1[v4] = 0;
  *&v1[v5] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes] = 2;
  v41.receiver = v1;
  v41.super_class = v0;
  result = objc_msgSendSuper2(&v41, sel_init);
  *&result[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 4;
  result[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  return result;
}

void UICollectionViewListCoordinatorBase.subviewUniformHeight.setter(uint64_t a1, char a2)
{
  v3 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v4 = *v3;
  v5 = v3[8];
  *v3 = a1;
  v3[8] = a2 & 1;
  UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v4, v5);
}

void closure #1 in UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()(void *a3@<X8>)
{
  _ProposedSize.init(width:height:)();
  LayoutComputer.sizeThatFits(_:)();
  *a3 = v5;
}

void closure #1 in UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(void **a1, void *a2, void *a3, size_t *a4)
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v46 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v41 - v17;
  v19 = *a1;
  v20 = [a2 indexPathForCell_];
  if (!v20)
  {
    return;
  }

  v44 = a4;
  v45 = v4;
  v21 = v20;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = *(v10 + 32);
  v22(v18, v14, v9);
  swift_getObjectType();
  v23 = swift_conformsToProtocol2();
  if (!v23 || !v19)
  {
    (*(v10 + 8))(v18, v9);
    return;
  }

  v24 = v23;
  v42 = v22;
  v43 = v9;
  ObjectType = swift_getObjectType();
  v26 = *(v24 + 128);
  v27 = v19;
  v41[1] = ObjectType;
  v28 = COERCE_DOUBLE(v26(ObjectType, v24));
  v31 = (a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x108));
  v32 = *v31;
  if ((v33 & 1) == 0)
  {
    v34 = v43;
    if (v31[1])
    {
      goto LABEL_11;
    }

    v29.n128_f64[0] = *v31;
    v30.n128_f64[0] = v28;
    if (v28 != v32)
    {
      goto LABEL_11;
    }

LABEL_10:
    (*(v10 + 8))(v18, v34, COERCE_DOUBLE(*&v28));

    return;
  }

  v34 = v43;
  if (v31[1])
  {
    goto LABEL_10;
  }

LABEL_11:
  (*(v24 + 136))(COERCE_DOUBLE(*&v32), v29, v30);
  (*(v10 + 16))(v46, v18, v34);
  v35 = v44;
  v36 = *v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v35 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    *v35 = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    *v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
  }

  (*(v10 + 8))(v18, v34);
  v40 = *v35;
  *(v40 + 16) = v39 + 1;
  v42(v40 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v39, v46, v34);
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.enqueueLayoutInvalidationIfNeeded(_:)(UIView *a1)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xF0);
  if (v2[9] != 1 || !(*v2 ^ 1 | v2[8]))
  {
    v3 = specialized UIView.firstAncestorWhere(_:)(a1);
    if (v3)
    {
      v6 = v3;
      ObjectType = swift_getObjectType();
      v5 = swift_conformsToProtocol2();
      v3 = v6;
      if (v5)
      {
        (*(v5 + 8))(ObjectType);
        v3 = v6;
      }
    }
  }
}

double UICollectionViewListCoordinatorBase.pendingSelection.didset(uint64_t a1)
{
  if ((*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x68) - 8) + 48))(a1, 1) == 1)
  {
    *(swift_allocObject() + 16) = v1;
    v3 = v1;
    static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
  }

  return result;
}

uint64_t closure #1 in UICollectionViewListCoordinatorBase.pendingSelection.didset(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19[-v14];
  v16 = *((v3 & v2) + 0x118);
  swift_beginAccess();
  (*(v6 + 16))(v11, &a1[v16], v5);
  if ((*(v12 + 48))(v11, 1, v4) == 1)
  {
    return (*(v6 + 8))(v11, v5);
  }

  (*(v12 + 32))(v15, v11, v4);
  (*(v12 + 56))(v8, 1, 1, v4);
  specialized UICollectionViewListCoordinatorBase.pendingSelection.setter(v8);
  v18 = (*(v6 + 8))(v8, v5);
  v19[6] = 17;
  MEMORY[0x1EEE9AC00](v18);
  *&v19[-16] = a1;
  *&v19[-8] = v15;
  _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  return (*(v12 + 8))(v15, v4);
}

uint64_t closure #1 in closure #1 in UICollectionViewListCoordinatorBase.pendingSelection.didset@<X0>(char *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = *a1;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for Binding();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = *((v7 & v6) + 0x110);
  swift_beginAccess();
  result = (*(v9 + 48))(&a1[v12], 1, v8);
  v14 = result;
  if (!result)
  {
    (*(v9 + 16))(v11, &a1[v12], v8);
    specialized Binding.wrappedValue.setter(a2);
    result = (*(v9 + 8))(v11, v8);
  }

  *a3 = v14 != 0;
  return result;
}

void closure #1 in UICollectionViewListCoordinatorBase.setupSizeThatFitsCallback(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a7 != a9)
    {
      UpdateCoalescingCollectionView.scheduleVisibleCellsUpdate(indexPath:kind:)(a1, a2, a3, v15);
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        UICollectionViewListCoordinatorBase.enqueueLayoutInvalidationIfNeeded(_:)(v16);
      }
    }
  }
}

BOOL UICollectionViewListCoordinatorBase.hasPendingID<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v4 = *v3;
  v5 = *MEMORY[0x1E69E7D40];
  v23 = *MEMORY[0x1E69E7D40] & *v3;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = *((v5 & v4) + 0x60);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *((v5 & v4) + 0xD0);
  swift_beginAccess();
  (*(v11 + 16))(v13, &v3[v18], v10);
  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v17, v13, v9);
    (*(*(*(v23 + 112) + 8) + 136))(v24, v25, v26, v9);
    (*(v14 + 8))(v17, v9);
    v20 = type metadata accessor for IndexPath();
    v19 = (*(*(v20 - 8) + 48))(v8, 1, v20) != 1;
    _s10Foundation9IndexPathVSgWOhTm_1(v8, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  }

  return v19;
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:indexPathForIndexTitle:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v9 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), *(v8 + 8), a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = *((v7 & v6) + 0x88);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v4[v13], v9);
  ShadowListDataSource<>.section(forSectionLabelIndex:)(a4, v9, v8);
  (*(v10 + 8))(v12, v9);
  return IndexPath.init(index:)();
}

Class @objc UICollectionViewListCoordinatorBase.collectionView(_:indexPathForIndexTitle:at:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  UICollectionViewListCoordinatorBase.collectionView(_:indexPathForIndexTitle:at:)(v13, v14, v15, a5);

  v16.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);

  return v16.super.isa;
}

id @objc UICollectionViewListCoordinatorBase.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  v16 = UICollectionViewListCoordinatorBase.collectionView(_:viewForSupplementaryElementOfKind:at:)(v14, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

uint64_t (*closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x130));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v18 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v17 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *((v3 & v2) + 0x78);
  v11 = *((v3 & v2) + 0x68);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = WeakSelectionBasedStorage.action.getter(v5, v6, v7, v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v14 >= 2)
  {
    v16 = v13;
    result = swift_allocObject();
    *(result + 2) = v17;
    *(result + 3) = v11;
    *(result + 4) = v18;
    *(result + 5) = v10;
    *(result + 6) = v14;
    *(result + 7) = v16;
    v14 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<A.ListCoreDataSource.SelectionValue>) -> ();
  }

  else
  {
    result = 0;
  }

  *a2 = v14;
  a2[1] = result;
  return result;
}

uint64_t closure #2 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  getContiguousArrayStorageType<A>(for:)(AssociatedTypeWitness, AssociatedTypeWitness);
  v10 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v11 = static Array._adoptStorage(_:count:)();
  (*(v10 + 16))(v12, a3, AssociatedTypeWitness);
  _finalizeUninitializedArray<A>(_:)(v11, AssociatedTypeWitness);
  v14 = v13;
  if (MEMORY[0x18D00CDF0]())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = specialized Set.init(_nonEmptyArrayLiteral:)(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  a1(v16);
}

void closure #1 in UICollectionViewListCoordinatorBase.canSelect(rowAt:)(uint64_t a2@<X1>, _BYTE *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  v7 = *AGGraphGetValue();

  v7(&v8, a2);

  *a5 = v8;
}

BOOL UICollectionViewListCoordinatorBase.collectionView(_:shouldSelectItemAt:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v49 = *MEMORY[0x1E69E7D40] & v5;
  v46 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v6 & v5) + 0x70);
  v9 = *((v6 & v5) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v50 = UICollectionViewListCoordinatorBase.canSelect(rowAt:)(&v45 - v12, a2);
  v14 = [a1 isEditing];
  v15 = (*(*(AssociatedTypeWitness - 8) + 48))(v13, 1, AssociatedTypeWitness);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [a1 cellForItemAtIndexPath_];

  if (v17)
  {
    v18 = v17;
    v19 = swift_getAssociatedTypeWitness();
    v48 = v18;
    v20 = swift_dynamicCastUnknownClass();
    if (v20)
    {
      v21 = v20;
      if ((v15 != 1) | v14 & 1)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      }

      else
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        (*(AssociatedConformanceWitness + 16))(&v53, v19, AssociatedConformanceWitness);
        if (v54)
        {
          if (v54 != 1)
          {
            v23 = v53;
            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v53, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
            if ((v23 & 1) == 0)
            {

              v24 = 1;
              goto LABEL_29;
            }
          }
        }

        else
        {
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v53, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        }
      }

      if (specialized UICollectionViewListCoordinatorBase.editMenuResponder<A>(for:)(v21, v9, *(v49 + 104), v19, v8, *(v49 + 120), AssociatedConformanceWitness))
      {
        _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList?, &type metadata for PlatformItemList, MEMORY[0x1E69E6720]);
        static Update.ensure<A>(_:)();
        v25 = MEMORY[0x1E69E7CC0];
        if (v53)
        {
          v26 = v53;
        }

        else
        {
          v26 = MEMORY[0x1E69E7CC0];
        }

        if (*(v26 + 2))
        {
          v53 = MEMORY[0x1E69E7CC0];
          v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v28 = MEMORY[0x1E69E7CC8];
          v29 = v47;
          v47[8] = 0;
          *(v29 + 16) = v28;
          *(v29 + 24) = v27;
          *(v29 + 32) = v25;
          *(v29 + 40) = v28;
          *(v29 + 48) = 0;
          _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
          v30 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
          v31 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_18CD63400;
          if (one-time initialization token for empty != -1)
          {
            swift_once();
          }

          v33 = __swift_project_value_buffer(v30, static MenuVisitor.MenuStackGroup.empty);
          _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_0(v33, v32 + v31, type metadata accessor for MenuVisitor.MenuStackGroup);
          *(v29 + 56) = v32;
          v34 = *(v46 + 32);
          v35 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
          (*(*(v35 - 8) + 56))(v29 + v34, 1, 1, v35);
          *v29 = 0;
          MenuVisitor.visit(_:uniqueNames:)(v26, &v53);

          v36 = *(v29 + 32);

          _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v29, type metadata accessor for MenuVisitor);
          if (!(v36 >> 62))
          {
            goto LABEL_18;
          }
        }

        else
        {

          v36 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
LABEL_18:
            v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

            v24 = v37 != 0;
            goto LABEL_29;
          }
        }

        v37 = __CocoaSet.count.getter();
        goto LABEL_19;
      }
    }
  }

  if (v15 == 1)
  {
    goto LABEL_25;
  }

  if ((v50 & 1) == 0)
  {
    v24 = 0;
    goto LABEL_29;
  }

  if ((UICollectionViewListCoordinatorBase.hasMultipleSelection.getter() & 1) == 0)
  {
LABEL_25:
    v38 = [a1 indexPathsForSelectedItems];
    if (v38)
    {
      v39 = v38;
      type metadata accessor for IndexPath();
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = *(v40 + 16);

      v24 = v41 < 2;
      v43 = v51;
      v42 = v52;
      if (v15 != 1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v43 = v51;
      v42 = v52;
      if (v15 != 1)
      {
        v24 = 1;
        goto LABEL_33;
      }
    }

    v24 = 0;
    goto LABEL_33;
  }

  v24 = 1;
LABEL_29:
  v43 = v51;
  v42 = v52;
LABEL_33:
  (*(v43 + 8))(v13, v42);
  return v24;
}

void UICollectionViewListCoordinatorBase.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v90 = *MEMORY[0x1E69E7D40] & v6;
  v8 = *((v7 & v6) + 0x70);
  v9 = *(v8 + 8);
  v10 = *((v7 & v6) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v86 = &v68[-v12];
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v85 = &v68[-v14];
  v89 = *((v7 & v6) + 0x68);
  v92 = type metadata accessor for Binding();
  v91 = type metadata accessor for Optional();
  v96 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v84 = &v68[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68[-v17];
  v94 = AssociatedTypeWitness;
  v88 = type metadata accessor for Optional();
  v19 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v21 = &v68[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v68[-v23];
  v93 = a2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v95 = a1;
  v98 = [a1 cellForItemAtIndexPath_];

  if (v98)
  {
    v25 = swift_getAssociatedTypeWitness();
    v26 = swift_dynamicCastUnknownClass();
    if (v26)
    {
      v27 = v26;
      v83 = v19;
      v80 = v8;
      v77 = v9;
      v78 = v10;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v29 = *(AssociatedConformanceWitness + 16);
      v82 = v25;
      v79 = AssociatedConformanceWitness;
      v76 = v29;
      (v29)(&v102, v25);
      v30 = (v103 != 1) & v102;
      v75 = [v95 isEditing];
      v31 = v97;
      UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v93, v32, v97);
      [v27 setNeedsUpdateConfiguration];
      v81 = v27;
      [v27 layoutIfNeeded];
      v33 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x110);
      swift_beginAccess();
      v34 = v96;
      v35 = *(v96 + 16);
      v74 = v33;
      v36 = v91;
      v73 = v35;
      v35(v18, &v3[v33], v91);
      v37 = *(v92 - 8);
      v72 = *(v37 + 48);
      v71 = v37 + 48;
      LODWORD(v33) = v72(v18, 1);
      v38 = *(v34 + 8);
      v96 = v34 + 8;
      v70 = v38;
      v38(v18, v36);
      if (v33 == 1)
      {
        v39 = v94;
        v40 = v87;
        v41 = v79;
        v42 = v30;
        if (v30)
        {
          v43 = v80;
          v44 = v78;
          v45 = v88;
          if (v103 == 1)
          {
LABEL_21:
            if (![v95 isEditing])
            {
LABEL_30:
              v66 = *(v90 + 120);
              v67 = v82;
              swift_getAssociatedConformanceWitness();
              specialized UICollectionViewListCoordinatorBase.presentEditMenu<A>(on:)(v81, v44, v89, v67, v43, v66, v41);
              _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v102, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

              (*(v83 + 8))(v97, v45);
              return;
            }

LABEL_22:
            v56 = v83;
            (*(v83 + 16))(v21, v97, v45);
            if ((*(v40 + 48))(v21, 1, v39) == 1)
            {
              (*(v56 + 8))(v21, v45);
            }

            else
            {
              v57 = v86;
              (*(v40 + 32))(v86, v21, v39);
              v58 = v84;
              v59 = v91;
              v73(v84, &v3[v74], v91);
              v60 = (v72)(v58, 1, v92);
              v70(v58, v59);
              if (v60 == 1)
              {
                (*(v40 + 8))(v57, v39);
                v41 = v79;
                v43 = v80;
              }

              else
              {
                v61 = [v95 isEditing];
                v62 = v89;
                v43 = v80;
                if (v61)
                {
                  v63 = *(v90 + 120);
                }

                else
                {
                  MEMORY[0x1EEE9AC00](v61);
                  *&v68[-32] = v44;
                  *&v68[-24] = v62;
                  v63 = *(v90 + 120);
                  *&v68[-16] = v43;
                  *&v68[-8] = v63;
                  v61 = UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:didSelectItemAt:), &v68[-48]);
                }

                MEMORY[0x1EEE9AC00](v61);
                *&v68[-48] = v44;
                *&v68[-40] = v62;
                *&v68[-32] = v43;
                *&v68[-24] = v63;
                *&v68[-16] = v64;
                v65 = v64;
                UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #2 in UICollectionViewListCoordinatorBase.collectionView(_:didSelectItemAt:), &v68[-64]);
                (*(v40 + 8))(v65, v39);
                v45 = v88;
                v41 = v79;
              }
            }

            goto LABEL_30;
          }

          v46 = BYTE2(v102);
          if (!v42)
          {
            goto LABEL_22;
          }

LABEL_20:
          if (v46)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v40 = v87;
        v39 = v94;
        v48 = (*(v87 + 48))(v31, 1, v94) != 1;
        v41 = v79;
        v42 = v30;
        if ((v48 | v75 | v30))
        {
LABEL_16:
          if (v103 == 1)
          {
            v43 = v80;
            v44 = v78;
            v45 = v88;
            if (!v42)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }

          v46 = BYTE2(v102);
          v43 = v80;
          v44 = v78;
          v45 = v88;
          if (!v42)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      v69 = v42;
      v76(&v99, v82, v41);
      v49 = v100;
      if (v100 != 1)
      {
        v50 = v101;
        outlined copy of AppIntentExecutor?(v100, v101);
        v51 = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v99, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        if (v49)
        {
          v49(v51);
          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v49, v50);
        }
      }

      v52 = type metadata accessor for IndexPath();
      v53 = *(v52 - 8);
      v54 = v85;
      (*(v53 + 16))(v85, v93, v52);
      (*(v53 + 56))(v54, 0, 1, v52);
      v55 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xE0);
      swift_beginAccess();
      outlined assign with take of IndexPath?(v54, &v3[v55], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
      swift_endAccess();
      v39 = v94;
      v42 = v69;
      goto LABEL_16;
    }

    v47 = v98;
  }
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:didDeselectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v65 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v67 = *MEMORY[0x1E69E7D40] & v4;
  v71 = type metadata accessor for IndexPath();
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v63 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (IndexPath?, IndexPath?)(0);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v70 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = v62 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v72 = v62 - v14;
  v15 = *((v5 & v4) + 0x70);
  v16 = *((v5 & v4) + 0x60);
  v62[1] = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v62 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v62 - v24;
  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v74, v26, v21);
  v27 = (*(v22 + 48))(v21, 1, AssociatedTypeWitness);
  v62[0] = v16;
  if (v27 == 1)
  {
    (*(v19 + 8))(v21, v18);
  }

  else
  {
    v28 = (*(v22 + 32))(v25, v21, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v28);
    v29 = v67;
    v30 = *(v67 + 104);
    v62[-6] = v16;
    v62[-5] = v30;
    v31 = *(v29 + 120);
    v62[-4] = v15;
    v62[-3] = v31;
    v62[-2] = v25;
    UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:didDeselectItemAt:), &v62[-8]);
    (*(v22 + 8))(v25, AssociatedTypeWitness);
  }

  v32 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xE0);
  swift_beginAccess();
  v34 = v72;
  v33 = v73;
  v35 = v71;
  (*(v73 + 16))(v72, v74, v71);
  v67 = *(v33 + 56);
  v64 = v33 + 56;
  (v67)(v34, 0, 1, v35);
  v36 = *(v69 + 48);
  v37 = MEMORY[0x1E6969C28];
  v38 = MEMORY[0x1E69E6720];
  v69 = v32;
  v39 = v3 + v32;
  v40 = v70;
  outlined init with copy of SwipeActions.Configuration?(v39, v70, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
  outlined init with copy of SwipeActions.Configuration?(v34, v40 + v36, &lazy cache variable for type metadata for IndexPath?, v37, v38, _s10Foundation9IndexPathVSgMaTm_1);
  v41 = *(v33 + 48);
  v42 = v3;
  if (v41(v40, 1, v35) != 1)
  {
    v43 = v68;
    outlined init with copy of SwipeActions.Configuration?(v40, v68, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
    if (v41(v40 + v36, 1, v35) != 1)
    {
      v45 = v73;
      v46 = v63;
      (*(v73 + 32))(v63, v40 + v36, v35);
      _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v45 + 8);
      v48(v46, v35);
      v49 = v43;
      v50 = MEMORY[0x1E6969C28];
      v51 = v42;
      v52 = MEMORY[0x1E69E6720];
      _s10Foundation9IndexPathVSgWOhTm_1(v72, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      v48(v49, v35);
      v53 = v52;
      v42 = v51;
      result = _s10Foundation9IndexPathVSgWOhTm_1(v40, &lazy cache variable for type metadata for IndexPath?, v50, v53);
      if ((v47 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    _s10Foundation9IndexPathVSgWOhTm_1(v72, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    (*(v73 + 8))(v43, v35);
    return _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v40, type metadata accessor for (IndexPath?, IndexPath?));
  }

  _s10Foundation9IndexPathVSgWOhTm_1(v34, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  if (v41(v40 + v36, 1, v35) != 1)
  {
    return _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v40, type metadata accessor for (IndexPath?, IndexPath?));
  }

  _s10Foundation9IndexPathVSgWOhTm_1(v40, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
LABEL_11:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v55 = [v65 cellForItemAtIndexPath_];

  if (v55)
  {
    v56 = swift_getAssociatedTypeWitness();
    if (swift_dynamicCastUnknownClass() && (AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), (*(AssociatedConformanceWitness + 16))(v76, v56, AssociatedConformanceWitness), v76[1] != 1) && (v59 = v77, v58 = v78, outlined copy of AppIntentExecutor?(v77, v78), _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(v76, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior), v59))
    {
      v75 = 17;
      static Update.enqueueAction(reason:_:)();

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v59, v58);
    }

    else
    {
    }
  }

  v60 = v66;
  (v67)(v66, 1, 1, v71);
  v61 = v69;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v60, v42 + v61, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
  return swift_endAccess();
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

id UICollectionViewListCoordinatorBase.collectionView(_:didBeginMultipleSelectionInteractionAt:)(void *a1)
{
  result = [a1 isEditing];
  if (result)
  {
    v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x128));
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;

      dispatch thunk of AnyLocation.set(_:transaction:)();
      return outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
    }
  }

  return result;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:didBeginMultipleSelectionInteractionAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  UICollectionViewListCoordinatorBase.collectionView(_:didBeginMultipleSelectionInteractionAt:)(v10);

  return (*(v7 + 8))(v9, v6);
}

BOOL UICollectionViewListCoordinatorBase.collectionView(_:shouldHighlightItemAt:)(void *a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v50 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  v54 = *((v4 & v3) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v47 - v7;
  v48 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *((v4 & v3) + 0x130));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = *((v4 & v3) + 0x78);
  v14 = *((v4 & v3) + 0x68);
  swift_getAssociatedConformanceWitness();
  if ((WeakSelectionBasedStorage.$action.getter(v10, v11, v12) & 0x100000000) == 0)
  {
    return 1;
  }

  v16 = v56;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v18 = v55;
  v19 = [v55 cellForItemAtIndexPath_];

  if (v19)
  {
    v20 = swift_getAssociatedTypeWitness();
    v21 = swift_dynamicCastUnknownClass();
    v22 = v19;
    if (v21)
    {
      v23 = v21;
      v47 = v22;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(&v58, v20, AssociatedConformanceWitness);
      v25 = v59;
      if (v59)
      {
        if (v59 != 1)
        {
          v26 = v60;
          outlined copy of AppIntentExecutor?(v59, v60);
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v58, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v25, v26);
          return 1;
        }
      }

      else
      {
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v58, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      }

      if (specialized UICollectionViewListCoordinatorBase.editMenuResponder<A>(for:)(v23, v54, v14, v20, v50, v13, AssociatedConformanceWitness))
      {
        _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList?, &type metadata for PlatformItemList, MEMORY[0x1E69E6720]);
        static Update.ensure<A>(_:)();
        v27 = MEMORY[0x1E69E7CC0];
        if (v57)
        {
          v28 = v57;
        }

        else
        {
          v28 = MEMORY[0x1E69E7CC0];
        }

        if (*(v28 + 2))
        {
          v57 = MEMORY[0x1E69E7CC0];
          v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v30 = MEMORY[0x1E69E7CC8];
          v31 = v49;
          v49[8] = 0;
          *(v31 + 16) = v30;
          *(v31 + 24) = v29;
          *(v31 + 32) = v27;
          *(v31 + 40) = v30;
          *(v31 + 48) = 0;
          _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
          v32 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
          v33 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_18CD63400;
          if (one-time initialization token for empty != -1)
          {
            swift_once();
          }

          v35 = __swift_project_value_buffer(v32, static MenuVisitor.MenuStackGroup.empty);
          _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_0(v35, v34 + v33, type metadata accessor for MenuVisitor.MenuStackGroup);
          *(v31 + 56) = v34;
          v36 = *(v48 + 32);
          v37 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
          (*(*(v37 - 8) + 56))(v31 + v36, 1, 1, v37);
          *v31 = 0;
          MenuVisitor.visit(_:uniqueNames:)(v28, &v57);

          v38 = *(v31 + 32);

          _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v31, type metadata accessor for MenuVisitor);
          if (!(v38 >> 62))
          {
            goto LABEL_18;
          }
        }

        else
        {

          v38 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
LABEL_18:
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

            return v39 != 0;
          }
        }

        v39 = __CocoaSet.count.getter();
        goto LABEL_19;
      }

      v16 = v56;
    }

    else
    {
    }
  }

  if (UICollectionViewListCoordinatorBase.hasMultipleSelection.getter())
  {
    goto LABEL_27;
  }

  v41 = [v18 indexPathsForSelectedItems];
  if (v41)
  {
    v42 = v41;
    type metadata accessor for IndexPath();
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  v44 = *(v43 + 16);

  if (v44 > 1)
  {
    return 0;
  }

LABEL_27:
  v45 = v51;
  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v16, v40, v51);
  v46 = (*(*(AssociatedTypeWitness - 8) + 48))(v45, 1, AssociatedTypeWitness) != 1;
  (*(v52 + 8))(v45, v53);
  return v46;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:canPerformPrimaryActionForItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v12, v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplaying:forItemAt:)(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v21 = a4;
  v7 = *a1;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = *((v8 & v7) + 0x60);
  v14 = *((v8 & v7) + 0x68);
  v15 = *((v8 & v7) + 0x70);
  v16 = a3;
  v17 = v21;
  v18 = a1;
  specialized UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplaying:forItemAt:)(v17, v12, v13, v14, v15);

  return (*(v10 + 8))(v12, v9);
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v23 = a4;
  v7 = *a1;
  v8 = *MEMORY[0x1E69E7D40];
  v24 = type metadata accessor for IndexPath();
  v9 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = *((v8 & v7) + 0x60);
  v15 = *((v8 & v7) + 0x68);
  v16 = *((v8 & v7) + 0x70);
  v17 = v22;
  v18 = v23;
  v19 = a1;
  specialized UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(v18, v21, v13, v11, v14, v15, v16);

  return (*(v9 + 8))(v11, v24);
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v3) + 0x60), *(*((*MEMORY[0x1E69E7D40] & *v3) + 0x70) + 8), a2);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *((v8 & v7) + 0x88);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v3[v13], v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9);
  v15 = ListCoreDataSource.canMoveCell(fromRowAt:to:)(a1, a2, v9, WitnessTable);
  (*(v10 + 8))(v12, v9);
  v16 = type metadata accessor for IndexPath();
  if (v15)
  {
    v17 = a2;
  }

  else
  {
    v17 = a1;
  }

  return (*(*(v16 - 8) + 16))(a3, v17, v16);
}

Class @objc UICollectionViewListCoordinatorBase.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a1;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = a3;
  v21 = v26;
  UICollectionViewListCoordinatorBase.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(v16, v10, v19);

  v22 = *(v8 + 8);
  v22(v10, v7);
  v22(v13, v7);
  v22(v16, v7);
  v23.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22(v19, v7);

  return v23.super.isa;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:moveItemAt:to:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  specialized UICollectionViewListCoordinatorBase.collectionView(_:moveItemAt:to:)(v13, v10);

  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v13, v7);
}

void closure #1 in UICollectionViewListCoordinatorBase.commitUpdates()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    type metadata accessor for ShadowListDataSource(0, a2, *(a4 + 8), v9);
    ShadowListDataSource.commitUpdates()();
    swift_endAccess();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    *(v10 + *((*v7 & *v10) + 0xC8)) = 0;
  }
}

void closure #2 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(char a1, void *a2, void *a3, char a4)
{
  if (a1)
  {
    UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(a3, a4 & 1);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = a4 & 1;
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in closure #2 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:);
    *(v9 + 24) = v8;
    v14[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed () -> ();
    v14[3] = &block_descriptor_112;
    v10 = _Block_copy(v14);
    v11 = a2;
    v12 = a3;

    [v7 performWithoutAnimation_];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

id UICollectionViewListCoordinatorBase.updateEditingState(_:)(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v57 = (*MEMORY[0x1E69E7D40] & *v1);
  v59 = *((v4 & v3) + 0x70);
  v58 = *((v4 & v3) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = type metadata accessor for Optional();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v50 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v50 - v10;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 indexPathsForSelectedItems];
  v54 = v8;
  if (v20)
  {
    v21 = v20;
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v22 = 0;
  }

  v23 = [a1 isEditing];
  UICollectionViewListCoordinatorBase.resolvedEditMode.getter(v60);
  v24 = v60[0];
  result = [a1 setEditing_];
  if (v23)
  {

    if (!v24)
    {
      MEMORY[0x1EEE9AC00](result);
      v26 = v57;
      v27 = v57[13];
      *(&v50 - 4) = v58;
      *(&v50 - 3) = v27;
      v28 = v26[15];
      *(&v50 - 2) = v59;
      *(&v50 - 1) = v28;
      UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #1 in UICollectionViewListCoordinatorBase.updateEditingState(_:), (&v50 - 6));
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
      swift_beginAccess();
      outlined init with copy of SwipeActions.Configuration?(v1 + v29, v15, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
      v30 = v17;
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        return _s10Foundation9IndexPathVSgWOhTm_1(v15, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      }

      else
      {
        v35 = *(v17 + 32);
        v36 = v56;
        v35(v56, v15, v16);
        type metadata accessor for UpdateCoalescingCollectionView(0);
        v37 = swift_dynamicCastClass();
        if (v37)
        {
          v38 = v37;
          v57 = a1;
          UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v36, v39, v7);
          v40 = v54;
          if ((*(v54 + 48))(v7, 1, AssociatedTypeWitness) == 1)
          {
            (*(v51 + 8))(v7, v53);
          }

          else
          {
            v41 = v52;
            v42 = (*(v40 + 32))(v52, v7, AssociatedTypeWitness);
            MEMORY[0x1EEE9AC00](v42);
            v43 = v59;
            *(&v50 - 6) = v58;
            *(&v50 - 5) = v27;
            *(&v50 - 4) = v43;
            *(&v50 - 3) = v28;
            v44 = v41;
            *(&v50 - 2) = v41;
            UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #2 in UICollectionViewListCoordinatorBase.updateEditingState(_:), (&v50 - 8));
            v36 = v56;
            (*(v40 + 8))(v44, AssociatedTypeWitness);
          }

          v45 = v55;
          (*(v30 + 16))(v55, v36, v16);
          (*(v30 + 56))(v45, 0, 1, v16);
          v46 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
          swift_beginAccess();
          outlined assign with take of IndexPath?(v45, v38 + v46, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
          swift_endAccess();
          v47 = swift_allocObject();
          *(v47 + 16) = v38;
          *(v47 + 24) = v1;
          v48 = v57;
          v49 = v1;
          onNextMainRunLoop(do:)();
        }

        return (*(v30 + 8))(v36, v16);
      }
    }
  }

  else if (v24)
  {
    if (v22)
    {
      v31 = *(v22 + 16);

      if (v31 == 1)
      {
        MEMORY[0x1EEE9AC00](result);
        v32 = v57;
        v33 = v57[13];
        *(&v50 - 4) = v58;
        *(&v50 - 3) = v33;
        v34 = v32[15];
        *(&v50 - 2) = v59;
        *(&v50 - 1) = v34;
        return UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #1 in UICollectionViewListCoordinatorBase.updateEditingState(_:), (&v50 - 6));
      }
    }
  }

  else
  {
  }

  return result;
}

void closure #1 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(void *a1, uint64_t a2, UICollectionView *a3, double a4)
{
  v136 = a3;
  v6 = *a1;
  v7 = *MEMORY[0x1E69E7D40];
  v119 = type metadata accessor for IndexSet.Index();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for IndexPath();
  v132 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v117 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v135 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v116 - v13;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v138 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v116 - v17;
  v129 = type metadata accessor for IndexSet();
  v131 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v121 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v116 - v21;
  v22 = *((v7 & v6) + 0x60);
  v133 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v116 - v24;
  v26 = *(*((v7 & v6) + 0x70) + 8);
  v28 = type metadata accessor for ShadowListDataSource(0, v22, v26, v27);
  v128 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v116 - v29;
  v31 = v136;
  swift_beginAccess();
  ShadowListDataSource.updateBase(to:)(a2, v28, v32, v33);
  swift_endAccess();
  UICollectionViewListCoordinatorBase.disableFocusEventsForDeletedCells(collectionView:)(v31);
  v38 = UICollectionViewListCoordinatorBase.dragAndDropController.getter(v34, v35, v36, v37);
  (*(v133 + 16))(v25, a2, v22);
  v133 = v22;
  v130 = v26;
  ShadowListDataSource.init(_:)(v25, v22, v26, v30);
  v39 = MEMORY[0x1E69E7D40];
  v40 = *((*MEMORY[0x1E69E7D40] & *v38) + 0x60);
  swift_beginAccess();
  v41 = v129;
  v42 = v38 + v40;
  v43 = v127;
  v128[5](v42, v30, v28);
  v44 = v131;
  swift_endAccess();

  v45 = *((*v39 & *a1) + 0xB8);
  v124 = a1;
  v46 = (a1 + v45);
  swift_beginAccess();
  v47 = v44 + 16;
  v48 = *(v44 + 16);
  v48(v43, v46, v41);
  LODWORD(v38) = IndexSet.isEmpty.getter();
  v51 = *(v44 + 8);
  v50 = v44 + 8;
  v49 = v51;
  v51(v43, v41);
  v122 = v38;
  if ((v38 & 1) == 0)
  {
    v48(v43, v46, v41);
    IndexSet._bridgeToObjectiveC()(v53);
    v55 = v54;
    v49(v43, v41);
    [(UICollectionView *)v31 deleteSections:v55];
  }

  v130 = type metadata accessor for ListCoreBatchUpdates(0, v133, *(v130 + 8), v52);
  v48(v43, v46 + *(v130 + 36), v41);
  v56 = IndexSet.isEmpty.getter();
  v49(v43, v41);
  v131 = v50;
  v123 = v49;
  v126 = v47;
  v125 = v48;
  if (v56)
  {
    v57 = v122 ^ 1;
  }

  else
  {
    v48(v43, v46 + *(v130 + 36), v41);
    IndexSet._bridgeToObjectiveC()(v58);
    v60 = v59;
    v49(v43, v41);
    [(UICollectionView *)v31 insertSections:v60];

    v57 = 1;
  }

  v61 = v138;
  v62 = v130;
  v63 = *(v46 + *(v130 + 40));
  v64 = *(v63 + 16);
  v128 = v46;
  if (v64)
  {

    v65 = (v63 + 40);
    do
    {
      [(UICollectionView *)v31 moveSection:*(v65 - 1) toSection:*v65];
      v65 += 2;
      --v64;
    }

    while (v64);

    v57 = 1;
    v46 = v128;
  }

  if ((*(v46 + v62[11]))[2])
  {

    isa = Array._bridgeToObjectiveC()().super.isa;

    [(UICollectionView *)v31 deleteItemsAtIndexPaths:isa];

    v61 = v138;
    v57 = 1;
  }

  if ((*(v46 + v62[12]))[2])
  {

    v67 = Array._bridgeToObjectiveC()().super.isa;

    [(UICollectionView *)v31 insertItemsAtIndexPaths:v67];

    v61 = v138;
    v57 = 1;
  }

  v68 = (*(v46 + v62[13]))[2];
  v69 = (v132 + 32);
  v70 = (v132 + 8);
  v133 = *(v46 + v62[13]);

  i = 0;
  if (v68)
  {
    goto LABEL_16;
  }

LABEL_15:
  type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
  v73 = v72;
  (*(*(v72 - 8) + 56))(v61, 1, 1, v72);
  for (i = v68; ; ++i)
  {
    outlined init with take of IndexPath?(v61, v18, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath));
    type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
    if ((*(*(v73 - 8) + 48))(v18, 1, v73) == 1)
    {

      v92 = v128;
      v91 = v129;
      v93 = v125;
      if ((v57 & 1) == 0)
      {
        v94 = v127;
        v125(v127, v128 + *(v130 + 56), v129);
        v95 = IndexSet.isEmpty.getter();
        v123(v94, v91);
        if ((v95 & 1) == 0)
        {
          v96 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
          v97 = [(UICollectionView *)v136 collectionViewLayout];
          ObjCClassFromObject = swift_getObjCClassFromObject();

          [ObjCClassFromObject invalidationContextClass];
          swift_getObjCClassMetadata();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext, 0x1E69DC860);
          swift_dynamicCastMetatypeUnconditional();
          v99 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v100 = v121;
          v93(v121, v92 + *(v130 + 56), v91);
          v101 = _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
          v102 = dispatch thunk of Collection.count.getter();
          if (v102)
          {
            v103 = v102;
            v135 = v99;
            v140 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v102 & ~(v102 >> 63), 0);
            v104 = v140;
            v105 = v120;
            dispatch thunk of Collection.startIndex.getter();
            if (v103 < 0)
            {
              goto LABEL_36;
            }

            v106 = v117;
            v138 = v101;
            do
            {
              v107 = dispatch thunk of Collection.subscript.read();
              v107(v139, 0);
              IndexPath.init(index:)();
              v140 = v104;
              v108 = v100;
              v110 = *(v104 + 16);
              v109 = *(v104 + 24);
              if (v110 >= v109 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1);
                v104 = v140;
              }

              *(v104 + 16) = v110 + 1;
              (*(v132 + 32))(v104 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v110, v106, v137);
              dispatch thunk of Collection.formIndex(after:)();
              --v103;
              v100 = v108;
            }

            while (v103);
            (*(v118 + 8))(v105, v119);
            v123(v108, v91);
            v96 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
            v99 = v135;
          }

          else
          {
            v123(v100, v91);
          }

          v111 = *MEMORY[0x1E69DDC08];
          v112 = Array._bridgeToObjectiveC()().super.isa;
          [v99 invalidateSupplementaryElementsOfKind:v111 atIndexPaths:v112];

          v113 = *MEMORY[0x1E69DDC00];
          v114 = Array._bridgeToObjectiveC()().super.isa;

          [v99 invalidateSupplementaryElementsOfKind:v113 atIndexPaths:v114];

          v115 = [v136 v96[236]];
          [v115 invalidateLayoutWithContext_];
        }
      }

      UICollectionViewListCoordinatorBase.clearDataSourceUpdates()();
      return;
    }

    v83 = *v69;
    v84 = v134;
    v85 = v137;
    (*v69)(v134, &v18[*(v73 + 48)], v137);
    v86 = v135;
    v83(v135, v18, v85);
    v87 = IndexPath._bridgeToObjectiveC()().super.isa;
    v88 = *v70;
    (*v70)(v86, v85);
    v89 = IndexPath._bridgeToObjectiveC()().super.isa;
    [(UICollectionView *)v136 moveItemAtIndexPath:v87 toIndexPath:v89];

    v90 = v84;
    v61 = v138;
    v88(v90, v85);
    v57 = 1;
    if (i == v68)
    {
      goto LABEL_15;
    }

LABEL_16:
    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v133 + 16))
    {
      goto LABEL_35;
    }

    v74 = v70;
    v75 = v68;
    v76 = v69;
    v77 = v18;
    v78 = v57;
    v79 = v133;
    type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
    v73 = v80;
    v81 = *(v80 - 8);
    v82 = v79 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v57 = v78;
    v18 = v77;
    v69 = v76;
    v68 = v75;
    v70 = v74;
    v61 = v138;
    _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_0(v82 + *(v81 + 72) * i, v138, type metadata accessor for (source: IndexPath, destination: IndexPath));
    (*(v81 + 56))(v61, 0, 1, v73);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void @objc UICollectionViewListCoordinatorBase.scrollViewWillBeginDragging(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized UICollectionViewListCoordinatorBase.scrollViewWillBeginDragging(_:)();
}

void @objc UICollectionViewListCoordinatorBase.scrollViewDidEndDragging(_:willDecelerate:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v6 = a3;
  v7 = a1;
  specialized UICollectionViewListCoordinatorBase.scrollViewDidEndDragging(_:willDecelerate:)(v4);
}

void @objc UICollectionViewListCoordinatorBase.scrollViewDidEndDecelerating(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized UICollectionViewListCoordinatorBase.scrollViewDidEndDecelerating(_:)();
}

void @objc UICollectionViewListCoordinatorBase.scrollViewDidEndScrollingAnimation(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized UICollectionViewListCoordinatorBase.scrollViewDidEndScrollingAnimation(_:)();
}

uint64_t closure #3 in UICollectionViewListCoordinatorBase.updateEditingState(_:)(char *a1, void *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969C28];
  v9 = MEMORY[0x1E69E6720];
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  (*(v5 + 56))(&v21 - v15, 1, 1, v4, v14);
  v17 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v16, &a1[v17], &lazy cache variable for type metadata for IndexPath?, v8);
  swift_endAccess();
  v18 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xE0);
  swift_beginAccess();
  outlined init with copy of SwipeActions.Configuration?(a2 + v18, v12, &lazy cache variable for type metadata for IndexPath?, v8, v9, _s10Foundation9IndexPathVSgMaTm_1);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return _s10Foundation9IndexPathVSgWOhTm_1(v12, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  }

  (*(v5 + 32))(v7, v12, v4);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

  return (*(v5 + 8))(v7, v4);
}

BOOL closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:canEditItemAt:)@<W0>(void *a1@<X1>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = type metadata accessor for ShadowListDataSource(255, *((*MEMORY[0x1E69E7D40] & *a1) + 0x60), *(*((*MEMORY[0x1E69E7D40] & *a1) + 0x70) + 8), a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v4);
  v7 = type metadata accessor for _RowVisitationContext(0, v4, WitnessTable, v6);
  result = _RowVisitationContext.canMove.getter(v7) || (UICollectionViewListCoordinatorBase.hasMultipleSelection.getter() & 1) != 0 || (_RowVisitationContext.hasSwipeActions.getter(v7) & 1) != 0 || _RowVisitationContext.canDelete.getter(v7);
  *a3 = result;
  return result;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:shouldBeginMultipleSelectionInteractionAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

void closure #1 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:)(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a3;
  v36 = a4;
  v5 = *MEMORY[0x1E69E7D40] & *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v30 = *a2;
  v31 = v6;
  v34 = v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[5];
  v43 = a1[4];
  v44 = v11;
  v45 = a1[6];
  v12 = a1[1];
  v39 = *a1;
  v40 = v12;
  v13 = a1[3];
  v41 = a1[2];
  v42 = v13;
  v35 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration, 0x1E69DCFC0);
  v14 = a1[5];
  v38[4] = a1[4];
  v38[5] = v14;
  v38[6] = a1[6];
  v15 = a1[1];
  v38[0] = *a1;
  v38[1] = v15;
  v16 = a1[3];
  v38[2] = a1[2];
  v38[3] = v16;
  Strong = swift_weakLoadStrong();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v7;
  (*(v8 + 16))(v10, v33, v7);
  v19 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v30;
  v23 = v31;
  *(v21 + 16) = *((v31 & v30) + 0x60);
  *(v21 + 24) = *(v34 + 104);
  *(v21 + 40) = *((v23 & v22) + 0x78);
  *(v21 + 48) = v17;
  (*(v8 + 32))(v21 + v19, v10, v18);
  v24 = (v21 + v20);
  v25 = v44;
  v24[4] = v43;
  v24[5] = v25;
  v24[6] = v45;
  v26 = v40;
  *v24 = v39;
  v24[1] = v26;
  v27 = v42;
  v24[2] = v41;
  v24[3] = v27;
  outlined init with copy of SwipeActions.Configuration(&v39, v37);
  outlined init with copy of SwipeActions.Configuration(&v39, v37);
  v28 = specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(v38, Strong, partial apply for closure #1 in closure #1 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:), v21);

  *v36 = v28;
}

void closure #1 in UICollectionViewListCoordinatorBase.leadingSwipeActionsConfiguration(indexPath:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(v11, a4, 0);
      v14 = v13;

      v23[0] = *(a5 + 56);
      v15 = *(a5 + 88);
      v23[1] = *(a5 + 72);
      v23[2] = v15;
      v24 = *(a5 + 104);
      if (*(&v23[0] + 1))
      {
        v18 = 0;
        v19 = a1;
        v20 = a2;
        v21 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:);
        v22 = v14;
        v16 = MEMORY[0x1E69E6720];
        outlined init with copy of SwipeActions.Configuration?(v23, v17, &lazy cache variable for type metadata for Binding<SwipeActionResultToken?>?, type metadata accessor for Binding<SwipeActionResultToken?>, MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);

        dispatch thunk of AnyLocation.set(_:transaction:)();

        outlined consume of SwipeActionResultToken?(v18, v19, v20, v21, v22);
        _s10Foundation9IndexPathVSgWOhTm_1(v23, &lazy cache variable for type metadata for Binding<SwipeActionResultToken?>?, type metadata accessor for Binding<SwipeActionResultToken?>, v16);
      }

      else
      {
        partial apply for closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)();
        (a1)(1);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a1();
  }
}

BOOL key path getter for _RowVisitationContext.canDelete : <A, B>_RowVisitationContext<ShadowListDataSource<A>>@<W0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = type metadata accessor for ShadowListDataSource(255, *(a1 + a2 - 32), *(*(a1 + a2 - 16) + 8), a3);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v5);
  v8 = type metadata accessor for _RowVisitationContext(0, v5, WitnessTable, v7);
  result = _RowVisitationContext.canDelete.getter(v8);
  *a4 = result;
  return result;
}

void closure #2 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v9 = Strong;
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(v12, a6, 1);

      partial apply for closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)();

LABEL_5:
      a3(1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ()(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> (), v8);
}

void closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a5;
  v32 = a4;
  v31 = a1;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a3, v13, v16);
  v18 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v29;
  *(v19 + 2) = v29;
  *(v19 + 3) = a6;
  *(v19 + 4) = a7;
  *(v19 + 5) = a8;
  *(v19 + 6) = a2;
  (*(v14 + 32))(&v19[v18], v17, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:);
  *(v21 + 24) = v19;
  v37 = partial apply for thunk for @callee_guaranteed () -> ();
  v38 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed () -> ();
  v36 = &block_descriptor_46;
  v30 = _Block_copy(&aBlock);

  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v23 = v31;
  v22[6] = a2;
  v22[7] = v23;
  v37 = partial apply for closure #2 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:);
  v38 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v36 = &block_descriptor_39_1;
  v24 = _Block_copy(&aBlock);

  v25 = v23;

  v26 = v25;
  v27 = v30;
  [v26 performBatchUpdates:v30 completion:v24];
  _Block_release(v24);
  _Block_release(v27);
  LOBYTE(aBlock) = 17;
  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = a6;
  *(v28 + 32) = a7;
  *(v28 + 40) = a8;
  *(v28 + 48) = v32;
  *(v28 + 56) = a2;

  static Update.enqueueAction(reason:_:)();

  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }
}

void closure #1 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24[-v9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for IndexPath();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v10, 1, 1, v13);
    v15 = *((*MEMORY[0x1E69E7D40] & *v12) + 0xE0);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v10, v12 + v15, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    swift_endAccess();
    swift_beginAccess();
    v17 = type metadata accessor for ShadowListDataSource(0, a3, *(a5 + 8), v16);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v17);
    ListCoreDataSource.deleteCell(forRowAt:)(a2, v17, WitnessTable);
    swift_endAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
      v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_18CD63400;
      (*(v14 + 16))(v22 + v21, a2, v13);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 deleteItemsAtIndexPaths_];
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #2 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(uint64_t a1, uint64_t a2, UIView *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    UICollectionViewListCoordinatorBase.enqueueLayoutInvalidationIfNeeded(_:)(a3);
  }
}

void closure #3 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v6 = Strong;
    UICollectionViewListCoordinatorBase.commitUpdates()();
  }

  else
  {
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      return;
    }

    v6 = v9;
    swift_beginAccess();
    type metadata accessor for ShadowListDataSource(0, a3, *(a5 + 8), v10);
    ShadowListDataSource.discardUpdatesForDeletion()();
    swift_endAccess();
  }
}

void closure #1 in UICollectionViewListCoordinatorBase.id(for:)(uint64_t a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = type metadata accessor for ShadowListDataSource(255, a1, *(a2 + 8), a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v4);
  v7 = type metadata accessor for _RowVisitationContext(0, v4, WitnessTable, v6);
  _RowVisitationContext.intelligenceDataSourceItemID.getter(v7, a3);
}

uint64_t UICollectionViewListCoordinatorBase.__ivar_destroyer()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];

  v4 = *((*v1 & *v0) + 0x88);
  v5 = *((v3 & v2) + 0x60);
  v6 = *(*((v3 & v2) + 0x70) + 8);
  v8 = type metadata accessor for ShadowListDataSource(0, v5, v6, v7);
  (*(*(v8 - 8) + 8))(&v0[v4], v8);

  v9 = &v0[*((*v1 & *v0) + 0x98)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v9, v9[1]);
  outlined consume of ListItemTint?(*&v0[*((*v1 & *v0) + 0xA0)]);
  swift_weakDestroy();
  v10 = *((*v1 & *v0) + 0xB8);
  v12 = type metadata accessor for ListCoreBatchUpdates(0, v5, *(v6 + 8), v11);
  (*(*(v12 - 8) + 8))(&v0[v10], v12);
  v13 = *((*v1 & *v0) + 0xD0);
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  v15 = MEMORY[0x1E6969C28];
  v16 = MEMORY[0x1E69E6720];
  _s10Foundation9IndexPathVSgWOhTm_1(&v0[*((*v1 & *v0) + 0xE0)], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  _s10Foundation9IndexPathVSgWOhTm_1(&v0[*((*v1 & *v0) + 0xE8)], &lazy cache variable for type metadata for IndexPath?, v15, v16);
  MEMORY[0x18D011290](&v0[*((*v1 & *v0) + 0xF8)]);
  v17 = &v0[*((*v1 & *v0) + 0x100)];
  outlined consume of ResolvedSubviewsSizingOptions?(*v17, *(v17 + 1), *(v17 + 2), *(v17 + 3), *(v17 + 4), *(v17 + 5), *(v17 + 6));
  v18 = *((*v1 & *v0) + 0x110);
  type metadata accessor for Binding();
  v19 = type metadata accessor for Optional();
  (*(*(v19 - 8) + 8))(&v0[v18], v19);
  v20 = *((*v1 & *v0) + 0x118);
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 8))(&v0[v20], v21);
  v22 = &v0[*((*v1 & *v0) + 0x128)];
  outlined consume of Binding<NavigationSplitViewColumn>?(*v22, v22[1]);

  return _s10Foundation9IndexPathVSgWOhTm_1(&v0[*((*v1 & *v0) + 0x178)], &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, v16);
}

id UICollectionViewListCoordinatorBase.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4[1] = v1;
  v2 = type metadata accessor for UICollectionViewListCoordinatorBase(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t @objc UICollectionViewListCoordinatorBase.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *((*v2 & *a1) + 0x88);
  v6 = *((v4 & v3) + 0x60);
  v7 = *(*((v4 & v3) + 0x70) + 8);
  v9 = type metadata accessor for ShadowListDataSource(0, v6, v7, v8);
  (*(*(v9 - 8) + 8))(&a1[v5], v9);

  v10 = &a1[*((*v2 & *a1) + 0x98)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v10, v10[1]);
  outlined consume of ListItemTint?(*&a1[*((*v2 & *a1) + 0xA0)]);
  swift_weakDestroy();
  v11 = *((*v2 & *a1) + 0xB8);
  v13 = type metadata accessor for ListCoreBatchUpdates(0, v6, *(v7 + 8), v12);
  (*(*(v13 - 8) + 8))(&a1[v11], v13);
  v14 = *((*v2 & *a1) + 0xD0);
  v15 = type metadata accessor for Optional();
  (*(*(v15 - 8) + 8))(&a1[v14], v15);
  v16 = MEMORY[0x1E6969C28];
  v17 = MEMORY[0x1E69E6720];
  _s10Foundation9IndexPathVSgWOhTm_1(&a1[*((*v2 & *a1) + 0xE0)], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  _s10Foundation9IndexPathVSgWOhTm_1(&a1[*((*v2 & *a1) + 0xE8)], &lazy cache variable for type metadata for IndexPath?, v16, v17);
  MEMORY[0x18D011290](&a1[*((*v2 & *a1) + 0xF8)]);
  v18 = &a1[*((*v2 & *a1) + 0x100)];
  outlined consume of ResolvedSubviewsSizingOptions?(*v18, *(v18 + 1), *(v18 + 2), *(v18 + 3), *(v18 + 4), *(v18 + 5), *(v18 + 6));
  v19 = *((*v2 & *a1) + 0x110);
  type metadata accessor for Binding();
  v20 = type metadata accessor for Optional();
  (*(*(v20 - 8) + 8))(&a1[v19], v20);
  v21 = *((*v2 & *a1) + 0x118);
  v22 = type metadata accessor for Optional();
  (*(*(v22 - 8) + 8))(&a1[v21], v22);
  v23 = &a1[*((*v2 & *a1) + 0x128)];
  outlined consume of Binding<NavigationSplitViewColumn>?(*v23, v23[1]);

  return _s10Foundation9IndexPathVSgWOhTm_1(&a1[*((*v2 & *a1) + 0x178)], &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, v17);
}

void protocol witness for ListCollectionViewCellEditMenuDelegate.listCollectionViewEditMenuInteraction(_:targetRectFor:) in conformance UICollectionViewListCoordinatorBase<A, B>(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    [v2 frame];
    static UnitPoint.top.getter();
  }
}

unint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceAppIntentsPayloads(for:request:) in conformance UICollectionViewListCoordinatorBase<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UICollectionViewListCoordinatorBase<A, B>, a3);

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceAppIntentsPayloads(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceNeedsAppIntentsPayloadsFetch(for:request:) in conformance UICollectionViewListCoordinatorBase<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UICollectionViewListCoordinatorBase<A, B>, a3);

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceNeedsAppIntentsPayloadsFetch(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:) in conformance UICollectionViewListCoordinatorBase<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UICollectionViewListCoordinatorBase<A, B>, a4);
  *v9 = v4;
  v9[1] = protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:) in conformance UITableViewListCoordinator<A, B>;

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:) in conformance UICollectionViewListCoordinatorBase<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UICollectionViewListCoordinatorBase<A, B>, a3);
  *v7 = v3;
  v7[1] = protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:) in conformance UITableViewListCoordinator<A, B>;

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for UICollectionViewListCoordinatorBase<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for UICollectionViewListCoordinatorBase<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t one-time initialization function for allowNonMomentaryEditModeSelection()
{
  result = closure #1 in variable initialization expression of allowFakeMoves();
  allowNonMomentaryEditModeSelection = result & 1;
  return result;
}

uint64_t specialized UICollectionViewListCoordinatorBase.listCollectionViewEditMenuInteraction(_:menuFor:suggestedActions:)(void *a1)
{
  v2 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIKitEditMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList?, &type metadata for PlatformItemList, MEMORY[0x1E69E6720]);
      v6 = a1;

      static Update.ensure<A>(_:)();
      v7 = MEMORY[0x1E69E7CC0];
      if (v24)
      {
        v8 = v24;
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      if (*(v8 + 2))
      {
        v24 = MEMORY[0x1E69E7CC0];
        v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v10 = MEMORY[0x1E69E7CC8];
        v4[8] = 0;
        *(v4 + 2) = v10;
        *(v4 + 3) = v9;
        *(v4 + 4) = v7;
        *(v4 + 5) = v10;
        v4[48] = 0;
        _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
        v11 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
        v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_18CD63400;
        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v11, static MenuVisitor.MenuStackGroup.empty);
        _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_0(v14, v13 + v12, type metadata accessor for MenuVisitor.MenuStackGroup);
        *(v4 + 7) = v13;
        v15 = *(v2 + 32);
        v16 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
        (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
        *v4 = 0;
        MenuVisitor.visit(_:uniqueNames:)(v8, &v24);

        v17 = *(v4 + 4);

        _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v4, type metadata accessor for MenuVisitor);
      }

      else
      {

        v17 = MEMORY[0x1E69E7CC0];
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v25.value.super.isa = 0;
      v25.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, v18, 0, v25, 0, 0xFFFFFFFFFFFFFFFFLL, v17, v22);
      v21 = v20;

      return v21;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double specialized UICollectionViewListCoordinatorBase.listCollectionViewEditMenuInteraction(_:willPresentMenuFor:animator:)(void *a1, void *a2)
{
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 view];
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {

      goto LABEL_12;
    }

    v22 = v21;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      (*(v15 + 56))(v13, 1, 1, v14);
LABEL_10:
      _s10Foundation9IndexPathVSgWOhTm_1(v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      goto LABEL_12;
    }

    v34 = a2;
    v24 = Strong;
    v25 = [Strong indexPathForCell_];

    if (v25)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = *(v15 + 56);
      v26(v10, 0, 1, v14);
    }

    else
    {

      v26 = *(v15 + 56);
      v26(v10, 1, 1, v14);
    }

    a2 = v34;
    outlined init with take of IndexPath?(v10, v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      goto LABEL_10;
    }

    v27 = *(v15 + 32);
    v27(v18, v13, v14);
    v27(v7, v18, v14);
    v26(v7, 0, 1, v14);
    v28 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE8);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v7, v2 + v28, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    swift_endAccess();
  }

LABEL_12:
  type metadata accessor for UIKitEditMenuConfiguration();
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    if (*(v29 + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      v35 = 17;
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = 1;
      v33 = a2;

      static Update.enqueueAction(reason:_:)();
    }
  }

  return result;
}

double specialized UICollectionViewListCoordinatorBase.listCollectionViewEditMenuInteraction(_:willDismissMenuFor:animator:)(void *a1, void *a2)
{
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 view];
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {

      goto LABEL_15;
    }

    v22 = v21;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      (*(v15 + 56))(v13, 1, 1, v14);
LABEL_11:
      _s10Foundation9IndexPathVSgWOhTm_1(v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      goto LABEL_15;
    }

    v37 = a2;
    v24 = Strong;
    v25 = [Strong indexPathForCell_];

    if (v25)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = *(v15 + 56);
      v26(v10, 0, 1, v14);
    }

    else
    {
      v26 = *(v15 + 56);
      v26(v10, 1, 1, v14);
    }

    outlined init with take of IndexPath?(v10, v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    v27 = (*(v15 + 48))(v13, 1, v14);
    a2 = v37;
    if (v27 == 1)
    {

      goto LABEL_11;
    }

    (*(v15 + 32))(v18, v13, v14);
    v26(v7, 1, 1, v14);
    v28 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE8);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v7, v2 + v28, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    swift_endAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v30 deselectItemAtIndexPath:isa animated:1];
    }

    (*(v15 + 8))(v18, v14);
  }

LABEL_15:
  type metadata accessor for UIKitEditMenuConfiguration();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    if (*(v32 + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      v38 = 17;
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      v36 = a2;

      static Update.enqueueAction(reason:_:)();
    }
  }

  return result;
}

uint64_t specialized UICollectionViewListCoordinatorBase.pendingSelection.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *((v4 & v3) + 0x118);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  swift_beginAccess();
  (*(v6 + 24))(&v1[v9], a1, v5);
  swift_endAccess();
  v10 = UICollectionViewListCoordinatorBase.pendingSelection.didset(v8);
  return (*(v6 + 8))(v8, v5, v10);
}

void partial apply for closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));
  v9 = *(v8 + *(v5 + 64));

  closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(v6, v7, v8, v9, v1, v2, v3, v4);
}

void partial apply for closure #1 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = v0[6];
  v6 = v0 + ((*(v4 + 80) + 56) & ~*(v4 + 80));

  closure #1 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(v5, v6, v1, v2, v3);
}

uint64_t objectdestroy_29Tm_0()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_56Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = (v0 + v4);

  if (*(v0 + v4 + 40))
  {
  }

  if (v5[8])
  {

    v6 = v5[10];
    if (v6)
    {
      if (v6 == 1)
      {
        goto LABEL_9;
      }
    }

    if (v5[12])
    {
    }
  }

LABEL_9:

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:)(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  closure #1 in UICollectionViewListCoordinatorBase.leadingSwipeActionsConfiguration(indexPath:)(a1, a2, *(v2 + 48), v2 + v6, v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
}

void type metadata accessor for EnvironmentPropertyKey<FocusBridgeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>);
    }
  }
}

void partial apply for closure #4 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)()
{
  v1 = *(v0 + 16);
  [v1 layoutIfNeeded];
  UICollectionViewListCoordinatorBase.updateListContents(_:)(v1, v2, v3, v4);
}

uint64_t outlined init with take of IndexPath?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation9IndexPathVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *specialized UICollectionViewListCoordinatorBase.editMenuResponder<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a7 + 8) + 56))(a4);
  if (result)
  {
    v8 = result;
    v9 = specialized _UIHostingView.editMenuBridge.getter();

    v10 = &v9[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 24))(ObjectType, v11);
      v14 = swift_unknownObjectRelease();
      if (v13)
      {
        MEMORY[0x1EEE9AC00](v14);
        dispatch thunk of ResponderNode.visit(applying:)();

        return 0;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.ListCoreDataSource.SelectionValue>) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 48);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for closure #2 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return closure #2 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)(v6, v7, v8, v1, v2, v3, v4);
}

void specialized UICollectionViewListCoordinatorBase.scrollViewDidEndDecelerating(_:)()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90));
  *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 0;
  v2 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 66) = 0;
  *(v2 + 64) = 512;
  ScrollViewHelper.updateGraphState(isPreferred:)(0);
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias);
  *v3 = 0;
  v3[1] = 0;
}

void specialized UICollectionViewListCoordinatorBase.scrollViewDidEndScrollingAnimation(_:)()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90));
  *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending) = 1;
  *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 0;
  v2 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 66) = 0;
  *(v2 + 64) = 512;
  ScrollViewHelper.updateGraphState(isPreferred:)(0);
}

void specialized UICollectionViewListCoordinatorBase.presentEditMenu<A>(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = specialized UICollectionViewListCoordinatorBase.editMenuResponder<A>(for:)(a1, a2, a3, a4, a5, a6, a7);
  if (v7)
  {
    v8 = v7;
    type metadata accessor for UIKitEditMenuConfiguration();
    lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
    AnyHashable.init<A>(_:)();
    v9 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
    [v9 setPreferredArrowDirection_];
    *&v9[OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder] = v8;

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
LABEL_32:

LABEL_35:

      return;
    }

    v11 = v10;
    swift_unknownObjectRetain();
    v12 = [v11 interactions];
    type metadata accessor for UIInteraction();
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = MEMORY[0x1E69E7CC0];
    if (v13 >> 62)
    {
LABEL_22:
      v14 = __CocoaSet.count.getter();
      v22 = v9;
      if (v14)
      {
LABEL_5:
        v9 = 0;
        v15 = MEMORY[0x1E69E7CC0];
        do
        {
          v16 = v9;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              MEMORY[0x18D00E9C0](v16, v13);
              v9 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              swift_unknownObjectRetain();
              v9 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_20:
                __break(1u);
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v16;
            if (v9 == v14)
            {
              goto LABEL_24;
            }
          }

          MEMORY[0x18D00CC30]();
          if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v15 = v23;
        }

        while (v9 != v14);
LABEL_24:

        if (v15 >> 62)
        {
          v17 = __CocoaSet.count.getter();
          v9 = v22;
          if (v17)
          {
LABEL_26:
            v18 = __OFSUB__(v17, 1);
            v19 = v17 - 1;
            if (v18)
            {
              __break(1u);
            }

            else if ((v15 & 0xC000000000000001) == 0)
            {
              if ((v19 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v19 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v20 = *(v15 + 8 * v19 + 32);
LABEL_31:
                v21 = v20;

                [v21 presentEditMenuWithConfiguration_];
                swift_unknownObjectRelease();

                goto LABEL_32;
              }

              __break(1u);
              return;
            }

            v20 = MEMORY[0x18D00E9C0](v19, v15);
            goto LABEL_31;
          }
        }

        else
        {
          v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v9 = v22;
          if (v17)
          {
            goto LABEL_26;
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_35;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = v9;
      if (v14)
      {
        goto LABEL_5;
      }
    }

    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }
}

BOOL specialized UICollectionViewListCoordinatorBase.collectionView(_:shouldBeginMultipleSelectionInteractionAt:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  if ((UICollectionViewListCoordinatorBase.hasMultipleSelection.getter() & 1) == 0 || !*(v1 + *((*v3 & *v1) + 0x128) + 8))
  {
    return 0;
  }

  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(a1, v9, v8);
  v10 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness) != 1;
  (*(v6 + 8))(v8, v5);
  return v10;
}

void specialized UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplaying:forItemAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCastUnknownClass())
  {
    swift_getAssociatedConformanceWitness();
    PlatformListViewBase.updateViewGraphForDisplay(_:)(0);
  }
}

void specialized UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v9 != a3)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_13;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v12 != a3)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCastUnknownClass())
  {
    swift_getAssociatedConformanceWitness();
    PlatformListViewBase.updateViewGraphForDisplay(_:)(0);
  }
}

uint64_t specialized UICollectionViewListCoordinatorBase.collectionView(_:canMoveItemAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), *(*((*MEMORY[0x1E69E7D40] & *v4) + 0x70) + 8), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = *((v7 & v6) + 0x88);
  swift_beginAccess();
  (*(v9 + 16))(v11, &v4[v12], v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
  LOBYTE(a1) = ListCoreDataSource.canMoveCell(forRowAt:)(a1, v8, WitnessTable);
  (*(v9 + 8))(v11, v8);
  return a1 & 1;
}

void specialized UICollectionViewListCoordinatorBase.collectionView(_:moveItemAt:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = type metadata accessor for ShadowListDataSource(0, *((v6 & v5) + 0x60), *(*((v6 & v5) + 0x70) + 8), v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
  ListCoreDataSource.moveCell(fromRowAt:to:)(a1, a2, v8, WitnessTable);
  swift_endAccess();
  UICollectionViewListCoordinatorBase.commitUpdates()();
}

uint64_t specialized UICollectionViewListCoordinatorBase.collectionView(_:canEditItemAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), *(*((*MEMORY[0x1E69E7D40] & *v4) + 0x70) + 8), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  v12 = *((v7 & v6) + 0x88);
  swift_beginAccess();
  (*(v9 + 16))(v11, &v4[v12], v8);
  v16 = v4;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(a1, partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:canEditItemAt:), v15, v8, MEMORY[0x1E69E6370], WitnessTable, &v17);
  (*(v9 + 8))(v11, v8);
  return v17 & 1;
}

uint64_t objectdestroy_141Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t type metadata accessor for UIInteraction()
{
  result = lazy cache variable for type metadata for UIInteraction;
  if (!lazy cache variable for type metadata for UIInteraction)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIInteraction);
  }

  return result;
}

uint64_t BackgroundExtensionView.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for BackgroundExtensionView(0, a2, a3, a3);
  v7 = a4 + *(v6 + 36);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  v8 = a4 + *(v6 + 40);
  *v8 = 0;
  *(v8 + 8) = 1;
  return a1();
}

uint64_t BackgroundExtensionView.init(isBlurEnabled:content:)@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for BackgroundExtensionView(0, a3, a4, a3);
  v9 = a5 + *(v8 + 36);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  v10 = a5 + *(v8 + 40);
  *v10 = 0;
  *(v10 + 8) = a1;
  return a2();
}

uint64_t BackgroundExtensionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
  v9 = type metadata accessor for ModifiedContent();
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  type metadata accessor for CALayerOverlayModifier<CABackgroundExtensionView>(255);
  v32 = v12;
  v13 = type metadata accessor for ModifiedContent();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v31 - v16;
  v17 = *(a1 + 24);
  View.clipped(antialiased:)();
  (*(v4 + 16))(v6, v2, a1);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  *(v19 + 24) = v17;
  (*(v4 + 32))(v19 + v18, v6, a1);
  v20 = static Alignment.center.getter();
  v22 = v21;
  type metadata accessor for MutableBox<Attribute<CALayer?>?>(0, &lazy cache variable for type metadata for MutableBox<Attribute<CALayer?>?>, type metadata accessor for Attribute<CALayer?>?, MEMORY[0x1E697DAC0]);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 20) = 1;
  swift_beginAccess();
  *(v23 + 16) = 0;
  *(v23 + 20) = 1;
  v39[0] = partial apply for closure #1 in BackgroundExtensionView.body.getter;
  v39[1] = v19;
  v39[2] = v20;
  v39[3] = v22;
  v40 = 1;
  v41 = v23;
  v24 = lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>();
  v38[0] = v17;
  v38[1] = v24;
  v25 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v38);
  v27 = v31;
  MEMORY[0x18D00A570](v39, v9, v32, WitnessTable);

  (*(v35 + 8))(v11, v9);
  v37[0] = WitnessTable;
  v37[1] = &protocol witness table for CALayerOverlayModifier<A>;
  swift_getWitnessTable(v25, v13, v37);
  v28 = v33;
  static ViewBuilder.buildExpression<A>(_:)();
  v29 = *(v34 + 8);
  v29(v27, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v29)(v28, v13);
}

void type metadata accessor for CALayerOverlayModifier<CABackgroundExtensionView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CALayerOverlayModifier<CABackgroundExtensionView>)
  {
    v2 = type metadata accessor for CABackgroundExtensionView();
    v3 = lazy protocol witness table accessor for type CABackgroundExtensionView and conformance CABackgroundExtensionView();
    v5 = type metadata accessor for CALayerOverlayModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for CALayerOverlayModifier<CABackgroundExtensionView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CABackgroundExtensionView and conformance CABackgroundExtensionView()
{
  result = lazy protocol witness table cache variable for type CABackgroundExtensionView and conformance CABackgroundExtensionView;
  if (!lazy protocol witness table cache variable for type CABackgroundExtensionView and conformance CABackgroundExtensionView)
  {
    v3 = type metadata accessor for CABackgroundExtensionView();
    result = swift_getWitnessTable(MEMORY[0x1E6999E00], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CABackgroundExtensionView and conformance CABackgroundExtensionView);
  }

  return result;
}

uint64_t closure #1 in BackgroundExtensionView.body.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BackgroundExtensionView(0, a3, a4, a4);
  v7 = a2 + *(v6 + 36);
  if (*(v7 + 32))
  {
    static Edge.Set.all.getter();
    EdgeInsets.init(_:edges:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *(v7 + 16);
    v15 = *(v7 + 24);
    v9 = *v7;
    v11 = *(v7 + 8);
  }

  v16 = a2 + *(v6 + 40);
  if (*(v16 + 8))
  {
    v17 = 10.0;
  }

  else
  {
    v17 = *v16;
  }

  v18 = a1;
  v19.n128_u64[0] = v9;
  v20.n128_u64[0] = v11;
  v21.n128_u64[0] = v13;
  v22.n128_u64[0] = v15;
  v23.n128_f64[0] = v17;

  return MEMORY[0x1EEE02140](v18, v19, v20, v21, v22, v23);
}

uint64_t partial apply for closure #1 in BackgroundExtensionView.body.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for BackgroundExtensionView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in BackgroundExtensionView.body.getter(a1, v9, v6, v7);
}

void type metadata accessor for MutableBox<Attribute<CALayer?>?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for CALayer?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CALayer?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for CALayer, 0x1E6979398);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CALayer?);
    }
  }
}

void CALayerOverlayModifier.effectValue(size:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[2])
  {
    v5 = swift_allocObject();
    v5[5] = a1;
    v5[6] = swift_getWitnessTable(protocol conformance descriptor for CALayerOverlayModifier<A>, a1);
    v6 = swift_allocObject();
    v5[2] = v6;
    v7 = v2[1];
    v6[1] = *v2;
    v6[2] = v7;
    v6[3] = v2[2];

    v8 = 3;
  }

  else
  {
    v5 = 0;
    v8 = 20;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 12) = v8;
}

id CALayerOverlayModifier.makePlatformGroup()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = [v1 layer];
  v3 = MEMORY[0x18D00C850](0xD000000000000021, 0x800000018CD4F230);
  [v2 setName_];

  v4 = *(v0 + 40);
  swift_beginAccess();
  if ((*(v4 + 20) & 1) == 0)
  {
    v6 = [v1 layer];
    type metadata accessor for CALayer?(0);
    AGGraphSetValue();
  }

  return v1;
}

double CALayerOverlayModifier.updatePlatformGroup(_:)(void *a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 layer];
    v4 = *(v1 + 40);
    swift_beginAccess();
    if (*(v4 + 20))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for CALayer?(0);
      AGGraphSetValue();

      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

double CALayerOverlayModifier.OverlayChildAttribute.modifier.getter@<D0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for CALayerOverlayModifier(0, a2, a3, a3);
  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  *a4 = *Value;
  *(a4 + 8) = v6;
  *(a4 + 16) = *(Value + 16);
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;

  return result;
}

Swift::Void __swiftcall CALayerOverlayModifier.OverlayChildAttribute.updateValue()()
{
  v3 = v2;
  v4 = v1;
  v5 = HIDWORD(v0);
  v25[9] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-v8];
  CALayerOverlayModifier.OverlayChildAttribute.modifier.getter(v4, v3, v23);
  v10 = v24;
  swift_beginAccess();
  *(v10 + 16) = v5;
  *(v10 + 20) = 0;

  type metadata accessor for CALayer?(0);
  Value = AGGraphGetValue();
  if (!*Value)
  {
    goto LABEL_5;
  }

  v12 = *Value;
  if (*AGGraphGetValue() != 1)
  {

LABEL_5:
    v18 = (*(*(v4 - 8) + 56))(v9, 1, 1, v4);
    MEMORY[0x1EEE9AC00](v18);
    v20 = type metadata accessor for CALayerOverlayModifier.OverlayChildAttribute(0, v4, v3, v19);
    *&v22[-16] = v20;
    *&v22[-8] = swift_getWitnessTable(protocol conformance descriptor for CALayerOverlayModifier<A>.OverlayChildAttribute, v20);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in StatefulRule.value.setter, &v22[-32], v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v21);
    goto LABEL_6;
  }

  CALayerOverlayModifier.OverlayChildAttribute.modifier.getter(v4, v3, v25);
  v13 = v25[0];

  v13(v12);

  v14 = (*(*(v4 - 8) + 56))(v9, 0, 1, v4);
  MEMORY[0x1EEE9AC00](v14);
  v16 = type metadata accessor for CALayerOverlayModifier.OverlayChildAttribute(0, v4, v3, v15);
  *&v22[-16] = v16;
  *&v22[-8] = swift_getWitnessTable(protocol conformance descriptor for CALayerOverlayModifier<A>.OverlayChildAttribute, v16);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, closure #1 in StatefulRule.value.setterpartial apply, &v22[-32], v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);

LABEL_6:
  (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance CALayerOverlayModifier<A>.OverlayChildAttribute@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double static CALayerOverlayModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[3];
  v33 = a2[2];
  v34 = v11;
  v35 = a2[4];
  v36 = *(a2 + 20);
  v12 = a2[1];
  v31 = *a2;
  v32 = v12;
  v27 = a5;
  v28 = a6;
  type metadata accessor for CALayerOverlayModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v25 = a5;
  v26 = a6;
  _GraphValue.subscript.getter();
  type metadata accessor for CALayer?(0);
  v13 = Attribute.init<A>(body:value:flags:update:)();
  v30[0] = _GraphValue.value.getter();
  v30[1] = v13;
  v30[2] = v20;
  v14 = type metadata accessor for Optional();
  v22 = v14;
  v23 = type metadata accessor for CALayerOverlayModifier.OverlayChildAttribute(0, a5, a6, v15);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CALayerOverlayModifier<A>.OverlayChildAttribute, v23);
  v16 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v30, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v21, v23, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = v10;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  v29 = a6;

  swift_getWitnessTable(MEMORY[0x1E6982090], v14, &v29);
  LOBYTE(v30[0]) = 0;
  makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)();

  return result;
}

uint64_t closure #1 in static CALayerOverlayModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for CALayerOverlayModifier(0, a2, a3, a4);
  v5 = MEMORY[0x1E6981D58];
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 16, closure #1 in static PointerOffset.of(_:)partial apply, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static CALayerOverlayModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for CALayerOverlayModifier(0, a2, a3, a4);
  v5 = MEMORY[0x1E69E6370];
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 32, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #3 in static CALayerOverlayModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = *(a2 + 20);
  v9 = *a2;
  v10 = a2[1];
  v7 = type metadata accessor for CALayerOverlayModifier(0, a6, a7, a4);
  swift_getWitnessTable(protocol conformance descriptor for CALayerOverlayModifier<A>, v7, v9, v10, v11, v12, v13, v14);
  return static RendererEffect.makeRendererEffect(effect:inputs:body:)();
}

void (*protocol witness for Animatable.animatableData.modify in conformance CALayerOverlayModifier<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CALayerOverlayModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CALayerOverlayModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for BackgroundExtensionView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for BackgroundExtensionView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 32);
    v13 = *(v11 + 16);
    *v10 = *v11;
    *(v10 + 16) = v13;
    *(v10 + 32) = v12;
    v14 = (v3 + v5 + 47) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v5 + 47) & 0xFFFFFFFFFFFFFFF8;
    v16 = *v15;
    *(v14 + 8) = *(v15 + 8);
    *v14 = v16;
  }

  return v3;
}

uint64_t initializeWithCopy for BackgroundExtensionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  return a1;
}

uint64_t assignWithCopy for BackgroundExtensionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  return a1;
}

uint64_t initializeWithTake for BackgroundExtensionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  return a1;
}

uint64_t assignWithTake for BackgroundExtensionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  return a1;
}

uint64_t getEnumTagSinglePayload for BackgroundExtensionView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 47) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for BackgroundExtensionView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 47) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

unint64_t lazy protocol witness table accessor for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier()
{
  result = lazy protocol witness table cache variable for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier;
  if (!lazy protocol witness table cache variable for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BackgroundExtensionViewModifier, &type metadata for BackgroundExtensionViewModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier);
  }

  return result;
}

double destroy for CALayerOverlayModifier()
{

  return result;
}

uint64_t initializeWithCopy for CALayerOverlayModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for CALayerOverlayModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for CALayerOverlayModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void BackgroundExtensionViewModifier.body(content:)(char a1@<W1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  }

  else
  {
    Path.init(_:)();
    lazy protocol witness table accessor for type Path and conformance Path();
  }

  v4 = AnyShape.init<A>(_:)();
  v5 = static Alignment.center.getter();
  v7 = v6;
  type metadata accessor for MutableBox<Attribute<CALayer?>?>(0, &lazy cache variable for type metadata for MutableBox<Attribute<CALayer?>?>, type metadata accessor for Attribute<CALayer?>?, MEMORY[0x1E697DAC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 20) = 1;
  swift_beginAccess();
  *(v8 + 16) = 0;
  *(v8 + 20) = 1;
  *a2 = v4;
  *(a2 + 8) = 256;
  *(a2 + 16) = closure #1 in BackgroundExtensionViewModifier.body(content:);
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 48) = a1 & 1;
  *(a2 + 56) = v8;
}

void closure #1 in BackgroundExtensionViewModifier.body(content:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  CABackgroundExtensionView.init(layer:blurUnitInsets:blurRadius:)();
  type metadata accessor for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>(0);
  *(a2 + *(v4 + 36)) = 0;
}

unint64_t lazy protocol witness table accessor for type Path and conformance Path()
{
  result = lazy protocol witness table cache variable for type Path and conformance Path;
  if (!lazy protocol witness table cache variable for type Path and conformance Path)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980F78], MEMORY[0x1E6980F80], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Path and conformance Path);
  }

  return result;
}

void type metadata accessor for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>)
  {
    type metadata accessor for CABackgroundExtensionView();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>, CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>, CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>(255);
    type metadata accessor for CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>, CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>)
  {
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<BackgroundExtensionViewModifier>, lazy protocol witness table accessor for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier, &type metadata for BackgroundExtensionViewModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, MEMORY[0x1E6981A90], MEMORY[0x1E697DDA0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>);
    }
  }
}

void type metadata accessor for _ClipEffect<Rectangle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyShape and conformance AnyShape()
{
  result = lazy protocol witness table cache variable for type AnyShape and conformance AnyShape;
  if (!lazy protocol witness table cache variable for type AnyShape and conformance AnyShape)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981A80], MEMORY[0x1E6981A90], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyShape and conformance AnyShape);
  }

  return result;
}

void type metadata accessor for CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>)
  {
    type metadata accessor for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>, CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>, lazy protocol witness table accessor for type CABackgroundExtensionView and conformance CABackgroundExtensionView, MEMORY[0x1E69805B0]);
    v6 = type metadata accessor for CALayerOverlayModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>, CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<BackgroundExtensionViewModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = lazy protocol witness table accessor for type _ClipEffect<AnyShape> and conformance _ClipEffect<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<BackgroundExtensionViewModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<BackgroundExtensionViewModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<BackgroundExtensionViewModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<BackgroundExtensionViewModifier>, lazy protocol witness table accessor for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier, &type metadata for BackgroundExtensionViewModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<BackgroundExtensionViewModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<AnyShape> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<AnyShape> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<AnyShape> and conformance _ClipEffect<A>)
  {
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, MEMORY[0x1E6981A90], MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDB0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<AnyShape> and conformance _ClipEffect<A>);
  }

  return result;
}

uint64_t static _ValueActionModifier._makeScene(modifier:inputs:body:)(_DWORD *a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), const char *a8, uint64_t a9)
{
  v22[1] = a4;
  v23 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v12 = a7(255, a5, a6);
  swift_getWitnessTable(a8, v12);
  v13 = type metadata accessor for ValueActionDispatcher();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - v15;
  LODWORD(v15) = *a1;
  v34 = *a2;
  v35 = *(a2 + 2);
  LODWORD(a1) = *(a2 + 6);
  v17 = *(a2 + 44);
  v32 = *(a2 + 28);
  v33 = v17;
  LODWORD(v27) = v15;
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  ValueActionDispatcher.init(modifier:phase:)();
  v25 = v13;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FD18], v13);
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, a9, v24, v13, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  (*(v14 + 8))(v16, v13);
  v20 = AGGraphSetFlags();
  v27 = v34;
  v28 = v35;
  v29 = a1;
  v30 = v32;
  v31 = v33;
  return v23(v20, &v27);
}

uint64_t Scene.onChange<A>(of:initial:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a7;
  v48 = a1;
  v49 = a3;
  v43 = a2;
  v47 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = v13;
  v40 = v12;
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _ValueActionModifier2();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = type metadata accessor for ModifiedContent();
  v45 = *(v19 - 8);
  v46 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - v21;
  v36 = *(v11 + 16);
  v36(v14, v48, a6, v20);

  v38 = v11;
  v37 = *(v11 + 32);
  v37(v18, v14, a6);
  v23 = &v18[*(v15 + 36)];
  *v23 = v49;
  v23[1] = a4;
  v41 = a4;
  v24 = a5;
  v44 = v22;
  v25 = a5;
  v26 = v42;
  Scene.modifier<A>(_:)(v18, v25, v15, v42);
  (*(v16 + 8))(v18, v15);
  v27 = 0;
  v28 = 0;
  if (v43)
  {
    (v36)(v14, v48, a6);
    v29 = (*(v38 + 80) + 64) & ~*(v38 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = v24;
    *(v28 + 3) = a6;
    v30 = v40;
    v31 = v41;
    *(v28 + 4) = v26;
    *(v28 + 5) = v30;
    *(v28 + 6) = v49;
    *(v28 + 7) = v31;
    v37(&v28[v29], v14, a6);

    v27 = partial apply for closure #1 in Scene.onChange<A>(of:initial:_:);
  }

  v51[0] = v27;
  v51[1] = v28;
  v51[2] = 0;
  v51[3] = 0;
  v50[0] = v26;
  v50[1] = &protocol witness table for _ValueActionModifier2<A>;
  v32 = v46;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v46, v50);
  v34 = v44;
  Scene.modifier<A>(_:)(v51, v32, MEMORY[0x1E69805D8], WitnessTable);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27, v28);
  return (*(v45 + 8))(v34, v32);
}

uint64_t Scene.onChange<A>(of:initial:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a8;
  v36 = a3;
  v37 = a4;
  v34 = a2;
  v35 = a9;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _ValueActionModifier2();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - v18;
  v32 = type metadata accessor for ModifiedContent();
  v33 = *(v32 - 8);
  v20 = MEMORY[0x1EEE9AC00](v32);
  v22 = &v31 - v21;
  (*(v13 + 16))(v15, a1, a6, v20);
  v23 = swift_allocObject();
  *(v23 + 2) = a5;
  *(v23 + 3) = a6;
  v24 = v31;
  *(v23 + 4) = a7;
  *(v23 + 5) = v24;
  *(v23 + 6) = v36;
  *(v23 + 7) = v37;

  (*(v13 + 32))(v19, v15, a6);
  v25 = &v19[*(v16 + 36)];
  *v25 = partial apply for closure #1 in Scene.onChange<A>(of:initial:_:);
  v25[1] = v23;
  Scene.modifier<A>(_:)(v19, a5, v16, a7);
  (*(v17 + 8))(v19, v16);
  v26 = 0;
  v27 = 0;
  if (v34)
  {
    v27 = v37;

    v26 = v36;
  }

  v39[0] = v26;
  v39[1] = v27;
  v39[2] = 0;
  v39[3] = 0;
  v38[0] = a7;
  v38[1] = &protocol witness table for _ValueActionModifier2<A>;
  v28 = v32;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v32, v38, v31);
  Scene.modifier<A>(_:)(v39, v28, MEMORY[0x1E69805D8], WitnessTable);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v26, v27);
  return (*(v33 + 8))(v22, v28);
}

uint64_t Scene.onChange<A>(of:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v21 = a6;
  v19 = a8;
  v20 = a4;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _ValueActionModifier();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(v10 + 16))(v12, a1, a5, v15);

  _ValueActionModifier.init(value:action:)();
  Scene.modifier<A>(_:)(v17, v20, v13, v21);
  return (*(v14 + 8))(v17, v13);
}

uint64_t partial apply for closure #1 in Scene.onChange<A>(of:initial:_:)()
{
  v1 = *(*(v0 + 24) - 8);
  return (*(v0 + 48))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)), v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));
}

{
  return (*(v0 + 48))();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UpdateCoalescingCollectionView.VisibleCellsUpdate.StateType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

void UpdateCoalescingCollectionView.performBatchUpdates(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate] = 2;
  v5 = *&v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates];
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *&v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = v7;
    if (a1)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = a1;
      *(v12 + 24) = a2;
      v22 = partial apply for thunk for @callee_guaranteed () -> ();
      v23 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v19 = 1107296256;
      v20 = thunk for @escaping @callee_guaranteed () -> ();
      v21 = &block_descriptor_61;
      v13 = _Block_copy(&aBlock);
    }

    else
    {
      v13 = 0;
    }

    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = a4;
    v14[4] = v4;
    v22 = partial apply for closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:);
    v23 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v21 = &block_descriptor_47;
    v15 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
    v16 = v4;

    v17.receiver = v16;
    v17.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
    objc_msgSendSuper2(&v17, sel_performBatchUpdates_completion_, v13, v15);
    _Block_release(v15);
    _Block_release(v13);
  }
}

void closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:)(char a1, void (*a2)(void, double), uint64_t a3, char *a4)
{
  v97 = type metadata accessor for IndexPath();
  v88 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v81 - v11;
  updated = type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation(0);
  v92 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v81 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v81 - v21;
  if (a2)
  {
    a2(a1 & 1, v20);
  }

  v23 = *&a4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates];
  v24 = v23 != 0;
  v25 = v23 - 1;
  if (v24)
  {
    *&a4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = v25;
    if (!v25 && a4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] == 1)
    {
      specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
    }

    v26 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_postUpdateInvalidations;
    swift_beginAccess();
    v93 = a4;
    v83 = v26;
    v27 = *&a4[v26];
    v28 = *(v27 + 16);

    v29 = MEMORY[0x1E69E7CC0];
    *&v91 = v28;
    if (!v28)
    {
LABEL_22:

      v50 = v93;
      *&v93[v83] = MEMORY[0x1E69E7CC0];

      if (*(v29 + 16))
      {
        v51 = [v50 collectionViewLayout];
        ObjCClassFromObject = swift_getObjCClassFromObject();

        [ObjCClassFromObject invalidationContextClass];
        swift_getObjCClassMetadata();
        type metadata accessor for UICollectionViewLayoutInvalidationContext();
        swift_dynamicCastMetatypeUnconditional();
        v95 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v53 = *(v29 + 16);
        if (v53)
        {
          v54 = v29 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
          v94 = *(v92 + 72);
          v55 = v87;
          v92 = v88 + 32;
          v56 = (v88 + 8);
          v91 = xmmword_18CD63400;
          v57 = v97;
          v58 = v82;
          do
          {
            outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(v54, v55, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              type metadata accessor for (IndexPath, String)(0);
              v60 = (v55 + *(v59 + 48));
              v61 = v55;
              v62 = *v60;
              v63 = v60[1];
              v64 = v88;
              (*(v88 + 32))(v58, v61, v57);
              v65 = MEMORY[0x18D00C850](v62, v63);

              _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
              v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
              v67 = swift_allocObject();
              *(v67 + 16) = v91;
              (*(v64 + 16))(v67 + v66, v58, v97);
              v68.super.isa = Array._bridgeToObjectiveC()().super.isa;
              v57 = v97;

              [v95 invalidateSupplementaryElementsOfKind:v65 atIndexPaths:v68.super.isa];
            }

            else
            {
              v69 = v88;
              (*(v88 + 32))(v58, v55, v57);
              _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
              v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
              v71 = swift_allocObject();
              *(v71 + 16) = v91;
              (*(v69 + 16))(v71 + v70, v58, v57);
              v68.super.isa = Array._bridgeToObjectiveC()().super.isa;

              [v95 invalidateItemsAtIndexPaths_];
            }

            (*v56)(v58, v57);
            v54 += v94;
            --v53;
            v55 = v87;
          }

          while (v53);
        }

        v72 = objc_opt_self();
        v73 = swift_allocObject();
        v74 = v93;
        v75 = v95;
        *(v73 + 16) = v93;
        *(v73 + 24) = v75;
        v76 = swift_allocObject();
        v77 = partial apply for closure #2 in closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:);
        *(v76 + 16) = partial apply for closure #2 in closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:);
        *(v76 + 24) = v73;
        aBlock[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
        aBlock[5] = v76;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_71_0;
        v78 = _Block_copy(aBlock);
        v79 = v74;
        v80 = v75;

        [v72 performWithoutAnimation_];

        _Block_release(v78);
        LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

        if (v80)
        {
          goto LABEL_35;
        }

        v50 = v93;
      }

      else
      {

        v77 = 0;
        v73 = 0;
      }

      *(v50 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate) = 0;
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v77, v73);
      return;
    }

    v30 = 0;
    v89 = (v88 + 8);
    v90 = (v88 + 32);
    v84 = v27;
    while (1)
    {
      if (v30 >= *(v27 + 16))
      {
        __break(1u);
        break;
      }

      v95 = ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v94 = *(v92 + 72);
      outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(v95 + v27 + v94 * v30, v22, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
      outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(v22, v18, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for (IndexPath, String)(0);
        v32 = &v18[*(v31 + 48)];
        v33 = *v32;
        v34 = *(v32 + 1);
        v35 = v22;
        v36 = v15;
        v37 = v29;
        v38 = v86;
        v39 = v97;
        (*v90)(v86, v18, v97);
        v40 = MEMORY[0x18D00C850](v33, v34);

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v42 = [v93 supplementaryViewForElementKind:v40 atIndexPath:isa];

        v43 = v38;
        v29 = v37;
        v15 = v36;
        v22 = v35;
        v27 = v84;
        (*v89)(v43, v39);
        if (v42)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v44 = v85;
        v45 = v97;
        (*v90)(v85, v18, v97);
        v46 = IndexPath._bridgeToObjectiveC()().super.isa;
        v42 = [v93 cellForItemAtIndexPath_];

        (*v89)(v44, v45);
        if (v42)
        {
LABEL_17:

          outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v22, v15, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1);
            v29 = aBlock[0];
          }

          v49 = *(v29 + 16);
          v48 = *(v29 + 24);
          if (v49 >= v48 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
            v29 = aBlock[0];
          }

          *(v29 + 16) = v49 + 1;
          outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v15, v95 + v29 + v49 * v94, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
          goto LABEL_11;
        }
      }

      outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v22, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
LABEL_11:
      if (v91 == ++v30)
      {
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void closure #2 in closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #2 in closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:);
  *(v5 + 24) = v4;
  aBlock[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_81;
  v6 = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9.receiver = v7;
  v9.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  objc_msgSendSuper2(&v9, sel_performBatchUpdates_completion_, v6, 0);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void closure #1 in closure #2 in closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:)(void *a1, uint64_t a2)
{
  v3 = [a1 collectionViewLayout];
  [v3 invalidateLayoutWithContext_];
}

id UpdateCoalescingCollectionView.scheduleVisibleCellsUpdate(indexPath:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  updated = type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation(0);
  v9 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = &v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate];
  if (*&v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate + 8] > 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v17 = *v16;
    if (v17 == 2 || (v17 & 1) != 0)
    {
      if (a3)
      {
        type metadata accessor for (IndexPath, String)(0);
        v19 = &v15[*(v18 + 48)];
        v20 = type metadata accessor for IndexPath();
        (*(*(v20 - 8) + 16))(v15, a1, v20);
        *v19 = a2;
        *(v19 + 1) = a3;
        swift_storeEnumTagMultiPayload();
        v21 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_postUpdateInvalidations;
        swift_beginAccess();
        v22 = *&v4[v21];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v4[v21] = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
          *&v4[v21] = v22;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
        }

        v22[2] = v25 + 1;
        outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v15, v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
        *&v4[v21] = v22;
      }

      else
      {
        v26 = type metadata accessor for IndexPath();
        (*(*(v26 - 8) + 16))(v11, a1, v26);
        swift_storeEnumTagMultiPayload();
        v27 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_postUpdateInvalidations;
        swift_beginAccess();
        v28 = *&v4[v27];
        v29 = swift_isUniquelyReferenced_nonNull_native();
        *&v4[v27] = v28;
        if ((v29 & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
          *&v4[v27] = v28;
        }

        v31 = v28[2];
        v30 = v28[3];
        if (v31 >= v30 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
        }

        v28[2] = v31 + 1;
        outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v11, v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
        *&v4[v27] = v28;
      }

      return swift_endAccess();
    }

    else
    {
      result = [v4 setNeedsLayout];
      *v16 = 1;
    }
  }

  return result;
}

id closure #1 in UpdateCoalescingCollectionView.idealSize(in:)@<X0>(void *a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  [a1 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [a1 setFrame_];
  [a1 safeAreaInsets];
  [a1 frame];
  [a1 setFrame_];
  [a1 _setVisibleRectEdgeInsets_];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  [a1 contentSize];
  v17 = v16;
  v19 = v18;
  if (v18 > 10000.0)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(148);
    MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4F490);
    v20 = Double.description.getter();
    MEMORY[0x18D00C9B0](v20);

    MEMORY[0x18D00C9B0](0xD00000000000005ELL, 0x800000018CD4F4D0);
    MEMORY[0x18D009810](0, 0xE000000000000000);
  }

  v21 = MEMORY[0x1E69DDCE0];
  *a2 = v17;
  a2[1] = v19;
  [a1 _setVisibleRectEdgeInsets_];

  return [a1 setFrame_];
}

uint64_t UpdateCoalescingCollectionView.setAccessory(_:at:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper];
  if (v5)
  {
    v6 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v5 + v6, __src);
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    memset(__src, 0, sizeof(__src));
    LODWORD(__dst[0]) = 257;
    HIDWORD(__dst[10]) = 0;
    memset(&__dst[1], 0, 75);
    LOWORD(__dst[11]) = 4;
    v7 = MEMORY[0x1E69E7CC0];
    __dst[12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    __dst[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v7);
    LOBYTE(__dst[14]) = 0;
    LOBYTE(__dst[15]) = 0;
    __dst[16] = 0;
    LOWORD(__dst[17]) = 0;
    LOBYTE(__dst[18]) = 0;
    __dst[19] = 0;
    *(&__dst[19] + 6) = 0;
    BYTE6(__dst[20]) = 1;
    *(&__dst[20] + 7) = 0u;
    *(&__dst[22] + 7) = 0u;
    HIBYTE(__dst[24]) = 0;
    static EdgeInsets.zero.getter();
    __dst[25] = v8;
    __dst[26] = v9;
    __dst[27] = v10;
    __dst[28] = v11;
    static EdgeInsets.zero.getter();
    __dst[29] = v12;
    __dst[30] = v13;
    __dst[31] = v14;
    __dst[32] = v15;
  }

  if (BYTE1(__dst[11]) != 2)
  {
    v16 = 4;
    v17 = 1;
    if (LOBYTE(__dst[11]) != 3)
    {
      v17 = a2;
    }

    if (LOBYTE(__dst[11]) != 2)
    {
      v16 = v17;
    }

    v18 = 2;
    if (LOBYTE(__dst[11]))
    {
      v18 = 0;
    }

    if (LOBYTE(__dst[11]) <= 1u)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    v21.receiver = v2;
    v21.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
    objc_msgSendSuper2(&v21, sel_setAccessoryView_atEdge_, a1, v19);
  }

  return outlined destroy of ScrollEnvironmentProperties(__dst);
}

id UpdateCoalescingCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *initializeBufferWithCopyOfBuffer for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = type metadata accessor for IndexPath();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (IndexPath, String)(0);
      v9 = *(v8 + 48);
      v10 = (a1 + v9);
      v11 = (a2 + v9);
      v12 = v11[1];
      *v10 = *v11;
      v10[1] = v12;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void type metadata accessor for (IndexPath, String)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (IndexPath, String))
  {
    type metadata accessor for IndexPath();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (IndexPath, String));
    }
  }
}

uint64_t destroy for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = type metadata accessor for IndexPath();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (IndexPath, String)(0);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (IndexPath, String)(0);
    v8 = *(v7 + 48);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(a1, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for IndexPath();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (IndexPath, String)(0);
      v8 = *(v7 + 48);
      v9 = (a1 + v8);
      v10 = (a2 + v8);
      *v9 = *v10;
      v9[1] = v10[1];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (IndexPath, String)(0);
    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(a1, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for IndexPath();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (IndexPath, String)(0);
      *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata completion function for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1)
{
  result = type metadata accessor for IndexPath();
  if (v2 <= 0x3F)
  {
    v3[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v3[5] = v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateCoalescingCollectionView.VisibleCellsUpdate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateCoalescingCollectionView.VisibleCellsUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t outlined init with copy of BridgedListState.ScrollTarget?(uint64_t a1, uint64_t a2)
{
  _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ScrollEnvironmentProperties?()
{
  if (!lazy cache variable for type metadata for ScrollEnvironmentProperties?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrollEnvironmentProperties?);
    }
  }
}

unint64_t type metadata accessor for UICollectionViewLayoutInvalidationContext()
{
  result = lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext;
  if (!lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext);
  }

  return result;
}

void specialized UpdateCoalescingCollectionView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_safeAreaTransitionState);
  type metadata accessor for FalseSafeAreaTransitionState();
  v2 = swift_allocObject();
  *v1 = v2;
  v1[1] = &protocol witness table for FalseSafeAreaTransitionState;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper) = 0;
  *(v2 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_isLazyStackBehaviorEnabled) = 0;
  v3 = v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_postUpdateInvalidations) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingScrollTarget) = 0;
  v4 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_lastUpdateSeed) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_bridgedState) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_phaseState) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView__layoutContainer + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for UpdateCoalescingCollectionView.VisibleCellsUpdate.StateType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UpdateCoalescingCollectionView.VisibleCellsUpdate.StateType(uint64_t result, unsigned int a2, unsigned int a3)
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

_OWORD *initializeBufferWithCopyOfBuffer for UIKitMenuButton(_OWORD *a1, unint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if ((v10 | v7) > 7 || ((*(v9 + 80) | *(v6 + 80)) & 0x100000) != 0 || ((v11 + ((v8 + v10 + ((v7 + 18) & ~v7)) & ~v10) + 9) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + (((v10 | v7) & 0xF8 ^ 0x1F8) & ((v10 | v7) + 16)));
  }

  else
  {
    v15 = ~v7;
    v28 = ~v10;
    if (*a2 < 0xFFFFFFFF)
    {
      *a1 = *a2;
    }

    else
    {
      v16 = a2[1];
      *v3 = *a2;
      *(v3 + 1) = v16;
      v27 = a2;

      a2 = v27;
    }

    *(v3 + 16) = *(a2 + 16);
    *(v3 + 17) = *(a2 + 17);
    v17 = a2 + v7;
    v18 = (v3 + v7 + 18) & v15;
    v19 = (v17 + 18) & v15;
    (*(v6 + 16))(v18, v19, v4);
    v20 = (v18 + v8 + v10) & v28;
    v21 = (v19 + v8 + v10) & v28;
    (*(v9 + 16))(v20, v21, v5);
    v22 = (v20 + v11);
    *v22 = *(v21 + v11);
    v22[1] = *(v21 + v11 + 1);
    v23 = (v20 + v11 + 9) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v21 + v11 + 9) & 0xFFFFFFFFFFFFFFF8;
    if (*v24 < 0xFFFFFFFFuLL)
    {
      *v23 = *v24;
      return v3;
    }

    v25 = *(v24 + 8);
    *v23 = *v24;
    *(v23 + 8) = v25;
  }

  return v3;
}

uint64_t assignWithCopy for UIKitMenuButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v8 = *(a2 + 8);
      *a1 = v6;
      *(a1 + 8) = v8;

      goto LABEL_8;
    }
  }

  else
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v7 = *(a2 + 8);
      *a1 = v6;
      *(a1 + 8) = v7;

      goto LABEL_8;
    }
  }

  *a1 = *a2;
LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = (v11 + 18 + a1) & ~v11;
  v13 = (v11 + 18 + a2) & ~v11;
  (*(v9 + 24))(v12, v13);
  v14 = *(v10 + 40);
  v15 = *(*(a3 + 24) - 8);
  v16 = v15 + 24;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (v18 + v12) & ~v17;
  v20 = (v18 + v13) & ~v17;
  (*(v15 + 24))(v19, v20);
  v21 = *(v16 + 40);
  v22 = (v21 + v19);
  v23 = (v21 + v20);
  *v22 = *v23;
  v22[1] = v23[1];
  v24 = ((v22 + 9) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 9) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  if (*v24 < 0xFFFFFFFFuLL)
  {
    if (v26 >= 0xFFFFFFFF)
    {
      v28 = v25[1];
      *v24 = v26;
      v24[1] = v28;

      return a1;
    }

LABEL_14:
    *v24 = *v25;
    return a1;
  }

  if (v26 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v27 = v25[1];
  *v24 = v26;
  v24[1] = v27;

  return a1;
}

uint64_t initializeWithTake for UIKitMenuButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 < 0xFFFFFFFFuLL)
  {
    *a1 = *a2;
  }

  else
  {
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v8 + 18 + a1) & ~v8;
  v10 = (v8 + 18 + a2) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32);
  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v16 = (v15 + v9) & ~v14;
  v17 = (v15 + v10) & ~v14;
  (*(v12 + 32))(v16, v17);
  v18 = *(v13 + 32);
  v19 = (v18 + v16);
  v20 = v18 + v17;
  *v19 = *(v18 + v17);
  v19[1] = *(v18 + v17 + 1);
  v21 = (v18 + v16 + 9) & 0xFFFFFFFFFFFFFFF8;
  v22 = ((v20 + 9) & 0xFFFFFFFFFFFFFFF8);
  v23 = *v22;
  if (*v22 < 0xFFFFFFFF)
  {
    *v21 = *v22;
  }

  else
  {
    v24 = v22[1];
    *v21 = v23;
    *(v21 + 8) = v24;
  }

  return a1;
}

uint64_t assignWithTake for UIKitMenuButton(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v7 >= 0xFFFFFFFF)
    {
      v9 = *(a2 + 8);
      *a1 = v7;
      *(a1 + 8) = v9;
      goto LABEL_8;
    }
  }

  else
  {
    if (v7 >= 0xFFFFFFFF)
    {
      v8 = *(a2 + 8);
      *a1 = v7;
      *(a1 + 8) = v8;

      goto LABEL_8;
    }
  }

  *a1 = *a2;
LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v12 + 18 + a1) & ~v12;
  v14 = (v12 + 18 + a2) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 40;
  v18 = *(v16 + 80);
  v19 = v15 + v18;
  v20 = (v19 + v13) & ~v18;
  v21 = (v19 + v14) & ~v18;
  (*(v16 + 40))(v20, v21);
  v22 = *(v17 + 24);
  v23 = (v22 + v20);
  v24 = (v22 + v21);
  *v23 = *v24;
  v23[1] = v24[1];
  v25 = ((v23 + 9) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 9) & 0xFFFFFFFFFFFFFFF8);
  v27 = *v26;
  if (*v25 < 0xFFFFFFFFuLL)
  {
    if (v27 >= 0xFFFFFFFF)
    {
      v29 = v26[1];
      *v25 = v27;
      v25[1] = v29;
      return a1;
    }

LABEL_14:
    *v25 = *v26;
    return a1;
  }

  if (v27 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v28 = v26[1];
  *v25 = v27;
  v25[1] = v28;

  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitMenuButton(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 18) & ~v9)) & ~v11) + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v14);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v12 > 0x7FFFFFFE)
  {
    v25 = (a1 + v9 + 18) & ~v9;
    if (v5 == v13)
    {
      return (*(v4 + 48))(v25);
    }

    else
    {
      return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
    }
  }

  else
  {
    v24 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v24) = -1;
    }

    if ((v24 + 1) >= 2)
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }
}

unsigned int *storeEnumTagSinglePayload for UIKitMenuButton(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 18) & ~v8)) & ~v10) + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 18) & ~v8)) & ~v10) + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if (v12 > 0x7FFFFFFE)
        {
          v23 = (result + v8 + 18) & ~v8;
          if (v6 == v13)
          {
            v24 = *(v5 + 56);

            return v24(v23);
          }

          else
          {
            v25 = *(v7 + 56);
            v26 = (v23 + v9 + v10) & ~v10;

            return v25(v26);
          }
        }

        else if (a2 > 0x7FFFFFFE)
        {
          *result = 0;
          *(result + 1) = 0;
          *result = a2 - 0x7FFFFFFF;
        }

        else
        {
          *result = a2;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 18) & ~v8)) & ~v10) + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 18) & ~v8)) & ~v10) + 9) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 18) & ~v8)) & ~v10) + 9) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

uint64_t UIKitMenuButton.init(action:isPopUpButton:flexibleDimensions:menuTitleVisibility:menuIndicatorVisibility:onPresentationChanged:menuContent:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t (*a12)(void), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((a3 & 1) != 0 && a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v30[0] = a14;
    v30[1] = a15;
    v30[2] = a16;
    v30[3] = a17;
    v21 = type metadata accessor for UIKitMenuButton(0, v30);
    v22 = (a9 + v21[19]);
    *a9 = a1;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3 & 1;
    *(a9 + 17) = a4;
    v23 = a12();
    *v22 = a7;
    v22[1] = a8;
    result = a10(v23);
    *(a9 + v21[17]) = a5;
    *(a9 + v21[18]) = a6;
  }

  return result;
}

uint64_t closure #1 in static UIKitMenuButton._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for UIKitMenuButton(0, v13);
  v8 = *(v7 + 64);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t key path setter for UIKitMenuButton.action : <A, B>UIKitMenuButton<A, B>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  outlined copy of AppIntentExecutor?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v8);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance UIKitMenuButton<A, B>.Child@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for UIKitButton(0, *(a1 + 16), *(a1 + 32), a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

void protocol witness for Rule.value.getter in conformance BridgedPopUpButtonProvider(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(a1 + 8) = 0;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance BridgedPopUpButtonPreferenceKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = outlined init with take of WeakBox<UIButton>?(a1, &v6, type metadata accessor for WeakBox<UIButton>?);
  if (v7)
  {
    a2(&v8, v4);
    if (v7 != 1)
    {
      outlined destroy of WeakBox<UIButton>?(&v6, type metadata accessor for WeakBox<UIButton>?);
    }
  }

  else
  {
    outlined init with take of WeakBox<UIButton>?(&v6, &v8, type metadata accessor for WeakBox<UIButton>);
    v9 = 0;
  }

  return outlined init with take of WeakBox<UIButton>?(&v8, a1, type metadata accessor for WeakBox<UIButton>?);
}

uint64_t assignWithTake for PlatformItemListMenuStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Environment<Bool>.Content(v5, v6);
  v7 = *(a2 + 32);
  v8 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  outlined consume of Environment<Color?>.Content(v8);
  return a1;
}

uint64_t PlatformItemListMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  Namespace.wrappedValue.getter();
  _print_unlocked<A, B>(_:_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v7 = specialized Environment.wrappedValue.getter(*(v2 + 24), *(v2 + 32));
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  LOBYTE(v7) = specialized Environment.wrappedValue.getter(*(v2 + 8), *(v2 + 16));
  v9 = swift_allocObject();
  *(v9 + 16) = 7;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0xC000000000000000;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = v5;
  *(v9 + 128) = v4;
  *(v9 + 136) = v7;
  *(v9 + 137) = 2;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  outlined copy of AppIntentExecutor?(v5, v4);
  result = outlined copy of AppIntentExecutor?(v5, v4);
  *a2 = partial apply for closure #1 in View.platformItemIdentifier(_:);
  *(a2 + 8) = v6;
  *(a2 + 16) = partial apply for closure #1 in View.platformItemTint(_:);
  *(a2 + 24) = v8;
  *(a2 + 32) = partial apply for closure #2 in View.platformItemChildren<A>(systemItem:primaryAction:menuIndicatorVisibility:controlSize:children:);
  *(a2 + 40) = v9;
  *(a2 + 48) = v5;
  *(a2 + 56) = v4;
  *(a2 + 64) = 1;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = v10;
  *(a2 + 112) = 0;
  *(a2 + 113) = 0;
  *(a2 + 120) = v11;
  *(a2 + 128) = 0;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255);
    type metadata accessor for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>)
  {
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>(255);
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>(255);
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>)
  {
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for LabelGroup<MenuStyleConfiguration.Label>, &type metadata for MenuStyleConfiguration.Label, &protocol witness table for MenuStyleConfiguration.Label, type metadata accessor for LabelGroup);
    lazy protocol witness table accessor for type LabelGroup<MenuStyleConfiguration.Label> and conformance LabelGroup<A>();
    v1 = type metadata accessor for _UnaryViewAdaptor();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LabelGroup<MenuStyleConfiguration.Label> and conformance LabelGroup<A>()
{
  result = lazy protocol witness table cache variable for type LabelGroup<MenuStyleConfiguration.Label> and conformance LabelGroup<A>;
  if (!lazy protocol witness table cache variable for type LabelGroup<MenuStyleConfiguration.Label> and conformance LabelGroup<A>)
  {
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for LabelGroup<MenuStyleConfiguration.Label>, &type metadata for MenuStyleConfiguration.Label, &protocol witness table for MenuStyleConfiguration.Label, type metadata accessor for LabelGroup);
    result = swift_getWitnessTable(protocol conformance descriptor for LabelGroup<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelGroup<MenuStyleConfiguration.Label> and conformance LabelGroup<A>);
  }

  return result;
}

void type metadata accessor for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>(255);
    v5[0] = &type metadata for SelectionPlatformItemListFlags;
    v5[1] = v2;
    v5[2] = &protocol witness table for SelectionPlatformItemListFlags;
    v5[3] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>, lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>);
    v3 = type metadata accessor for PlatformItemListGeneratingViewModifier(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, &type metadata for MenuStyleConfiguration.Content, &type metadata for PlatformItemListContentModifier, MEMORY[0x1E697E830]);
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for LabelGroup<MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, &type metadata for MenuStyleConfiguration.Content, &type metadata for PlatformItemListContentModifier, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = &protocol witness table for MenuStyleConfiguration.Content;
    v5[1] = lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for PlatformItemListGeneratingViewModifier<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, lazy protocol witness table accessor for type _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>> and conformance _UnaryViewAdaptor<A>, lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>);
    v5[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Content, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>> and conformance _UnaryViewAdaptor<A>()
{
  result = lazy protocol witness table cache variable for type _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>> and conformance _UnaryViewAdaptor<A>;
  if (!lazy protocol witness table cache variable for type _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>> and conformance _UnaryViewAdaptor<A>)
  {
    type metadata accessor for _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697F380], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UnaryViewAdaptor<LabelGroup<MenuStyleConfiguration.Label>> and conformance _UnaryViewAdaptor<A>);
  }

  return result;
}

uint64_t UIKitNavigationBridge.activePresentation.didset(uint64_t a1)
{
  swift_beginAccess();
  outlined init with copy of BridgedPresentation?(v1 + 40, v16);
  outlined init with copy of BridgedPresentation?(a1, &v7);
  if (!v8)
  {
    outlined destroy of AnyAccessibilityValue?(v16, &lazy cache variable for type metadata for BridgedPresentation?, &type metadata for BridgedPresentation);
    return outlined destroy of AnyAccessibilityValue?(&v7, &lazy cache variable for type metadata for BridgedPresentation?, &type metadata for BridgedPresentation);
  }

  v14[4] = v11;
  v14[5] = v12;
  v15 = v13;
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v3 = v7;
  outlined init with copy of BridgedPresentation?(v16, &v7);
  if (v8)
  {
    outlined init with copy of NavigationDestinationContent(&v7, v6);
    outlined destroy of BridgedPresentation(&v7);
    v4 = v6[0];
    outlined destroy of NavigationDestinationContent(v6);
    if (v3 == v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v7, &lazy cache variable for type metadata for BridgedPresentation?, &type metadata for BridgedPresentation);
  }

  LOBYTE(v7) = 17;
  static Update.enqueueAction(reason:_:)();
LABEL_8:
  outlined destroy of AnyAccessibilityValue?(v16, &lazy cache variable for type metadata for BridgedPresentation?, &type metadata for BridgedPresentation);
  return outlined destroy of BridgedPresentation(v14);
}

id UIKitNavigationBridge.containingNavController.getter()
{
  v1 = v0;
  if (!swift_unknownObjectWeakLoadStrong() || (v2 = *(v0 + 24), v3 = swift_getObjectType(), ViewGraphDelegate.hostingControllerOverrides.getter(v3, *(*(v2 + 16) + 8), v20), swift_unknownObjectRelease(), Strong = swift_unknownObjectWeakLoadStrong(), outlined destroy of HostingControllerOverrides(v20), !Strong))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      v7 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v5 + 16) + 8));
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    Strong = [v7 navigationController];

    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v1 + 24);
      v9 = swift_getObjectType();
      v10 = ViewGraphDelegate.uiContainingViewController.getter(v9, *(*(v8 + 16) + 8));
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 splitViewController];

    if (v11)
    {
      type metadata accessor for NotificationSendingSplitViewController();
      if (!swift_dynamicCastClass() && (type metadata accessor for NotifyingMulticolumnSplitViewController(), !swift_dynamicCastClass()) || !Strong || (v12 = [Strong parentViewController]) == 0)
      {

        return Strong;
      }

      v13 = v12;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14 && (v15 = v14, (v16 = [v14 parentViewController]) != 0))
      {
        v17 = v16;
        type metadata accessor for UIViewController();
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {

          return v15;
        }
      }

      else
      {
      }
    }
  }

  return Strong;
}

uint64_t UIKitNavigationBridge.inferredPreferenceBridge.getter()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v1 + 16) + 8));
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 splitViewController];

  if (v4)
  {
    type metadata accessor for NotificationSendingSplitViewController();
    v5 = swift_dynamicCastClass();
    if (v5 || (type metadata accessor for NotifyingMulticolumnSplitViewController(), (v5 = swift_dynamicCastClass()) != 0))
    {
      v6 = [v5 traitCollection];
      v7 = [v6 _environmentWrapper];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for EnvironmentWrapper(0);
        if (swift_dynamicCastClass())
        {
          v9 = v8;
          dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

LABEL_18:
          v10 = EnvironmentValues.preferenceBridge.getter();

LABEL_36:

          return v10;
        }
      }

      EnvironmentValues.init()();
      EnvironmentValues.configureForRoot()();
      if (one-time initialization token for configuredForPlatform != -1)
      {
        swift_once();
      }

      if (v18)
      {
        if (!static EnvironmentValues.configuredForPlatform || v18 != static EnvironmentValues.configuredForPlatform)
        {
          goto LABEL_17;
        }
      }

      else if (static EnvironmentValues.configuredForPlatform)
      {
        goto LABEL_17;
      }

      EnvironmentValues.plist.setter();
LABEL_17:
      EnvironmentValues._configureForPlatform(traitCollection:)(v6);
      goto LABEL_18;
    }
  }

  v11 = UIKitNavigationBridge.containingNavController.getter();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 traitCollection];

    v14 = [v13 _environmentWrapper];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for EnvironmentWrapper(0);
      if (swift_dynamicCastClass())
      {
        v16 = v15;
        dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

LABEL_35:
        v10 = EnvironmentValues.preferenceBridge.getter();
        goto LABEL_36;
      }
    }

    EnvironmentValues.init()();
    EnvironmentValues.configureForRoot()();
    if (one-time initialization token for configuredForPlatform != -1)
    {
      swift_once();
    }

    if (v18)
    {
      if (!static EnvironmentValues.configuredForPlatform || v18 != static EnvironmentValues.configuredForPlatform)
      {
        goto LABEL_34;
      }
    }

    else if (static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_34;
    }

    EnvironmentValues.plist.setter();
LABEL_34:
    EnvironmentValues._configureForPlatform(traitCollection:)(v13);
    goto LABEL_35;
  }

  return 0;
}

void UIKitNavigationBridge.update(environment:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  v1[21] = v3;
  v1[22] = v2;

  EnvironmentValues.preferenceBridge.setter();
  swift_endAccess();
  swift_beginAccess();
  if (v1[22])
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsRepresentingSheetNavigationView>, &unk_1EFFD67B0, &protocol witness table for IsRepresentingSheetNavigationView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsRepresentingSheetNavigationView>, &unk_1EFFD67B0, &protocol witness table for IsRepresentingSheetNavigationView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  swift_endAccess();
  if (v10)
  {
    v11 = 0;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsRepresentingSheetNavigationView>, &unk_1EFFD67B0, &protocol witness table for IsRepresentingSheetNavigationView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v2)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
LABEL_9:

      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();

      v4 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    UIKitNavigationBridge.isBeingPresented.getter();
    v11 = 0;
    UIKitNavigationBridge.presentationModeLocation.getter();
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v2)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

      goto LABEL_9;
    }
  }

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
  v4 = 1;
LABEL_13:
  v5 = (*(*v1 + 296))(1);
  if (v5)
  {

    v11 = 1;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if ((v4 & 1) == 0)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  static Semantics.v5.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
    if (v4)
    {
      PropertyList.subscript.getter();
      if (v11)
      {
        return;
      }
    }

    else
    {

      PropertyList.Tracker.value<A>(_:for:)();

      if (v11)
      {
        return;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = v1[3];
      ObjectType = swift_getObjectType();
      v8 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v6 + 16) + 8));
      swift_unknownObjectRelease();
      if (v8)
      {
        v9 = [v8 splitViewController];

        if (v9)
        {
          [v9 isCollapsed];

          PropertyList.subscript.setter();
          if ((v4 & 1) == 0)
          {
            PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
          }
        }
      }
    }
  }
}

uint64_t popCurrentView #1 (transaction:) in UIKitNavigationBridge.updateNavigationDestinationsIfNeeded(preference:)(uint64_t a1, uint64_t a2)
{
  v3 = Transaction.disablesAnimations.getter();
  (*(*a2 + 320))((v3 & 1) == 0);
  v4 = [objc_opt_self() defaultCenter];
  v5 = MEMORY[0x18D00C850](0xD000000000000037, 0x800000018CD4F6B0);
  [v4 removeObserver:a2 name:v5 object:0];

  v6 = MEMORY[0x18D00C850](0xD000000000000038, 0x800000018CD4F6F0);
  [v4 removeObserver:a2 name:v6 object:0];

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  swift_beginAccess();
  outlined init with copy of BridgedPresentation?(a2 + 40, v8);
  swift_beginAccess();
  outlined assign with copy of BridgedPresentation?(v9, a2 + 40);
  swift_endAccess();
  UIKitNavigationBridge.activePresentation.didset(v8);

  outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for BridgedPresentation?, &type metadata for BridgedPresentation);
  return outlined destroy of AnyAccessibilityValue?(v9, &lazy cache variable for type metadata for BridgedPresentation?, &type metadata for BridgedPresentation);
}

unint64_t UIKitNavigationBridge.updatePresentedContent(_:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  (*(*v2 + 288))(&v35, *(a1 + 8));
  if (v36 == 2)
  {
    return outlined destroy of AnyAccessibilityValue?(&v35, &lazy cache variable for type metadata for PushTarget?, &type metadata for PushTarget);
  }

  outlined init with take of PushTarget(&v35, v37);
  swift_beginAccess();
  if (v2[7])
  {
    v7 = v2[17];
    if ((~v7 & 0xF000000000000007) != 0)
    {
      v8 = v2[16];
      v9 = *(*v2 + 304);
      outlined copy of BridgedPresentation.ContentHost(v8, v2[17]);
      v10 = v9(v8, v7, a1, v37, a2 & 1);
      outlined consume of BridgedPresentation.ContentHost?(v8, v7, v11);
      if (v10)
      {
        return outlined destroy of PushTarget(v37);
      }
    }
  }

  (*(*v3 + 312))(a1, v37, a2 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return outlined destroy of PushTarget(v37);
  }

  v13 = Strong;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0 || v37[8] != 1)
  {
    goto LABEL_18;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = v3[3];
    ObjectType = swift_getObjectType();
    v16 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v14 + 16) + 8));
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
  }

  v17 = [v16 splitViewController];

  if (!v17)
  {
    goto LABEL_18;
  }

  type metadata accessor for NotificationSendingSplitViewController();
  v18 = swift_dynamicCastClass();
  if (!v18 && (type metadata accessor for NotifyingMulticolumnSplitViewController(), (v18 = swift_dynamicCastClass()) == 0) || (v19 = v18, ![v18 isCollapsed]) || (v20 = objc_msgSend(v19, sel_viewControllers), type metadata accessor for UIViewController(), v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v20, v34 = v13, MEMORY[0x1EEE9AC00](v22), v33[2] = &v34, LOBYTE(v20) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v33, v21), , (v20 & 1) != 0))
  {

LABEL_18:
    v23 = v13;
LABEL_19:
    v24 = v23;
    v25 = [objc_opt_self() defaultCenter];
    v26 = MEMORY[0x18D00C850](0xD000000000000037, 0x800000018CD4F6B0);
    [v25 addObserver:v3 selector:sel_navigationChanged_ name:v26 object:v24];

    return outlined destroy of PushTarget(v37);
  }

  v27 = [v19 viewControllers];
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_23;
    }

LABEL_31:

    goto LABEL_32;
  }

  v29 = __CocoaSet.count.getter();
  if (!v29)
  {
    goto LABEL_31;
  }

LABEL_23:
  v30 = __OFSUB__(v29, 1);
  result = v29 - 1;
  if (v30)
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v28 & 0xC000000000000001) != 0)
  {
LABEL_34:
    v31 = MEMORY[0x18D00E9C0](result, v28);
LABEL_28:
    v32 = v31;

    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    v17 = v32;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_32:

    v23 = 0;
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v28 + 8 * result + 32);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void UIKitNavigationBridge.pushTarget(isDetail:)(uint64_t a1@<X8>)
{
  v3 = (*(*v1 + 296))();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectWeakInit();

    *(a1 + 8) = 0;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = xmmword_18CD874C0;
    *(a1 + 24) = 0;
  }

  *(a1 + 16) = 0;
}

void __swiftcall UIKitNavigationBridge.pushTargetComponents(isDetail:)(Swift::tuple_navController_UINavigationController_optional_replaceRoot_Bool_column_UISplitViewControllerColumn_optional *__return_ptr retstr, Swift::Bool isDetail)
{
  if (!swift_unknownObjectWeakLoadStrong() || (v3 = *(v2 + 24), ObjectType = swift_getObjectType(), ViewGraphDelegate.hostingControllerOverrides.getter(ObjectType, *(*(v3 + 16) + 8), v6), swift_unknownObjectRelease(), Strong = swift_unknownObjectWeakLoadStrong(), outlined destroy of HostingControllerOverrides(v6), !Strong))
  {
    UIKitNavigationBridge.containingNavController.getter();
  }
}

double UIKitNavigationBridge.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);

  outlined destroy of AnyAccessibilityValue?(v0 + 40, &lazy cache variable for type metadata for BridgedPresentation?, &type metadata for BridgedPresentation);

  outlined consume of EnvironmentValues?(*(v0 + 184), *(v0 + 192));
  MEMORY[0x18D011290](v0 + 200);

  swift_deallocClassInstance();
  return result;
}

void protocol witness for Location.get() in conformance UIKitNavigationBridgePresentationModeLocation(_BYTE *a1@<X8>)
{
  if (swift_weakLoadStrong())
  {
    v2 = UIKitNavigationBridge.isBeingPresented.getter();
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2 & 1;
}

double protocol witness for Location.set(_:transaction:) in conformance UIKitNavigationBridgePresentationModeLocation(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 328))(1);
    }
  }

  return result;
}

uint64_t protocol witness for Location.update() in conformance UIKitNavigationBridgePresentationModeLocation(_BYTE *a1)
{
  if (swift_weakLoadStrong())
  {
    v2 = UIKitNavigationBridge.isBeingPresented.getter();
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2 & 1;
  return 1;
}

id outlined copy of BridgedPresentation.ContentHost(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v4 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = a1;
    a1 = v4;
  }

  return a1;
}

void outlined consume of BridgedPresentation.ContentHost?(void *result, uint64_t a2, __n128 a3)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    outlined consume of BridgedPresentation.ContentHost(result, a2);
  }
}

void outlined consume of BridgedPresentation.ContentHost(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v3 = (a2 & 0x7FFFFFFFFFFFFFFFLL);

    a1 = v3;
  }
}

uint64_t outlined assign with copy of BridgedPresentation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for BridgedPresentation?, &type metadata for BridgedPresentation);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsRepresentingSheetNavigationView>, &unk_1EFFD67B0, &protocol witness table for IsRepresentingSheetNavigationView, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsRepresentingSheetNavigationView> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t View.editMenu<A>(menu:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a7;
  v24 = a6;
  v25 = a1;
  v26 = a5;
  v27 = a2;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v10 = type metadata accessor for ModifiedContent();
  v35[0] = a6;
  v35[1] = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v35);
  v11 = type metadata accessor for ZStack();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981880], v11, v13);
  v18 = type metadata accessor for EditMenuModifier(0, v11, WitnessTable, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - v20;
  v29 = a3;
  v30 = a4;
  v22 = v26;
  v31 = v26;
  v32 = v24;
  v33 = v25;
  v34 = v27;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  *(v21 + 5) = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 8) = 0;
  (*(v12 + 32))(&v21[*(v18 + 40)], v15, v11);
  MEMORY[0x18D00A570](v21, a3, v18, v22);
  return (*(v19 + 8))(v21, v18);
}

uint64_t View.editMenu<A>(isPresented:menu:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v37 = a8;
  v34 = a7;
  v38 = a5;
  v39 = a2;
  v36 = a4;
  v41 = a3;
  v35 = a1;
  v42 = a9;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v32 = type metadata accessor for ModifiedContent();
  v50[0] = a10;
  v50[1] = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v40 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v32, v50);
  v11 = type metadata accessor for ZStack();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v30 = swift_getWitnessTable(MEMORY[0x1E6981880], v11, v12);
  v16 = type metadata accessor for EditMenuModifier(0, v11, v30, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  v29 = a6;
  v20 = type metadata accessor for ModifiedContent();
  v33 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  v43 = a6;
  v44 = v34;
  v23 = v37;
  v45 = v37;
  v46 = a10;
  v47 = v36;
  v48 = v38;
  v24 = v35;

  v25 = v39;

  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  EditMenuModifier.init(isPresented:menuContent:)(v24, v25, v41, v14, v11, v30, v19);
  MEMORY[0x18D00A570](v19, v29, v16, v23);
  (*(v17 + 8))(v19, v16);
  v26 = swift_getWitnessTable(protocol conformance descriptor for EditMenuModifier<A>, v16);
  v49[0] = v23;
  v49[1] = v26;
  swift_getWitnessTable(v40, v20, v49);
  lazy protocol witness table accessor for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger();
  View.input<A>(_:)();
  return (*(v33 + 8))(v22, v20);
}

uint64_t closure #1 in View.editMenu<A>(menu:)@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  a1(v15);
  View.styleContext<A>(_:)();
  (*(v7 + 8))(v9, a2);
  v18 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v22[0] = a3;
  v22[1] = v18;
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v17, v10);
}

uint64_t EditMenuModifier.init(isPresented:menuContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 20) = 0;
  outlined consume of StateOrBinding<Bool>(0, 0, 0, 0);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 17) = 1;
  v15 = type metadata accessor for EditMenuModifier(0, a5, a6, v14);
  v16 = *(*(a5 - 8) + 32);
  v17 = a7 + *(v15 + 40);

  return v16(v17, a4, a5);
}

unint64_t lazy protocol witness table accessor for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger()
{
  result = lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger;
  if (!lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClientHandlesEditMenuTrigger, &unk_1EFFD6960, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger;
  if (!lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClientHandlesEditMenuTrigger, &unk_1EFFD6960, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger;
  if (!lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClientHandlesEditMenuTrigger, &unk_1EFFD6960, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger;
  if (!lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClientHandlesEditMenuTrigger, &unk_1EFFD6960, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger;
  if (!lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClientHandlesEditMenuTrigger, &unk_1EFFD6960, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClientHandlesEditMenuTrigger and conformance ClientHandlesEditMenuTrigger);
  }

  return result;
}

double View.editMenu<A>(menu:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v13 = type metadata accessor for ModifiedContent();
  v19[0] = a6;
  v19[1] = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v19);
  v18[0] = partial apply for closure #1 in View.editMenu<A>(menu:);
  v18[1] = v12;
  v16 = type metadata accessor for SelectionEditMenuModifier(0, v13, WitnessTable, v15);

  MEMORY[0x18D00A570](v18, a3, v16, a5);

  return result;
}

uint64_t closure #1 in View.editMenu<A>(menu:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a5 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  View.styleContext<A>(_:)();
  return (*(v8 + 8))(v11, a5);
}

uint64_t type metadata accessor for EditMenuResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for EditMenuResponder;
  if (!type metadata singleton initialization cache for EditMenuResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SelectionEditMenuModifier._makeInputs(modifier:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v39[0] = *a2;
  v39[1] = v6;
  v8 = *a2;
  v7 = a2[1];
  v39[2] = a2[2];
  v9 = *a1;
  v25 = v8;
  v26 = v7;
  v27 = a2[2];
  outlined init with copy of _GraphInputs(v39, v24);
  _ViewInputs.init(withoutGeometry:)();
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(0);
  v23 = v9;
  type metadata accessor for SelectionEditMenuModifier(255, a3, a4, v10);
  type metadata accessor for _GraphValue();
  v11 = _GraphValue.value.getter();
  v40[2] = v35;
  v40[3] = v36;
  v40[4] = v37;
  v41 = v38;
  v40[0] = v33;
  v40[1] = v34;
  v12 = AGSubgraphGetCurrent();
  if (!v12)
  {
    __break(1u);
  }

  *&v32[36] = v35;
  *&v32[52] = v36;
  *&v32[68] = v37;
  *&v32[4] = v33;
  *&v32[20] = v34;
  *&v24[44] = *&v32[32];
  *&v24[60] = *&v32[48];
  *&v24[76] = *&v32[64];
  *&v24[28] = *&v32[16];
  *&v32[84] = v38;
  *v24 = v12;
  *&v24[8] = v11;
  *&v24[92] = *&v32[80];
  *&v24[12] = *v32;
  MEMORY[0x1EEE9AC00](v12);
  v14 = type metadata accessor for SelectionEditMenuModifier.Child(0, a3, a4, v13);
  v19[2] = v14;
  v19[3] = swift_getWitnessTable(protocol conformance descriptor for SelectionEditMenuModifier<A>.Child, v14);
  outlined init with copy of _ViewInputs(v40, &v25);
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v24, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_23, v19, v14, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v29 = *&v24[64];
  v30 = *&v24[80];
  v31 = *&v24[96];
  v25 = *v24;
  v26 = *&v24[16];
  v27 = *&v24[32];
  v28 = *&v24[48];
  (*(*(v14 - 8) + 8))(&v25, v14);
  v17 = v20;
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>(0);
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(&lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<TextSelection> and conformance _GraphInputs.SelectionBasedStorageKey<A>, type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>, protocol conformance descriptor for _GraphInputs.SelectionBasedStorageKey<A>);
  PropertyList.subscript.getter();
  v20 = *v24;
  v21 = v17;
  v22 = *&v24[8];
  PropertyList.subscript.setter();
  *&v24[32] = v35;
  *&v24[48] = v36;
  *&v24[64] = v37;
  *&v24[80] = v38;
  *v24 = v33;
  *&v24[16] = v34;
  return outlined destroy of _ViewInputs(v24);
}

uint64_t (*SelectionEditMenuModifier.Child.value.getter(uint64_t a1))(uint64_t a1)
{
  v3 = v1[5];
  v15[4] = v1[4];
  v15[5] = v3;
  v16 = *(v1 + 24);
  v4 = v1[1];
  v15[0] = *v1;
  v15[1] = v4;
  v5 = v1[3];
  v15[2] = v1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[2];
  *(v6 + 80) = v1[3];
  *(v6 + 96) = v8;
  *(v6 + 112) = v9;
  v11 = *v1;
  v12 = v1[1];
  *(v6 + 16) = v7;
  *(v6 + 32) = v11;
  *(v6 + 128) = *(v1 + 24);
  *(v6 + 48) = v12;
  *(v6 + 64) = v10;
  (*(*(a1 - 8) + 16))(v14, v15, a1);
  return partial apply for closure #1 in SelectionEditMenuModifier.Child.value.getter;
}

uint64_t closure #1 in SelectionEditMenuModifier.Child.value.getter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!AGSubgraphIsValid())
  {
    return MEMORY[0x1E69E7CC0];
  }

  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in SelectionEditMenuModifier.Child.value.getter(a2, a1, a3, &v13);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v8 = v13;
  v9 = v14;
  AGGraphClearUpdate();
  v13 = v8;
  v14 = v9;
  v10 = PreferencesOutputs.subscript.getter();

  if ((v10 & 0x100000000) != 0)
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = *AGGraphGetValue();
  }

  AGGraphSetUpdate();
  return v11;
}

uint64_t closure #1 in closure #1 in SelectionEditMenuModifier.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v29[1] = a5;
  v49 = *MEMORY[0x1E69E9840];
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11[5];
  v41 = v11[4];
  v42 = v12;
  v43 = *(v11 + 24);
  v13 = v11[1];
  v37 = *v11;
  v38 = v13;
  v14 = v11[3];
  v39 = v11[2];
  v40 = v14;
  v17 = type metadata accessor for SelectionEditMenuModifier.Child(0, v15, v16, v16);
  v21 = specialized SelectionEditMenuModifier.Child.modifier.getter(v17, v18, v19, v20);

  v21(a2);

  v30[2] = a3;
  v22 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in Attribute.init(value:), v30, a3, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  (*(v8 + 8))(v10, a3);
  _GraphValue.init(_:)();
  v24 = *(a1 + 64);
  v25 = *(a1 + 32);
  v45 = *(a1 + 48);
  v46 = v24;
  v26 = *(a1 + 64);
  v47 = *(a1 + 80);
  v27 = *(a1 + 32);
  v44[0] = *(a1 + 16);
  v44[1] = v27;
  v33 = v45;
  v34 = v26;
  v35 = *(a1 + 80);
  v48 = *(a1 + 96);
  v36 = *(a1 + 96);
  v31 = v44[0];
  v32 = v25;
  outlined init with copy of _ViewInputs(v44, &v37);
  static View.makeDebuggableView(view:inputs:)();
  v39 = v33;
  v40 = v34;
  v41 = v35;
  LODWORD(v42) = v36;
  v37 = v31;
  v38 = v32;
  return outlined destroy of _ViewInputs(&v37);
}

uint64_t protocol witness for Rule.value.getter in conformance SelectionEditMenuModifier<A>.Child@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = SelectionEditMenuModifier.Child.value.getter(a1);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TextSelection) -> (@owned PlatformItemList);
  a2[1] = result;
  return result;
}

uint64_t EditMenuModifier.id.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 20);
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}