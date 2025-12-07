void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemC4item_Sd5scoretMd, &_sSo6FPItemC4item_Sd5scoretMR);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

id DOCMetadataKey.placeholderValue.getter(uint64_t a1, uint64_t a2)
{
  if ((a2 - 8) < 3)
  {
    goto LABEL_4;
  }

  if (a2 == 1)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v11 = 0x8000000249BD0BC0;
      v8 = 0xE2676E6964616F4CLL;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v7 = 0xD00000000000005DLL;
      v6 = 0xAA0000000000A680;
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (a2 == 2)
  {
LABEL_4:
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v11 = 0x8000000249BD07E0;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0x8000000249BD07C0;
      v7 = 0xD00000000000004DLL;
      v8 = 0xD000000000000010;
LABEL_6:
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, *&v4, v3, v9, *&v7)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v11 = 0x8000000249BD0B60;
    v8 = 0x74616C75636C6143;
    v6 = 0xAE00A680E2676E69;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v7 = 0xD000000000000059;
    goto LABEL_6;
  }

LABEL_13:
  __break(1u);
  return result;
}

void DOCMetadataKey.localizedPath(for:layoutDirection:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = [objc_opt_self() defaultManager];
  v17 = [a1 itemID];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a7;
  v18[9] = a8;
  v21[4] = partial apply for closure #1 in DOCMetadataKey.localizedPath(for:layoutDirection:completion:);
  v21[5] = v18;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
  v21[3] = &block_descriptor_181;
  v19 = _Block_copy(v21);
  v20 = a1;

  outlined copy of DOCMetadataKey(a5, a6, a7, a8);

  [v16 fetchParentsForItemID:v17 recursively:1 completionHandler:v19];
  _Block_release(v19);
}

double closure #1 in DOCMetadataKey.localizedPath(for:layoutDirection:completion:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t countAndFlagsBits, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10)
{
  if (!a2)
  {
    if (!a1)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v23 = static DOCLog.UI;
      v24 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_249B9A480;
      *(v25 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      *(v25 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      *(v25 + 32) = a3;
      v26 = a3;
      os_log(_:dso:log:type:_:)("Received nil for parents of %@.", 31, 2, &dword_2493AC000, v23, v24, v25);
      goto LABEL_5;
    }

    v21 = a9;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
    v22 = a3;
    v27 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v22, 3);

    v28 = swift_allocObject();
    v28[2] = a5;
    v28[3] = countAndFlagsBits;
    v28[4] = a7;
    v28[5] = a8;
    v28[6] = a9;
    v83 = v28;
    v28[7] = a10;

    outlined copy of DOCMetadataKey(a7, a8, a9, a10);
    v29 = _DocumentManagerBundle();
    if (v29)
    {
      v30 = v29;
      v88._object = 0x8000000249BD09D0;
      v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v31.value._object = 0xEB00000000656C62;
      v32._countAndFlagsBits = 0xD00000000000001CLL;
      v32._object = 0x8000000249BD0990;
      v33._object = 0x8000000249BD09B0;
      v88._countAndFlagsBits = 0xD000000000000031;
      v33._countAndFlagsBits = 0xD000000000000010;
      v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v30, v33, v88);
      countAndFlagsBits = v34._countAndFlagsBits;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = 0x68736172542ELL;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v34;

      v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);
      v36 = a1;
      if (!v27)
      {
        v51 = objc_opt_self();
        v52 = swift_allocObject();
        *(v52 + 16) = 0;
        *(v52 + 24) = v22;
        *(v52 + 32) = 1;
        *(v52 + 40) = v34;
        *(v52 + 56) = v21;
        *(v52 + 64) = a4;
        *(v52 + 72) = 0;
        *(v52 + 80) = partial apply for closure #1 in closure #1 in DOCMetadataKey.localizedPath(for:layoutDirection:completion:);
        *(v52 + 88) = v83;
        *(v52 + 96) = a1;
        aBlock[4] = partial apply for closure #1 in FPItem.getLocalizedDisplayPath(using:domain:layoutDirection:includeSelf:arrowColor:specialCasingLocations:completion:);
        aBlock[5] = v52;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_190;
        v53 = _Block_copy(aBlock);
        v54 = v22;

        [v51 fetchProviderDomainForItem:v54 cachePolicy:1 completionHandler:v53];

        _Block_release(v53);
        return result;
      }

      object = v34._object;
      v37 = MEMORY[0x277D84F90];
      aBlock[0] = MEMORY[0x277D84F90];

      v38 = &selRef_initWithFrame_;
      [v22 isTrashed];
      v39 = v27;
      if (DOCProviderDomainIsSharedServerDomain())
      {
LABEL_31:

        specialized Sequence.forEach(_:)(v36, aBlock);
        v55 = aBlock[0];
        v81 = v39;
        if (*(aBlock[0] + 2) >= 3uLL && (*(aBlock[0] + 6) == 0x736568736172542ELL && *(aBlock[0] + 7) == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          specialized Array.remove(at:)(1uLL);

          specialized Array.remove(at:)(1uLL);

          v55 = aBlock[0];
          v56 = *(aBlock[0] + 2);
          if (v56)
          {
            a8 = object;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v56 < *(v55 + 3) >> 1)
            {
              goto LABEL_44;
            }

            v58 = v56 + 1;
            goto LABEL_39;
          }

          __break(1u);
        }

        else
        {
          if (![v22 v38[86]])
          {
            v62 = *(v55 + 2);
            if (v62)
            {
LABEL_46:
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62, 0);
              v63 = v37;
              v64 = (v55 + 40);
              do
              {
                v65 = *(v64 - 1);
                v66 = *v64;
                v67 = *(v21 + 16);

                if (v67)
                {
                  v68 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v66);
                  if (v69)
                  {
                    v70 = (*(v21 + 56) + 16 * v68);
                    v65 = *v70;
                    v71 = v70[1];

                    v66 = v71;
                  }
                }

                v73 = v63[2];
                v72 = v63[3];
                if (v73 >= v72 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1);
                }

                v63[2] = v73 + 1;
                v74 = &v63[2 * v73];
                v74[4] = v65;
                v74[5] = v66;
                v64 += 2;
                --v62;
              }

              while (v62);

              goto LABEL_56;
            }

LABEL_55:

            v63 = MEMORY[0x277D84F90];
LABEL_56:

            v75 = specialized pathForDisplay(fromPathComponents:layoutDirection:arrowColor:)(v63, 0);
            v76 = pathForCopy(fromPathComponents:layoutDirection:)(v63, a4);
            v78 = v77;

            v79 = swift_allocObject();
            v79[2] = partial apply for closure #1 in closure #1 in DOCMetadataKey.localizedPath(for:layoutDirection:completion:);
            v79[3] = v83;
            v79[4] = v75;
            v79[5] = v76;
            v79[6] = v78;

            v80 = v75;
            DOCRunInMainThread(_:)();

            return result;
          }

          a8 = object;
          if (!*(v55 + 2))
          {
LABEL_45:
            v62 = *(v55 + 2);
            if (v62)
            {
              goto LABEL_46;
            }

            goto LABEL_55;
          }

          v59 = *(v55 + 4);
          v60 = *(v55 + 5);

          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
          aBlock[0] = v55;
          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v59, v60);

          v56 = *(v55 + 2);
          if (v56)
          {
            aBlock[0] = v55;
            v61 = *(v55 + 3);

            if (v56 < v61 >> 1)
            {
              goto LABEL_44;
            }

            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_59:
        v58 = v56 + 1;
        isUniquelyReferenced_nonNull_native = 1;
LABEL_39:
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v58, 1, v55);
        aBlock[0] = v55;
LABEL_44:
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(1uLL, 1, 1, countAndFlagsBits, a8);

        goto LABEL_45;
      }

      a8 = v39;
      v40 = DOCLocalizedDisplayName();
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      if (v46 >= v45 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v44);
      }

      *(v44 + 2) = v46 + 1;
      v47 = &v44[16 * v46];
      *(v47 + 4) = v41;
      *(v47 + 5) = v43;
      aBlock[0] = v44;
      if (!(a1 >> 62))
      {
        v39 = a8;
        v37 = MEMORY[0x277D84F90];
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_30:
          v38 = &selRef_initWithFrame_;
          goto LABEL_31;
        }

        v38 = &selRef_initWithFrame_;
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (__CocoaSet.count.getter() <= 0)
      {
LABEL_29:
        v36 = a1;
        v39 = a8;
        v37 = MEMORY[0x277D84F90];
        goto LABEL_30;
      }

      if (!__CocoaSet.count.getter())
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = a8;
    v37 = MEMORY[0x277D84F90];
    v38 = &selRef_initWithFrame_;
LABEL_21:
    v36 = specialized _ArrayBuffer._consumeAndCreateNew()();
LABEL_22:
    v48 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      v49 = v48 - 1;
      v50 = *((v36 & 0xFFFFFFFFFFFFFF8) + 8 * v49 + 0x20);
      *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) = v49;

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = static DOCLog.UI;
  v12 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249B9FA70;
  *(v13 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  *(v13 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  *(v13 + 32) = a3;
  v14 = a3;
  v15 = _convertErrorToNSError(_:)();
  *(v13 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  *(v13 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  *(v13 + 72) = v15;
  os_log(_:dso:log:type:_:)("Failed to fetch all parents for item: %@. Error: %@", 51, 2, &dword_2493AC000, v11, v12, v13);
LABEL_5:

  return result;
}

void closure #2 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 25) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v14 = Strong;
    swift_beginAccess();
    v15 = *(a7 + 16);
    v16 = *(a7 + 24);
    v17 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v18 = MEMORY[0x24C1FAD20](v15, v16);

    v19 = [v17 initWithString_];

    (*((*MEMORY[0x277D85000] & *v14) + 0x1B8))(a3, a4, a5, a6, v19, 0, 0, 0);
    goto LABEL_35;
  }

  v21 = *(a1 + 24);
  v22 = *(a1 + 2);
  v43 = *a1;
  swift_beginAccess();
  *(a8 + 32) = v43;
  *(a8 + 48) = v22;
  *(a8 + 56) = v21;
  *(a8 + 57) = 0;
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = swift_beginAccess();
    v26 = DOCMetadataFolderSizingViewModel.sizeText.getter(v25);
    v28 = v27;
    v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v30 = MEMORY[0x24C1FAD20](v26, v28);

    v31 = [v29 initWithString_];

    swift_beginAccess();
    if (*(a8 + 57) & 1) != 0 || (*(a8 + 40))
    {
      v32 = 1;
    }

    else
    {
      v33 = *(a8 + 32);
      v34 = *(a8 + 48);
      v36 = v33 == -1 || v34 == -1;
      v38 = v33 < 0 && v34 >= 0;
      if (*(a8 + 16) != 1)
      {
        v39 = v36;
      }

      else
      {
        v39 = v38;
      }

      if (v36)
      {
        v39 = v36;
      }

      v32 = (*(a8 + 56) & 1) != 0 || v39;
    }

    (*((*MEMORY[0x277D85000] & *v24) + 0x1B8))(a3, a4, a5, a6, v31, 0, 0, v32);
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v19 = v40;
    if (*(v40 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad) == 1)
    {
      *(v40 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing) = 0;
    }

    else
    {
      v41 = *(v40 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing);
      *(v40 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing) = 0;
      if (v41 == 1)
      {
        v42 = (*((*MEMORY[0x277D85000] & *v40) + 0x128))();
        if (v42)
        {
          [v42 metadataViewDidFinishPreheat_];
          swift_unknownObjectRelease();
        }
      }
    }

LABEL_35:
  }
}

void closure #1 in closure #3 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (*(a1 + 25) & 1) != 0 || (a1[1])
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
LABEL_6:
    dispatch_group_leave(a4);
    return;
  }

  v6 = *a1;
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = __OFADD__(v8, v6);
  v10 = v8 + v6;
  if (!v9)
  {
    *(a2 + 16) = v10;
    goto LABEL_6;
  }

  __break(1u);
}

void closure #4 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    v15 = objc_opt_self();
    swift_beginAccess();
    v16 = [v15 stringFromByteCount:*(a3 + 16) countStyle:0];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    swift_beginAccess();
    *(a2 + 16) = v17;
    *(a2 + 24) = v19;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_beginAccess();
    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v25 = MEMORY[0x24C1FAD20](v23, v22);

    v26 = [v24 initWithString_];

    (*((*MEMORY[0x277D85000] & *v21) + 0x1B8))(a5, a6, a7, a8, v26, 0, 0, 0);
  }
}

void closure #5 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1B8))(a7, a8, a9, a10, a3, a4, a5, 0);
  }
}

void closure #9 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 8))
  {
    v11 = *(a1 + 40);
    v12 = objc_opt_self();
    if (v11 < 0)
    {
      __break(1u);
      return;
    }

    v13 = [v12 stringFromByteCount:v11 countStyle:0];
    if (!v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = MEMORY[0x24C1FAD20](v14);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_10;
    }

    v16 = Strong;
    v17 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];
  }

  else
  {
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (!v19)
    {
      return;
    }

    v16 = v19;
    swift_beginAccess();
    v20 = *(a7 + 16);
    v21 = *(a7 + 24);
    v22 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v13 = MEMORY[0x24C1FAD20](v20, v21);

    v17 = [v22 initWithString_];
  }

  v23 = v17;

  (*((*MEMORY[0x277D85000] & *v16) + 0x1B8))(a3, a4, a5, a6, v23, 0, 0, 0);
  v13 = v23;
LABEL_10:
}

void closure #10 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1[1])
  {
    v11 = a1[2];
    v12 = a1[4];
    v13 = objc_opt_self();
    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      v14 = v13;
      v48 = a4;
      v49 = a5;
      v15 = [v13 stringFromByteCount:v11 countStyle:0];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if ((v12 & 0x8000000000000000) == 0)
      {
        v47 = a6;
        v19 = [v14 stringFromByteCount:v12 countStyle:0];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = _DocumentManagerBundle();
        if (v23)
        {
          v24 = v23;
          v50._object = 0x8000000249BD0AA0;
          v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v25.value._object = 0xEB00000000656C62;
          v26._object = 0x8000000249BD0A80;
          v50._countAndFlagsBits = 0xD000000000000059;
          v26._countAndFlagsBits = 0xD000000000000011;
          v27._countAndFlagsBits = 0;
          v27._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v50);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_249B9FA70;
          v29 = MEMORY[0x277D837D0];
          *(v28 + 56) = MEMORY[0x277D837D0];
          v30 = lazy protocol witness table accessor for type String and conformance String();
          *(v28 + 32) = v16;
          *(v28 + 40) = v18;
          *(v28 + 96) = v29;
          *(v28 + 104) = v30;
          *(v28 + 64) = v30;
          *(v28 + 72) = v20;
          *(v28 + 80) = v22;
          v31 = static String.localizedStringWithFormat(_:_:)();
          v33 = v32;

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v35 = Strong;
            v36 = objc_allocWithZone(MEMORY[0x277CCA898]);
            v37 = MEMORY[0x24C1FAD20](v31, v33);

            v38 = [v36 initWithString_];

            (*((*MEMORY[0x277D85000] & *v35) + 0x1B8))(a3, v48, v49, v47, v38, 0, 0, 0);
          }

          else
          {
          }

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = v40;
    swift_beginAccess();
    v42 = *(a7 + 16);
    v43 = *(a7 + 24);
    v44 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v45 = MEMORY[0x24C1FAD20](v42, v43);

    v46 = [v44 initWithString_];

    (*((*MEMORY[0x277D85000] & *v41) + 0x1B8))(a3, a4, a5, a6, v46, 0, 0, 0);
  }
}

void closure #11 in DOCMetadataKey.value(for:in:layoutDirection:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1[1])
  {
    v7 = a1[5];
    v8 = a1[2];
    v9 = v7 - v8;
    if (v7 < v8)
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
      [v10 setAllowedUnits_];
      v11 = [v10 stringFromByteCount_];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [objc_opt_self() stringFromByteCount:v9 countStyle:0];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = _DocumentManagerBundle();
      if (v19)
      {
        v20 = v19;
        v50._object = 0x8000000249BD0B00;
        v21._countAndFlagsBits = 0x6F204025280A4025;
        v21._object = 0xEF296B736964206ELL;
        v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v22.value._object = 0xEB00000000656C62;
        v23._countAndFlagsBits = 0;
        v23._object = 0xE000000000000000;
        v50._countAndFlagsBits = 0xD000000000000054;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v50);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_249B9FA70;
        v25 = MEMORY[0x277D837D0];
        *(v24 + 56) = MEMORY[0x277D837D0];
        v26 = lazy protocol witness table accessor for type String and conformance String();
        *(v24 + 32) = v12;
        *(v24 + 40) = v14;
        *(v24 + 96) = v25;
        *(v24 + 104) = v26;
        *(v24 + 64) = v26;
        *(v24 + 72) = v16;
        *(v24 + 80) = v18;
        v27 = static String.localizedStringWithFormat(_:_:)();
        v29 = v28;

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v31 = Strong;
          v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v33 = MEMORY[0x24C1FAD20](v27, v29);

          v34 = [v32 initWithString_];

          (*((*MEMORY[0x277D85000] & *v31) + 0x1B8))(a3, a4, a5, a6, v34, 0, 0, 0);
        }

        else
        {
        }

        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (!v40)
  {
    return;
  }

  v41 = v40;
  swift_beginAccess();
  v42 = *(a7 + 16);
  v43 = *(a7 + 24);
  v44 = objc_allocWithZone(MEMORY[0x277CCA898]);

  v45 = MEMORY[0x24C1FAD20](v42, v43);

  v10 = [v44 initWithString_];

  (*((*MEMORY[0x277D85000] & *v41) + 0x1B8))(a3, a4, a5, a6, v10, 0, 0, 0);
LABEL_10:
}

DocumentManagerExecutables::DOCMetadataLabelAlignment_optional __swiftcall DOCMetadataLabelAlignment.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = DocumentManagerExecutables_DOCMetadataLabelAlignment_leadingTrailing;
  }

  else
  {
    v1.value = DocumentManagerExecutables_DOCMetadataLabelAlignment_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DOCMetadataLabelAlignment@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void __swiftcall DOCMetadataKeyValueRow.Metrics.init()(DocumentManagerExecutables::DOCMetadataKeyValueRow::Metrics *__return_ptr retstr)
{
  *&retstr->regularHeightLayoutMargins.top = xmmword_249BA37D0;
  retstr->regularHeightLayoutMargins.bottom = 8.0;
  *&retstr->regularHeightLayoutMargins.right = 0u;
  *&retstr->compactHeightLayoutMargins.left = 0u;
  retstr->compactHeightLayoutMargins.right = 0.0;
}

uint64_t DOCMetadataKeyValueRow.shouldBeHidden.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_shouldBeHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataKeyValueRow.shouldBeHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_shouldBeHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCMetadataKeyValueRow.canCopyDetail.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_canCopyDetail;
  swift_beginAccess();
  return *(v0 + v1);
}

double DOCMetadataKeyValueRow.canCopyDetail.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_canCopyDetail;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = DOCMetadataKeyValueRow.value.getter();
  (*((*MEMORY[0x277D85000] & **(v4 + 24)) + 0x90))(*(v1 + v3));

  return result;
}

uint64_t (*DOCMetadataKeyValueRow.canCopyDetail.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_canCopyDetail;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCMetadataKeyValueRow.canCopyDetail.modify;
}

void DOCMetadataKeyValueRow.canCopyDetail.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = DOCMetadataKeyValueRow.value.getter();
    (*((*MEMORY[0x277D85000] & **(v6 + 24)) + 0x90))(*(v4 + v5));
  }

  free(v3);
}

uint64_t DOCMetadataKeyValueRow.detailLink.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_detailLink;
  swift_beginAccess();
  return *(v0 + v1);
}

double DOCMetadataKeyValueRow.detailLink.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_detailLink;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = DOCMetadataKeyValueRow.value.getter();
  (*((*MEMORY[0x277D85000] & **(v4 + 24)) + 0xA8))(*(v1 + v3));

  return result;
}

uint64_t (*DOCMetadataKeyValueRow.detailLink.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_detailLink;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCMetadataKeyValueRow.detailLink.modify;
}

void DOCMetadataKeyValueRow.detailLink.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = DOCMetadataKeyValueRow.value.getter();
    (*((*MEMORY[0x277D85000] & **(v6 + 24)) + 0xA8))(*(v4 + v5));
  }

  free(v3);
}

uint64_t DOCMetadataKeyValueRow.compactRowHeight.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_compactRowHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCMetadataKeyValueRow.compactRowHeight.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_compactRowHeight;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    v6 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics;
    v7 = 16;
    v8 = 8;
    v9 = 56;
    if (a1)
    {
      v8 = 40;
      v7 = 48;
    }

    else
    {
      v9 = 24;
    }

    if (a1)
    {
      v10 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics + 32);
    }

    else
    {
      v10 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics);
    }

    v11 = *(v6 + v9);
    v12 = *(v6 + v7);
    v13 = *(v6 + v8);
    v14 = *v10;
    v15 = DOCMetadataKeyValueRow.stackView.getter();
    [v15 setLayoutMargins_];
  }
}

void (*DOCMetadataKeyValueRow.compactRowHeight.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_compactRowHeight;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataKeyValueRow.compactRowHeight.modify;
}

void DOCMetadataKeyValueRow.compactRowHeight.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_13;
    }

    v7 = v2[3] + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics;
    v8 = 24;
    v9 = 16;
    v10 = 8;
    if (v5)
    {
      v10 = 40;
      v9 = 48;
      v8 = 56;
      v11 = (v7 + 32);
    }

    else
    {
      v11 = (v2[3] + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics);
    }

    v12 = (v7 + v10);
    v13 = (v7 + v9);
    v14 = (v7 + v8);
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_13;
    }

    v15 = v2[3] + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics;
    v16 = 16;
    v17 = 8;
    v18 = 56;
    if (v5)
    {
      v17 = 40;
      v16 = 48;
      v11 = (v15 + 32);
    }

    else
    {
      v18 = 24;
      v11 = (v2[3] + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics);
    }

    v12 = (v15 + v17);
    v13 = (v15 + v16);
    v14 = (v15 + v18);
  }

  v19 = *v14;
  v20 = *v13;
  v21 = *v12;
  v22 = *v11;
  v23 = DOCMetadataKeyValueRow.stackView.getter();
  [v23 setLayoutMargins_];

LABEL_13:

  free(v2);
}

double DOCMetadataKeyValueRow.columnWidth.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_columnWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCMetadataKeyValueRow.columnWidth.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_columnWidth;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = DOCMetadataKeyValueRow.columnWidthConstraint.getter();
    [v5 setConstant_];

    v6 = *((*MEMORY[0x277D85000] & *v1) + 0x158);
    v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint);
    [v7 setActive_];
  }
}

void (*DOCMetadataKeyValueRow.columnWidth.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_columnWidth;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCMetadataKeyValueRow.columnWidth.modify;
}

void DOCMetadataKeyValueRow.columnWidth.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    v6 = v1[4];
    v7 = v1[5];
    v8 = DOCMetadataKeyValueRow.columnWidthConstraint.getter();
    [v8 setConstant_];

    v9 = *((*MEMORY[0x277D85000] & *v6) + 0x158);
    v10 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint);
    [v10 setActive_];
  }

  free(v1);
}

uint64_t DOCMetadataKeyValueRow.labelAlignment.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_labelAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCMetadataKeyValueRow.labelAlignment.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_labelAlignment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1 & 1;
  if (v4 != (a1 & 1))
  {
    DOCMetadataKeyValueRow.updateLabelLayout()();
  }
}

void (*DOCMetadataKeyValueRow.labelAlignment.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_labelAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataKeyValueRow.labelAlignment.modify;
}

void DOCMetadataKeyValueRow.labelAlignment.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCMetadataKeyValueRow.updateLabelLayout()();
  }

  free(v1);
}

uint64_t DOCMetadataKeyValueRow.showsTopSeparator.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsTopSeparator;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*DOCMetadataKeyValueRow.showsTopSeparator.modify(uint64_t *a1))(id **a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsTopSeparator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataKeyValueRow.showsTopSeparator.modify;
}

uint64_t DOCMetadataKeyValueRow.showsBottomSeparator.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsBottomSeparator;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCMetadataKeyValueRow.showsTopSeparator.setter(char a1, uint64_t *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  result = swift_beginAccess();
  v7 = v2[v5];
  v2[v5] = a1;
  if (v7 != v4)
  {
    return [v2 setNeedsDisplay];
  }

  return result;
}

uint64_t (*DOCMetadataKeyValueRow.showsBottomSeparator.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsBottomSeparator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataKeyValueRow.showsBottomSeparator.modify;
}

void *DOCMetadataKeyValueRow.menu.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_menu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCMetadataKeyValueRow.menu.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_menu;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = DOCMetadataKeyValueRow.menuButton.getter();
  v7 = *(v1 + v3);
  [v6 setMenu_];
}

uint64_t (*DOCMetadataKeyValueRow.menu.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_menu;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCMetadataKeyValueRow.menu.modify;
}

void DOCMetadataKeyValueRow.menu.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = DOCMetadataKeyValueRow.menuButton.getter();
    v7 = *(v4 + v5);
    [v6 setMenu_];
  }

  free(v3);
}

id DOCMetadataKeyValueRow.columnWidthConstraint.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint);
  }

  else
  {
    v4 = DOCMetadataKeyValueRow.label.getter();
    v5 = [v4 widthAnchor];

    (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
    v6 = [v5 constraintEqualToConstant_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id closure #1 in DOCMetadataKeyValueRow.label.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setFont_];
  [v2 setTextAlignment_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v4) = 1144750080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1144750080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v5];
  return v2;
}

uint64_t DOCMetadataKeyValueRow.value.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value);
  }

  else
  {
    v2 = closure #1 in DOCMetadataKeyValueRow.value.getter(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t closure #1 in DOCMetadataKeyValueRow.value.getter(uint64_t a1)
{
  type metadata accessor for DOCCopyableLabel();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setNumberOfLines_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setFont_];
  [v2 setTextAlignment_];

  v3 = [objc_opt_self() labelColor];
  (*((*MEMORY[0x277D85000] & *v2) + 0xC0))(v3);
  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1132068864;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentHuggingPriority:0 forAxis:v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16DOCViewDecoratorCyAA16DOCCopyableLabelCGMd, _s26DocumentManagerExecutables16DOCViewDecoratorCyAA16DOCCopyableLabelCGMR);
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v4;
  return result;
}

id DOCMetadataKeyValueRow.spacerView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___spacerView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___spacerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___spacerView);
  }

  else
  {
    v4 = closure #1 in DOCMetadataKeyValueRow.spacerView.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCMetadataKeyValueRow.spacerView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 widthAnchor];
  v2 = [v1 constraintEqualToConstant_];

  type metadata accessor for UILayoutPriority(0);
  lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v3) = v5;
  [v2 setPriority_];
  [v2 setActive_];

  return v0;
}

id closure #1 in DOCMetadataKeyValueRow.menuButton.getter(void *a1)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd, &_s5UIKit31UIConfigurationColorTransformerVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit40UIConfigurationTextAttributesTransformerVSgMd, &_s5UIKit40UIConfigurationTextAttributesTransformerVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIButton.Configuration.Size();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UIButton.Configuration();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v43 - v25;
  static UIButton.Configuration.plain()();
  (*(v15 + 104))(v18, *MEMORY[0x277D75018], v14);
  UIButton.Configuration.buttonSize.setter();
  UIButton.Configuration.imagePlacement.setter();
  UIButton.Configuration.imagePadding.setter();
  (*(v10 + 104))(v13, *MEMORY[0x277D75000], v9);
  UIButton.Configuration.titleAlignment.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v27 = swift_allocObject();
  v28 = v46;
  *(v27 + 16) = v46;
  v29 = v28;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v30 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  UIConfigurationColorTransformer.init(_:)();
  v31 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v31 - 8) + 56))(v4, 0, 1, v31);
  UIButton.Configuration.indicatorColorTransformer.setter();
  UIButton.Configuration.contentInsets.getter();
  UIButton.Configuration.contentInsets.setter();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton, 0x277D75220);
  v33 = v44;
  v32 = v45;
  (*(v44 + 16))(v22, v26, v45);
  v34 = UIButton.init(configuration:primaryAction:)();
  [v34 setShowsMenuAsPrimaryAction_];
  [v34 setChangesSelectionAsPrimaryAction_];
  v35 = v34;
  [v35 setPreferredMenuElementOrder_];
  LODWORD(v36) = 1132068864;
  [v35 setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1148846080;
  [v35 setContentHuggingPriority:0 forAxis:v37];

  v38 = (*((*MEMORY[0x277D85000] & *v29) + 0x1B8))();
  [v35 setMenu_];

  v39 = swift_allocObject();
  *(v39 + 16) = v29;
  aBlock[4] = partial apply for closure #3 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_202;
  v40 = _Block_copy(aBlock);
  v41 = v29;

  [v35 setConfigurationUpdateHandler_];
  _Block_release(v40);

  (*(v33 + 8))(v26, v32);
  return v35;
}

uint64_t closure #1 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataFont);
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  v8 = v7;
  AttributeContainer.subscript.setter();
  [objc_opt_self() labelColor];
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute();
  return AttributeContainer.subscript.setter();
}

id closure #2 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter()
{
  v0 = [objc_opt_self() secondaryLabelColor];

  return v0;
}

void closure #3 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - v10;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v40 - v15;
  v17 = [a1 menu];
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v19 = [v17 selectedElements];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_4;
    }

LABEL_20:

    return;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x24C1FC540](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;

  v23 = [v22 image];
  if (v23)
  {
    v24 = v23;
    v25 = [a2 traitCollection];
    v26 = [v25 preferredContentSizeCategory];

    v27 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v27 scaledValueForValue:0 compatibleWithTraitCollection:16.0];
    v29 = v28;
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v28 > -9.22337204e18)
      {
        if (v28 < 9.22337204e18)
        {
          UIButton.configuration.getter();
          v30 = type metadata accessor for UIButton.Configuration();
          if ((*(*(v30 - 8) + 48))(v11, 1, v30))
          {
            outlined init with copy of DOCGridLayout.Spec?(v11, v7, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
            UIButton.configuration.setter();

            outlined destroy of CharacterSet?(v11, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
            return;
          }

          v41 = v26;
          v32 = v29;
          v33 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
          v34 = swift_allocObject();
          *(v34 + 16) = v24;
          *(v34 + 24) = v32;
          *(v34 + 32) = v32;
          v35 = swift_allocObject();
          *(v35 + 16) = partial apply for closure #1 in closure #3 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter;
          *(v35 + 24) = v34;
          aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
          aBlock[5] = v35;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
          aBlock[3] = &block_descriptor_211;
          v36 = _Block_copy(aBlock);
          v37 = v24;

          v38 = [v33 imageWithActions_];

          _Block_release(v36);
          LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

          if ((v33 & 1) == 0)
          {
            UIButton.Configuration.image.setter();
            UIButton.configuration.setter();

            return;
          }

          goto LABEL_28;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [a1 setChangesSelectionAsPrimaryAction_];
  [a1 setMenu_];
  UIButton.configuration.getter();
  v31 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v31 - 8) + 48))(v16, 1, v31))
  {
    outlined init with copy of DOCGridLayout.Spec?(v16, v7, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    UIButton.configuration.setter();

    outlined destroy of CharacterSet?(v16, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  }

  else
  {
    v39 = [v22 title];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UIButton.Configuration.title.setter();
    UIButton.configuration.setter();
  }
}

id DOCMetadataKeyValueRow.label.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in DOCMetadataKeyValueRow.stackView.getter(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8) == 1)
  {
    v2 = DOCMetadataKeyValueRow.menuButton.getter();
  }

  else
  {
    v2 = *(DOCMetadataKeyValueRow.value.getter() + 16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA37E0;
  *(v3 + 32) = DOCMetadataKeyValueRow.label.getter();
  *(v3 + 40) = DOCMetadataKeyValueRow.spacerView.getter();
  *(v3 + 48) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D75A68]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v5 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithArrangedSubviews_];

  v8 = v7;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setLayoutMarginsRelativeArrangement_];
  [v8 setLayoutMargins_];

  [v8 setAxis_];
  [v8 setSpacing_];
  [v8 setAlignment_];

  return v8;
}

char *DOCMetadataKeyValueRow.init(frame:metadataKey:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  swift_getObjectType();
  v17 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metrics];
  *v17 = xmmword_249BA37D0;
  *(v17 + 2) = 0x4020000000000000;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 7) = 0;
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataFont;
  *&v8[v18] = [objc_opt_self() preferredFontForTextStyle_];
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_shouldBeHidden] = 1;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_canCopyDetail] = 0;
  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_detailLink;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_detailLink] = 0;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_compactRowHeight] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_columnWidth] = 0;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_labelAlignment] = 1;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsTopSeparator] = 0;
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsBottomSeparator;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_showsBottomSeparator] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_menu] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___columnWidthConstraint] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___label] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___spacerView] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___menuButton] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___stackView] = 0;
  v21 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey];
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  swift_beginAccess();
  v8[v20] = 1;
  swift_beginAccess();
  v8[v19] = a2 == 3;
  outlined copy of DOCMetadataKey(a1, a2, a3, a4);
  v58.receiver = v8;
  v58.super_class = type metadata accessor for DOCMetadataKeyValueRow();
  v22 = objc_msgSendSuper2(&v58, sel_initWithFrame_, a5, a6, a7, a8);
  v23 = objc_opt_self();
  v24 = v22;
  [v23 itemInfoView];
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = DOCMetadataKey.localizedTitle.getter(a1, a2, a3, a4);
  v28 = v27;
  v29 = outlined consume of DOCMetadataKey(a1, a2, a3, a4);
  v30 = MEMORY[0x24C1FAD20](v26, v28, v29);

  v31 = [ObjCClassFromMetadata metadataRowWithLabel_];

  if (!v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = MEMORY[0x24C1FAD20](v32);
  }

  [v24 setAccessibilityIdentifier_];

  v33 = [objc_opt_self() clearColor];
  [v24 setBackgroundColor_];

  v34 = DOCMetadataKeyValueRow.stackView.getter();
  [v24 addSubview_];

  v35 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_249BA0D00;
  v37 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___stackView;
  v38 = [*&v24[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___stackView] widthAnchor];
  v39 = [v24 widthAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 multiplier:1.0];

  *(v36 + 32) = v40;
  v41 = [*&v24[v37] topAnchor];
  v42 = [v24 topAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v36 + 40) = v43;
  v44 = [*&v24[v37] bottomAnchor];
  v45 = [v24 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v36 + 48) = v46;
  v47 = [*&v24[v37] leadingAnchor];
  v48 = [v24 leadingAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v36 + 56) = v49;
  v50 = [*&v24[v37] trailingAnchor];
  v51 = [v24 trailingAnchor];

  v52 = [v50 constraintEqualToAnchor_];
  *(v36 + 64) = v52;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_249B9A480;
  v55 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v56 = MEMORY[0x277D74DB8];
  *(v54 + 32) = v55;
  *(v54 + 40) = v56;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v24;
}

Swift::Void __swiftcall DOCMetadataKeyValueRow.draw(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = UIGraphicsGetCurrentContext();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 clearColor];
    v10 = [v9 CGColor];

    CGContextSetFillColorWithColor(v7, v10);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGContextFillRect(v7, v17);
    v11 = [v8 separatorColor];
    color = [v11 CGColor];

    v12 = 1.0;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [v1 contentScaleFactor];
      v12 = v13;
    }

    v14 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x188))())
    {
      CGContextSetFillColorWithColor(v7, color);
      v18.origin.x = 0.0;
      v18.origin.y = 0.0;
      v18.size.width = width;
      v18.size.height = 1.0 / v12;
      CGContextFillRect(v7, v18);
    }

    if ((*((*v14 & *v1) + 0x1A0))())
    {
      CGContextSetFillColorWithColor(v7, color);
      v19.origin.x = 0.0;
      v19.origin.y = height + -1.0;
      v19.size.width = width;
      v19.size.height = 1.0 / v12;
      CGContextFillRect(v7, v19);
    }
  }
}

Swift::Void __swiftcall DOCMetadataKeyValueRow.didMoveToWindow()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCMetadataKeyValueRow();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    DOCMetadataKeyValueRow.updateLabelLayout()();
  }
}

void DOCMetadataKeyValueRow.updateLabelLayout()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v18 = static UITraitCollection.Traits.sizeCategory;
  v19 = qword_27EEE9CC0;

  v3 = UITraitCollection.doc_hasSpecified(_:)(&v18);

  if (v3)
  {
    v4 = [v1 traitCollection];
    v5 = [v4 preferredContentSizeCategory];

    v6 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v7 = DOCMetadataKeyValueRow.stackView.getter();
    [v7 setAxis_];

    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___stackView) setAlignment_];
    if (v6)
    {
      v9 = DOCMetadataKeyValueRow.label.getter();
      [v9 setTextAlignment_];

      [*(DOCMetadataKeyValueRow.value.getter() + 24) setTextAlignment_];

      v17 = DOCMetadataKeyValueRow.columnWidthConstraint.getter();
      [v17 setActive_];
    }

    else
    {
      v10 = 2 * ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 0);
      v11 = DOCMetadataKeyValueRow.label.getter();
      v12 = MEMORY[0x277D85000];
      v13 = *((*MEMORY[0x277D85000] & *v1) + 0x170);
      if (v13())
      {
        v14 = 4;
      }

      else
      {
        v14 = v10;
      }

      [v11 setTextAlignment_];

      v15 = DOCMetadataKeyValueRow.value.getter();
      if (v13())
      {
        v16 = v10;
      }

      else
      {
        v16 = 4;
      }

      [*(v15 + 24) setTextAlignment_];

      v17 = DOCMetadataKeyValueRow.columnWidthConstraint.getter();
      [v17 setActive_];
    }
  }
}

double DOCMetadataKeyValueRow.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24);

  return outlined consume of DOCMetadataKey(v1, v2, v3, v4);
}

id DOCLevelOfDetailButton.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t DOCMetadataView.nodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_nodes;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x277D85000] & *v1) + 0x1C0))(v4);
}

uint64_t (*DOCMetadataView.nodes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCMetadataView.nodes.modify;
}

uint64_t DOCMetadataView.nodes.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x1C0))(result);
  }

  return result;
}

uint64_t DOCMetadataView.showsItemLocation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataView.showsItemLocation.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x1C0))(result);
  }

  return result;
}

void (*DOCMetadataView.showsItemLocation.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataView.showsItemLocation.modify;
}

void DOCMetadataView.showsItemLocation.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    (*((*MEMORY[0x277D85000] & *v1[3]) + 0x1C0))();
  }

  free(v1);
}

uint64_t DOCMetadataView.showsSeparators.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataView.showsSeparators.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x1C8))(result);
  }

  return result;
}

void (*DOCMetadataView.showsSeparators.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataView.showsSeparators.modify;
}

void DOCMetadataView.showsSeparators.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    (*((*MEMORY[0x277D85000] & *v1[3]) + 0x1C8))();
  }

  free(v1);
}

double DOCMetadataView.columnWidth.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataView.columnWidth.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x1C8))(result);
  }

  return result;
}

void (*DOCMetadataView.columnWidth.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCMetadataView.columnWidth.modify;
}

void DOCMetadataView.columnWidth.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    (*((*MEMORY[0x277D85000] & *v1[4]) + 0x1C8))();
  }

  free(v1);
}

Swift::String __swiftcall DOCMetadataView.levelOfDetailButtonTitle()()
{
  v1 = [v0 levelOfDetail];
  countAndFlagsBits = _DocumentManagerBundle();
  v4 = countAndFlagsBits;
  if (!v1)
  {
    if (countAndFlagsBits)
    {
      v13 = 0x8000000249BD0160;
      v5 = 0x726F4D20776F6853;
      v6 = 0x617A696C61636F4CLL;
      v7 = 0xEB00000000656C62;
      v8 = 0xE900000000000065;
      goto LABEL_6;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!countAndFlagsBits)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = 0x8000000249BD0120;
  v5 = 0x73654C20776F6853;
  v6 = 0x617A696C61636F4CLL;
  v7 = 0xEB00000000656C62;
  v8 = 0xE900000000000073;
LABEL_6:
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = 0xD000000000000037;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, *&v6, v4, v9, *(&v13 - 1));

  countAndFlagsBits = v11._countAndFlagsBits;
  object = v11._object;
LABEL_9:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t DOCMetadataView.metadataViewDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCMetadataView.metadataViewDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataViewDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

uint64_t DOCMetadataView.labelAlignment.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_labelAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCMetadataView.labelAlignment.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_labelAlignment;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = a1 & 1;
  if (v5 != (a1 & 1))
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*DOCMetadataView.labelAlignment.modify(uint64_t *a1))(id **a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_labelAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCMetadataView.labelAlignment.modify;
}

void DOCMetadataKeyValueRow.showsTopSeparator.modify(id **a1, uint64_t a2, SEL *a3)
{
  v3 = *a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = *(*a1 + 40);
  v7 = v4[v5];
  v4[v5] = v6;
  if (v6 != v7)
  {
    [v3[3] *a3];
  }

  free(v3);
}

uint64_t DOCMetadataView.canShowAdditionalMetadataValues.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_canShowAdditionalMetadataValues;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCMetadataView.canShowAdditionalMetadataValues.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_canShowAdditionalMetadataValues;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCMetadataView.levelOfDetail.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_levelOfDetail;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_configuration);
    if (v6)
    {
      v7 = objc_opt_self();
      v8 = v6;
      v9 = [v7 standardUserDefaults];
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      [v9 doc:isa setObject:*MEMORY[0x277D05E48] forRoleKey:v8 configuation:?];
    }

    return (*((*MEMORY[0x277D85000] & *v1) + 0x1C8))(result);
  }

  return result;
}

id DOCMetadataView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DOCMetadataView.init()()
{
  ObjectType = swift_getObjectType();
  v1 = (*(ObjectType + 416))(&outlined read-only object #0 of one-time initialization function for allValues, 0);
  swift_deallocPartialClassInstance();
  return v1;
}

char *DOCMetadataView.init(metadataKeys:configuration:)(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v5 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_nodes] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation] = 1;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_labelAlignment] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataEntries] = v5;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_canShowAdditionalMetadataValues] = 2;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_levelOfDetail] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad] = 1;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing] = 1;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_configuration] = a2;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_initialMetadataKeys] = a1;
  v6 = a2;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showTopAndBottomSeparator] = _UISolariumEnabled();
  v20.receiver = v2;
  v20.super_class = type metadata accessor for DOCMetadataView();
  v7 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 setAxis_];
  if (a2)
  {
    v8 = objc_opt_self();
    v9 = v6;
    v10 = [v8 standardUserDefaults];
    v11 = [v10 doc:*MEMORY[0x277D05E48] roleSpecificKeyForKey:v9 configuration:?];

    if (!v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = MEMORY[0x24C1FAD20](v12);
    }

    v13 = [v8 standardUserDefaults];
    v14 = [v13 integerForKey_];

    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_levelOfDetail;
    swift_beginAccess();
    *&v7[v15] = v14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249B9A480;
  v17 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v18 = MEMORY[0x277D74DB8];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v7;
}

Swift::Void __swiftcall DOCMetadataView.updateArrangedViews()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in DOCMetadataView.updateArrangedViews();
  *(v3 + 24) = v2;
  v7[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_22;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void DOCMetadataView._reloadArrangedViews()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v91 = static UITraitCollection.Traits.sizeCategory;
    v92 = qword_27EEE9CC0;

    v3 = UITraitCollection.doc_hasSpecified(_:)(&v91);

    if ((v3 & 1) == 0)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataEntries;
    swift_beginAccess();
    v4 = *(v2 + v1);
    v90 = MEMORY[0x277D84F90];
    v5 = v4 >> 62 ? __CocoaSet.count.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v5)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v2 = v7;
      if ((*((*MEMORY[0x277D85000] & *v7) + 0xF8))())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = &v90;
        specialized ContiguousArray._endMutation()();
      }

      ++v6;
      if (v9 == v5)
      {
        v10 = v90;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9FA70;
  v12 = [v1 arrangedSubviews];
  v13 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v16;
  *(v11 + 32) = v15;
  v17 = [v1 subviews];
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v11 + 96) = MEMORY[0x277D83B88];
  *(v11 + 104) = MEMORY[0x277D83C10];
  *(v11 + 72) = v19;
  os_log(_:dso:log:type:_:)("[DOCMetadataView] 2 rows %d subviews %d", v78, v80);

  v20 = [v1 subviews];
  v81 = v13;
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = v21 >> 62;
  if (!(v21 >> 62))
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_26;
    }

LABEL_39:
    static os_log_type_t.debug.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_249B9FA70;
    v28 = [v1 arrangedSubviews];
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v29 >> 62)
    {
      goto LABEL_95;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {

      *(v27 + 56) = MEMORY[0x277D83B88];
      *(v27 + 64) = MEMORY[0x277D83C10];
      *(v27 + 32) = i;
      if (v22)
      {
        v31 = __CocoaSet.count.getter();
      }

      else
      {
        v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v27 + 96) = MEMORY[0x277D83B88];
      *(v27 + 104) = MEMORY[0x277D83C10];
      *(v27 + 72) = v31;
      os_log(_:dso:log:type:_:)("[DOCMetadataView] 2.1 rows %d subviews %d", v79, v81);

      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_249B9A480;
      v33 = v10;
      if (v10 < 0)
      {
        v27 = 1;
      }

      else
      {
        v27 = (v10 >> 62) & 1;
      }

      v79 = v31;
      if (v27 == 1)
      {
        v77 = __CocoaSet.count.getter();
        v33 = v10;
        v34 = v77;
      }

      else
      {
        v34 = *(v10 + 16);
      }

      v89 = v33;
      v35 = MEMORY[0x277D84F90];
      if (v34)
      {
        v90 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34 & ~(v34 >> 63), 0);
        if (v34 < 0)
        {
          goto LABEL_99;
        }

        v85 = v27;
        v87 = v32;
        v36 = 0;
        v35 = v90;
        v37 = v10;
        v38 = v10 & 0xC000000000000001;
        do
        {
          if (v38)
          {
            v39 = MEMORY[0x24C1FC540](v36, v37);
          }

          else
          {
            v39 = *(v37 + 8 * v36 + 32);
          }

          v40 = v39;
          v41 = DOCMetadataKey.localizedTitle.getter(*&v39[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey], *&v39[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8], *&v39[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16], *&v39[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24]);
          v43 = v42;

          v90 = v35;
          v45 = *(v35 + 16);
          v44 = *(v35 + 24);
          if (v45 >= v44 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
            v35 = v90;
          }

          ++v36;
          *(v35 + 16) = v45 + 1;
          v46 = v35 + 16 * v45;
          *(v46 + 32) = v41;
          *(v46 + 40) = v43;
          v37 = v89;
        }

        while (v34 != v36);
        v10 = v89;
        v32 = v87;
        v27 = v85;
      }

      *(v32 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      *(v32 + 64) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277CC9C50]);
      *(v32 + 32) = v35;
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log, 0x277D86200);
      v21 = static OS_os_log.default.getter();
      v47 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("[DOCMetadataView] 2.1 installing %@", 35, 2, &dword_2493AC000, v21, v47, v32);

      if (v27)
      {
        v48 = __CocoaSet.count.getter();
        v49 = v10;
        v22 = v48;
        if (!v48)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v49 = v10;
        v22 = *(v10 + 16);
        if (!v22)
        {
LABEL_86:

          static os_log_type_t.debug.getter();
          v71 = swift_allocObject();
          *(v71 + 16) = xmmword_249B9FA70;
          v72 = [v1 arrangedSubviews];
          v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v73 >> 62)
          {
            v74 = __CocoaSet.count.getter();
          }

          else
          {
            v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v75 = MEMORY[0x277D83B88];
          *(v71 + 56) = MEMORY[0x277D83B88];
          v76 = MEMORY[0x277D83C10];
          *(v71 + 64) = MEMORY[0x277D83C10];
          *(v71 + 72) = v79;
          *(v71 + 32) = v74;
          *(v71 + 96) = v75;
          *(v71 + 104) = v76;
          os_log(_:dso:log:type:_:)("[DOCMetadataView] 2.2 rows %d subviews %d", v79, v81);

          [v1 invalidateIntrinsicContentSize];
          return;
        }
      }

      v10 = 0;
      v88 = v49 & 0xC000000000000001;
      v82 = v49 + 32;
      v83 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showTopAndBottomSeparator;
      v84 = v22 - 1;
      v50 = __OFSUB__(v22, 1);
      v86 = v50;
      while (1)
      {
        if (v88)
        {
          v58 = MEMORY[0x24C1FC540](v10);
        }

        else
        {
          if (v10 >= *(v49 + 16))
          {
            goto LABEL_91;
          }

          v58 = *(v49 + 8 * v10 + 32);
        }

        v59 = v58;
        v60 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v61 = [v1 addArrangedSubview_];
        v62 = MEMORY[0x277D85000];
        v63 = *((*MEMORY[0x277D85000] & *v1) + 0xF0);
        v27 = (*MEMORY[0x277D85000] & *v1) + 240;
        v64 = v63(v61);
        v65 = *((*v62 & *v59) + 0x1A8);
        v66 = v65(v64 & 1);
        if (v10 || (v63(v66) & 1) == 0)
        {
          v67 = 0;
        }

        else
        {
          v67 = *(v1 + v83);
        }

        v21 = v59;
        (*((*MEMORY[0x277D85000] & *v59) + 0x190))(v67);
        if (v86)
        {
          goto LABEL_92;
        }

        if (v88)
        {
          v68 = MEMORY[0x24C1FC540](v84, v89);
        }

        else
        {
          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_93;
          }

          if (v84 >= *(v89 + 16))
          {
            goto LABEL_94;
          }

          v68 = *(v82 + 8 * v84);
        }

        v69 = v68;
        type metadata accessor for DOCMetadataKeyValueRow();
        v27 = v59;
        v70 = static NSObject.== infix(_:_:)();

        if ((v70 & 1) != 0 && (*(v1 + v83) & 1) == 0)
        {
          v65(0);
        }

        v51 = MEMORY[0x277D85000];
        v52 = (*((*MEMORY[0x277D85000] & *v1) + 0x108))();
        v53 = (*((*v51 & *v27) + 0x160))(v52);
        v54 = *((*v51 & *v1) + 0x140);
        v55 = v54(v53);
        v56 = (*((*v51 & *v27) + 0x148))((v55 & 1) == 0);
        v57 = v54(v56);
        v21 = v27;
        (*((*v51 & *v27) + 0x178))(v57 & 1);

        ++v10;
        v49 = v89;
        if (v60 == v22)
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      ;
    }
  }

  v23 = __CocoaSet.count.getter();
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_26:
  if (v23 >= 1)
  {
    for (j = 0; j != v23; ++j)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x24C1FC540](j, v21);
      }

      else
      {
        v25 = *(v21 + 8 * j + 32);
      }

      v26 = v25;
      [v25 removeFromSuperview];
    }

    goto LABEL_39;
  }

  __break(1u);
LABEL_99:
  __break(1u);
}

void DOCMetadataView.updateMetadataValue(for:value:copyableValue:isPlaceholder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataEntries;
  swift_beginAccess();
  v64 = v8;
  v13 = *(v8 + v12);
  v68 = a8;
  v67 = a5;
  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
LABEL_58:

    return;
  }

  v15 = 0;
  v16 = v13 & 0xC000000000000001;
  v17 = (v13 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v16)
    {
      v18 = MEMORY[0x24C1FC540](v15, v13);
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_82;
      }

      v18 = *(v13 + 8 * v15 + 32);
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_57;
      }
    }

    v20 = v18 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey;
    v21 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8);
    v22 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16);
    v23 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24);
    if (v21 > 5)
    {
      if (v21 <= 8)
      {
        if (v21 == 6)
        {
          if (a2 == 6)
          {
            goto LABEL_59;
          }
        }

        else if (v21 == 7)
        {
          if (a2 == 7)
          {
            goto LABEL_59;
          }
        }

        else if (a2 == 8)
        {
          goto LABEL_59;
        }

        goto LABEL_6;
      }

      switch(v21)
      {
        case 9:
          if (a2 == 9)
          {
            goto LABEL_59;
          }

          goto LABEL_6;
        case 10:
          if (a2 == 10)
          {
            goto LABEL_59;
          }

          goto LABEL_6;
        case 11:
          if (a2 == 11)
          {
            goto LABEL_59;
          }

          goto LABEL_6;
      }

LABEL_45:
      if (a2 >= 0xC)
      {
        v24 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey) == a1 && v21 == a2;
        v63 = v18;
        if (v24 || (v25 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = v63, (v25 & 1) != 0))
        {
          if (v22 == a3 && v23 == a4 || (v26 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = v63, (v26 & 1) != 0))
          {
LABEL_59:
            a2 = v18;
            v62 = v20 + 8;

            goto LABEL_60;
          }
        }
      }

      goto LABEL_6;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        if (a2 == 3)
        {
          goto LABEL_59;
        }
      }

      else if (v21 == 4)
      {
        if (a2 == 4)
        {
          goto LABEL_59;
        }
      }

      else if (a2 == 5)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
    }

    if (!v21)
    {
      if (!a2)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
    }

    if (v21 == 1)
    {
      break;
    }

    if (v21 != 2)
    {
      goto LABEL_45;
    }

    if (a2 == 2)
    {
      a2 = v18;

      v62 = v20 + 8;
      if (!v67)
      {
        DOCMetadataKeyValueRow.value.getter();
        LOBYTE(v16) = v68;
        goto LABEL_72;
      }

      v17 = v67;
      v30 = DOCMetadataKey.placeholderValue.getter(a1, 2);
      v32 = v31;
      v33 = [v17 string];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      LOBYTE(v16) = v68;
      if (v30 == v34 && v32 == v36)
      {

LABEL_80:
        v72 = DOCMetadataKey.placeholderValue.getter(a1, 2);
        v73 = v59;
        MEMORY[0x24C1FAEA0](10, 0xE100000000000000);
        v60 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v61 = MEMORY[0x24C1FAD20](v72, v73);

        v27 = [v60 initWithString_];

        goto LABEL_61;
      }

      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v58)
      {
        goto LABEL_80;
      }

LABEL_82:

      v27 = v17;
      DOCMetadataKeyValueRow.value.getter();
      goto LABEL_62;
    }

LABEL_6:

    ++v15;
    if (v19 == v14)
    {
      goto LABEL_58;
    }
  }

  if (a2 != 1)
  {
    goto LABEL_6;
  }

  a2 = v18;
  v62 = v20 + 8;

  v38 = MEMORY[0x277D85000];
  v39 = (*((*MEMORY[0x277D85000] & *v64) + 0x128))(v37);
  if (v39)
  {
    v40 = [v39 metadataViewAlwaysOpenWithMenu_];
    swift_unknownObjectRelease();
    LOBYTE(v16) = v68;
    v27 = v67;
    if (v40)
    {
      v41 = *((*v38 & *a2) + 0x1C0);
      v42 = v40;
      v41(v40);
    }

    v43 = v67;
  }

  else
  {
LABEL_60:
    v27 = v67;
    v28 = v67;
    LOBYTE(v16) = v68;
  }

LABEL_61:
  DOCMetadataKeyValueRow.value.getter();
  if (v27)
  {
LABEL_62:
    v29 = v27;
    goto LABEL_73;
  }

LABEL_72:
  v44 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v45 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
  v29 = [v44 initWithString_];

  v27 = 0;
LABEL_73:
  KeyPath = swift_getKeyPath();
  v47 = v27;
  specialized DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(KeyPath, v29);

  v48 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value;
  v49 = a2;
  v50 = MEMORY[0x277D85000];
  v51 = *((*MEMORY[0x277D85000] & **(*(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value) + 24)) + 0xE8);

  v51(a6, a7);

  v52 = *(v49 + v48);
  v53 = objc_opt_self();

  v54 = &selRef_placeholderTextColor;
  if ((v16 & 1) == 0)
  {
    v54 = &selRef_labelColor;
  }

  v55 = [v53 *v54];
  [*(v52 + 24) setTextColor_];

  if (*v62 == 3)
  {
    (*((*v50 & *v49) + 0x130))(1);
    v56 = *((*v50 & **(*(v49 + v48) + 24)) + 0x100);

    v57 = v64;
    v56(v64, &protocol witness table for DOCMetadataView);
  }

  else
  {
  }
}

Swift::Void __swiftcall DOCMetadataView.updateMetadataKeys()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xD8))();
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = (*((*v2 & *v0) + 0xC0))();
  if (v4 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v5 == 1)
  {
    v6 = &outlined read-only object #0 of one-time initialization function for allValues;
  }

  else
  {
LABEL_6:
    v6 = &outlined read-only object #0 of one-time initialization function for limitedValues;
  }

  v7 = *((*v2 & *v1) + 0xC0);
  v8 = (v7)(v3);
  if (v8 >> 62)
  {
LABEL_42:
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 <= 1)
  {
    v11 = (v7)(v10);
    if (v11 >> 62)
    {
      v28 = v11;
      v29 = __CocoaSet.count.getter();
      v11 = v28;
      if (v29)
      {
LABEL_12:
        if ((v11 & 0xC000000000000001) == 0)
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          swift_unknownObjectRetain();
          goto LABEL_15;
        }

        goto LABEL_60;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v13 = *(v6 + 2);
    if (!v13)
    {
LABEL_47:
      v7 = v13;
      goto LABEL_48;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = *(v6 + 2);
    if (!v13)
    {
      goto LABEL_47;
    }

LABEL_17:
    v14 = 0;
    v7 = 0;
    while (*&v6[v14 + 40] != 1)
    {
      ++v7;
      v14 += 32;
      if (v13 == v7)
      {
        goto LABEL_47;
      }
    }

    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    while (v15 != v13)
    {
      if (v15 >= v13)
      {
        goto LABEL_39;
      }

      v21 = *&v6[v14 + 72];
      if (v21 != 1)
      {
        if (v15 != v7)
        {
          if (v7 >= v13)
          {
            goto LABEL_40;
          }

          v35 = *&v6[v14 + 80];
          v36 = *&v6[v14 + 64];
          v22 = &v6[32 * v7 + 32];
          v33 = *v22;
          v34 = *(v22 + 16);
          outlined copy of DOCMetadataKey(*v22, *(v22 + 8), *(v22 + 16), *(v22 + 24));
          outlined copy of DOCMetadataKey(v36, v21, v35, *(&v35 + 1));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          }

          v23 = &v6[32 * v7];
          v24 = *(v23 + 4);
          v25 = *(v23 + 5);
          v26 = *(v23 + 6);
          v27 = *(v23 + 7);
          *(v23 + 2) = v36;
          *(v23 + 3) = v35;
          outlined consume of DOCMetadataKey(v24, v25, v26, v27);
          if (v15 >= *(v6 + 2))
          {
            goto LABEL_41;
          }

LABEL_24:
          v16 = &v6[v14];
          v17 = *&v6[v14 + 64];
          v18 = *&v6[v14 + 72];
          v19 = *&v6[v14 + 80];
          v20 = *&v6[v14 + 88];
          *(v16 + 4) = v33;
          *(v16 + 5) = v34;
          outlined consume of DOCMetadataKey(v17, v18, v19, v20);
          v13 = *(v6 + 2);
        }

        ++v7;
      }

      ++v15;
      v14 += 32;
    }

    if (v13 < v7)
    {
      __break(1u);
LABEL_44:
      v5 = __CocoaSet.count.getter();
      goto LABEL_4;
    }

    if (v7 < 0)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_48:
    if (!__OFADD__(v13, v7 - v13))
    {
      break;
    }

    __break(1u);
LABEL_60:
    MEMORY[0x24C1FC540](0);
LABEL_15:

    swift_getObjectType();
    v12 = DOCNode.supportsAlwaysOpenWith.getter();
    swift_unknownObjectRelease();
    if (v12)
    {
      goto LABEL_56;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v7 > *(v6 + 3) >> 1)
  {
    if (v13 <= v7)
    {
      v31 = v7;
    }

    else
    {
      v31 = v13;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31, 1, v6);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v13, 0);
LABEL_56:
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_initialMetadataKeys) = v6;

  v32 = *((*v2 & *v1) + 0x1C8);

  v32();
}

Swift::Void __swiftcall DOCMetadataView.updatedMetadataValues()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= 1)
  {
    v5 = (v1)(v4);
    v6 = [v0 levelOfDetail];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized static DOCNodeMetadataContent.metadataContent(from:levelOfDetail:completion:)(v5, v6, partial apply for closure #1 in DOCMetadataView.updatedMetadataValues(), v7);
  }
}

void closure #1 in DOCMetadataView.updatedMetadataValues()(unint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5)
{
  v86 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v81 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v90 = a5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataEntries;
    v19 = Strong;
    swift_beginAccess();
    v89 = v18;
    v20 = *&v19[v18];
    v78 = v14;
    v77 = v13;
    v76 = v15;
    if (v20 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v95 = *&Strong[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_initialMetadataKeys];
      v21 = v95;
      v22 = *((*MEMORY[0x277D85000] & *Strong) + 0x190);
      swift_bridgeObjectRetain_n();
      v22((a2 | a3 | a4) != 0);
      v23 = *(v21 + 2);
      v80 = v9;
      v79 = v10;
      if (!v23)
      {
LABEL_8:

        goto LABEL_20;
      }

      v24 = 0;
      v25 = 32;
      while (*&v21[v25 + 8] != 11)
      {
        ++v24;
        v25 += 32;
        if (v23 == v24)
        {
          goto LABEL_8;
        }
      }

      v26 = specialized Array.remove(at:)(v24);
      outlined consume of DOCMetadataKey(v26, v27, v28, v29);
      specialized DOCNodeMetadataContent.orderedMetadata.getter(a2, a3, a4);
      v10 = *(v30 + 16);
      if (!v10)
      {
        break;
      }

      a4 = v95;
      v31 = *(v95 + 2);
      v84 = v30;
      v32 = (v30 + 56);
      v85 = -v24;
      while (v31 >= v24)
      {
        a2 = *(v32 - 2);
        v91 = *(v32 - 3);
        a3 = *v32;
        v87 = *(v32 - 1);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v31 >= *(a4 + 3) >> 1)
        {
          a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31 + 1, 1, a4);
        }

        v9 = &a4[v25];
        swift_arrayDestroy();
        memmove(&a4[v25 + 32], &a4[v25], 32 * (v85 + *(a4 + 2)));
        v31 = *(a4 + 2) + 1;
        *(a4 + 2) = v31;
        *v9 = v91;
        *(v9 + 1) = a2;
        *(v9 + 2) = v87;
        *(v9 + 3) = a3;
        v32 += 4;
        if (!--v10)
        {

          v21 = a4;
          v95 = a4;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_43:
      ;
    }

    v21 = v95;
LABEL_20:
    v87 = *&Strong[v89];
    *&Strong[v89] = MEMORY[0x277D84F90];
    v82 = v21;
    v34 = *(v21 + 2);
    if (v34)
    {
      v35 = (*MEMORY[0x277D85000] & *Strong) + 240;
      v85 = *((*MEMORY[0x277D85000] & *Strong) + 0xF0);
      v84 = v35;
      swift_beginAccess();
      v83 = type metadata accessor for DOCMetadataKeyValueRow();
      v36 = (v82 + 56);
      do
      {
        v91 = v34;
        v39 = *(v36 - 3);
        v38 = *(v36 - 2);
        v41 = *(v36 - 1);
        v40 = *v36;
        v42 = objc_allocWithZone(v83);
        outlined copy of DOCMetadataKey(v39, v38, v41, v40);
        outlined copy of DOCMetadataKey(v39, v38, v41, v40);
        v43 = DOCMetadataKeyValueRow.init(frame:metadataKey:)(v39, v38, v41, v40, 0.0, 0.0, 0.0, 0.0);
        v44 = [v43 setTranslatesAutoresizingMaskIntoConstraints_];
        v45 = Strong;
        v46 = (v85)(v44);
        (*((*MEMORY[0x277D85000] & *v43) + 0x1A8))(v46 & 1);
        v47 = v89;
        swift_beginAccess();
        v48 = v43;
        MEMORY[0x24C1FB090]();
        if (*((*&v45[v47] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v45[v47] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        if (i)
        {

          outlined consume of DOCMetadataKey(v39, v38, v41, v40);
          v37 = v91;
        }

        else
        {
          v49 = swift_unknownObjectWeakLoadStrong();
          v37 = v91;
          if (v49)
          {
            v50 = v49;
            (*((*MEMORY[0x277D85000] & *v49) + 0x1B8))(v39, v38, v41, v40, 0, 0, 0, 0);

            outlined consume of DOCMetadataKey(v39, v38, v41, v40);
          }

          else
          {

            outlined consume of DOCMetadataKey(v39, v38, v41, v40);
          }
        }

        v36 += 4;
        v34 = v37 - 1;
      }

      while (v34);
    }

    i = dispatch_group_create();
    v51 = *&Strong[v89];
    if (v51 >> 62)
    {
      v91 = __CocoaSet.count.getter();
    }

    else
    {
      v91 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v91)
    {
      if (v91 < 1)
      {
        __break(1u);
        return;
      }

      v85 = v51 & 0xC000000000000001;

      swift_beginAccess();
      v52 = 0;
      v89 = v51;
      do
      {
        if (v85)
        {
          v53 = MEMORY[0x24C1FC540](v52, v51);
        }

        else
        {
          v53 = *(v51 + 8 * v52 + 32);
        }

        v54 = v53;
        ++v52;
        v55 = i;
        dispatch_group_enter(i);
        v56 = *&v54[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey];
        v57 = *&v54[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8];
        v59 = *&v54[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16];
        v58 = *&v54[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24];
        v60 = Strong;
        v61 = [Strong effectiveUserInterfaceLayoutDirection];
        v62 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v63 = v55;
        v64 = v87;

        v65 = v54;
        v66 = v60;
        specialized DOCMetadataKey.value(for:in:layoutDirection:completion:)(v86, v66, v61, v56, v57, v59, v58, v63, v64, v65, v66, aBlock);

        MEMORY[0x24C1FE970](aBlock);
        v51 = v89;
      }

      while (v91 != v52);
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v67 = static OS_dispatch_queue.main.getter();
    v68 = swift_allocObject();
    swift_beginAccess();
    v69 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = partial apply for closure #2 in closure #1 in DOCMetadataView.updatedMetadataValues();
    aBlock[5] = v68;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_133;
    v70 = _Block_copy(aBlock);

    v71 = v81;
    static DispatchQoS.unspecified.getter();
    v93 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v72 = v77;
    v73 = v80;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v74 = i;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v70);

    (*(v79 + 8))(v72, v73);
    (*(v76 + 8))(v71, v78);
  }
}

void specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, NSObject *a7, unint64_t a8, void *a9, void *a10, uint64_t a11)
{
  if (a8 >> 62)
  {
LABEL_82:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = a9;
  a9 = (a9 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey);
  if (!v13)
  {
LABEL_58:

    v26 = a3;
    goto LABEL_68;
  }

  v14 = 0;
  while (1)
  {
    if ((a8 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x24C1FC540](v14, a8);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    else
    {
      if (v14 >= *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_82;
      }

      v15 = *(a8 + 8 * v14 + 32);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_57;
      }
    }

    v17 = *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8];
    v18 = *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16];
    v19 = *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24];
    v20 = a9[1];
    v22 = a9[2];
    v21 = a9[3];
    if (v17 > 5)
    {
      break;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        if (v20 == 3)
        {
          goto LABEL_59;
        }
      }

      else if (v17 == 4)
      {
        if (v20 == 4)
        {
          goto LABEL_59;
        }
      }

      else if (v20 == 5)
      {
        goto LABEL_59;
      }
    }

    else if (v17)
    {
      if (v17 == 1)
      {
        if (v20 == 1)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v17 != 2)
        {
          goto LABEL_45;
        }

        if (v20 == 2)
        {
          goto LABEL_59;
        }
      }
    }

    else if (!v20)
    {
      goto LABEL_59;
    }

LABEL_6:

    ++v14;
    if (v16 == v13)
    {
      goto LABEL_58;
    }
  }

  if (v17 <= 8)
  {
    if (v17 == 6)
    {
      if (v20 == 6)
      {
        goto LABEL_59;
      }
    }

    else if (v17 == 7)
    {
      if (v20 == 7)
      {
        goto LABEL_59;
      }
    }

    else if (v20 == 8)
    {
      goto LABEL_59;
    }

    goto LABEL_6;
  }

  switch(v17)
  {
    case 9:
      if (v20 == 9)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
    case 10:
      if (v20 == 10)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
    case 11:
      if (v20 == 11)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
  }

LABEL_45:
  if (v20 < 0xC)
  {
    goto LABEL_6;
  }

  v23 = *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey] == *a9 && v17 == v20;
  v60 = v15;
  if (!v23)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15 = v60;
    if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v18 != v22 || v19 != v21)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15 = v60;
    if ((v25 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_59:
  v27 = v15;
  v28 = [*(DOCMetadataKeyValueRow.value.getter() + 24) text];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    v26 = a3;
    if (v33 && (a6 & 1) != 0)
    {
      v34 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value;
      v26 = [*(*&v27[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow____lazy_storage___value] + 24) attributedText];
      v35 = *((*MEMORY[0x277D85000] & **(*&v27[v34] + 24)) + 0xE0);

      a4 = v35(v36);
      a5 = v37;

      goto LABEL_69;
    }
  }

  else
  {

    v26 = a3;
  }

LABEL_68:
  v38 = v26;
LABEL_69:
  v39 = *a9;
  v41 = a9[2];
  v40 = a9[3];
  v69 = a9[1];
  if (v69 != 1)
  {
    v46 = v26;
    v47 = v26 == 0;
    v48 = v63;
    v49 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v63) + 0x100))(v47);
    goto LABEL_86;
  }

  v42 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v43 = [v42 isEnabled];

  if (!v43)
  {
    goto LABEL_85;
  }

  v44 = (*((*MEMORY[0x277D85000] & *a10) + 0xC0))();
  if (!(v44 >> 62))
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

LABEL_84:

LABEL_85:
    v46 = v26;
    v48 = v63;
    v49 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v63) + 0x100))(1);
    goto LABEL_86;
  }

  v50 = v44;
  v51 = __CocoaSet.count.getter();
  v44 = v50;
  if (!v51)
  {
    goto LABEL_84;
  }

LABEL_73:
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x24C1FC540](0);
LABEL_76:

    if ([v45 isFolder] & 1) != 0 || (objc_msgSend(v45, sel_doc_isCollaborationInvitation))
    {
      swift_unknownObjectRelease();
      goto LABEL_85;
    }

    v46 = v26;
    v48 = v63;
    v49 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v63) + 0x100))(0);
    swift_unknownObjectRelease();
LABEL_86:
    (*((*v49 & *v48) + 0x118))(1);
    v52 = DOCMetadataKeyValueRow.label.getter();
    if (a2)
    {
      v53 = a1;
    }

    else
    {
      v53 = 0;
    }

    if (a2)
    {
      v54 = a2;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    v55 = MEMORY[0x24C1FAD20](v53, v54);
    v56 = v49;
    v57 = v55;

    [v52 setText_];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v59 = Strong;
      (*((*v56 & *Strong) + 0x1B8))(v39, v69, v41, v40, v46, a4, a5, a6 & 1);
    }

    dispatch_group_leave(a7);
  }

  else
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v45 = *(v44 + 32);
      swift_unknownObjectRetain();
      goto LABEL_76;
    }

    __break(1u);
  }
}

void closure #2 in closure #1 in DOCMetadataView.updatedMetadataValues()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1A8))();
    v5 = *((*v3 & *v2) + 0x128);
    v6 = v5(v4);
    if (v6)
    {
      [v6 metadataViewWithDidLoadMetadataValues_];
      v6 = swift_unknownObjectRelease();
    }

    if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad) == 1)
    {
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad) = 0;
      if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing))
      {
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing);
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad) = 0;
      if (v7 == *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing) || *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing))
      {
        goto LABEL_11;
      }
    }

    v8 = v5(v6);
    if (v8)
    {
      [v8 metadataViewDidFinishPreheat_];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_11;
  }
}

id DOCLevelOfDetailButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCMetadataView.__ivar_destroyer()
{

  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_metadataViewDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_configuration);
}

id DOCMetadataKeyValueRow.accessibilityElementWithValue.getter()
{
  v0 = *(DOCMetadataKeyValueRow.value.getter() + 24);

  return v0;
}

void specialized DOCViewDecorator<>.changeSizeAffectingValue<A>(_:_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v19 = *(v2 + 24);
  v20 = v19;
  v5 = v19;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *v7;
  v6(&v18, 0);

  if (v8)
  {
    if (a2)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
      v10 = v9;
      v11 = a2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {

        v5 = v10;
        goto LABEL_9;
      }
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v18 = a2;
  v13 = a2;
  swift_setAtWritableKeyPath();
  v14 = *(v3 + 16);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v15 = v5;
  v16 = v14;
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {
    v5 = v20;
  }

  else
  {
    [v16 invalidateIntrinsicContentSize];

    v5 = v20;
  }

LABEL_9:
}

id key path getter for UILabel.attributedText : UILabel@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attributedText];
  *a2 = result;
  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Date();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Date() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DOCSearchSuggestion();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO3key_So7DOCNode_p5valuetMd, &_s26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO3key_So7DOCNode_p5valuetMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMd, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v8, v9);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v48 = &v34 - v13;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v14, v15);
  v47 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v45 = *(v16 + 16);
    v46 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v42 = (v16 + 32);
    v43 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v41 = -v20;
    v23 = a1 - a3;
    v35 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v39 = v22;
    v40 = a3;
    v37 = v24;
    v38 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v47;
      v27 = v45;
      (v45)(v47, v24, v8, v17);
      v28 = v48;
      v27(v48, v25, v8);
      lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v29 = dispatch thunk of static Comparable.< infix(_:_:)();
      v30 = *v21;
      (*v21)(v28, v8);
      v30(v26, v8);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v40 + 1;
        v22 = &v39[v35];
        v23 = v38 - 1;
        v24 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v25, v32, v8);
      v25 += v41;
      v24 += v41;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
  MEMORY[0x28223BE20](v37, v8);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v23, v18, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      outlined init with copy of DOCGridLayout.Spec?(v21, v13, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      v24 = static IndexPath.< infix(_:_:)();
      outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      outlined init with take of (key: URL, value: FPItem)(v23, v36, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of (key: URL, value: FPItem)(v25, v21, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
      v21 += v34;
      v23 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v8 = type metadata accessor for IndexPath();
  MEMORY[0x28223BE20](v8, v9);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v47 = &v33 - v13;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v14, v15);
  v46 = &v33 - v18;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v44 = *(v16 + 16);
    v45 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v22 = (v19 + v20 * (a3 - 1));
    v40 = -v20;
    v41 = (v16 + 32);
    v23 = a1 - a3;
    v42 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v38 = v22;
    v39 = a3;
    v36 = v24;
    v37 = v23;
    while (1)
    {
      v25 = v46;
      v26 = v44;
      (v44)(v46, v24, v8, v17);
      v27 = v47;
      v26(v47, v22, v8);
      v28 = static IndexPath.< infix(_:_:)();
      v29 = *v21;
      (*v21)(v27, v8);
      v29(v25, v8);
      if ((v28 & 1) == 0)
      {
LABEL_4:
        a3 = v39 + 1;
        v22 = &v38[v34];
        v23 = v37 - 1;
        v24 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v22, v31, v8);
      v22 += v40;
      v24 += v40;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = MEMORY[0x277D85000];
LABEL_5:
    v19 = a3;
    v8 = *(v4 + 8 * a3);
    v17 = v6;
    v18 = v5;
    while (1)
    {
      v9 = *v5;
      v10 = *((*v7 & *v8) + 0x1B8);
      v11 = v8;
      v12 = v9;
      v13 = v10();
      LOBYTE(v9) = (*((*v7 & *v12) + 0x1B8))();

      if (v13 >= v9)
      {
LABEL_4:
        a3 = v19 + 1;
        v5 = v18 + 8;
        v6 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v14;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
  MEMORY[0x28223BE20](v37, v8);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      outlined init with copy of DOCGridLayout.Spec?(v23, v18, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
      outlined init with copy of DOCGridLayout.Spec?(v21, v13, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
      v24 = static Date.> infix(_:_:)();
      outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
      outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      outlined init with take of (key: URL, value: FPItem)(v23, v36, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of (key: URL, value: FPItem)(v25, v21, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
      v21 += v34;
      v23 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = a1 - a3;
    v7 = (*a4 + a3);
LABEL_5:
    v8 = *(v5 + v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      if (v8 > 1u)
      {

        if (!v5)
        {
LABEL_14:
          __break(1u);
          return;
        }
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_4;
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      v8 = *v9;
      *v9 = *(v9 - 1);
      *--v9 = v8;
      if (__CFADD__(v10++, 1))
      {
LABEL_4:
        ++v4;
        --v6;
        ++v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 menuSortOrder];
      v13 = [v11 menuSortOrder];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v51 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v51, v8);
  v58 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v11);
  v14 = &v45[-v13];
  v46 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v50 = *a4;
    v16 = v50 + 40 * a3;
    v17 = a1 - a3;
LABEL_6:
    v49 = a3;
    v47 = v17;
    v18 = v17;
    v48 = v16;
    v19 = v58;
    while (1)
    {
      v69 = v18;
      outlined init with copy of DOCSidebarItemIconProvider(v16, &v66);
      v60 = v16;
      v59 = (v16 - 40);
      outlined init with copy of DOCSidebarItemIconProvider(v16 - 40, v63);
      v20 = v67;
      v21 = v68;
      v22 = __swift_project_boxed_opaque_existential_1(&v66, v67);
      v23 = *(v21 + 16);
      v54 = v22;
      v57 = v20;
      v56 = v21;
      v55 = v23;
      v23(v20, v21);
      v25 = v64;
      v24 = v65;
      v26 = __swift_project_boxed_opaque_existential_1(v63, v64);
      v27 = *(v24 + 16);
      v52 = v26;
      v53 = v27;
      v27(v25, v24);
      v28 = static Date.< infix(_:_:)();
      v29 = *v15;
      v30 = v19;
      v31 = v51;
      (*v15)(v30, v51);
      v29(v14, v31);
      if (v28)
      {
        __swift_destroy_boxed_opaque_existential_0(v63);
        __swift_destroy_boxed_opaque_existential_0(&v66);
        v19 = v58;
        v32 = v69;
        v33 = v60;
      }

      else
      {
        v55(v57, v56);
        v34 = v58;
        v53(v25, v24);
        v35 = static Date.> infix(_:_:)();
        v29(v34, v31);
        v29(v14, v31);
        if (v35)
        {
          __swift_destroy_boxed_opaque_existential_0(v63);
          __swift_destroy_boxed_opaque_existential_0(&v66);
LABEL_5:
          a3 = v49 + 1;
          v16 = v48 + 40;
          v17 = v47 - 1;
          if (v49 + 1 == v46)
          {
            return;
          }

          goto LABEL_6;
        }

        v36 = v67;
        v37 = v68;
        __swift_project_boxed_opaque_existential_1(&v66, v67);
        (*(v37 + 8))(v62, v36, v37);
        v38 = AnyHashable.hashValue.getter();
        outlined destroy of AnyHashable(v62);
        v39 = v64;
        v40 = v65;
        __swift_project_boxed_opaque_existential_1(v63, v64);
        (*(v40 + 8))(v61, v39, v40);
        v41 = AnyHashable.hashValue.getter();
        outlined destroy of AnyHashable(v61);
        __swift_destroy_boxed_opaque_existential_0(v63);
        __swift_destroy_boxed_opaque_existential_0(&v66);
        v42 = v38 < v41;
        v19 = v58;
        v32 = v69;
        v33 = v60;
        if (!v42)
        {
          goto LABEL_5;
        }
      }

      if (!v50)
      {
        break;
      }

      outlined init with take of DOCDSCopyEngineConnection(v33, &v66);
      v16 = v59;
      v43 = v59[1];
      *v33 = *v59;
      *(v33 + 16) = v43;
      *(v33 + 32) = *(v16 + 32);
      outlined init with take of DOCDSCopyEngineConnection(&v66, v16);
      v44 = __CFADD__(v32, 1);
      v18 = v32 + 1;
      if (v44)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v126 = a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v131 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v138 = &v123 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v144 = &v123 - v17;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18, v19);
  v143 = &v123 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_94:
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
    }

    v146 = v24;
    v119 = *(v24 + 2);
    if (v119 >= 2)
    {
      while (*a3)
      {
        v120 = *&v24[16 * v119];
        v121 = *&v24[16 * v119 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v120, *a3 + v9[9] * *&v24[16 * v119 + 16], *a3 + v9[9] * v121, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v121 < v120)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
        }

        if (v119 - 2 >= *(v24 + 2))
        {
          goto LABEL_120;
        }

        v122 = &v24[16 * v119];
        *v122 = v120;
        *(v122 + 1) = v121;
        v146 = v24;
        specialized Array.remove(at:)(v119 - 1);
        v24 = v146;
        v119 = *(v146 + 2);
        if (v119 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v123 = a4;
  v23 = 0;
  v141 = (v9 + 1);
  v142 = v9 + 2;
  v140 = (v9 + 4);
  v24 = MEMORY[0x277D84F90];
  v128 = v9;
  v145 = v8;
  v124 = a3;
  while (1)
  {
    v25 = v23;
    v129 = v24;
    if (v23 + 1 >= v22)
    {
      v38 = v23 + 1;
    }

    else
    {
      v136 = v22;
      v125 = v5;
      v26 = *a3;
      v27 = v9[9];
      v28 = v23;
      v127 = v23;
      v29 = &v26[v27 * (v23 + 1)];
      v30 = v8;
      v31 = v9[2];
      v32 = v143;
      v31(v143, v29, v30, v20);
      v33 = &v26[v27 * v28];
      v34 = v144;
      v135 = v31;
      (v31)(v144, v33, v30);
      v134 = lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      LODWORD(v137) = dispatch thunk of static Comparable.< infix(_:_:)();
      v35 = v9[1];
      v35(v34, v30);
      v133 = v35;
      v35(v32, v30);
      v36 = v127 + 2;
      v139 = v27;
      v37 = &v26[v27 * (v127 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        v39 = v143;
        v40 = v9;
        v41 = v145;
        v42 = v135;
        (v135)(v143, v37, v145);
        v43 = v144;
        v42(v144, v29, v41);
        v44 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v45 = v133;
        (v133)(v43, v41);
        v46 = v41;
        v9 = v40;
        v45(v39, v46);
        ++v36;
        v37 += v139;
        v29 += v139;
        if ((v137 & 1) != v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v5 = v125;
      v24 = v129;
      v8 = v145;
      a3 = v124;
      v25 = v127;
      if (v137)
      {
        if (v38 < v127)
        {
          goto LABEL_123;
        }

        if (v127 < v38)
        {
          v47 = v38;
          v48 = v139 * (v38 - 1);
          v49 = v38 * v139;
          v136 = v38;
          v50 = v127;
          v51 = v127 * v139;
          do
          {
            if (v50 != --v47)
            {
              v53 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v137 = *v140;
              v137(v131, &v53[v51], v145);
              if (v51 < v48 || &v53[v51] >= &v53[v49])
              {
                v52 = v145;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v52 = v145;
                if (v51 != v48)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v137(&v53[v48], v131, v52);
              v9 = v128;
              v24 = v129;
            }

            ++v50;
            v48 -= v139;
            v49 -= v139;
            v51 += v139;
          }

          while (v50 < v47);
          v5 = v125;
          v8 = v145;
          v25 = v127;
          v38 = v136;
        }
      }
    }

    v54 = a3[1];
    if (v38 < v54)
    {
      if (__OFSUB__(v38, v25))
      {
        goto LABEL_122;
      }

      if (v38 - v25 < v123)
      {
        if (__OFADD__(v25, v123))
        {
          goto LABEL_124;
        }

        if (v25 + v123 >= v54)
        {
          v55 = a3[1];
        }

        else
        {
          v55 = v25 + v123;
        }

        if (v55 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v38 != v55)
        {
          break;
        }
      }
    }

    v56 = v38;
    if (v38 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    }

    v58 = *(v24 + 2);
    v57 = *(v24 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v24);
    }

    *(v24 + 2) = v59;
    v60 = &v24[16 * v58];
    *(v60 + 4) = v25;
    *(v60 + 5) = v56;
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_131;
    }

    v132 = v56;
    if (v58)
    {
      while (1)
      {
        v61 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v24 + 4);
          v63 = *(v24 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_52:
          if (v65)
          {
            goto LABEL_110;
          }

          v78 = &v24[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_113;
          }

          v84 = &v24[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_117;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v59 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v88 = &v24[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_66:
        if (v83)
        {
          goto LABEL_112;
        }

        v91 = &v24[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_115;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_73:
        v99 = v61 - 1;
        if (v61 - 1 >= v59)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v100 = *&v24[16 * v99 + 32];
        v101 = *&v24[16 * v61 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v100, *a3 + v9[9] * *&v24[16 * v61 + 32], *a3 + v9[9] * v101, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v101 < v100)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
        }

        if (v99 >= *(v24 + 2))
        {
          goto LABEL_107;
        }

        v102 = &v24[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v146 = v24;
        specialized Array.remove(at:)(v61);
        v24 = v146;
        v59 = *(v146 + 2);
        v8 = v145;
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v24[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_108;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_109;
      }

      v73 = &v24[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_111;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_114;
      }

      if (v77 >= v69)
      {
        v95 = &v24[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_118;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v132;
    if (v132 >= v22)
    {
      goto LABEL_94;
    }
  }

  v125 = v5;
  v103 = *a3;
  v104 = v9[9];
  v139 = v9[2];
  v105 = v103 + v104 * (v38 - 1);
  v106 = -v104;
  v127 = v25;
  v107 = v25 - v38;
  v137 = v103;
  v130 = v104;
  v108 = v103 + v38 * v104;
  v132 = v55;
LABEL_85:
  v135 = v105;
  v136 = v38;
  v133 = v108;
  v134 = v107;
  v109 = v105;
  while (1)
  {
    v110 = v143;
    v111 = v139;
    (v139)(v143, v108, v8);
    v112 = v144;
    v111(v144, v109, v145);
    lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v113 = dispatch thunk of static Comparable.< infix(_:_:)();
    v114 = *v141;
    v115 = v112;
    v8 = v145;
    (*v141)(v115, v145);
    v114(v110, v8);
    if ((v113 & 1) == 0)
    {
LABEL_84:
      v38 = v136 + 1;
      v105 = &v135[v130];
      v107 = v134 - 1;
      v108 = &v133[v130];
      v56 = v132;
      if (v136 + 1 != v132)
      {
        goto LABEL_85;
      }

      v5 = v125;
      a3 = v124;
      v9 = v128;
      v24 = v129;
      v25 = v127;
      if (v132 < v127)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v116 = *v140;
    v117 = v138;
    (*v140)(v138, v108, v8);
    swift_arrayInitWithTakeFrontToBack();
    v116(v109, v117, v8);
    v109 += v106;
    v108 += v106;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, char *a3, uint64_t *__dst, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - a2;
  v12 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (__dst != a2 || &a2[32 * v13] <= __dst)
    {
      v32 = __dst;
      memmove(__dst, a2, 32 * v13);
      __dst = v32;
    }

    v15 = &__dst[4 * v13];
    v14 = __dst;
    if (v11 < 32 || v6 <= v7)
    {
      v31 = v6;
      goto LABEL_53;
    }

    v63 = __dst;
    __dstb = v6;
    v60 = v7;
    while (1)
    {
      v33 = 0;
      v34 = v15;
      v61 = __dstb - 4;
      v62 = v5;
      while (1)
      {
        v35 = v34;
        v36 = &v34[v33];
        v37 = &v34[v33 - 4];
        v39 = v34[v33 - 3];
        v38 = v34[v33 - 2];
        v40 = *(v36 - 1);
        v71 = *v37;
        v72 = v39;
        v73 = v38;
        v74 = v40;
        v41 = *(__dstb - 3);
        v42 = *(__dstb - 2);
        v43 = *(__dstb - 1);
        v67 = *(__dstb - 4);
        v68 = v41;
        v69 = v42;
        v70 = v43;

        v44 = v75;
        v45 = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(&v71, &v67, a5);
        v75 = v44;
        if (v44)
        {

          v53 = v63;
          v31 = __dstb;
          v54 = v35 - v63 + v33 * 8;
          v55 = v54 + 31;
          if (v54 >= 0)
          {
            v55 = v35 - v63 + v33 * 8;
          }

          v56 = v55 >> 5;
          if (__dstb < v63 || __dstb >= (v63 + (v55 & 0xFFFFFFFFFFFFFFE0)))
          {
            v52 = 32 * v56;
          }

          else
          {
            if (__dstb == v63)
            {
              goto LABEL_61;
            }

            v52 = 32 * v56;
          }

          goto LABEL_60;
        }

        v46 = v45;

        if (v46)
        {
          break;
        }

        v47 = &v62[v33 * 8];
        v34 = v35;
        if (&v62[v33 * 8] != v36)
        {
          v48 = *(v37 + 16);
          *(v47 - 2) = *v37;
          *(v47 - 1) = v48;
        }

        v33 -= 4;
        v15 = &v35[v33];
        v14 = v63;
        if (&v35[v33] <= v63)
        {
          v31 = __dstb;
LABEL_53:
          v57 = v15 - v14;
          v58 = v57 + 31;
          if (v57 >= 0)
          {
            v58 = v57;
          }

          if (v31 >= v14 && v31 < (v14 + (v58 & 0xFFFFFFFFFFFFFFE0)) && v31 == v14)
          {
            goto LABEL_61;
          }

          v52 = 32 * (v58 >> 5);
LABEL_59:
          v53 = v14;
LABEL_60:
          memmove(v31, v53, v52);
          goto LABEL_61;
        }
      }

      v5 = &v62[v33 * 8 - 32];
      if (&v62[v33 * 8] != __dstb)
      {
        v49 = *(__dstb - 1);
        *v5 = *v61;
        *&v62[v33 * 8 - 16] = v49;
      }

      v15 = &v35[v33];
      v14 = v63;
      if (&v35[v33] > v63)
      {
        __dstb -= 4;
        if (v61 > v60)
        {
          continue;
        }
      }

      v15 = &v35[v33];
      v31 = v61;
      goto LABEL_53;
    }
  }

  v14 = __dst;
  if (__dst != __src || &__src[32 * v10] <= __dst)
  {
    memmove(__dst, __src, 32 * v10);
  }

  v15 = &v14[4 * v10];
  if (v8 < 32 || v6 >= v5)
  {
LABEL_21:
    v31 = v7;
    goto LABEL_53;
  }

  __dsta = &v14[4 * v10];
  while (1)
  {
    v16 = v5;
    v17 = v7;
    v18 = v6[1];
    v19 = v6[2];
    v20 = v6[3];
    v71 = *v6;
    v72 = v18;
    v73 = v19;
    v74 = v20;
    v21 = v14[1];
    v22 = v14[2];
    v23 = v14[3];
    v67 = *v14;
    v68 = v21;
    v69 = v22;
    v70 = v23;

    v24 = v75;
    v25 = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(&v71, &v67, a5);
    v75 = v24;
    if (v24)
    {
      break;
    }

    v26 = v25;

    if (!v26)
    {
      v27 = v14;
      v28 = v17;
      v29 = v17 == v14;
      v14 += 4;
      v5 = v16;
      if (v29)
      {
        goto LABEL_19;
      }

LABEL_18:
      v30 = *(v27 + 1);
      *v28 = *v27;
      *(v28 + 1) = v30;
      goto LABEL_19;
    }

    v27 = v6;
    v28 = v17;
    v29 = v17 == v6;
    v6 += 4;
    v5 = v16;
    if (!v29)
    {
      goto LABEL_18;
    }

LABEL_19:
    v7 = (v28 + 4);
    v15 = __dsta;
    if (v14 >= __dsta || v6 >= v5)
    {
      goto LABEL_21;
    }
  }

  v50 = __dsta - v14 + 31;
  if (__dsta - v14 >= 0)
  {
    v50 = __dsta - v14;
  }

  v51 = v50 >> 5;
  if (v7 < v14 || v7 >= v14 + (v50 & 0xFFFFFFFFFFFFFFE0))
  {
    v52 = 32 * v51;
    v31 = v7;
    v53 = v14;
    goto LABEL_60;
  }

  if (v7 != v14)
  {
    v52 = 32 * v51;
    v31 = v7;
    goto LABEL_59;
  }

LABEL_61:

  return 1;
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for Date();
  v8 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v9);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          LOBYTE(v36) = dispatch thunk of static Comparable.< infix(_:_:)();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        (v47)(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        LOBYTE(v23) = dispatch thunk of static Comparable.< infix(_:_:)();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= &v45[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = &v45[a4];
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v56, &v55, &v54);
}

{
  v46 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
  MEMORY[0x28223BE20](v45, v7);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v46 - a2;
  if (v46 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = a4 + v18;
      v41 = a4;
      v42 = -v14;
      v40 = a1;
      do
      {
        v38 = v26;
        v27 = a2;
        v28 = a2 + v24;
        v43 = v27;
        while (1)
        {
          v30 = v46;
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v38;
            goto LABEL_60;
          }

          v39 = v26;
          v46 += v24;
          v31 = v25 + v24;
          outlined init with copy of DOCGridLayout.Spec?(v31, v12, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v44;
          outlined init with copy of DOCGridLayout.Spec?(v33, v44, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
          v36 = static IndexPath.< infix(_:_:)();
          v37 = v35;
          v12 = v34;
          outlined destroy of CharacterSet?(v37, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
          outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v46 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
            a1 = v40;
          }

          else
          {
            v28 = v32;
            a1 = v40;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v42;
          v27 = v43;
          if (!v29)
          {
            a2 = v43;
            goto LABEL_59;
          }
        }

        if (v30 < v43 || v46 >= v43)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          a1 = v40;
          v24 = v42;
        }

        else
        {
          v26 = v39;
          a1 = v40;
          a2 = v32;
          v24 = v42;
          if (v30 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_59:
    v49 = a2;
    v47 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < v46)
    {
      v42 = v14;
      do
      {
        outlined init with copy of DOCGridLayout.Spec?(a2, v12, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        v20 = v44;
        outlined init with copy of DOCGridLayout.Spec?(a4, v44, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        v21 = static IndexPath.< infix(_:_:)();
        outlined destroy of CharacterSet?(v20, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
        if (v21)
        {
          v22 = a2 + v14;
          if (a1 < a2 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v22;
        }

        else
        {
          v23 = a4 + v14;
          if (a1 < a4 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = v23;
          a4 = v23;
        }

        v14 = v42;
        a1 += v42;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v46);
    }
  }

LABEL_60:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v49, &v48, &v47, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMR);
}

{
  v46 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
  MEMORY[0x28223BE20](v45, v7);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v46 - a2;
  if (v46 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = a4 + v18;
      v41 = a4;
      v42 = -v14;
      v40 = a1;
      do
      {
        v38 = v26;
        v27 = a2;
        v28 = a2 + v24;
        v43 = v27;
        while (1)
        {
          v30 = v46;
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v38;
            goto LABEL_60;
          }

          v39 = v26;
          v46 += v24;
          v31 = v25 + v24;
          outlined init with copy of DOCGridLayout.Spec?(v31, v12, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v44;
          outlined init with copy of DOCGridLayout.Spec?(v33, v44, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
          v36 = static Date.> infix(_:_:)();
          v37 = v35;
          v12 = v34;
          outlined destroy of CharacterSet?(v37, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
          outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v46 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
            a1 = v40;
          }

          else
          {
            v28 = v32;
            a1 = v40;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v42;
          v27 = v43;
          if (!v29)
          {
            a2 = v43;
            goto LABEL_59;
          }
        }

        if (v30 < v43 || v46 >= v43)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          a1 = v40;
          v24 = v42;
        }

        else
        {
          v26 = v39;
          a1 = v40;
          a2 = v32;
          v24 = v42;
          if (v30 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_59:
    v49 = a2;
    v47 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < v46)
    {
      v42 = v14;
      do
      {
        outlined init with copy of DOCGridLayout.Spec?(a2, v12, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
        v20 = v44;
        outlined init with copy of DOCGridLayout.Spec?(a4, v44, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
        v21 = static Date.> infix(_:_:)();
        outlined destroy of CharacterSet?(v20, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
        outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMR);
        if (v21)
        {
          v22 = a2 + v14;
          if (a1 < a2 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v22;
        }

        else
        {
          v23 = a4 + v14;
          if (a1 < a4 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = v23;
          a4 = v23;
        }

        v14 = v42;
        a1 += v42;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v46);
    }
  }

LABEL_60:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v49, &v48, &v47);
}

uint64_t specialized static DOCMetadataKey.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a6 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a6 == 7)
        {
          return 1;
        }
      }

      else if (a6 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a6 == 9;
      case 10:
        return a6 == 10;
      case 11:
        return a6 == 11;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a6 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a6 == 4)
        {
          return 1;
        }
      }

      else if (a6 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 0:
        return !a6;
      case 1:
        return a6 == 1;
      case 2:
        return a6 == 2;
    }
  }

  if (a6 < 0xC)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6 || (v10 = a3, v11 = a4, v12 = a8, v13 = a7, v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), a3 = v10, a4 = v11, a7 = v13, a8 = v12, v15 = v14, result = 0, (v15 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void outlined copy of DOCMetadataKey(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 0xC)
  {
  }
}

double outlined consume of DOCMetadataKey(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

id partial apply for closure #1 in DOCMetadataView.updateArrangedViews()()
{
  v1 = *(v0 + 16);
  DOCMetadataView._reloadArrangedViews()();

  return [v1 layoutBelowIfNeeded];
}

void specialized static DOCNodeMetadataContent.metadataContent(from:levelOfDetail:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a2;
  v76 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v66[-v12];
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v66[-v16];
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v66[-v20];
  MEMORY[0x28223BE20](v22, v23);
  v74 = &v66[-v24];
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v66[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
    {
      goto LABEL_8;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_8:
    v33 = swift_allocObject();
    v33[2] = v76;
    v33[3] = a4;
    v33[4] = a1;
    v33[5] = 0;
    v33[6] = 0;
    v33[7] = 0;
    swift_bridgeObjectRetain_n();

    DOCRunInMainThread(_:)();

LABEL_9:

    return;
  }

  v72 = v25;
  v73 = v26;
  v71 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v30 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v31 = [v30 providerDomainID];
  v32 = DOCProviderDomainIDIsSharedServerDomainID();

  if (v32)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v34 = swift_allocObject();
  v36 = v75;
  v35 = v76;
  v34[2] = v30;
  v34[3] = v36;
  v34[4] = a1;
  v34[5] = v35;
  v34[6] = a4;
  swift_unknownObjectRetain();

  v37 = [v30 nodeURL];
  if (!v37)
  {
    DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)(0, partial apply for closure #1 in static DOCNodeMetadataContent.metadataContent(from:levelOfDetail:completion:), v34);
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v38 = v37;
  v68 = v34;
  v39 = v29;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v73;
  v40 = v74;
  v42 = *(v73 + 16);
  v69 = v39;
  v43 = v39;
  v44 = v72;
  v42(v74, v43, v72);
  (*(v41 + 56))(v40, 0, 1, v44);
  outlined init with copy of DOCGridLayout.Spec?(v40, v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v70 = *(v41 + 48);
  if (v70(v21, 1, v44) == 1)
  {
    outlined destroy of CharacterSet?(v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v67 = 0;
  }

  else
  {
    v67 = URL.startAccessingSecurityScopedResource()();
    (*(v41 + 8))(v21, v44);
  }

  outlined init with copy of DOCGridLayout.Spec?(v40, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v45 = v70(v17, 1, v44);
  swift_unknownObjectRetain();
  if (v45 == 1)
  {
    v47 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v46);
    v47 = v48;
    (*(v73 + 8))(v17, v44);
  }

  v49 = [objc_opt_self() pdfMetadataProviderWithNode:v30 levelOfDetail:v75 URL:v47];
  swift_unknownObjectRelease();

  outlined init with copy of DOCGridLayout.Spec?(v40, v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v50 = v70(v13, 1, v44);
  swift_unknownObjectRetain();
  if (v50 == 1)
  {
    v52 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v51);
    v52 = v53;
    (*(v73 + 8))(v13, v44);
  }

  v54 = objc_opt_self();
  v55 = v75;
  v56 = [v54 imageMetadataProviderWithNode:v30 levelOfDetail:v75 URL:v52];
  swift_unknownObjectRelease();

  v57 = specialized static DOCMediaMetadataProvider.mediaMetadataProvider(with:levelOfDetail:url:)(v30, v55, v40);
  v58 = swift_allocObject();
  v58[2] = v76;
  v58[3] = a4;
  v58[4] = a1;
  v58[5] = v49;
  v58[6] = v56;
  v58[7] = v57;
  swift_retain_n();

  swift_bridgeObjectRetain_n();
  v59 = v49;
  v60 = v56;
  v61 = v59;
  v62 = v60;
  DOCRunInMainThread(_:)();

  if (v67)
  {
    v63 = v71;
    outlined init with copy of DOCGridLayout.Spec?(v40, v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v64 = v72;
    if (v70(v63, 1, v72) == 1)
    {

      swift_unknownObjectRelease();

      outlined destroy of CharacterSet?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v73 + 8))(v69, v64);
      outlined destroy of CharacterSet?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      URL.stopAccessingSecurityScopedResource()();

      swift_unknownObjectRelease();

      outlined destroy of CharacterSet?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v65 = *(v73 + 8);
      v65(v69, v64);
      v65(v63, v64);
    }
  }

  else
  {

    swift_unknownObjectRelease();

    outlined destroy of CharacterSet?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v73 + 8))(v69, v72);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    __dst = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_91;
    }

    goto LABEL_131;
  }

  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 + 1 >= v7)
    {
      v21 = v8 + 1;
    }

    else
    {
      v126 = v7;
      v10 = *a3;
      v11 = (*a3 + 32 * (v8 + 1));
      v12 = v11[1];
      v13 = v11[2];
      v14 = v11[3];
      v135 = *v11;
      v136 = v12;
      v137 = v13;
      v138 = v14;
      v15 = (v10 + 32 * v8);
      v16 = v15[1];
      v17 = v15[2];
      v18 = v15[3];
      v131 = *v15;
      v132 = v16;
      v133 = v17;
      v134 = v18;

      LODWORD(__dst) = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(&v135, &v131, a5);
      if (v6)
      {
        swift_bridgeObjectRelease_n();

LABEL_102:

        return;
      }

      v19 = v8 + 2;
      v120 = v8;
      v122 = 32 * v8;
      v20 = (v10 + 32 * v8 + 48);
      while (1)
      {
        v21 = v126;
        if (v126 == v19)
        {
          break;
        }

        v22 = v20[3];
        v23 = v20[4];
        v24 = v20[5];
        v135 = v20[2];
        v136 = v22;
        v137 = v23;
        v138 = v24;
        v25 = *(v20 - 1);
        v26 = *v20;
        v27 = v20[1];
        v131 = *(v20 - 2);
        v132 = v25;
        v133 = v26;
        v134 = v27;

        v28 = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(&v135, &v131, a5);

        ++v19;
        v20 += 4;
        if ((__dst ^ v28))
        {
          v21 = v19 - 1;
          break;
        }
      }

      v8 = v120;
      if (__dst)
      {
        if (v21 < v120)
        {
          goto LABEL_125;
        }

        if (v120 < v21)
        {
          v29 = 32 * v21 - 16;
          v30 = v122 + 24;
          v31 = v21;
          v32 = v120;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v34 = (v33 + v30);
              v35 = (v33 + v29);
              v36 = *(v34 - 3);
              v37 = *(v34 - 1);
              v38 = *v34;
              v39 = *v35;
              *(v34 - 3) = *(v35 - 1);
              *(v34 - 1) = v39;
              *(v35 - 1) = v36;
              *v35 = v37;
              *(v35 + 1) = v38;
            }

            ++v32;
            v29 -= 32;
            v30 += 32;
          }

          while (v32 < v31);
        }
      }
    }

    v40 = a3[1];
    if (v21 >= v40)
    {
      goto LABEL_28;
    }

    if (__OFSUB__(v21, v8))
    {
      goto LABEL_121;
    }

    if (v21 - v8 >= a4)
    {
      goto LABEL_28;
    }

    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_127:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_128;
    }

    if (v8 + a4 >= v40)
    {
      v41 = a3[1];
    }

    else
    {
      v41 = v8 + a4;
    }

    if (v41 < v8)
    {
      goto LABEL_124;
    }

    if (v21 == v41)
    {
LABEL_28:
      v42 = v21;
      if (v21 < v8)
      {
        goto LABEL_120;
      }
    }

    else
    {
      __dst = v6;
      v93 = *a3;
      v94 = (*a3 + 32 * v21 - 32);
      v121 = v8;
      v124 = v41;
      v95 = v8 - v21;
      do
      {
        v127 = v21;
        v96 = (v93 + 32 * v21);
        v97 = *v96;
        v98 = v96[1];
        v99 = v96[2];
        v100 = v96[3];
        v117 = v95;
        v118 = v94;
        v101 = v95;
        do
        {
          v135 = v97;
          v136 = v98;
          v137 = v99;
          v138 = v100;
          v102 = v94[1];
          v103 = v94[2];
          v104 = v94[3];
          v131 = *v94;
          v132 = v102;
          v133 = v103;
          v134 = v104;

          v105 = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(&v135, &v131, a5);
          if (__dst)
          {
            swift_bridgeObjectRelease_n();

            return;
          }

          v106 = v105;

          if (!v106)
          {
            break;
          }

          if (!v93)
          {
            goto LABEL_127;
          }

          v97 = v94[4];
          v98 = v94[5];
          v99 = v94[6];
          v100 = v94[7];
          v107 = *(v94 + 1);
          *(v94 + 2) = *v94;
          *(v94 + 3) = v107;
          *v94 = v97;
          v94[1] = v98;
          v94[2] = v99;
          v94[3] = v100;
          v94 -= 4;
        }

        while (!__CFADD__(v101++, 1));
        v21 = v127 + 1;
        v94 = v118 + 4;
        v95 = v117 - 1;
        v42 = v124;
      }

      while (v127 + 1 != v124);
      v8 = v121;
      v6 = 0;
      if (v124 < v121)
      {
        goto LABEL_120;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v44 = *(v9 + 2);
    v43 = *(v9 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v9);
    }

    *(v9 + 2) = v45;
    v46 = &v9[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v42;
    v123 = v42;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v44)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v8 = v123;
    if (v123 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v47 = v45 - 1;
    if (v45 >= 4)
    {
      v52 = &v9[16 * v45 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_107;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_108;
      }

      v59 = &v9[16 * v45];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_110;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_113;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_119;
        }

        if (v50 < v84)
        {
          v47 = v45 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v45 == 3)
    {
      v48 = *(v9 + 4);
      v49 = *(v9 + 5);
      v58 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      v51 = v58;
LABEL_48:
      if (v51)
      {
        goto LABEL_109;
      }

      v64 = &v9[16 * v45];
      v66 = *v64;
      v65 = *(v64 + 1);
      v67 = __OFSUB__(v65, v66);
      v68 = v65 - v66;
      v69 = v67;
      if (v67)
      {
        goto LABEL_112;
      }

      v70 = &v9[16 * v47 + 32];
      v72 = *v70;
      v71 = *(v70 + 1);
      v58 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v58)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v68, v73))
      {
        goto LABEL_116;
      }

      if (v68 + v73 >= v50)
      {
        if (v50 < v73)
        {
          v47 = v45 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v74 = &v9[16 * v45];
    v76 = *v74;
    v75 = *(v74 + 1);
    v58 = __OFSUB__(v75, v76);
    v68 = v75 - v76;
    v69 = v58;
LABEL_62:
    if (v69)
    {
      goto LABEL_111;
    }

    v77 = &v9[16 * v47];
    v79 = *(v77 + 4);
    v78 = *(v77 + 5);
    v58 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if (v58)
    {
      goto LABEL_114;
    }

    if (v80 < v68)
    {
      goto LABEL_3;
    }

LABEL_69:
    v85 = v47 - 1;
    if (v47 - 1 >= v45)
    {
      break;
    }

    v86 = *a3;
    if (!*a3)
    {
      goto LABEL_126;
    }

    v87 = *&v9[16 * v85 + 32];
    v88 = *&v9[16 * v47 + 40];
    v89 = (v86 + 32 * v87);
    v90 = (v86 + 32 * *&v9[16 * v47 + 32]);
    v91 = (v86 + 32 * v88);

    specialized _merge<A>(low:mid:high:buffer:by:)(v89, v90, v91, __dst, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_102;
    }

    if (v88 < v87)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    if (v85 >= *(v9 + 2))
    {
      goto LABEL_106;
    }

    v92 = &v9[16 * v85];
    *(v92 + 4) = v87;
    *(v92 + 5) = v88;
    v139 = v9;
    specialized Array.remove(at:)(v47);
    v9 = v139;
    v45 = *(v139 + 2);
    if (v45 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
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
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
LABEL_91:
  v139 = v9;
  v109 = *(v9 + 2);
  if (v109 < 2)
  {
LABEL_99:

    swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v110 = *a3;
      if (!*a3)
      {
        break;
      }

      v111 = *&v9[16 * v109];
      v112 = *&v9[16 * v109 + 24];
      v113 = (v110 + 32 * v111);
      v114 = (v110 + 32 * *&v9[16 * v109 + 16]);
      v115 = (v110 + 32 * v112);

      specialized _merge<A>(low:mid:high:buffer:by:)(v113, v114, v115, __dst, a5);
      if (v6)
      {
        goto LABEL_99;
      }

      if (v112 < v111)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      }

      if (v109 - 2 >= *(v9 + 2))
      {
        goto LABEL_118;
      }

      v116 = &v9[16 * v109];
      *v116 = v111;
      *(v116 + 1) = v112;
      v139 = v9;
      specialized Array.remove(at:)(v109 - 1);
      v9 = v139;
      v109 = *(v139 + 2);
      if (v109 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_128:

    __break(1u);
LABEL_129:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_130:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_131:
    swift_bridgeObjectRelease_n();
    __break(1u);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v26 = a5;
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 32 * a3 - 32);
    v8 = a1 - a3;
LABEL_4:
    v22 = v7;
    v23 = a3;
    v9 = (v6 + 32 * a3);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v21 = v8;
    while (1)
    {
      v25[0] = v10;
      v25[1] = v11;
      v25[2] = v12;
      v25[3] = v13;
      v14 = v7[1];
      v15 = v7[2];
      v16 = v7[3];
      v24[0] = *v7;
      v24[1] = v14;
      v24[2] = v15;
      v24[3] = v16;

      v17 = closure #2 in DOCNodeMetadataContent.orderedMetadata.getter(v25, v24, v26);

      if (v5)
      {
        break;
      }

      if (v17)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v10 = v7[4];
        v11 = v7[5];
        v12 = v7[6];
        v13 = v7[7];
        v18 = *(v7 + 1);
        *(v7 + 2) = *v7;
        *(v7 + 3) = v18;
        *v7 = v10;
        v7[1] = v11;
        v7[2] = v12;
        v7[3] = v13;
        v7 -= 4;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v23 + 1;
      v7 = v22 + 4;
      v8 = v21 - 1;
      if (v23 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5label_SS5valuetMd, &_sSS5label_SS5valuetMR);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  swift_bridgeObjectRelease_n();
}

{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t specialized MutableCollection<>.sort(by:)(void **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

void specialized DOCNodeMetadataContent.orderedMetadata.getter(void *a1, void *a2, void *a3)
{
  v3 = a1;
  if (!a1)
  {
    if (a2)
    {
      v3 = a2;
      v4 = a2;
    }

    else
    {
      if (!a3)
      {
        return;
      }

      v3 = a3;
    }

    a1 = 0;
  }

  v5 = a1;
  v6 = [v3 metadataValues];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = [v3 displaySortOrder];
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  v38 = v7;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v7 + 64;
  v14 = v12 & *(v7 + 64);
  v15 = (v11 + 63) >> 6;
  if (v14)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v13 + 8 * v16);
    ++v9;
    if (v14)
    {
      v9 = v16;
      do
      {
LABEL_14:
        v17 = (v9 << 10) | (16 * __clz(__rbit64(v14)));
        v18 = (*(v38 + 48) + v17);
        v19 = v18[1];
        v39 = *v18;
        v20 = (*(v38 + 56) + v17);
        v21 = *v20;
        v22 = v20[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
        }

        v24 = v10[2];
        v23 = v10[3];
        if (v24 >= v23 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v10);
        }

        v14 &= v14 - 1;
        v10[2] = v24 + 1;
        v25 = &v10[4 * v24];
        v25[4] = v39;
        v25[5] = v19;
        v25[6] = v21;
        v25[7] = v22;
        v41 = v10;
      }

      while (v14);
    }
  }

  v26 = v10[2];
  if (!v26)
  {
LABEL_35:

    specialized MutableCollection<>.sort(by:)(&v41, v40);
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
    return;
  }

  v27 = 0;
  while (v27 < v10[2])
  {
    v32 = &v10[4 * v27 + 4];
    v33 = *v32;
    v34 = v32[1];
    v35 = *(v40 + 16);
    v36 = (v40 + 40);
    if (v35)
    {
      while (1)
      {
        v37 = *(v36 - 1) == v33 && *v36 == v34;
        if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v36 += 2;
        if (!--v35)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v28 = one-time initialization token for UI;
      swift_bridgeObjectRetain_n();

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = static DOCLog.UI;
      v30 = static os_log_type_t.fault.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_249B9A480;
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v31 + 32) = v33;
      *(v31 + 40) = v34;
      os_log(_:dso:log:type:_:)("Unknown metadata key (%@) will be sorted alphabetically at the end", 66, 2, &dword_2493AC000, v29, v30, v31);
    }

    if (++v27 == v26)
    {
      goto LABEL_35;
    }
  }

LABEL_38:
  __break(1u);
}

uint64_t specialized DOCMetadataKey.formattedDateString(with:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v30 - v9;
  v11 = objc_opt_self();
  v12 = [v11 distantPast];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v12) = specialized Sequence<>.contains(_:)(v10, a1);
  v13 = *(v3 + 8);
  v13(v10, v2);
  if ((v12 & 1) == 0)
  {
    v14 = [v11 distantFuture];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v14) = specialized Sequence<>.contains(_:)(v10, a1);
    v13(v10, v2);
    if ((v14 & 1) == 0)
    {
      if (*(a1 + 16) == 1)
      {
        v16 = objc_opt_self();
        isa = Date._bridgeToObjectiveC()().super.isa;
        v18 = [v16 longDateStringFromDate_];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v19;
      }

      v31 = a1;

      specialized MutableCollection<>.sort(by:)(&v31);
      v20 = *(v31 + 16);
      if (v20)
      {
        v22 = *(v3 + 16);
        v21 = v3 + 16;
        v23 = v31 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
        v22(v6, v23, v2);
        v22(v10, v23 + *(v21 + 56) * (v20 - 1), v2);

        v24 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
        v25 = MEMORY[0x24C1FAD20](0x644D4D4D79, 0xE500000000000000);
        [v24 setDateTemplate_];

        v26 = Date._bridgeToObjectiveC()().super.isa;
        v27 = Date._bridgeToObjectiveC()().super.isa;
        v28 = [v24 stringFromDate:v26 toDate:v27];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13(v10, v2);
        v13(v6, v2);
        return v29;
      }
    }
  }

  return 0;
}

void specialized DOCMetadataKey.value(for:in:layoutDirection:completion:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, NSObject *a8, unint64_t a9, void *a10, void *a11, uint64_t a12)
{
  v406 = a8;
  v401._object = a7;
  v401._countAndFlagsBits = a6;
  v407 = a5;
  v402 = a4;
  v390 = a3;
  v400 = a2;
  v415 = a1;
  v405 = a12;
  v404 = a11;
  v408 = a10;
  v413 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v403 = (&v389 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v389 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v389 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v389 - v25;
  MEMORY[0x28223BE20](v27, v28);
  ObjectType = &v389 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v389 - v33;
  v35 = type metadata accessor for Date();
  v414 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v36);
  v411 = &v389 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v412 = &v389 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v410 = &v389 - v43;
  v396 = type metadata accessor for DispatchWorkItemFlags();
  v395 = *(v396 - 8);
  MEMORY[0x28223BE20](v396, v44);
  v393 = &v389 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = type metadata accessor for DispatchQoS();
  v392 = *(v394 - 8);
  MEMORY[0x28223BE20](v394, v46);
  v391 = &v389 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = type metadata accessor for UTType();
  v398 = *(v399 - 1);
  MEMORY[0x28223BE20](v399, v48);
  v397 = &v389 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = swift_allocObject();
  v51 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  *(v50 + 16) = v52;
  *(v50 + 24) = v54;
  v55 = v407;
  v409 = v50;
  if (v407 <= 5)
  {
    if (v407 <= 2)
    {
      v56 = v415;
      if (v407)
      {
        if (v407 == 1)
        {
          v158 = (*((*MEMORY[0x277D85000] & *v400) + 0x128))();
          if (v158)
          {
            swift_unknownObjectRelease();
          }

          v159 = DOCMetadataKey.localizedTitle.getter(v402, 1, v401._countAndFlagsBits, v401._object);
          specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v159, v160, 0, 0, 0, v158 == 0, v406, v413, v408, v404, v405);

          return;
        }

        if (v407 == 2)
        {
          v50 = v415 >> 62;
          if (v415 >> 62)
          {
            goto LABEL_278;
          }

          v57 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v35 = v409;
          if (v57 == 1)
          {
            goto LABEL_8;
          }

LABEL_281:
          if (v57 > 1)
          {
LABEL_293:
            v283 = v402;
            v284 = DOCMetadataKey.localizedTitle.getter(v402, 2, v401._countAndFlagsBits, v401._object);
            v286 = v285;
            v287 = DOCMetadataKey.placeholderValue.getter(v283, 2);
            v289 = v288;
            v290 = objc_allocWithZone(MEMORY[0x277CCA898]);
            v291 = MEMORY[0x24C1FAD20](v287, v289);

            v292 = [v290 initWithString_];

            specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v284, v286, v292, 0, 0, 1, v406, v413, v408, v404, v405);

            v293 = dispatch_group_create();
            v294 = swift_allocObject();
            v413 = v294;
            *(v294 + 16) = 0;
            v295 = (v294 + 16);
            v296 = swift_allocObject();
            v412 = v296;
            *(v296 + 16) = 1;
            v297 = (v296 + 16);
            v298 = v415;
            if (v50)
            {
              v299 = __CocoaSet.count.getter();
            }

            else
            {
              v299 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            swift_beginAccess();
            v300 = swift_beginAccess();
            if (v299)
            {
              v301 = 0;
              v302 = (v298 & 0xC000000000000001);
              v414 = v298 & 0xFFFFFFFFFFFFFF8;
              v410 = v295;
              v411 = v297;
              v408 = (v298 & 0xC000000000000001);
              do
              {
                if (v302)
                {
                  v300 = MEMORY[0x24C1FC540](v301, v298);
                  v303 = v300;
                  v304 = v301 + 1;
                  if (__OFADD__(v301, 1))
                  {
LABEL_312:
                    __break(1u);
                    break;
                  }
                }

                else
                {
                  if (v301 >= *(v414 + 16))
                  {
                    __break(1u);
LABEL_320:
                    __break(1u);
LABEL_321:
                    if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
                    {
                      goto LABEL_289;
                    }

LABEL_23:
                    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (ObjectType & 0xC000000000000001) == 0, ObjectType);
                    if ((ObjectType & 0xC000000000000001) != 0)
                    {
                      MEMORY[0x24C1FC540](0, ObjectType);
                    }

                    else
                    {
                      swift_unknownObjectRetain();
                    }

                    swift_getObjectType();
                    if (DOCNode.areDiskPropertiesSupported.getter())
                    {
                      v77 = v402;
                      object = v401._object;
                      countAndFlagsBits = v401._countAndFlagsBits;
                      v80 = DOCMetadataKey.localizedTitle.getter(v402, 8, v401._countAndFlagsBits, v401._object);
                      v82 = v81;
                      v83 = DOCMetadataKey.placeholderValue.getter(v77, 8);
                      v85 = v84;
                      v86 = objc_allocWithZone(MEMORY[0x277CCA898]);
                      v87 = MEMORY[0x24C1FAD20](v83, v85);

                      v88 = [v86 initWithString_];

                      specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v80, v82, v88, 0, 0, 1, v406, v413, v408, v404, v405);

                      v89 = swift_allocObject();
                      swift_unknownObjectWeakInit();
                      v90 = swift_allocObject();
                      v90[2] = v89;
                      v90[3] = v77;
                      v90[4] = 8;
                      v90[5] = countAndFlagsBits;
                      v91 = v409;
                      v90[6] = object;
                      v90[7] = v91;
                      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

                      v92 = static OS_dispatch_queue.main.getter();
                      v415 = v92;
                      v93 = partial apply for closure #9 in DOCMetadataKey.value(for:in:layoutDirection:completion:);
                      goto LABEL_147;
                    }

LABEL_208:
                    swift_unknownObjectRelease();
                    goto LABEL_289;
                  }

                  v303 = *(v298 + 8 * v301 + 32);
                  v300 = swift_unknownObjectRetain();
                  v304 = v301 + 1;
                  if (__OFADD__(v301, 1))
                  {
                    goto LABEL_312;
                  }
                }

                dispatch_group_enter(v293);
                ObjectType = swift_getObjectType();
                if (([v303 isFolder] & 1) != 0 || (v305 = objc_msgSend(v303, sel_fileSize)) == 0)
                {
                  if ([v303 isFolder] && (DOCNode.isFolderSizingSupported.getter() & 1) != 0)
                  {
                    v308 = swift_allocObject();
                    v309 = v299;
                    v310 = v293;
                    v311 = v412;
                    v308[2] = v413;
                    v308[3] = v311;
                    v308[4] = v310;
                    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

                    v293 = v310;
                    v299 = v309;

                    v312 = v293;
                    v313 = static OS_dispatch_queue.main.getter();
                    DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(v313, partial apply for closure #1 in closure #3 in DOCMetadataKey.value(for:in:layoutDirection:completion:), v308, ObjectType);
                    v295 = v410;
                    v297 = v411;

                    v302 = v408;
                  }

                  else
                  {
                    *v297 = 0;
                    dispatch_group_leave(v293);
                  }
                }

                else
                {
                  v306 = v305;
                  v307 = [v305 longLongValue];
                  if (__OFADD__(*v295, v307))
                  {
                    goto LABEL_320;
                  }

                  *v295 += v307;
                  dispatch_group_leave(v293);
                }

                v300 = swift_unknownObjectRelease();
                ++v301;
                v298 = v415;
              }

              while (v304 != v299);
            }

            v314 = v400;
            if (*(v400 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForInitialMetadataLoad))
            {
              *(v400 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing) = 0;
            }

            else
            {
              v315 = *(v400 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing);
              *(v400 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_preheatWaitingForSizing) = 0;
              if (v315)
              {
                v316 = (*((*MEMORY[0x277D85000] & *v314) + 0x128))(v300);
                if (v316)
                {
                  [v316 metadataViewDidFinishPreheat_];
                  swift_unknownObjectRelease();
                }
              }
            }

            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
            v415 = static OS_dispatch_queue.main.getter();
            v317 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v318 = swift_allocObject();
            v319 = v413;
            v320 = v409;
            v318[2] = v412;
            v318[3] = v320;
            v318[4] = v319;
            v318[5] = v317;
            v321 = v402;
            v318[6] = v402;
            v318[7] = 2;
            v322 = v401._object;
            v323 = v401._countAndFlagsBits;
            v318[8] = v401._countAndFlagsBits;
            v318[9] = v322;
            v424 = partial apply for closure #4 in DOCMetadataKey.value(for:in:layoutDirection:completion:);
            v425 = v318;
            aBlock._countAndFlagsBits = MEMORY[0x277D85DD0];
            aBlock._object = 1107296256;
            v422 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v423 = &block_descriptor_168;
            v324 = _Block_copy(&aBlock);
            outlined copy of DOCMetadataKey(v321, 2uLL, v323, v322);

            v325 = v391;
            static DispatchQoS.unspecified.getter();
            v416 = MEMORY[0x277D84F90];
            lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
            v326 = v393;
            v327 = v396;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v328 = v415;
            OS_dispatch_group.notify(qos:flags:queue:execute:)();
            _Block_release(v324);

            (*(v395 + 8))(v326, v327);
            (*(v392 + 8))(v325, v394);

            goto LABEL_292;
          }

LABEL_282:
          if (v50)
          {
            goto LABEL_284;
          }

          v281 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_285:
          if (!v281)
          {
            goto LABEL_289;
          }

          v35 = v415;
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v415 & 0xC000000000000001) == 0, v415);
          if ((v35 & 0xC000000000000001) == 0)
          {
            swift_unknownObjectRetain();
            goto LABEL_288;
          }

LABEL_379:
          MEMORY[0x24C1FC540](0, v35);
LABEL_288:
          swift_getObjectType();
          v282 = DOCNode.areDiskPropertiesSupported.getter();
          swift_unknownObjectRelease();
          if (v282)
          {
            goto LABEL_289;
          }

          goto LABEL_293;
        }

LABEL_152:
        v194 = String.init(_:)(*MEMORY[0x277CD3388]);
        if (v194._countAndFlagsBits == v402 && v194._object == v55)
        {
        }

        else
        {
          v205 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v205 & 1) == 0)
          {
            goto LABEL_212;
          }
        }

        v206 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BD07A0);
        v207 = [objc_opt_self() bundleWithIdentifier_];

        if (v207)
        {
          v208 = v401._object;
          v209 = v401._countAndFlagsBits;
          aBlock = v401;
          v419 = 0x2F2F3A7370747468;
          v420 = 0xE800000000000000;
          v417 = 0x2F2F3A70747468;
          v418 = 0xE700000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v210 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v211 = MEMORY[0x24C1FAD20](v210);

          v212 = MEMORY[0x24C1FAD20](0x536567616D494743, 0xED0000656372756FLL);
          v213 = [v207 localizedStringForKey:v211 value:0 table:v212];

          v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v216 = v215;

          v217 = v208;
          v218 = v209;
LABEL_213:
          v219 = DOCMetadataKey.localizedTitle.getter(v402, v55, v218, v217);
          v221 = v220;
          v222 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v223 = MEMORY[0x24C1FAD20](v214, v216);

          v224 = [v222 initWithString_];

          specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v219, v221, v224, 0, 0, 0, v406, v413, v408, v404, v405);

          return;
        }

LABEL_212:
        v217 = v401._object;

        v218 = v401._countAndFlagsBits;
        v214 = v401._countAndFlagsBits;
        v216 = v217;
        goto LABEL_213;
      }

      if (v415 >> 62)
      {
        v109 = __CocoaSet.count.getter();
        if (v109 == 1)
        {
          v332 = __CocoaSet.count.getter();
          v56 = v415;
          if (v332)
          {
            goto LABEL_58;
          }
        }

        aBlock._countAndFlagsBits = MEMORY[0x277D84F90];
        v225 = __CocoaSet.count.getter();
        v56 = v415;
        if (v225)
        {
LABEL_215:
          v226 = 0;
          v50 = v56 & 0xC000000000000001;
          ObjectType = v56 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v50)
            {
              v227 = MEMORY[0x24C1FC540](v226, v415);
              v228 = v226 + 1;
              if (__OFADD__(v226, 1))
              {
                goto LABEL_225;
              }
            }

            else
            {
              if (v226 >= *(ObjectType + 16))
              {
                goto LABEL_277;
              }

              v227 = *(v415 + 8 * v226 + 32);
              swift_unknownObjectRetain();
              v228 = v226 + 1;
              if (__OFADD__(v226, 1))
              {
LABEL_225:
                __break(1u);
                goto LABEL_226;
              }
            }

            if ([v227 isFolder])
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

            ++v226;
          }

          while (v228 != v225);
          v35 = aBlock._countAndFlagsBits;
          goto LABEL_334;
        }
      }

      else
      {
        v109 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v109 == 1)
        {
LABEL_58:
          if ((v56 & 0xC000000000000001) != 0)
          {
            v110 = MEMORY[0x24C1FC540](0);
            goto LABEL_61;
          }

          if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v110 = *(v56 + 32);
            swift_unknownObjectRetain();
LABEL_61:
            swift_getObjectType();
            v111 = [v110 contentType];
            v112 = v397;
            static UTType._unconditionallyBridgeFromObjectiveC(_:)();

            v114 = UTType.capitalizedSentenceLocalizedDescription.getter(v113);
            v116 = v115;
            (*(v398 + 8))(v112, v399);
            aBlock._countAndFlagsBits = v114;
            aBlock._object = v116;
            if ((DOCNode.areDiskPropertiesSupported.getter() & 1) == 0)
            {
              goto LABEL_64;
            }

            v117 = _DocumentManagerBundle();
            if (v117)
            {
              v118 = v117;
              v428._object = 0x8000000249BD0910;
              v119._countAndFlagsBits = 0x656D756C6F56;
              v120.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v120.value._object = 0xEB00000000656C62;
              v428._countAndFlagsBits = 0xD000000000000058;
              v119._object = 0xE600000000000000;
              v121._countAndFlagsBits = 0;
              v121._object = 0xE000000000000000;
              v122 = NSLocalizedString(_:tableName:bundle:value:comment:)(v119, v120, v118, v121, v428);

              aBlock = v122;
              v116 = v122._object;
LABEL_64:
              v123 = [v110 cachedDomain];
              if (v123)
              {
                v124 = v123;
                v125 = [v123 isUsingFPFS];

                if (v125)
                {
                  if ([v110 isRootItem] && DOCIsInternalBuild() && v116)
                  {
                    MEMORY[0x24C1FAEA0](0xD000000000000010, 0x8000000249BD08F0);
                    v116 = aBlock._object;
                  }
                }
              }

              v126 = DOCMetadataKey.localizedTitle.getter(v402, 0, v401._countAndFlagsBits, v401._object);
              v128 = v127;
              if (v116)
              {
                v129 = aBlock._countAndFlagsBits;
                v130 = v116;
LABEL_246:
                v252 = objc_allocWithZone(MEMORY[0x277CCA898]);

                v253 = MEMORY[0x24C1FAD20](v129, v130);

                v254 = [v252 initWithString_];

                specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v126, v128, v254, 0, 0, 0, v406, v413, v408, v404, v405);

                swift_unknownObjectRelease();
                return;
              }

              v246 = _DocumentManagerBundle();
              if (v246)
              {
                v247 = v246;
                v429._object = 0x8000000249BD08D0;
                v248._countAndFlagsBits = 0x746E656D75636F44;
                v249.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                v249.value._object = 0xEB00000000656C62;
                v429._countAndFlagsBits = 0xD000000000000012;
                v248._object = 0xE800000000000000;
                v250._countAndFlagsBits = 0;
                v250._object = 0xE000000000000000;
                v251 = NSLocalizedString(_:tableName:bundle:value:comment:)(v248, v249, v247, v250, v429);
                v129 = v251._countAndFlagsBits;
                v130 = v251._object;

                goto LABEL_246;
              }

              goto LABEL_391;
            }

LABEL_390:

            __break(1u);
LABEL_391:

            __break(1u);
            goto LABEL_392;
          }

          goto LABEL_376;
        }

        aBlock._countAndFlagsBits = MEMORY[0x277D84F90];
        v225 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v225)
        {
          goto LABEL_215;
        }
      }

      v35 = MEMORY[0x277D84F90];
LABEL_334:
      v333 = specialized Array.count.getter(v35);

      v334 = v109 - v333;
      if (__OFSUB__(v109, v333))
      {
LABEL_378:
        __break(1u);
        goto LABEL_379;
      }

      v335 = MEMORY[0x277D83B88];
      if (v334 <= 0)
      {
        v346 = MEMORY[0x277D84F90];
        if (v333 < 1)
        {
LABEL_348:
          v362 = DOCMetadataKey.localizedTitle.getter(v402, 0, v401._countAndFlagsBits, v401._object);
          v364 = v363;
          aBlock._countAndFlagsBits = v346;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
          v365 = BidirectionalCollection<>.joined(separator:)();
          v367 = v366;

          v368 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v369 = MEMORY[0x24C1FAD20](v365, v367);

          v370 = [v368 initWithString_];

          specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v362, v364, v370, 0, 0, 0, v406, v413, v408, v404, v405);

          return;
        }

        goto LABEL_342;
      }

      v336 = _DocumentManagerBundle();
      if (v336)
      {
        v337 = v336;
        v430._object = 0x8000000249BD0880;
        v338._countAndFlagsBits = 0x75636F6420756C25;
        v338._object = 0xED000073746E656DLL;
        v430._countAndFlagsBits = 0xD00000000000004CLL;
        v339.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v339.value._object = 0xEB00000000656C62;
        v340._countAndFlagsBits = 0;
        v340._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v338, v339, v337, v340, v430);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v341 = swift_allocObject();
        *(v341 + 16) = xmmword_249B9A480;
        v342 = v335;
        *(v341 + 56) = v335;
        *(v341 + 64) = MEMORY[0x277D83C10];
        *(v341 + 32) = v334;
        v343 = static String.localizedStringWithFormat(_:_:)();
        v345 = v344;

        v346 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v348 = *(v346 + 2);
        v347 = *(v346 + 3);
        if (v348 >= v347 >> 1)
        {
          v346 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v347 > 1), v348 + 1, 1, v346);
        }

        *(v346 + 2) = v348 + 1;
        v349 = &v346[16 * v348];
        *(v349 + 4) = v343;
        *(v349 + 5) = v345;
        v335 = v342;
        if (v333 < 1)
        {
          goto LABEL_348;
        }

LABEL_342:
        v350 = _DocumentManagerBundle();
        if (v350)
        {
          v351 = v350;
          v431._object = 0x8000000249BD0830;
          v352._countAndFlagsBits = 0x646C6F6620756C25;
          v352._object = 0xEB00000000737265;
          v431._countAndFlagsBits = 0xD00000000000004ALL;
          v353.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v353.value._object = 0xEB00000000656C62;
          v354._countAndFlagsBits = 0;
          v354._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v352, v353, v351, v354, v431);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v355 = swift_allocObject();
          *(v355 + 16) = xmmword_249B9A480;
          *(v355 + 56) = v335;
          *(v355 + 64) = MEMORY[0x277D83C10];
          *(v355 + 32) = v333;
          v356 = static String.localizedStringWithFormat(_:_:)();
          v358 = v357;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v346 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v346 + 2) + 1, 1, v346);
          }

          v360 = *(v346 + 2);
          v359 = *(v346 + 3);
          if (v360 >= v359 >> 1)
          {
            v346 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v359 > 1), v360 + 1, 1, v346);
          }

          *(v346 + 2) = v360 + 1;
          v361 = &v346[16 * v360];
          *(v361 + 4) = v356;
          *(v361 + 5) = v358;
          goto LABEL_348;
        }

LABEL_389:

        __break(1u);
        goto LABEL_390;
      }

LABEL_388:

      __break(1u);
      goto LABEL_389;
    }

    v50 = v415;
    if (v407 != 3)
    {
      if (v407 != 4)
      {
        if (v415 >> 62)
        {
          v94 = __CocoaSet.count.getter();
          if (v94)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v94 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v94)
          {
LABEL_31:
            v95 = 0;
            v410 = (v50 & 0xFFFFFFFFFFFFFF8);
            v411 = (v50 & 0xC000000000000001);
            v403 = (v414 + 56);
            v50 = v414 + 48;
            v96 = MEMORY[0x277D84F90];
            v407 = v414 + 32;
            v400 = v94;
            while (1)
            {
              if (v411)
              {
                ObjectType = MEMORY[0x24C1FC540](v95, v415);
                v97 = v95 + 1;
                if (__OFADD__(v95, 1))
                {
                  goto LABEL_270;
                }
              }

              else
              {
                if (v95 >= *(v410 + 2))
                {
                  goto LABEL_273;
                }

                ObjectType = *(v415 + 8 * v95 + 32);
                swift_unknownObjectRetain();
                v97 = v95 + 1;
                if (__OFADD__(v95, 1))
                {
LABEL_270:
                  __break(1u);
                  goto LABEL_271;
                }
              }

              v98 = [ObjectType modificationDate];
              if (v98)
              {
                v99 = v98;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v100 = 0;
              }

              else
              {
                v100 = 1;
              }

              swift_unknownObjectRelease();
              (*v403)(v22, v100, 1, v35);
              outlined init with take of Date?(v22, v26);
              if ((*v50)(v26, 1, v35) == 1)
              {
                outlined destroy of CharacterSet?(v26, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
              }

              else
              {
                v101 = *v407;
                (*v407)(v412, v26, v35);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
                }

                v103 = *(v96 + 2);
                v102 = *(v96 + 3);
                ObjectType = v103 + 1;
                if (v103 >= v102 >> 1)
                {
                  v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v96);
                }

                *(v96 + 2) = ObjectType;
                v101(&v96[((*(v414 + 80) + 32) & ~*(v414 + 80)) + *(v414 + 72) * v103], v412, v35);
                v94 = v400;
              }

              ++v95;
              if (v97 == v94)
              {
                goto LABEL_326;
              }
            }
          }
        }

        v96 = MEMORY[0x277D84F90];
LABEL_326:
        v329 = specialized DOCMetadataKey.formattedDateString(with:)(v96);
        v331 = v330;

        v232 = v409;
        if (v331)
        {
          *(v409 + 16) = v329;
          *(v232 + 24) = v331;
        }

        v233 = v402;
        v234 = 5;
LABEL_364:
        v375 = DOCMetadataKey.localizedTitle.getter(v233, v234, v401._countAndFlagsBits, v401._object);
        v377 = v376;
        v378 = *(v232 + 16);
        v379 = *(v232 + 24);
        v380 = objc_allocWithZone(MEMORY[0x277CCA898]);

        v381 = MEMORY[0x24C1FAD20](v378, v379);

        v382 = [v380 initWithString_];

        specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v375, v377, v382, 0, 0, 0, v406, v413, v408, v404, v405);

        return;
      }

      if (v415 >> 62)
      {
        v168 = __CocoaSet.count.getter();
        if (v168)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v168 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v168)
        {
LABEL_123:
          v169 = 0;
          v411 = (v50 & 0xFFFFFFFFFFFFFF8);
          v412 = (v50 & 0xC000000000000001);
          v403 = (v414 + 56);
          v400 = (v414 + 48);
          v170 = MEMORY[0x277D84F90];
          v407 = v414 + 32;
          while (1)
          {
            if (v412)
            {
              v171 = MEMORY[0x24C1FC540](v169, v50);
              v172 = v169 + 1;
              if (__OFADD__(v169, 1))
              {
                goto LABEL_272;
              }
            }

            else
            {
              if (v169 >= *(v411 + 2))
              {
                goto LABEL_275;
              }

              v171 = *(v50 + 8 * v169 + 32);
              swift_unknownObjectRetain();
              v172 = v169 + 1;
              if (__OFADD__(v169, 1))
              {
                goto LABEL_272;
              }
            }

            v173 = [v171 doc_creationDate];
            if (v173)
            {
              v174 = v173;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v175 = 0;
            }

            else
            {
              v175 = 1;
            }

            swift_unknownObjectRelease();
            (*v403)(ObjectType, v175, 1, v35);
            outlined init with take of Date?(ObjectType, v34);
            if ((*v400)(v34, 1, v35) == 1)
            {
              outlined destroy of CharacterSet?(v34, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
            }

            else
            {
              v176 = *v407;
              (*v407)(v410, v34, v35);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v170 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v170 + 2) + 1, 1, v170);
              }

              v178 = *(v170 + 2);
              v177 = *(v170 + 3);
              if (v178 >= v177 >> 1)
              {
                v170 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v177 > 1), v178 + 1, 1, v170);
              }

              *(v170 + 2) = v178 + 1;
              v176(&v170[((*(v414 + 80) + 32) & ~*(v414 + 80)) + *(v414 + 72) * v178], v410, v35);
              v50 = v415;
            }

            ++v169;
            if (v172 == v168)
            {
              goto LABEL_361;
            }
          }
        }
      }

      v170 = MEMORY[0x277D84F90];
LABEL_361:
      v372 = specialized DOCMetadataKey.formattedDateString(with:)(v170);
      v374 = v373;

      v232 = v409;
      if (v374)
      {
        *(v409 + 16) = v372;
        *(v232 + 24) = v374;
      }

      v233 = v402;
      v234 = 4;
      goto LABEL_364;
    }

    if (v415 >> 62)
    {
      v371 = __CocoaSet.count.getter();
      v35 = v409;
      if (v371 != 1 || !__CocoaSet.count.getter())
      {
        goto LABEL_289;
      }
    }

    else
    {
      v35 = v409;
      if (*((v415 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
        goto LABEL_289;
      }
    }

    if ((v50 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](0, v50);
    }

    else
    {
      if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_377:
        __break(1u);
        goto LABEL_378;
      }

      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v142 = DOCNode.fpfs_syncFetchFPItem()();
    if (!v142)
    {
LABEL_101:
      specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(0, 0, 0, 0, 0, 0, v406, v413, v408, v404, v405);

      swift_unknownObjectRelease();
      return;
    }

    v143 = v142;
    if ([v142 isRootItem])
    {

      goto LABEL_101;
    }

    v255 = v402;
    v256 = v401._object;
    v257 = v401._countAndFlagsBits;
    v258 = DOCMetadataKey.localizedTitle.getter(v402, 3, v401._countAndFlagsBits, v401._object);
    v260 = v259;
    v261 = DOCMetadataKey.placeholderValue.getter(v255, 3);
    v263 = v262;
    v264 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v265 = MEMORY[0x24C1FAD20](v261, v263);

    v266 = [v264 initWithString_];

    specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v258, v260, v266, 0, 0, 1, v406, v413, v408, v404, v405);

    v267 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v268 = swift_allocObject();
    *(v268 + 16) = v267;
    *(v268 + 24) = v255;
    *(v268 + 32) = 3;
    *(v268 + 40) = __PAIR128__(v256, v257);

    DOCMetadataKey.localizedPath(for:layoutDirection:completion:)(v143, v390, partial apply for closure #5 in DOCMetadataKey.value(for:in:layoutDirection:completion:), v268, v255, 3uLL, v257, v256);

    swift_unknownObjectRelease();

    goto LABEL_290;
  }

  if (v407 > 8)
  {
    v104 = v415;
    switch(v407)
    {
      case 9:
        if (v415 >> 62)
        {
          if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
          {
            goto LABEL_289;
          }
        }

        else if (*((v415 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_289;
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v104 & 0xC000000000000001) == 0, v104);
        if ((v104 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](0, v104);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        if ((DOCNode.areDiskPropertiesSupported.getter() & 1) == 0)
        {
          goto LABEL_208;
        }

        v144 = v402;
        v145 = v401._object;
        v146 = v401._countAndFlagsBits;
        v147 = DOCMetadataKey.localizedTitle.getter(v402, 9, v401._countAndFlagsBits, v401._object);
        v149 = v148;
        v150 = DOCMetadataKey.placeholderValue.getter(v144, 9);
        v152 = v151;
        v153 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v154 = MEMORY[0x24C1FAD20](v150, v152);

        v155 = [v153 initWithString_];

        specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v147, v149, v155, 0, 0, 1, v406, v413, v408, v404, v405);

        v156 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v90 = swift_allocObject();
        v90[2] = v156;
        v90[3] = v144;
        v90[4] = 9;
        v90[5] = v146;
        v157 = v409;
        v90[6] = v145;
        v90[7] = v157;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

        v92 = static OS_dispatch_queue.main.getter();
        v415 = v92;
        v93 = partial apply for closure #10 in DOCMetadataKey.value(for:in:layoutDirection:completion:);
        break;
      case 10:
        if (v415 >> 62)
        {
          if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
          {
            goto LABEL_289;
          }
        }

        else if (*((v415 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_289;
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v104 & 0xC000000000000001) == 0, v104);
        if ((v104 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](0, v104);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        if ((DOCNode.areDiskPropertiesSupported.getter() & 1) == 0)
        {
          goto LABEL_208;
        }

        v179 = v402;
        v180 = v401._object;
        v181 = v401._countAndFlagsBits;
        v182 = DOCMetadataKey.localizedTitle.getter(v402, 10, v401._countAndFlagsBits, v401._object);
        v184 = v183;
        v185 = DOCMetadataKey.placeholderValue.getter(v179, 10);
        v187 = v186;
        v188 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v189 = MEMORY[0x24C1FAD20](v185, v187);

        v190 = [v188 initWithString_];

        specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v182, v184, v190, 0, 0, 1, v406, v413, v408, v404, v405);

        v191 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v90 = swift_allocObject();
        v90[2] = v191;
        v90[3] = v179;
        v90[4] = 10;
        v90[5] = v181;
        v192 = v409;
        v90[6] = v180;
        v90[7] = v192;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

        v92 = static OS_dispatch_queue.main.getter();
        v415 = v92;
        v93 = partial apply for closure #11 in DOCMetadataKey.value(for:in:layoutDirection:completion:);
        break;
      case 11:
        if (v413 >> 62)
        {
          v105 = __CocoaSet.count.getter();
        }

        else
        {
          v105 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v50 = v408 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey;
        if (v105)
        {
          v106 = 0;
          v107 = v413 & 0xC000000000000001;
          v108 = v413 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v107)
            {
              v195 = MEMORY[0x24C1FC540](v106, v413);
              ObjectType = v106 + 1;
              if (__OFADD__(v106, 1))
              {
                goto LABEL_207;
              }
            }

            else
            {
              if (v106 >= *(v108 + 16))
              {
                goto LABEL_276;
              }

              v195 = *(v413 + 8 * v106 + 32);
              ObjectType = v106 + 1;
              if (__OFADD__(v106, 1))
              {
LABEL_207:
                __break(1u);
                goto LABEL_208;
              }
            }

            v196 = *&v195[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 8];
            v197 = *&v195[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 16];
            v198 = *&v195[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey + 24];
            v199 = *(v50 + 8);
            v200 = *(v50 + 16);
            v201 = *(v50 + 24);
            if (v196 > 5)
            {
              if (v196 <= 8)
              {
                if (v196 == 6)
                {
                  if (v199 == 6)
                  {
                    goto LABEL_231;
                  }
                }

                else if (v196 == 7)
                {
                  if (v199 == 7)
                  {
                    goto LABEL_231;
                  }
                }

                else if (v199 == 8)
                {
                  goto LABEL_231;
                }

                goto LABEL_156;
              }

              switch(v196)
              {
                case 9:
                  if (v199 == 9)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
                case 10:
                  if (v199 == 10)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
                case 11:
                  if (v199 == 11)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
              }
            }

            else
            {
              if (v196 > 2)
              {
                if (v196 == 3)
                {
                  if (v199 == 3)
                  {
                    goto LABEL_231;
                  }
                }

                else if (v196 == 4)
                {
                  if (v199 == 4)
                  {
                    goto LABEL_231;
                  }
                }

                else if (v199 == 5)
                {
                  goto LABEL_231;
                }

                goto LABEL_156;
              }

              switch(v196)
              {
                case 0:
                  if (!v199)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
                case 1:
                  if (v199 == 1)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
                case 2:
                  if (v199 == 2)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_156;
              }
            }

            if (v199 >= 0xC)
            {
              v202 = *&v195[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCMetadataKeyValueRow_metadataKey] == *v50 && v196 == v199;
              v415 = v195;
              if (v202 || (v203 = _stringCompareWithSmolCheck(_:_:expecting:)(), v195 = v415, (v203 & 1) != 0))
              {
                if (v197 == v200 && v198 == v201 || (v204 = _stringCompareWithSmolCheck(_:_:expecting:)(), v195 = v415, (v204 & 1) != 0))
                {
LABEL_231:
                  v235 = v195;
                  v236 = [*(DOCMetadataKeyValueRow.value.getter() + 24) text];

                  break;
                }
              }
            }

LABEL_156:

            ++v106;
          }

          while (ObjectType != v105);
        }

        v237 = *v50;
        v238 = *(v50 + 8);
        v239 = *(v50 + 16);
        v240 = *(v50 + 24);
        v241 = MEMORY[0x277D85000];
        if (v238 != 1)
        {
          goto LABEL_382;
        }

        v242 = [objc_opt_self() contextMenuShowsOpenWithApp];
        v243 = [v242 isEnabled];

        if ((v243 & 1) == 0)
        {
          goto LABEL_382;
        }

        v244 = (*((*v241 & *v404) + 0xC0))();
        if (v244 >> 62)
        {
          v383 = v244;
          v384 = __CocoaSet.count.getter();
          v244 = v383;
          if (v384)
          {
            goto LABEL_236;
          }
        }

        else if (*((v244 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_236:
          if ((v244 & 0xC000000000000001) != 0)
          {
            v245 = MEMORY[0x24C1FC540](0);
          }

          else
          {
            if (!*((v244 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_388;
            }

            v245 = *(v244 + 32);
            swift_unknownObjectRetain();
          }

          if (![v245 isFolder] && !objc_msgSend(v245, sel_doc_isCollaborationInvitation))
          {
            v269 = v408;
            (*((*v241 & *v408) + 0x100))();
            swift_unknownObjectRelease();
LABEL_383:
            (*((*v241 & *v269) + 0x118))(1);
            v385 = DOCMetadataKeyValueRow.label.getter();
            v386 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
            [v385 setText_];

            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v388 = Strong;
              (*((*v241 & *Strong) + 0x1B8))(v237, v238, v239, v240, 0, 0, 0, 0);
            }

            dispatch_group_leave(v406);
            goto LABEL_292;
          }

          swift_unknownObjectRelease();
LABEL_382:
          v269 = v408;
          (*((*v241 & *v408) + 0x100))(1);
          goto LABEL_383;
        }

        goto LABEL_382;
      default:
        goto LABEL_152;
    }

LABEL_147:
    DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:)(v92, v93, v90);

    swift_unknownObjectRelease();

    goto LABEL_148;
  }

  ObjectType = v415;
  if (v407 != 6)
  {
    if (v407 == 7)
    {
      if (v415 >> 62)
      {
        if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
        {
          goto LABEL_289;
        }
      }

      else if (*((v415 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
        goto LABEL_289;
      }

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (ObjectType & 0xC000000000000001) == 0, ObjectType);
      if ((ObjectType & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](0, ObjectType);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      DOCNode.diskProperties.getter(&aBlock._countAndFlagsBits);
      v161 = aBlock._object;
      if (!aBlock._object)
      {
        goto LABEL_208;
      }

      v162 = aBlock._countAndFlagsBits;
      v163 = DOCMetadataKey.localizedTitle.getter(v402, 7, v401._countAndFlagsBits, v401._object);
      v165 = v164;
      v166 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v167 = MEMORY[0x24C1FAD20](v162, v161);

      v415 = [v166 initWithString_];

      specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v163, v165, v415, 0, 0, 0, v406, v413, v408, v404, v405);

      swift_unknownObjectRelease();

      goto LABEL_149;
    }

    if (v415 >> 62)
    {
      goto LABEL_321;
    }

    if (*((v415 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_23;
    }

LABEL_289:
    specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(0, 0, 0, 0, 0, 0, v406, v413, v408, v404, v405);
LABEL_290:

LABEL_292:

    return;
  }

  if (v415 >> 62)
  {
    v131 = __CocoaSet.count.getter();
  }

  else
  {
    v131 = *((v415 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v132 = v403;
  if (!v131)
  {
    v134 = MEMORY[0x277D84F90];
LABEL_228:
    v229 = specialized DOCMetadataKey.formattedDateString(with:)(v134);
    v231 = v230;

    v232 = v409;
    if (v231)
    {
      *(v409 + 16) = v229;
      *(v232 + 24) = v231;
    }

    v233 = v402;
    v234 = 6;
    goto LABEL_364;
  }

  v133 = 0;
  v412 = (ObjectType & 0xC000000000000001);
  v410 = (ObjectType & 0xFFFFFFFFFFFFFF8);
  v400 = (v414 + 56);
  v399 = (v414 + 48);
  v134 = MEMORY[0x277D84F90];
  v407 = v414 + 32;
  while (!v412)
  {
    if (v133 >= *(v410 + 2))
    {
      goto LABEL_274;
    }

    v135 = *(ObjectType + 8 * v133 + 32);
    swift_unknownObjectRetain();
    v136 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      goto LABEL_271;
    }

LABEL_81:
    v137 = [v135 doc_lastUsedDate];
    v50 = v132;
    if (v137)
    {
      v138 = v137;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v139 = 0;
    }

    else
    {
      v139 = 1;
    }

    swift_unknownObjectRelease();
    (*v400)(v50, v139, 1, v35);
    outlined init with take of Date?(v50, v18);
    if ((*v399)(v18, 1, v35) == 1)
    {
      v132 = v50;
      outlined destroy of CharacterSet?(v18, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    }

    else
    {
      v140 = *v407;
      (*v407)(v411, v18, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v134 + 2) + 1, 1, v134);
      }

      v50 = *(v134 + 2);
      v141 = *(v134 + 3);
      if (v50 >= v141 >> 1)
      {
        v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v141 > 1), v50 + 1, 1, v134);
      }

      *(v134 + 2) = v50 + 1;
      v140(&v134[((*(v414 + 80) + 32) & ~*(v414 + 80)) + *(v414 + 72) * v50], v411, v35);
      ObjectType = v415;
      v132 = v403;
    }

    ++v133;
    if (v136 == v131)
    {
      goto LABEL_228;
    }
  }

  v135 = MEMORY[0x24C1FC540](v133, ObjectType);
  v136 = v133 + 1;
  if (!__OFADD__(v133, 1))
  {
    goto LABEL_81;
  }

LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  __break(1u);
LABEL_276:
  __break(1u);
LABEL_277:
  __break(1u);
LABEL_278:
  v57 = __CocoaSet.count.getter();
  v35 = v409;
  if (v57 != 1)
  {
    goto LABEL_281;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_284:
    v281 = __CocoaSet.count.getter();
    goto LABEL_285;
  }

LABEL_8:
  if ((v415 & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x24C1FC540](0);
    goto LABEL_11;
  }

  if (!*((v415 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

  v58 = *(v415 + 32);
  swift_unknownObjectRetain();
LABEL_11:
  v59 = swift_getObjectType();
  if (![v58 isFolder] || (DOCNode.isFolderSizingSupported.getter() & 1) == 0 || (v60 = objc_msgSend(v58, sel_deepItemCount)) == 0)
  {
LABEL_226:
    swift_unknownObjectRelease();
    goto LABEL_282;
  }

  v61 = v60;
  v62 = [v60 integerValue];
  v63 = swift_allocObject();
  *(v63 + 16) = [v58 isCloudItem];
  *(v63 + 24) = v62;
  *(v63 + 32) = 0;
  *(v63 + 40) = 0;
  *(v63 + 48) = 0;
  *(v63 + 56) = 256;
  v64 = DOCMetadataKey.localizedTitle.getter(v402, 2, v401._countAndFlagsBits, v401._object);
  v66 = v65;
  v67 = _DocumentManagerBundle();
  if (!v67)
  {
LABEL_392:

    __break(1u);
    return;
  }

  v68 = v67;
  v427._object = 0x8000000249BD07E0;
  v69.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v69.value._object = 0xEB00000000656C62;
  v70._object = 0x8000000249BD07C0;
  v427._countAndFlagsBits = 0xD00000000000004DLL;
  v70._countAndFlagsBits = 0xD000000000000010;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v69, v68, v71, v427);

  v73 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v74 = MEMORY[0x24C1FAD20](v72._countAndFlagsBits, v72._object);

  v75 = [v73 initWithString_];

  if (*(v63 + 57) & 1) != 0 || (*(v63 + 40))
  {
    v76 = 1;
  }

  else
  {
    v270 = *(v63 + 32);
    v271 = *(v63 + 48);
    v273 = v270 == -1 || v271 == -1;
    v275 = v270 < 0 && v271 >= 0;
    if (*(v63 + 16) != 1)
    {
      v276 = v273;
    }

    else
    {
      v276 = v275;
    }

    if (v273)
    {
      v276 = v273;
    }

    if (*(v63 + 56))
    {
      v76 = 1;
    }

    else
    {
      v76 = v276;
    }
  }

  specialized closure #1 in closure #1 in DOCMetadataView.updatedMetadataValues()(v64, v66, v75, 0, 0, v76, v406, v413, v408, v404, v405);

  v277 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v278 = swift_allocObject();
  v279 = v402;
  v278[2] = v277;
  v278[3] = v279;
  v278[4] = 2;
  v280 = v401._object;
  v278[5] = v401._countAndFlagsBits;
  v278[6] = v280;
  v278[7] = v409;
  v278[8] = v63;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

  v415 = static OS_dispatch_queue.main.getter();
  DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(v415, partial apply for closure #2 in DOCMetadataKey.value(for:in:layoutDirection:completion:), v278, v59);

  swift_unknownObjectRelease();

LABEL_148:

LABEL_149:
  v193 = v415;
}