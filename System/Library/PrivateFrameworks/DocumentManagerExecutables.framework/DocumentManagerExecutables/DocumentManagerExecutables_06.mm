void specialized static OutlineColumnData.userDefault()()
{
  v0 = static OutlineColumnData.userDefaultsCache;
  if (static OutlineColumnData.userDefaultsCache)
  {
    goto LABEL_4;
  }

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x24C1FAD20](v1, v3);

  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = static OutlineColumnData.userDefaultsCache;
    static OutlineColumnData.userDefaultsCache = v6;
    v6;

    v0 = 0;
LABEL_4:
    v8 = v0;
    return;
  }

  __break(1u);
}

char *specialized static OutlineColumnData.fetchVisibleColumnTypes(defaultSortMode:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for cachedVisibleColumns != -1)
  {
    swift_once();
  }

  v2 = static OutlineColumnData.cachedVisibleColumns;
  if (*(static OutlineColumnData.cachedVisibleColumns + 2))
  {
  }

  else
  {
    specialized static OutlineColumnData.userDefault()();
    v4 = v3;
    v5 = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249BC85F0);
    v6 = [v4 dataForKey_];

    if (v6)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      outlined copy of Data._Representation(v7, v9);
      PropertyListDecoder.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables10ColumnTypeOGMd, &_sSay26DocumentManagerExecutables10ColumnTypeOGMR);
      lazy protocol witness table accessor for type [ColumnType] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnType] and conformance <A> [A], lazy protocol witness table accessor for type ColumnType and conformance ColumnType, MEMORY[0x277D83978]);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      v2 = v12;
      if (v12[2])
      {
        static OutlineColumnData.cachedVisibleColumns = v12;

        outlined consume of Data._Representation(v7, v9);
        outlined consume of Data._Representation(v7, v9);
        return v2;
      }

      outlined consume of Data._Representation(v7, v9);
    }

    else
    {
      v7 = 0;
      v9 = 0xF000000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMR);
    v2 = swift_allocObject();
    v2[1] = xmmword_249B9FA70;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    *(v2 + 6) = 0;
    *(v2 + 7) = 1;
    if (v1 <= 9 && ((0x23Du >> v1) & 1) != 0)
    {
      v10 = qword_249BA0240[v1];
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v2, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMR, &type metadata for ColumnType);
      *(v2 + 2) = 3;
      *(v2 + 8) = 0;
      *(v2 + 9) = v10;
    }

    static OutlineColumnData.cachedVisibleColumns = v2;

    outlined consume of Data?(v7, v9);
  }

  return v2;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(__int128 *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *a1;
  v4 = **(v1 + 16);
  v5 = v2;
  return specialized static ColumnType.== infix(_:_:)(&v5, &v4) & 1;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined init with copy of DOCBrowserHistoryItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCBrowserHistoryItem(uint64_t a1)
{
  v2 = type metadata accessor for DOCBrowserHistoryItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs11AnyHashableV_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1FB4D0](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      outlined init with copy of AnyHashable(v4, v5);
      specialized Set._Variant.insert(_:)(v6, v5);
      outlined destroy of AnyHashable(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo27DOCDocumentSourceIdentifiera_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for DOCDocumentSourceIdentifier(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DOCDocumentSourceIdentifier and conformance DOCDocumentSourceIdentifier, type metadata accessor for DOCDocumentSourceIdentifier, &protocol conformance descriptor for DOCDocumentSourceIdentifier);
  result = MEMORY[0x24C1FB4D0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory();
  result = MEMORY[0x24C1FB4D0](v2, &type metadata for DOCItemFileTypeGroupCategory, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      outlined copy of DOCItemFileTypeGroupCategory(v7, *v5);
      specialized Set._Variant.insert(_:)(v8, v7, v6);
      outlined consume of DOCItemFileTypeGroupCategory(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8FPActiona_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for FPAction(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
  result = MEMORY[0x24C1FB4D0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo12FPProviderIDa_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for FPProviderID(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type FPProviderID and conformance FPProviderID, type metadata accessor for FPProviderID, &protocol conformance descriptor for FPProviderID);
  result = MEMORY[0x24C1FB4D0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1FB4D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo11PermissionsV_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Permissions(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Permissions and conformance Permissions, type metadata accessor for Permissions, &protocol conformance descriptor for Permissions);
  result = MEMORY[0x24C1FB4D0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17DesktopServicesUI20DSLightweightTagInfoC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for DSLightweightTagInfo();
  v5 = lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo();
  result = MEMORY[0x24C1FB4D0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables27DOCIdentityHashableLocationV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation();
  result = MEMORY[0x24C1FB4D0](v2, &type metadata for DOCIdentityHashableLocation, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      outlined init with copy of DOCIdentityHashableLocation(v5, v6);
      specialized Set._Variant.insert(_:)(v7, v6);
      outlined destroy of DOCIdentityHashableLocation(v7);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables21DOCSidebarSectionKindO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind();
  result = MEMORY[0x24C1FB4D0](v2, &type metadata for DOCSidebarSectionKind, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t *_sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20UICollectionViewCellC_SayAEGTt0g5Tf4g_nTm(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v12 = type metadata accessor for NSMutableAttributedString(0, a2, a3);
    v13 = lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(a4, a2, a3);
    result = MEMORY[0x24C1FB4D0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x24C1FC540](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = __CocoaSet.count.getter();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3)
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

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 != a4)
  {
    if (a4 <= v6)
    {
      v8 = a5 >> 1;
    }

    else
    {
      v8 = a4;
    }

    v9 = v8 - a4;
    v10 = (a3 + 8 * a4);
    v11 = ~a4 + v6;
    while (v9)
    {
      v15 = *v10;
      v12 = v15;
      v13 = a1(&v15);

      if (!v5)
      {
        v14 = v11 != 0;
        --v9;
        ++v10;
        --v11;
        if (v14 & ~v13)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory()
{
  result = lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory;
  if (!lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory;
  if (!lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemFileTypeGroupCategory and conformance DOCItemFileTypeGroupCategory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind()
{
  result = lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind;
  if (!lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind;
  if (!lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarSectionKind and conformance DOCSidebarSectionKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo()
{
  result = lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo;
  if (!lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo)
  {
    type metadata accessor for DSLightweightTagInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation()
{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation;
  if (!lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCIdentityHashableLocation and conformance DOCIdentityHashableLocation);
  }

  return result;
}

id outlined copy of DOCSidebarItem?(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return outlined copy of DOCSidebarItem(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

id outlined copy of DOCSidebarItem(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 2u)
  {
    if (a6 == 3)
    {
      v6 = result;
LABEL_10:
    }

    if (a6 != 4)
    {
      if (a6 != 5)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  return result;
}

double outlined consume of DOCSidebarItem?(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return outlined consume of DOCSidebarItem(result, a2, a3, a4, a5, a6);
  }

  return v6;
}

double outlined consume of DOCSidebarItem(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 2u)
  {
    if (a6 == 3)
    {

LABEL_10:

      return result;
    }

    if (a6 != 4)
    {
      if (a6 != 5)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  return result;
}

uint64_t outlined consume of ColumnType?(uint64_t a1, unint64_t a2)
{
  if (a2 != 9)
  {
    return outlined consume of ColumnType(a1, a2);
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type [ColumnType] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables10ColumnTypeOGMd, &_sSay26DocumentManagerExecutables10ColumnTypeOGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(__int128 *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say26DocumentManagerExecutables10ColumnTypeOG_TG5TA_0(a1) & 1;
}

NSString *one-time initialization function for DOCNotificationDidUpdateSmartFolders()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC88A0);
  DOCNotificationDidUpdateSmartFolders = result;
  return result;
}

NSNotificationName DOCNotificationDidUpdateSmartFolders.getter()
{
  if (one-time initialization token for DOCNotificationDidUpdateSmartFolders != -1)
  {
    swift_once();
  }

  v1 = DOCNotificationDidUpdateSmartFolders;

  return v1;
}

uint64_t DOCSmartFolderInputFile.filename.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DOCSmartFolderInputFile.filetype.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DOCSmartFolderInputFile(0) + 20);
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DOCSmartFolderInputFile(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCSmartFolderInputFile;
  if (!type metadata singleton initialization cache for DOCSmartFolderInputFile)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DOCSmartFolderInputFile.dateSaved.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DOCSmartFolderInputFile(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DOCSmartFolderInputFile.init(filename:filetype:dateSaved:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for DOCSmartFolderInputFile(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for UTType();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

void *DOCSmartFolderManager.currentUserActivity.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_currentUserActivity;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSmartFolderManager.currentUserActivity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_currentUserActivity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCSmartFolderManager.defaultSaveLocationItemId.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_defaultSaveLocationItemId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSmartFolderManager.defaultSaveLocationItemId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_defaultSaveLocationItemId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id one-time initialization function for sharedManager()
{
  v0 = type metadata accessor for DOCSmartFolderManager();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_currentUserActivity] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_defaultSaveLocationItemId] = 0;
  v2 = [objc_allocWithZone(MEMORY[0x277D05F00]) init];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database] = v2;
  v3 = v2;
  [v3 open];

  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  static DOCSmartFolderManager.sharedManager = result;
  return result;
}

id DOCSmartFolderManager.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized DOCSmartFolderManager.init(_:)(a1);

  return v4;
}

id static DOCSmartFolderManager.sharedManager.getter()
{
  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  v1 = static DOCSmartFolderManager.sharedManager;

  return v1;
}

id DOCSmartFolderManager.init(_:)(void *a1)
{
  v2 = specialized DOCSmartFolderManager.init(_:)(a1);

  return v2;
}

id DOCSmartFolderManager.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database] close];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSmartFolderManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DOCSmartFolderManager.refreshSmartFolders()()
{
  v0 = type metadata accessor for Notification();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for DOCNotificationDidUpdateSmartFolders != -1)
  {
    swift_once();
  }

  memset(v8, 0, sizeof(v8));
  v6 = DOCNotificationDidUpdateSmartFolders;
  Notification.init(name:object:userInfo:)();
  isa = Notification._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 postNotification_];
}

void DOCSmartFolderManager.register(savedFile:in:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DOCSmartFolderInputFile(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = [a2 providerDomainID];
  v11 = DOCProviderDomainIDIsRemovable();

  if ((v11 & 1) == 0)
  {
    v12 = *a1;
    v13 = a1[1];
    v32 = v3;
    v14 = objc_allocWithZone(MEMORY[0x277D05F08]);
    v31 = v7;
    v15 = MEMORY[0x24C1FAD20](v12, v13);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v33 = [v14 initWithFolder:a2 type:0 value:v15 lastUsedDate:isa frecency:1.0];

    v17 = UTType.identifier.getter();
    v19 = v18;
    v20 = objc_allocWithZone(MEMORY[0x277D05F08]);
    v21 = MEMORY[0x24C1FAD20](v17, v19);

    v22 = Date._bridgeToObjectiveC()().super.isa;
    v23 = a2;
    v24 = [v20 initWithFolder:a2 type:1 value:v21 lastUsedDate:v22 frecency:1.0];

    v25 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database);
    outlined init with copy of DOCSmartFolderInputFile(a1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v27 = swift_allocObject();
    outlined init with take of DOCSmartFolderInputFile(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    aBlock[4] = partial apply for closure #1 in DOCSmartFolderManager.register(savedFile:in:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCSmartFolderHit) -> (@unowned Double);
    aBlock[3] = &block_descriptor_0;
    v28 = _Block_copy(aBlock);

    v29 = v33;
    [v25 registerFilenameHit:v33 fileTypeHit:v24 smartScoreBlock:v28];
    _Block_release(v28);
    (*((*MEMORY[0x277D85000] & *v3) + 0xA0))();
    _s26DocumentManagerExecutables25DOCUserActivityControllerC011publishUserE03for15activityHostingySo6FPItemC_AA0deK0_ptFZTf4nen_nAA014DOCSmartFolderB0C_Tt1g5(v23, v3);
  }
}

void closure #1 in DOCSmartFolderManager.register(savedFile:in:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = [a1 value];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (String.count.getter() > 3 && (, v8 = specialized Collection.prefix(_:)(4, v2, v3), v10 = v9, v12 = v11, v14 = v13, , LOBYTE(v8) = specialized Sequence<>.starts<A>(with:)(v8, v10, v12, v14, v5, v7), , (v8 & 1) != 0))
  {
    v15._countAndFlagsBits = v5;
    v15._object = v7;
    String.doc_editDistance(from:)(v15);
    String.count.getter();
    String.count.getter();
  }

  else
  {
  }
}

double thunk for @escaping @callee_guaranteed (@guaranteed DOCSmartFolderHit) -> (@unowned Double)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void DOCSmartFolderManager.suggestions(for:configuration:managedPermission:)(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = type metadata accessor for Date();
  v8 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v9);
  v58 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = DOCSmartFolderLogHandle();
  v12 = static os_log_type_t.debug.getter();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  v55 = xmmword_249B9FA70;
  *(v13 + 16) = xmmword_249B9FA70;
  v14 = *a1;
  v15 = a1[1];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v54 = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 64) = v54;
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  type metadata accessor for DOCSmartFolderInputFile(0);

  v60 = a1;
  isa = UTType._bridgeToObjectiveC()().super.isa;
  *(v13 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UTType, 0x277CE1CB8);
  *(v13 + 104) = lazy protocol witness table accessor for type UTType and conformance NSObject();
  *(v13 + 72) = isa;
  os_log(_:dso:log:type:_:)("Computing Suggestions for %@ (%@)", 33, 2, &dword_2493AC000, v11, v12, v13);

  v17 = [*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database) previousHits];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCSmartFolderHit, 0x277D05F08);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = specialized DOCSmartFolderManager.group(_:configuration:managedPermission:)(v18, a2, a3);

  v52 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
  v20 = 1 << *(v19 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19[8];
  v23 = (v20 + 63) >> 6;
  v57 = (v8 + 8);
  v61 = v19;

  v24 = 0;
  v51 = 0;
  v25 = 0.0;
  v53 = v23;
  while (v22)
  {
LABEL_12:
    v28 = (v24 << 9) | (8 * __clz(__rbit64(v22)));
    v29 = *(v61[7] + v28);
    v30 = *(v61[6] + v28);

    v31 = v58;
    v32 = Date.init()();
    MEMORY[0x28223BE20](v32, v33);
    *(&v51 - 2) = v60;
    *(&v51 - 1) = v31;
    v34 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in DOCSmartFolderManager.scoreForFolder(_:for:), 0.0, (&v51 - 4), v29);
    (*v57)(v31, v59);
    if (v29 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }
    }

    else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v62 = v29 & 0xC000000000000001;
    v63 = v30;
    if ((v29 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x24C1FC540](0, v29);
    }

    else
    {
      if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v35 = *(v29 + 32);
    }

    v36 = v35;
    v37 = [v35 folderItem];

    v38 = [v37 displayName];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = DOCSmartFolderLogHandle();
    v43 = static os_log_type_t.debug.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = v55;
    *(v44 + 56) = MEMORY[0x277D839F8];
    *(v44 + 64) = MEMORY[0x277D83A80];
    *(v44 + 32) = v34;
    v45 = v54;
    *(v44 + 96) = MEMORY[0x277D837D0];
    *(v44 + 104) = v45;
    *(v44 + 72) = v39;
    *(v44 + 80) = v41;
    os_log(_:dso:log:type:_:)("Score:  %.4f for %@", 19, 2, &dword_2493AC000, v42, v43, v44);

    if (v25 >= v34)
    {

LABEL_5:
      v26 = v63;
      goto LABEL_6;
    }

    if (v62)
    {
      v46 = MEMORY[0x24C1FC540](0, v29);
    }

    else
    {
      v46 = *(v29 + 32);
    }

    v47 = v46;
    v48 = [v46 folderItem];

    if (!v48)
    {
      goto LABEL_5;
    }

    v26 = v51;
    v25 = v34;
    v51 = v48;
    v52 = v63;
LABEL_6:
    v23 = v53;
    v22 &= v22 - 1;
  }

  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v27 >= v23)
    {
      break;
    }

    v22 = v19[v27 + 8];
    ++v24;
    if (v22)
    {
      v24 = v27;
      goto LABEL_12;
    }
  }

  v49 = v51;
  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_249BA0290;
    *(v50 + 32) = v49;
  }
}

double closure #1 in DOCSmartFolderManager.scoreForFolder(_:for:)@<D0>(double *a1@<X0>, id *a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = [*a2 type];
  if (v8 == 1)
  {
    type metadata accessor for DOCSmartFolderInputFile(0);
    v9 = UTType.identifier.getter();
    v11 = v10;
    v12 = [v7 value];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {

      v18 = 1.0;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }
    }

    v26 = DOCSmartFolderLogHandle();
    v27 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_249B9FA70;
    v29 = MEMORY[0x277D83A80];
    *(v28 + 56) = MEMORY[0x277D839F8];
    *(v28 + 64) = v29;
    *(v28 + 32) = v18;
    v30 = [v7 value];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *(v28 + 96) = MEMORY[0x277D837D0];
    *(v28 + 104) = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 72) = v31;
    *(v28 + 80) = v33;
    os_log(_:dso:log:type:_:)("         Score:  %.4f for %@ (UTType)", 37, 2, &dword_2493AC000, v26, v27, v28);
  }

  else
  {
    v59 = a4;
    if (v8)
    {
      v57 = [v7 type];
      type metadata accessor for DOCSmartFolderHitType(0);
      v60[3] = v58;
      v60[0] = v57;
      doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(v60);
    }

    v19 = *a3;
    v20 = a3[1];
    v21 = [v7 value];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (String.count.getter() > 3)
    {

      v34 = specialized Collection.prefix(_:)(4, v19, v20);
      v36 = v35;
      v38 = v37;
      v40 = v39;

      LOBYTE(v36) = specialized Sequence<>.starts<A>(with:)(v34, v36, v38, v40, v22, v24);

      if (v36)
      {
        v41._countAndFlagsBits = v22;
        v41._object = v24;
        v42 = String.doc_editDistance(from:)(v41);
        v43 = String.count.getter();
        v44 = String.count.getter();

        if (v44 <= v43)
        {
          v45 = v43;
        }

        else
        {
          v45 = v44;
        }

        v25 = (v45 - v42) / v45;
      }

      else
      {

        v25 = 0.0;
      }

      a4 = v59;
    }

    else
    {

      v25 = 0.0;
      a4 = v59;
    }

    if (v25 <= 0.5)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v25;
    }

    v26 = DOCSmartFolderLogHandle();
    v46 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_249B9FA70;
    v48 = MEMORY[0x277D83A80];
    *(v47 + 56) = MEMORY[0x277D839F8];
    *(v47 + 64) = v48;
    *(v47 + 32) = v18;
    v49 = [v7 value];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    *(v47 + 96) = MEMORY[0x277D837D0];
    *(v47 + 104) = lazy protocol witness table accessor for type String and conformance String();
    *(v47 + 72) = v50;
    *(v47 + 80) = v52;
    os_log(_:dso:log:type:_:)("         Score:  %.4f for %@ (Filename)", 39, 2, &dword_2493AC000, v26, v46, v47);
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  [v7 frecencyScoreAtDate_];
  v55 = v54;

  result = v6 + v18 * v55;
  *a4 = result;
  return result;
}

double specialized Sequence.reduce<A>(_:_:)(void (*a1)(double *__return_ptr, double *, id *), double a2, uint64_t a3, unint64_t a4)
{
  return specialized Sequence.reduce<A>(_:_:)(a1, a2, a3, a4);
}

{
  if (a4 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, a4);
      }

      else
      {
        if (v8 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = v9;
      a1(&v14, &v16, &v15);

      if (!v4)
      {
        a2 = v14;
        v16 = v14;
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return a2;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return a2;
}

Swift::Void __swiftcall DOCSmartFolderManager.makeHostedActivityCurrent()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  [v1 becomeCurrent];
}

id DOCSmartFolderManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t (*protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x78))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

void protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void DOCSmartFolderManager.register(event:)(void *a1, double a2)
{
  v3 = DOCSmartFolderLogHandle();
  v4 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_249B9FA70;
  v6 = [a1 folderItem];
  v7 = [v6 displayName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 64) = v12;
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  v13 = [a1 appBundleIdentifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v5 + 96) = v11;
  *(v5 + 104) = v12;
  *(v5 + 72) = v14;
  *(v5 + 80) = v16;
  os_log(_:dso:log:type:_:)("Register event for folder (%@) in app (%@)", 42, 2, &dword_2493AC000, v3, v4, v5);

  v17 = [a1 folderItem];
  LOBYTE(v4) = [v17 isRootItem];

  if (v4)
  {
    return;
  }

  v18 = [a1 &selRef_searchResultsController + 4];
  v19 = [v18 providerDomainID];

  LOBYTE(v18) = DOCProviderDomainIDIsRemovable();
  if (v18)
  {
    return;
  }

  v20 = [a1 &selRef_searchResultsController + 4];
  v21 = [v20 itemIdentifier];

  v22 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v31) + 0x80))();
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
    {

      return;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      return;
    }
  }

  else
  {
  }

  (*((*v22 & *v31) + 0xA0))([*(v31 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database) registerEvent_]);
  v30 = [a1 &selRef_searchResultsController + 4];
  _s26DocumentManagerExecutables25DOCUserActivityControllerC011publishUserE03for15activityHostingySo6FPItemC_AA0deK0_ptFZTf4nen_nAA014DOCSmartFolderB0C_Tt1g5(v30, v31);
}

uint64_t DOCSmartFolderManager.delete(hotFolder:for:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = DOCSmartFolderLogHandle();
  v9 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249B9FA70;
  v11 = [a1 displayName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v16 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  *(v10 + 96) = v15;
  *(v10 + 104) = v16;
  *(v10 + 64) = v16;
  *(v10 + 72) = a2;
  *(v10 + 80) = a3;

  os_log(_:dso:log:type:_:)("Deleting Hot Folder %@ for App (%@)", 35, 2, &dword_2493AC000, v8, v9, v10);

  v17 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database);
  v18 = [a1 itemIdentifier];
  v19 = MEMORY[0x24C1FAD20](a2, a3);
  [v17 deleteFolderWithIdentifier:v18 appBundleIdentifier:v19];

  v20 = *((*MEMORY[0x277D85000] & *v4) + 0xA0);

  return v20();
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t _s26DocumentManagerExecutables25DOCUserActivityControllerC011publishUserE03for15activityHostingySo6FPItemC_AA0deK0_ptFZTf4nen_nAA014DOCSmartFolderB0C_Tt1g5(void *a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = &protocol witness table for DOCSmartFolderManager;
  swift_unknownObjectWeakInit();

  v4 = [a1 itemID];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = partial apply for closure #1 in static DOCUserActivityController.publishUserActivity(for:activityHosting:);
  v5[4] = v3;
  v9[4] = partial apply for closure #1 in static DOCUserActivityController.userActivityFor(item:completion:);
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
  v9[3] = &block_descriptor_16;
  v6 = _Block_copy(v9);
  v7 = a1;

  FPCrossDeviceItemIDForItemID();
  _Block_release(v6);
}

id specialized DOCSmartFolderManager.init(_:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_currentUserActivity] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_defaultSaveLocationItemId] = 0;
  if (a1)
  {
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database] = a1;
    v3 = a1;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D05F00]) init];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database] = v4;
    v3 = v4;
  }

  v5 = a1;
  [v3 open];

  v7.receiver = v1;
  v7.super_class = type metadata accessor for DOCSmartFolderManager();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t outlined init with copy of DOCSmartFolderInputFile(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCSmartFolderInputFile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DOCSmartFolderInputFile(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCSmartFolderInputFile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in DOCSmartFolderManager.register(savedFile:in:)(void *a1)
{
  v3 = *(type metadata accessor for DOCSmartFolderInputFile(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  closure #1 in DOCSmartFolderManager.register(savedFile:in:)(a1, v4);
}

id DOCSmartFolderLogHandle()
{
  v0 = MEMORY[0x277D062F0];
  v1 = *MEMORY[0x277D062F0];
  if (!*MEMORY[0x277D062F0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type UTType and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UTType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UTType and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for UTType, 0x277CE1CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType and conformance NSObject);
  }

  return result;
}

void *specialized DOCSmartFolderManager.group(_:configuration:managedPermission:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28NSFileProviderItemIdentifiera_SaySo17DOCSmartFolderHitCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_32:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

    return v6;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return v6;
  }

LABEL_3:
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = a1;
  v40 = a3;
  v35 = a2;
  v37 = a1 & 0xC000000000000001;
  v38 = v7;
  while (1)
  {
    if (v9)
    {
      v10 = MEMORY[0x24C1FC540](v8, a1);
    }

    else
    {
      if (v8 >= *(v36 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(a1 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
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

    v13 = [v10 folderItem];
    if ([a3 canAppWithConfiguration:a2 handleNode:v13])
    {
      break;
    }

LABEL_5:
    ++v8;
    if (v12 == v7)
    {
      return v6;
    }
  }

  v14 = [v13 itemIdentifier];
  v15 = v14;
  if (v6[2])
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
    if (v17)
    {
      v18 = *(v6[7] + 8 * v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v19 = v15;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v11;
      v42 = v18;

      v21 = v11;
      specialized Array.append<A>(contentsOf:)(inited);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v19, isUniquelyReferenced_nonNull_native);

      a3 = v40;
LABEL_27:
      v7 = v38;
      a1 = v39;
      v9 = v37;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  a1 = swift_allocObject();
  *(a1 + 16) = xmmword_249BA0290;
  *(a1 + 32) = v11;
  v41 = v11;
  a3 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v15;
  a2 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
  v25 = v6[2];
  v26 = (v24 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_30;
  }

  v28 = v24;
  if (v6[3] >= v27)
  {
    if (a3)
    {
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v28)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v6[(a2 >> 6) + 8] |= 1 << a2;
    *(v6[6] + 8 * a2) = v23;
    *(v6[7] + 8 * a2) = a1;

    v31 = v6[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_31;
    }

    v6[2] = v33;
    goto LABEL_26;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, a3);
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
  if ((v28 & 1) == (v30 & 1))
  {
    a2 = v29;
    if ((v28 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    *(v6[7] + 8 * a2) = a1;

LABEL_26:
    a3 = v40;
    a2 = v35;
    goto LABEL_27;
  }

  type metadata accessor for NSFileProviderItemIdentifier(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28NSFileProviderItemIdentifiera_SaySo17DOCHotFolderEventCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_32:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

    return v6;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return v6;
  }

LABEL_3:
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = a1;
  v40 = a3;
  v35 = a2;
  v37 = a1 & 0xC000000000000001;
  v38 = v7;
  while (1)
  {
    if (v9)
    {
      v10 = MEMORY[0x24C1FC540](v8, a1);
    }

    else
    {
      if (v8 >= *(v36 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(a1 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
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

    v13 = [v10 folderItem];
    if ([a3 canAppWithConfiguration:a2 handleNode:v13])
    {
      break;
    }

LABEL_5:
    ++v8;
    if (v12 == v7)
    {
      return v6;
    }
  }

  v14 = [v13 itemIdentifier];
  v15 = v14;
  if (v6[2])
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
    if (v17)
    {
      v18 = *(v6[7] + 8 * v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v19 = v15;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v11;
      v42 = v18;

      v21 = v11;
      specialized Array.append<A>(contentsOf:)(inited);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v19, isUniquelyReferenced_nonNull_native);

      a3 = v40;
LABEL_27:
      v7 = v38;
      a1 = v39;
      v9 = v37;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  a1 = swift_allocObject();
  *(a1 + 16) = xmmword_249BA0290;
  *(a1 + 32) = v11;
  v41 = v11;
  a3 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v15;
  a2 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
  v25 = v6[2];
  v26 = (v24 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_30;
  }

  v28 = v24;
  if (v6[3] >= v27)
  {
    if (a3)
    {
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v28)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v6[(a2 >> 6) + 8] |= 1 << a2;
    *(v6[6] + 8 * a2) = v23;
    *(v6[7] + 8 * a2) = a1;

    v31 = v6[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_31;
    }

    v6[2] = v33;
    goto LABEL_26;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, a3);
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
  if ((v28 & 1) == (v30 & 1))
  {
    a2 = v29;
    if ((v28 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    *(v6[7] + 8 * a2) = a1;

LABEL_26:
    a3 = v40;
    a2 = v35;
    goto LABEL_27;
  }

  type metadata accessor for NSFileProviderItemIdentifier(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t type metadata completion function for DOCSmartFolderInputFile(uint64_t a1)
{
  result = type metadata accessor for UTType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DOCPresentationPreheatable<>.doc_preheatForPresenting(completion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v2, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMR);
  swift_getKeyPath();
  v7 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v6) + 0x78))(&v15);

  if (v15)
  {
  }

  else
  {
    swift_dynamicCastObjCProtocolUnconditional();
    v8 = static UIViewController.associatedObjectStorageKey;
    v9 = v3;
    v10 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v9, v8, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMR);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v12 = swift_allocObject();
    *(v12 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v12 + 32) = MEMORY[0x277D84F90];
    *(v12 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v15 = v12;
    (*((*v7 & *v10) + 0x80))(&v15, KeyPath);
  }

  v13 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v3, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMR);
  swift_getKeyPath();
  (*((*v7 & *v13) + 0x78))(&v15);

  if (!v15)
  {
    return a1();
  }

  DOCPresentationPreheatController.performOrRunAfterPreheat(_:)(a1, a2);
}

uint64_t UIViewController.doc_presentationPreheatController.getter()
{
  v1 = v0;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v0, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMR);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x78))(&v11);

  if (v11)
  {
  }

  else if (swift_dynamicCastObjCProtocolConditional())
  {
    v4 = static UIViewController.associatedObjectStorageKey;
    v5 = v1;
    v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v5, v4, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMR);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v8 = swift_allocObject();
    *(v8 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v8 + 32) = MEMORY[0x277D84F90];
    *(v8 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v11 = v8;
    (*((*v3 & *v6) + 0x80))(&v11, KeyPath);
  }

  v9 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v1, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMR);
  swift_getKeyPath();
  (*((*v3 & *v9) + 0x78))(&v11);

  return v11;
}

void DOCPresentationPreheatable<>.doc_preheatDidFinish()()
{
  v1 = v0;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v0, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMR);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x78))(&v10);

  if (v10)
  {
  }

  else
  {
    swift_dynamicCastObjCProtocolUnconditional();
    v4 = static UIViewController.associatedObjectStorageKey;
    v5 = v1;
    v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v5, v4, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMR);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v8 = swift_allocObject();
    *(v8 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v8 + 32) = MEMORY[0x277D84F90];
    *(v8 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v10 = v8;
    (*((*v3 & *v6) + 0x80))(&v10, KeyPath);
  }

  v9 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5Tm(v1, static UIViewController.associatedObjectStorageKey, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMd, &_s26DocumentManagerExecutables26DOCAssociatedObjectStorageCySo16UIViewControllerCGMR);
  swift_getKeyPath();
  (*((*v3 & *v9) + 0x78))(&v10);

  if (v10)
  {
    DOCPresentationPreheatController.endWithState(_:)(2);
  }
}

void UIViewController.objc_doc_preheatForPresenting(completion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v6 = v3;
    DOCPresentationPreheatable<>.doc_preheatForPresenting(completion:)(a1, a2);
  }

  else
  {
    a1();
  }
}

Swift::Void __swiftcall UIViewController.objc_doc_preheatDidFinish()()
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v1 = v0;
    DOCPresentationPreheatable<>.doc_preheatDidFinish()();
  }
}

uint64_t key path getter for UIViewController.doc_presentationPreheatController : UIViewController@<X0>(uint64_t *a1@<X8>)
{
  result = UIViewController.doc_presentationPreheatController.getter();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCPresentationPreheatController.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCPresentationPreheatController.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

void DOCPresentationPreheatController.performOrRunAfterPreheat(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + 40) == 2)
  {
    a1();
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    v6 = *(v2 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
      *(v2 + 32) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v10[5] = v5;
    *(v2 + 32) = v6;
    swift_endAccess();
    DOCPresentationPreheatController.startIfNecessary()();
  }
}

void DOCPresentationPreheatController.startIfNecessary()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v20 = &v25 - v19;
  if (!*(v1 + 40))
  {
    v27 = v18;
    v28 = v7;
    v29 = v8;
    v30 = v3;
    *(v1 + 40) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong doc_startPreheatIfNecessary];
      swift_unknownObjectRelease();
    }

    type metadata accessor for OS_dispatch_queue();
    v26 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v22 = *(v27 + 8);
    v22(v15, v12);
    aBlock[4] = partial apply for closure #1 in DOCPresentationPreheatController.startIfNecessary();
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_1;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v26;
    MEMORY[0x24C1FB940](v20, v11, v6, v23);
    _Block_release(v23);

    (*(v30 + 8))(v6, v2);
    (*(v29 + 8))(v11, v28);
    v22(v20, v12);
  }
}

void DOCPresentationPreheatController.endWithState(_:)(char a1)
{
  if (*(v1 + 40) != 2)
  {
    *(v1 + 40) = a1;
    if (a1 == 2)
    {
      swift_beginAccess();
      v2 = *(v1 + 32);
      *(v1 + 32) = MEMORY[0x277D84F90];
      v3 = *(v2 + 16);
      if (v3)
      {
        v4 = 0;
        v5 = v2 + 40;
        while (v4 < *(v2 + 16))
        {
          ++v4;
          v6 = *(v5 - 8);

          v6(v7);

          v5 += 16;
          if (v3 == v4)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_7:
      }
    }
  }
}

uint64_t DOCPresentationPreheatController.__deallocating_deinit()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DOCPresentationPreheatController.State(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCPresentationPreheatController.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCPresentationPreheatController.State and conformance DOCPresentationPreheatController.State()
{
  result = lazy protocol witness table cache variable for type DOCPresentationPreheatController.State and conformance DOCPresentationPreheatController.State;
  if (!lazy protocol witness table cache variable for type DOCPresentationPreheatController.State and conformance DOCPresentationPreheatController.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCPresentationPreheatController.State and conformance DOCPresentationPreheatController.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

id one-time initialization function for blank()
{
  result = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  static DOCSidebarIcon.blank = result;
  byte_27EF185B0 = 0;
  return result;
}

DocumentManagerExecutables::DOCSidebarIcon __swiftcall DOCSidebarIcon.init(image:requireHierarchicalColors:)(DocumentManagerExecutables::DOCSidebarIcon image, Swift::Bool requireHierarchicalColors)
{
  v2 = requireHierarchicalColors;
  image.requireHierarchicalColors = v2;
  return image;
}

uint64_t *DOCSidebarIcon.blank.unsafeMutableAddressor()
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  return &static DOCSidebarIcon.blank;
}

uint64_t static DOCSidebarIcon.blank.getter()
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DOCSidebarIcon.blank;
  v1 = static DOCSidebarIcon.blank;
  return v0;
}

void static DOCSidebarIcon.blank.setter(uint64_t a1, char a2)
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static DOCSidebarIcon.blank;
  static DOCSidebarIcon.blank = a1;
  byte_27EF185B0 = a2 & 1;
}

uint64_t (*static DOCSidebarIcon.blank.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id key path getter for static DOCSidebarIcon.blank : DOCSidebarIcon.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCSidebarIcon.blank;
  v3 = byte_27EF185B0;
  *a1 = static DOCSidebarIcon.blank;
  *(a1 + 8) = v3;

  return v2;
}

void key path setter for static DOCSidebarIcon.blank : DOCSidebarIcon.Type(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = one-time initialization token for blank;
  v3 = *a1;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static DOCSidebarIcon.blank;
  static DOCSidebarIcon.blank = v3;
  byte_27EF185B0 = v1;
}

id DOCSidebarIcon.Metrics.init(traitCollection:)(void *a1)
{
  specialized static CGSize.doc_preferredSourceListIconSize(for:)(a1);
  v2 = [objc_opt_self() unspecifiedConfiguration];

  return v2;
}

uint64_t DOCSidebarItemContentValueBinding.title.getter()
{
  v1 = *v0;

  return v1;
}

void DOCSidebarItemContentValueBinding.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t static DOCSidebarItemContentValueBinding.titleNumberOfLinesDefault(for:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v3 = [objc_opt_self() mainScreen];
    v2 = [v3 traitCollection];
  }

  v4 = a1;
  v5 = [v2 preferredContentSizeCategory];
  v6 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v6)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t DOCSidebarItemContentValueBinding.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void DOCSidebarItemContentValueBinding.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t DOCSidebarItemContentValueBinding.apply(to:)()
{
  if ((*(v0 + 24) & 1) == 0)
  {

    if (String.count.getter() <= 0)
    {
    }
  }

  UIListContentConfiguration.text.setter();
  v1 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v1(v6, 0);

  UIListContentConfiguration.secondaryText.setter();
  v2 = *(v0 + 56);
  UIListContentConfiguration.image.setter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  v3 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v3(v6, 0);
  v4 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.accessibilityIgnoresInvertColors.setter();
  return v4(v6, 0);
}

void __swiftcall DOCSidebarItemContentValueBinding.init()(DocumentManagerExecutables::DOCSidebarItemContentValueBinding *__return_ptr retstr)
{
  specialized DOCSidebarItemContentValueBinding.init()(v4);
  v2 = v4[1];
  retstr->title = v4[0];
  *&retstr->titleNumberOfLines = v2;
  v3 = v4[3];
  retstr->subtitle = v4[2];
  *&retstr->iconAccessibilityInvertColorsEnabled = v3;
}

uint64_t default argument 1 of DOCSidebarItemContentValueBinding.init(title:titleNumberOfLines:titleHiddenForEditing:subtitle:iconAccessibilityInvertColorsEnabled:icon:)()
{
  v0 = [objc_opt_self() mainScreen];
  v1 = [v0 traitCollection];

  v2 = [v1 preferredContentSizeCategory];
  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v3)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

id default argument 5 of DOCSidebarItemContentValueBinding.init(title:titleNumberOfLines:titleHiddenForEditing:subtitle:iconAccessibilityInvertColorsEnabled:icon:)()
{
  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DOCSidebarIcon.blank;

  return v0;
}

void __swiftcall DOCSidebarItemContentValueBinding.init(title:titleNumberOfLines:titleHiddenForEditing:subtitle:iconAccessibilityInvertColorsEnabled:icon:)(DocumentManagerExecutables::DOCSidebarItemContentValueBinding *__return_ptr retstr, Swift::String title, Swift::Int titleNumberOfLines, Swift::Bool titleHiddenForEditing, Swift::String_optional subtitle, Swift::Bool iconAccessibilityInvertColorsEnabled, UIImage icon)
{
  retstr->title = title;
  retstr->titleNumberOfLines = titleNumberOfLines;
  retstr->titleHiddenForEditing = titleHiddenForEditing;
  retstr->subtitle = subtitle;
  retstr->iconAccessibilityInvertColorsEnabled = iconAccessibilityInvertColorsEnabled;
  retstr->icon = icon;
}

double protocol witness for DOCCellContentConfigurationBindings.init() in conformance DOCSidebarItemContentValueBinding@<D0>(_OWORD *a1@<X8>)
{
  specialized DOCSidebarItemContentValueBinding.init()(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t DOCSidebarItemCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for DOCSidebarItemCell.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCSidebarItemCell.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for DOCSidebarItemCell.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

void DOCSidebarItemCell.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t DOCSidebarItemCell.isRepresentingFolder.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarItemCell.isRepresentingFolder.setter(char a1)
{
  v3 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL DOCSidebarItemCell.isRepresentingTag.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  return *(v0 + v1) != 0;
}

uint64_t DOCSidebarItemCell.isRepresentingUSB.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.isRepresentingUSB;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarItemCell.isRepresentingUSB.setter(char a1)
{
  v3 = direct field offset for DOCSidebarItemCell.isRepresentingUSB;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall DOCSidebarItemCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v26.receiver = v0;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_prepareForReuse);
  v2 = &v0[direct field offset for DOCSidebarItemCell.delegate];
  swift_beginAccess();
  *(v2 + 1) = 0;
  swift_unknownObjectWeakAssign();
  DOCSidebarItemCell.unseenIndicatorState.setter(0);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  LODWORD(v2) = objc_msgSendSuper2(&v25, sel_isEditing);
  v24.receiver = v0;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_setEditing_, 0);
  v23.receiver = v0;
  v23.super_class = ObjectType;
  if (v2 != objc_msgSendSuper2(&v23, sel_isEditing))
  {
    v22.receiver = v0;
    v22.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v22, sel_isEditing);
    DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
    v4 = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
    if (v4)
    {
      [v4 setUserInteractionEnabled_];
    }

    DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(v3);
  }

  v21.receiver = v0;
  v21.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v21, sel_isSelected);
  v20.receiver = v0;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_setSelected_, 0);
  v19.receiver = v0;
  v19.super_class = ObjectType;
  if (v5 != objc_msgSendSuper2(&v19, sel_isSelected))
  {
    [v0 setNeedsUpdateConfiguration];
  }

  v6 = direct field offset for DOCSidebarItemCell.sourceIsEnabled;
  swift_beginAccess();
  v7 = v0[v6];
  v0[v6] = 2;
  if (v7 != 2)
  {
    specialized DOCSidebarCell.removeAccessoryItem(named:)(0xD000000000000013, 0x8000000249BC8990);
  }

  v8 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  swift_beginAccess();
  v0[v8] = 0;
  v9 = direct field offset for DOCSidebarItemCell.isRepresentingUSB;
  swift_beginAccess();
  v0[v9] = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v10 = direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  outlined assign with copy of DOCSidebarItemIconProvider?(v17, &v0[v10]);
  swift_endAccess();
  DOCSidebarItemCell.updateContentViewIcons()();
  outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMR);
  v11 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  v12 = *&v0[v11];
  *&v0[v11] = 0;

  v13 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v14 = *&v0[v13];
  *&v0[v13] = 0;
  if (v14)
  {
    DOCSidebarItemCell.ejectionStateDidChange()();
  }

  v15 = *&v0[direct field offset for DOCSidebarItemCell.ejectionButton];
  *&v0[direct field offset for DOCSidebarItemCell.ejectionButton] = 0;
  if (v15)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  *&v0[direct field offset for DOCSidebarItemCell.cachedEjectAccesory] = 0;

  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v16 = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v16)
  {
    [v16 setHidden_];
  }

  [v0 setUserInteractionEnabled_];
}

uint64_t DOCSidebarItemCell.unseenIndicatorState.setter(uint64_t a1)
{
  v2 = a1;
  v3 = direct field offset for DOCSidebarItemCell.unseenIndicatorState;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v5 != v2)
  {
    v6 = DOCSidebarItemCell.UnseenIndicatorState.accessory.getter(v2);
    v7 = *(v1 + direct field offset for DOCSidebarItemCell.seenIndicatorAccessory);
    *(v1 + direct field offset for DOCSidebarItemCell.seenIndicatorAccessory) = v6;

    DOCSidebarItemCell.seenIndicatorAccessory.didset(v7);
  }

  return result;
}

void DOCSidebarItemCell.isEditing.setter(char a1)
{
  ObjectType = swift_getObjectType();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, sel_isEditing);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setEditing_, a1 & 1);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  if (v4 != objc_msgSendSuper2(&v8, sel_isEditing))
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v7, sel_isEditing);
    DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
    v6 = *&v1[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
    if (v6)
    {
      [v6 setUserInteractionEnabled_];
    }

    DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(v5);
  }
}

id DOCSidebarItemCell.isSelected.setter(char a1)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_isSelected);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_setSelected_, a1 & 1);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_isSelected);
  if (v4 != result)
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t DOCSidebarItemCell.sourceIsEnabled.setter(int a1)
{
  v3 = a1;
  v4 = direct field offset for DOCSidebarItemCell.sourceIsEnabled;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v3 == 2)
  {
    if (v6 != 2)
    {
      return specialized DOCSidebarCell.removeAccessoryItem(named:)(0xD000000000000013, 0x8000000249BC8990);
    }
  }

  else if (v6 == 2 || ((v6 ^ a1) & 1) != 0)
  {
    v7 = DOCSidebarItemCell.editingAccessorySwitch.getter();
    v8 = a1 & 1;
    *(v7 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.isOn) = v8;
    v9 = direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded;
    swift_beginAccess();
    v10 = *(v7 + v9);
    if (v10)
    {
      v11 = v10;
      [v11 setOn:v8 animated:0];
    }

    specialized DOCSidebarCell.addAccessoryItem(_:)(v12);
  }

  return result;
}

uint64_t DOCSidebarItemCell.iconProvider.setter(uint64_t a1)
{
  v3 = direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  outlined assign with copy of DOCSidebarItemIconProvider?(a1, v1 + v3);
  swift_endAccess();
  DOCSidebarItemCell.updateContentViewIcons()();
  return outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMR);
}

void DOCSidebarItemCell.ejectionController.setter(char *a1)
{
  v3 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (!v4)
    {
      v9 = a1;
LABEL_9:
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      goto LABEL_10;
    }

    v5 = v1;
    type metadata accessor for DOCEjectionController();
    v6 = a1;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {

      a1 = v7;
LABEL_11:

      return;
    }

    if (*(v5 + v3))
    {
      goto LABEL_9;
    }

LABEL_10:
    DOCSidebarItemCell.ejectionStateDidChange()();

    goto LABEL_11;
  }

  if (v4)
  {
    goto LABEL_10;
  }
}

void *DOCSidebarItemCell.inlineEditingTextField.getter()
{
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v1 = *(v0 + direct field offset for DOCSidebarItemCell._inlineEditingTextField);
  v2 = v1;
  return v1;
}

void @objc DOCSidebarItemCell.prepareForReuse()(void *a1)
{
  v1 = a1;
  DOCSidebarItemCell.prepareForReuse()();
}

Swift::Void __swiftcall DOCSidebarItemCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, isa, v7);
  DOCSidebarItemCell.updateContentViewIcons()();
  v10 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  DOCSidebarItemCell.updateEjectAccessoryItem(with:)();
  (*(v5 + 8))(v9, v4);
  DOCSidebarItemCell.updateProviderSyncStateAccessoryItem()();
  DOCSidebarItemCell.updateRemovableMediaStateAccessoryItem()();
  DOCSidebarItemCell.inlineEditingLayoutTraitCollectionDidChange(_:)(isa);
}

id DOCSidebarItemCell.updateContentViewIcons()()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v49 = *(v2 - 8);
  v50 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = specialized static CGSize.doc_preferredSourceListIconSize(for:)(v7);
  v10 = v9;
  v11 = objc_opt_self();
  isEscapingClosureAtFileLocation = [v11 unspecifiedConfiguration];

  v13 = UICollectionViewListCell.preferredIconColor.getter();
  if (!v13)
  {
    v14 = [v1 tintColor];
    if (v14)
    {
      goto LABEL_4;
    }

    v13 = [objc_opt_self() systemBlueColor];
  }

  v14 = v13;
LABEL_4:
  v15 = v1 + direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  if (*(v15 + 24))
  {
    outlined init with copy of DOCSidebarItemIconProvider(v15, aBlock);
    v16 = v53;
    v17 = v54;
    __swift_project_boxed_opaque_existential_1(aBlock, v53);
    v18 = (*(v17 + 1))(isEscapingClosureAtFileLocation, v1, v14, v16, v17, v8, v10, -12.0);
    LOBYTE(v15) = v19;
    v20 = __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {
    if (one-time initialization token for blank != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    LOBYTE(v15) = byte_27EF185B0;
    v20 = static DOCSidebarIcon.blank;
    v18 = v20;
  }

  v51 = &v46;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v23 = &v46 - 10;
  *(&v46 - 8) = v1;
  *(&v46 - 7) = v8;
  *(&v46 - 6) = v10;
  *(&v46 - 5) = isEscapingClosureAtFileLocation;
  *(&v46 - 4) = 0xC028000000000000;
  *(&v46 - 3) = v18;
  *(&v46 - 16) = v15 & 1;
  *(&v46 - 1) = v14;
  result = [v1 window];
  if (!result)
  {
    goto LABEL_13;
  }

  MEMORY[0x28223BE20](v26, v27);
  v28 = &v46 - 6;
  *(&v46 - 4) = partial apply for closure #1 in DOCSidebarItemCell.updateContentViewIcons();
  *(&v46 - 3) = v23;
  *(&v46 - 2) = v1;
  while (1)
  {
    v23 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = closure #1 in DOCSidebarCell.updateContentBindings(_:)specialized partial apply;
    *(v15 + 24) = v28;
    v1 = swift_allocObject();
    v1[2] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v1[3] = v15;
    v54 = thunk for @callee_guaranteed () -> ()partial apply;
    v55 = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    v53 = &block_descriptor_223;
    v6 = _Block_copy(aBlock);
    v11 = v55;

    [v23 performWithoutAnimation_];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    v29 = MEMORY[0x28223BE20](result, v25);
    v28 = &v46 - 6;
    *(&v46 - 4) = partial apply for closure #1 in DOCSidebarItemCell.updateContentViewIcons();
    *(&v46 - 3) = v23;
    *(&v46 - 2) = v1;
    v30 = [v1 window];
    if (v30)
    {

      v31 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68);
      swift_beginAccess();
      v32 = [v18 isSymbolImage];
      v33 = direct field offset for DOCSidebarItemCell.itemTag;
      swift_beginAccess();
      if (*(v1 + v33) || (v32 & 1) == 0)
      {
        v39 = [v18 imageWithRenderingMode_];
      }

      else
      {
        if (v15)
        {
          v34 = objc_opt_self();
          v48 = isEscapingClosureAtFileLocation;
          v35 = [v34 tintColor];
          v36 = [v11 configurationWithHierarchicalColor_];
          v47 = v36;

          v37 = v48;
          v38 = [v48 configurationByApplyingConfiguration_];
        }

        else
        {
          v38 = isEscapingClosureAtFileLocation;
        }

        v40 = [v18 imageWithConfiguration_];
        if (v15)
        {
          v41 = v40;

          v39 = v41;
        }

        else
        {
          v42 = v40;
          v43 = [v40 imageWithRenderingMode_];

          v39 = v43;
        }
      }

      v44 = *(v31 + 7);
      *(v31 + 7) = v39;

      v31[48] = 0;
      v31[48] = *(v1 + v33) != 0;
      swift_endAccess();
      v45 = [v1 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v6);
      return (*(v49 + 8))(v6, v50);
    }
  }

  return result;
}

uint64_t DOCSidebarItemCell.updateEjectAccessoryItem(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v51 = &v44 - v7;
  v52 = type metadata accessor for UIListContentConfiguration();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v8);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration.Size();
  v49 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = direct field offset for DOCSidebarItemCell.ejectionButton;
  v16 = *&v0[direct field offset for DOCSidebarItemCell.ejectionButton];
  if (v16)
  {
    v17 = direct field offset for DOCSidebarItemCell.cachedEjectAccesory;
    v18 = *&v0[direct field offset for DOCSidebarItemCell.cachedEjectAccesory];
    if (v18)
    {
      v19 = *(v18 + direct field offset for DOCSidebarItemCell.EjectAccessoryItem.ejectButton);
      type metadata accessor for DOCEjectButton(0);
      v20 = v16;
      v21 = v19;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v23 = v16;
    }

    type metadata accessor for DOCSidebarItemCell.EjectAccessoryItem(0);
    swift_allocObject();
    *&v1[v17] = DOCSidebarItemCell.EjectAccessoryItem.init(ejectButton:)(v16);

    specialized DOCSidebarCell.removeAccessoryItem(named:)(0x7463656A65, 0xE500000000000000);
LABEL_7:
  }

  v24 = [v1 traitCollection];
  v25 = [v24 sourceOutlineStyle];

  v26 = UICellConfigurationState.isSelected.getter();
  v27 = *&v1[direct field offset for DOCSidebarItemCell.cachedEjectAccesory];
  if (v27 && v26 & 1 | (v25 == 1))
  {

    v29 = specialized DOCSidebarCell.addAccessoryItem(_:)(v28);
    v30 = *&v1[v15];
    v31 = MEMORY[0x277D85000];
    if (v30)
    {
      (*(v49 + 104))(v14, *MEMORY[0x277D75030], v10, v29);
      v32 = *((*v31 & *v30) + 0x88);
      v33 = v30;
      v32(v14);
    }

    v34 = [objc_opt_self() tertiaryLabelColor];
    MEMORY[0x24C1FBB10](v53);
    v35 = v50;
    v36 = (v50 + 56);
    v37 = v52;
    if (v53[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd, &_s5UIKit22UIContentConfiguration_pMR);
      v38 = v51;
      v39 = swift_dynamicCast();
      (*(v35 + 56))(v38, v39 ^ 1u, 1, v37);
      if ((*(v35 + 48))(v38, 1, v37) != 1)
      {
        v40 = v45;
        (*(v35 + 32))(v45, v38, v37);
        v41 = v46;
        UIListContentConfiguration.imageProperties.getter();
        isa = UIListContentConfiguration.ImageProperties.resolvedTintColor(for:)(v34).super.isa;

        (*(v47 + 8))(v41, v48);
        (*(v35 + 8))(v40, v37);
        v34 = isa;
LABEL_20:
        (*((*v31 & **(v27 + direct field offset for DOCSidebarItemCell.EjectAccessoryItem.ejectButton)) + 0xF0))(v34);
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v53, &_s5UIKit22UIContentConfiguration_pSgMd, &_s5UIKit22UIContentConfiguration_pSgMR);
      v38 = v51;
      (*v36)(v51, 1, 1, v37);
    }

    outlined destroy of CharacterSet?(v38, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
    goto LABEL_20;
  }

  return specialized DOCSidebarCell.removeAccessoryItem(named:)(0x7463656A65, 0xE500000000000000);
}

uint64_t DOCSidebarItemCell.updateProviderSyncStateAccessoryItem()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v23[-1] - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23[-1] - v6;
  result = specialized DOCSidebarCell.accessoryItem(named:)(0xD000000000000013, 0x8000000249BC91D0);
  if (result)
  {
    type metadata accessor for DOCSidebarItemCell.ProviderSyncStateAccessoryItem(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = direct field offset for DOCSidebarItemCell.ProviderSyncStateAccessoryItem.accessoryView;
      v11 = v9;
      v12 = *(v9 + direct field offset for DOCSidebarItemCell.ProviderSyncStateAccessoryItem.accessoryView);
      v13 = UICollectionViewListCell.preferredIconColor.getter();
      v14 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v12) + 0xB8))(v13);

      v15 = *(v11 + v10);
      MEMORY[0x24C1FBB10](v23);
      if (v23[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd, &_s5UIKit22UIContentConfiguration_pMR);
        v16 = type metadata accessor for UIListContentConfiguration();
        v17 = swift_dynamicCast();
        v18 = *(v16 - 8);
        (*(v18 + 56))(v3, v17 ^ 1u, 1, v16);
        if ((*(v18 + 48))(v3, 1, v16) != 1)
        {
          UIListContentConfiguration.imageProperties.getter();
          (*(v18 + 8))(v3, v16);
          v19 = 0;
LABEL_11:
          v21 = type metadata accessor for UIListContentConfiguration.ImageProperties();
          (*(*(v21 - 8) + 56))(v7, v19, 1, v21);
          (*((*v14 & *v15) + 0xD0))(v7);
        }
      }

      else
      {
        outlined destroy of CharacterSet?(v23, &_s5UIKit22UIContentConfiguration_pSgMd, &_s5UIKit22UIContentConfiguration_pSgMR);
        v20 = type metadata accessor for UIListContentConfiguration();
        (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
      }

      outlined destroy of CharacterSet?(v3, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
      v19 = 1;
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t DOCSidebarItemCell.updateRemovableMediaStateAccessoryItem()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v23[-1] - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23[-1] - v6;
  result = specialized DOCSidebarCell.accessoryItem(named:)(0xD000000000000015, 0x8000000249BC91B0);
  if (result)
  {
    type metadata accessor for DOCSidebarItemCell.RemoveableItemStateAccessoryItem(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = direct field offset for DOCSidebarItemCell.RemoveableItemStateAccessoryItem.accessoryView;
      v11 = v9;
      v12 = *(v9 + direct field offset for DOCSidebarItemCell.RemoveableItemStateAccessoryItem.accessoryView);
      v13 = UICollectionViewListCell.preferredIconColor.getter();
      v14 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v12) + 0xD8))(v13);

      v15 = *(v11 + v10);
      MEMORY[0x24C1FBB10](v23);
      if (v23[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd, &_s5UIKit22UIContentConfiguration_pMR);
        v16 = type metadata accessor for UIListContentConfiguration();
        v17 = swift_dynamicCast();
        v18 = *(v16 - 8);
        (*(v18 + 56))(v3, v17 ^ 1u, 1, v16);
        if ((*(v18 + 48))(v3, 1, v16) != 1)
        {
          UIListContentConfiguration.imageProperties.getter();
          (*(v18 + 8))(v3, v16);
          v19 = 0;
LABEL_11:
          v21 = type metadata accessor for UIListContentConfiguration.ImageProperties();
          (*(*(v21 - 8) + 56))(v7, v19, 1, v21);
          (*((*v14 & *v15) + 0xF0))(v7);
        }
      }

      else
      {
        outlined destroy of CharacterSet?(v23, &_s5UIKit22UIContentConfiguration_pSgMd, &_s5UIKit22UIContentConfiguration_pSgMR);
        v20 = type metadata accessor for UIListContentConfiguration();
        (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
      }

      outlined destroy of CharacterSet?(v3, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
      v19 = 1;
      goto LABEL_11;
    }
  }

  return result;
}

void DOCSidebarItemCell.inlineEditingLayoutTraitCollectionDidChange(_:)(void *a1)
{
  v3 = [v1 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v8 = static UITraitCollection.Traits.sizeCategory;
  v9 = qword_27EEE9CC0;

  _StringGuts.grow(_:)(18);

  v6 = 0;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v4);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v7[0] = 0;
  v7[1] = 0x6172287469617254;
  v7[2] = 0xEF3A65756C615677;

  specialized OptionSet<>.insert(_:)(&v6, v8, *(&v8 + 1), v9);

  outlined destroy of UITraitCollection.Traits(&v8);
  v5 = UITraitCollection.doc_hasChanged(_:comparesTo:)(v7, a1);

  if (v5)
  {
    DOCSidebarItemCell.updateInlineEditingLeadingInset()();
  }
}

void @objc DOCSidebarItemCell.traitCollectionDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v11 = a3;
  v12 = a1;
  objc_msgSendSuper2(&v14, sel_traitCollectionDidChange_, v11);
  DOCSidebarItemCell.updateContentViewIcons()();
  v13 = [v12 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  DOCSidebarItemCell.updateEjectAccessoryItem(with:)();
  (*(v7 + 8))(v10, v6);
  DOCSidebarItemCell.updateProviderSyncStateAccessoryItem()();
  DOCSidebarItemCell.updateRemovableMediaStateAccessoryItem()();
  DOCSidebarItemCell.inlineEditingLayoutTraitCollectionDidChange(_:)(a3);
}

id DOCSidebarItemCell.updateConfiguration(using:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel__bridgedUpdateConfigurationUsingState_, isa);

  return DOCSidebarItemCell.updateContentViewIcons()();
}

uint64_t @objc DOCSidebarItemCell.updateConfiguration(using:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v13.receiver = v10;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel__bridgedUpdateConfigurationUsingState_, isa);

  DOCSidebarItemCell.updateContentViewIcons()();
  return (*(v6 + 8))(v9, v5);
}

uint64_t DOCSidebarItemCell.iconProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v1 + v3, a1, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMR);
}

uint64_t key path setter for DOCSidebarItemCell.iconProvider : DOCSidebarItemCell(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of DOCGridLayout.Spec?(a1, v6, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMR);
  v3 = *a2;
  v4 = direct field offset for DOCSidebarItemCell.iconProvider;
  swift_beginAccess();
  outlined assign with copy of DOCSidebarItemIconProvider?(v6, v3 + v4);
  swift_endAccess();
  DOCSidebarItemCell.updateContentViewIcons()();
  return outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMR);
}

id (*DOCSidebarItemCell.iconProvider.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSidebarItemCell.iconProvider.modify;
}

id DOCSidebarItemCell.iconProvider.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return DOCSidebarItemCell.updateContentViewIcons()();
  }

  return result;
}

void *DOCSidebarItemCell.RawImageIconProvider.icon.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t DOCSidebarItemCell.RawImageIconProvider.__allocating_init(icon:)(id a1, char a2)
{
  result = swift_allocObject();
  if (!a1)
  {
    v5 = result;
    if (one-time initialization token for blank != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    a2 = byte_27EF185B0;
    a1 = static DOCSidebarIcon.blank;
    result = v5;
  }

  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  return result;
}

uint64_t DOCSidebarItemCell.RawImageIconProvider.init(icon:)(id a1, char a2)
{
  if (!a1)
  {
    if (one-time initialization token for blank != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    a2 = byte_27EF185B0;
    a1 = static DOCSidebarIcon.blank;
  }

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return v2;
}

uint64_t DOCSidebarItemCell.TagIconProvider.__allocating_init(tag:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = [a1 labelIndex] == 0;
  return v2;
}

uint64_t DOCSidebarItemCell.TagIconProvider.init(tag:)(void *a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = [a1 labelIndex] == 0;
  return v1;
}

id DOCSidebarItemCell.TagIconProvider.icon(with:cell:variant:)(double a1, double a2, double a3, uint64_t a4, void *a5)
{
  v7 = [objc_opt_self() requestForTag:*(v5 + 16) tagDimension:a1 + a3];
  [v7 setAllowUnsizedSymbolImages_];
  if (*(v5 + 24) == 1)
  {
    specialized DOCSidebarItemCell.TagIconProvider.configureRequestForNoneTag(_:cell:)(v7, a5);
  }

  else
  {
    v8 = [a5 traitCollection];
    v9 = [v8 sourceOutlineStyle];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    [v7 setSelectionOutlineColor_];
  }

  v11 = [objc_opt_self() shared];
  v12 = [v11 renderImageWithRequest_];

  return v12;
}

uint64_t DOCSidebarItemCell.TagIconProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void closure #1 in DOCSidebarItemCell.updateContentViewIcons()(uint64_t a1, uint64_t a2, void *a3, id a4, char a5)
{
  v10 = [a4 isSymbolImage];
  v11 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  if (*(a2 + v11) || (v10 & 1) == 0)
  {
    v17 = [a4 imageWithRenderingMode_];
  }

  else
  {
    if (a5)
    {
      v12 = objc_opt_self();
      v13 = a3;
      v14 = [v12 tintColor];
      v15 = [objc_opt_self() configurationWithHierarchicalColor_];

      v16 = [v13 configurationByApplyingConfiguration_];
    }

    else
    {
      v16 = a3;
    }

    v18 = [a4 imageWithConfiguration_];
    v17 = v18;
    if (a5)
    {
    }

    else
    {
      v19 = [v18 imageWithRenderingMode_];

      v17 = v19;
    }
  }

  *(a1 + 56) = v17;
  *(a1 + 48) = 0;
  *(a1 + 48) = *(a2 + v11) != 0;
}

void *DOCSidebarItemCell.itemTag.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarItemCell.itemTag.setter(uint64_t a1)
{
  v3 = direct field offset for DOCSidebarItemCell.itemTag;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DOCSidebarItemCell.title : DOCSidebarItemCell@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - v5;
  specialized DOCSidebarCell.content.getter(&v11 - v5);
  v7 = &v6[*(v3 + 48)];
  v9 = *v7;
  v8 = *(v7 + 1);

  result = outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  *a1 = v9;
  a1[1] = v8;
  return result;
}

void DOCSidebarItemCell.title.setter(void *a1, uint64_t isEscapingClosureAtFileLocation)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v39 = isEscapingClosureAtFileLocation;
  v15 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  v16 = [v2 window];
  if (!v16)
  {
    goto LABEL_5;
  }

  v15 = &v35;
  MEMORY[0x28223BE20](v18, v19);
  v20 = &v35 - 6;
  *(&v35 - 4) = partial apply for closure #1 in DOCSidebarItemCell.title.setter;
  *(&v35 - 3) = v37;
  *(&v35 - 2) = v2;
  while (1)
  {
    a1 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for specialized closure #1 in DOCSidebarCell.updateContentBindings(_:);
    *(v9 + 24) = v20;
    v14 = swift_allocObject();
    *(v14 + 2) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    *(v14 + 3) = v9;
    aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v41 = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_2;
    v21 = _Block_copy(aBlock);
    v10 = v41;

    [a1 performWithoutAnimation_];

    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v36 = &v35;
    v22 = MEMORY[0x28223BE20](v16, v17);
    v20 = &v35 - 6;
    *(&v35 - 4) = partial apply for closure #1 in DOCSidebarItemCell.title.setter;
    *(&v35 - 3) = v37;
    *(&v35 - 2) = v2;
    v23 = [v2 v15[365]];
    if (v23)
    {

      v24 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68));
      swift_beginAccess();
      if (isEscapingClosureAtFileLocation)
      {
        v25 = a1;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (isEscapingClosureAtFileLocation)
      {
        v26 = isEscapingClosureAtFileLocation;
      }

      *v24 = v25;
      v24[1] = v26;

      v27 = [v2 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v14);

      (*(v10 + 1))(v14, v9);
      break;
    }

    v15 = v36;
  }

  DOCSidebarItemCell.updateInlineEditingTextFieldContent()();
  [objc_opt_self() sidebar];
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized DOCSidebarCell.content.getter(v8);
  v29 = &v8[*(v5 + 40)];
  v30 = *v29;
  v31 = v29[1];

  outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v32 = MEMORY[0x24C1FAD20](v30, v31);

  v33 = [ObjCClassFromMetadata itemWithTitle_];

  if (!v33)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = MEMORY[0x24C1FAD20](v34);
  }

  [v2 setAccessibilityIdentifier_];
}

double DOCSidebarItemCell.updateInlineEditingTextFieldContent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v27 - v3;
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v6 = *(v0 + direct field offset for DOCSidebarItemCell._inlineEditingTextField);
  if (!v6)
  {
    return result;
  }

  v7 = v6;
  specialized DOCSidebarCell.content.getter(v4);
  v8 = &v4[*(v1 + 40)];
  v10 = *v8;
  v9 = v8[1];

  outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v11 = [v7 text];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == v10 && v15 == v9)
  {

    goto LABEL_10;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
LABEL_8:

    v18 = MEMORY[0x24C1FAD20](v10, v9);

    [v7 setText_];
  }

LABEL_10:
  v19 = [v7 placeholder];
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 != v10 || v23 != v9)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {

LABEL_18:

      return result;
    }

LABEL_17:
    v26 = MEMORY[0x24C1FAD20](v10, v9);

    [v7 setPlaceholder_];

    goto LABEL_18;
  }

  return result;
}

void (*DOCSidebarItemCell.title.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[3] = v4;
  specialized DOCSidebarCell.content.getter(v4);
  v6 = (v5 + *(v3 + 40));
  v8 = *v6;
  v7 = v6[1];

  outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  *a1 = v8;
  a1[1] = v7;
  return DOCSidebarItemCell.title.modify;
}

uint64_t DOCSidebarItemCell.titleNumberOfLines.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  specialized DOCSidebarCell.content.getter(&v7 - v3);
  v5 = *&v4[*(v1 + 48) + 16];
  outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  return v5;
}

uint64_t key path getter for DOCSidebarItemCell.titleNumberOfLines : DOCSidebarItemCell@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - v5;
  specialized DOCSidebarCell.content.getter(&v9 - v5);
  v7 = *&v6[*(v3 + 48) + 16];
  result = outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  *a1 = v7;
  return result;
}

id DOCSidebarItemCell.titleNumberOfLines.setter(void *a1)
{
  v3 = type metadata accessor for UICellConfigurationState();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  isEscapingClosureAtFileLocation = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  result = [v1 window];
  if (!result)
  {
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v11, v12);
  v13 = &v19[-48];
  *&v19[-32] = partial apply for closure #1 in DOCSidebarItemCell.titleNumberOfLines.setter;
  *&v19[-24] = v19;
  *&v19[-16] = v1;
  while (1)
  {
    v14 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = closure #1 in DOCSidebarCell.updateContentBindings(_:)specialized partial apply;
    *(v3 + 24) = v13;
    v1 = swift_allocObject();
    v1[2] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v1[3] = v3;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_17;
    a1 = _Block_copy(aBlock);

    [v14 performWithoutAnimation_];
    _Block_release(a1);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v15 = MEMORY[0x28223BE20](result, v10);
    v13 = &v19[-48];
    *&v19[-32] = partial apply for closure #1 in DOCSidebarItemCell.titleNumberOfLines.setter;
    *&v19[-24] = v19;
    *&v19[-16] = v1;
    v16 = [v1 window];
    if (v16)
    {

      v17 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68);
      swift_beginAccess();
      *(v17 + 2) = a1;
      v18 = [v1 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(isEscapingClosureAtFileLocation);
      return (*(v4 + 8))(isEscapingClosureAtFileLocation, v3);
    }
  }

  return result;
}

void (*DOCSidebarItemCell.titleNumberOfLines.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[2] = v4;
  specialized DOCSidebarCell.content.getter(v4);
  v6 = *(v5 + *(v3 + 40) + 16);
  outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  *a1 = v6;
  return DOCSidebarItemCell.titleNumberOfLines.modify;
}

void DOCSidebarItemCell.titleNumberOfLines.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  DOCSidebarItemCell.titleNumberOfLines.setter(*a1);

  free(v1);
}

uint64_t key path getter for DOCSidebarItemCell.subtitle : DOCSidebarItemCell@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - v5;
  specialized DOCSidebarCell.content.getter(&v11 - v5);
  v7 = &v6[*(v3 + 48)];
  v9 = *(v7 + 4);
  v8 = *(v7 + 5);

  result = outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  *a1 = v9;
  a1[1] = v8;
  return result;
}

id DOCSidebarItemCell.subtitle.setter(void *a1, uint64_t isEscapingClosureAtFileLocation)
{
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = isEscapingClosureAtFileLocation;
  result = [v2 window];
  if (!result)
  {
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v13, v14);
  v15 = &v20[-48];
  *&v20[-32] = partial apply for closure #1 in DOCSidebarItemCell.subtitle.setter;
  *&v20[-24] = v20;
  *&v20[-16] = v2;
  while (1)
  {
    v10 = objc_opt_self();
    v2 = swift_allocObject();
    v2[2] = closure #1 in DOCSidebarCell.updateContentBindings(_:)specialized partial apply;
    v2[3] = v15;
    v5 = swift_allocObject();
    *(v5 + 16) = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    *(v5 + 24) = v2;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_29;
    a1 = _Block_copy(aBlock);

    [v10 performWithoutAnimation_];

    _Block_release(a1);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v16 = MEMORY[0x28223BE20](result, v12);
    v15 = &v20[-48];
    *&v20[-32] = partial apply for closure #1 in DOCSidebarItemCell.subtitle.setter;
    *&v20[-24] = v20;
    *&v20[-16] = v2;
    v17 = [v2 window];
    if (v17)
    {

      v18 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68);
      swift_beginAccess();
      *(v18 + 4) = a1;
      *(v18 + 5) = isEscapingClosureAtFileLocation;

      v19 = [v2 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v10);

      return (*(v6 + 8))(v10, v5);
    }
  }

  return result;
}

void (*DOCSidebarItemCell.subtitle.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[3] = v4;
  specialized DOCSidebarCell.content.getter(v4);
  v6 = v5 + *(v3 + 40);
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);

  outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  *a1 = v8;
  a1[1] = v7;
  return DOCSidebarItemCell.subtitle.modify;
}

void DOCSidebarItemCell.title.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[3];
  if (a2)
  {

    a3(v5, v4);
  }

  else
  {
    a3(*a1, v4);
  }

  free(v6);
}

uint64_t DOCSidebarItemCell.updateAccessoryItems(with:)()
{
  DOCSidebarItemCell.updateEjectAccessoryItem(with:)();
  DOCSidebarItemCell.updateProviderSyncStateAccessoryItem()();

  return DOCSidebarItemCell.updateRemovableMediaStateAccessoryItem()();
}

void *DOCSidebarItemCell.syncStateDomain.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.syncStateDomain;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarItemCell.syncStateDomain.didset(void *a1)
{
  v2 = v1;
  v4 = direct field offset for DOCSidebarItemCell.syncStateDomain;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return;
    }

    v5 = *(v2 + v4);
    if (v5)
    {
LABEL_5:
      type metadata accessor for DOCSidebarItemCell.ProviderSyncStateAccessoryItem(0);
      swift_allocObject();
      v9 = v5;
      v10 = specialized DOCSidebarItemCell.ProviderSyncStateAccessoryItem.init(for:)(v9);
      v11 = [objc_opt_self() shared];
      v21 = partial apply for closure #1 in DOCSidebarItemCell.syncStateDomain.didset;
      v22 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v20 = &block_descriptor_170;
      v12 = _Block_copy(&aBlock);

      [v11 performAfterLaunch_];
      _Block_release(v12);

      specialized DOCSidebarCell.addAccessoryItem(_:)(v10);
      goto LABEL_10;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (!specialized DOCSidebarCell.accessoryItem(named:)(0xD000000000000013, 0x8000000249BC91D0))
  {
    return;
  }

  type metadata accessor for DOCSidebarItemCell.ProviderSyncStateAccessoryItem(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() shared];
    v21 = partial apply for closure #2 in DOCSidebarItemCell.syncStateDomain.didset;
    v22 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v20 = &block_descriptor_167;
    v16 = _Block_copy(&aBlock);

    [v15 performAfterLaunch_];
    _Block_release(v16);

    specialized DOCSidebarCell.removeAccessoryItem(named:)(*(v14 + 16), *(v14 + 24));
  }

LABEL_10:
}

void (*DOCSidebarItemCell.syncStateDomain.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = direct field offset for DOCSidebarItemCell.syncStateDomain;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCSidebarItemCell.syncStateDomain.modify;
}

void *DOCSidebarItemCell.removableMediaStateDomain.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.removableMediaStateDomain;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarItemCell.syncStateDomain.setter(void *a1, uint64_t *a2, void (*a3)(void *))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;
  a3(v7);
}

uint64_t DOCSidebarItemCell.removableMediaStateDomain.didset(void *a1, double a2)
{
  v3 = v2;
  v5 = specialized DOCSidebarCell.accessoryItem(named:)(0xD000000000000015, 0x8000000249BC91B0);
  v6 = direct field offset for DOCSidebarItemCell.removableMediaStateDomain;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7)
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
    v8 = v7;
    v9 = a1;
    v10 = static NSObject.== infix(_:_:)();

    v7 = *(v3 + v6);
    if (v10)
    {
      if (!v7 || v5)
      {
      }

      goto LABEL_10;
    }

    if (v7)
    {
LABEL_10:
      v11 = one-time initialization token for shared;
      v12 = v7;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = static DOCUSBFormatting.shared;
      v14 = [v12 identifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = (*(*v13 + 160))(v15, v17);

      if (v18)
      {

        type metadata accessor for DOCSidebarItemCell.RemoveableItemStateAccessoryItem(0);
        swift_allocObject();
        v19 = v12;
        DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:)(v19);
        v21 = v20;
        v22 = [objc_opt_self() shared];
        v33 = partial apply for closure #1 in DOCSidebarItemCell.removableMediaStateDomain.didset;
        v34 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v30 = 1107296256;
        v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v32 = &block_descriptor_158;
        v23 = _Block_copy(&aBlock);

        [v22 performAfterLaunch_];
        _Block_release(v23);

        specialized DOCSidebarCell.addAccessoryItem(_:)(v21);
LABEL_18:
      }
    }
  }

  else if (!a1)
  {
  }

  if (specialized DOCSidebarCell.accessoryItem(named:)(0xD000000000000015, 0x8000000249BC91B0))
  {
    type metadata accessor for DOCSidebarItemCell.RemoveableItemStateAccessoryItem(0);
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      v26 = [objc_opt_self() shared];
      v33 = partial apply for closure #2 in DOCSidebarItemCell.removableMediaStateDomain.didset;
      v34 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v32 = &block_descriptor_155;
      v27 = _Block_copy(&aBlock);

      [v26 performAfterLaunch_];
      _Block_release(v27);

      specialized DOCSidebarCell.removeAccessoryItem(named:)(*(v25 + 16), *(v25 + 24));
    }

    goto LABEL_18;
  }
}

void (*DOCSidebarItemCell.removableMediaStateDomain.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = direct field offset for DOCSidebarItemCell.removableMediaStateDomain;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCSidebarItemCell.removableMediaStateDomain.modify;
}

void DOCSidebarItemCell.syncStateDomain.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v7 = (*a1 + 24);
  v6 = *v7;
  v9 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v10 = *(v9 + v8);
  *(v9 + v8) = *v7;
  v11 = v6;
  v12 = v11;
  if (a2)
  {
    v13 = v11;
    a3(v10);

    v10 = *v7;
  }

  else
  {
    a3(v10);
  }

  free(v5);
}

void DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:)(void *a1)
{
  v2 = v1;
  v59 = type metadata accessor for UICellAccessory.LayoutDimension();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v4);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v5;
  MEMORY[0x28223BE20](v6, v7);
  v60 = &v48 - v8;
  v9 = type metadata accessor for UICellAccessory.Placement();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v48 - v15;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static DOCUSBFormatting.shared;
  v18 = [a1 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = (*(*v17 + 160))(v19, v21);

  v54 = a1;
  if (v22)
  {
    v23 = objc_allocWithZone(type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem(0));
    v52 = v22;
    v24 = DOCRemovableMediaStateSidebarCellAccessoryItem.init(with:)(v52);
    *(v2 + direct field offset for DOCSidebarItemCell.RemoveableItemStateAccessoryItem.accessoryView) = v24;
    v25 = v24;
    v50 = v24;
    v53 = 0x8000000249BC91B0;
    v26 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
    v27 = *MEMORY[0x277D74A90];
    v28 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v28 - 8) + 104))(v16, v27, v28);
    *v26 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
    v26[1] = 0;
    v29 = *MEMORY[0x277D74AD8];
    v30 = *(v10 + 104);
    v51 = v16;
    v31 = v9;
    v48 = v9;
    v30(v16, v29, v9);
    v49 = swift_allocObject();
    *(v49 + 16) = v25;
    v32 = v57;
    v33 = v59;
    v34 = v60;
    (*(v57 + 104))(v60, *MEMORY[0x277D74AB0], v59);
    *(v2 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
    v35 = v55;
    (*(v10 + 16))(v55, v16, v31);
    v36 = v58;
    (*(v32 + 16))(v58, v34, v33);
    v37 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v38 = (v11 + *(v32 + 80) + v37) & ~*(v32 + 80);
    v39 = v38 + v56;
    v40 = swift_allocObject();
    v41 = v49;
    *(v40 + 16) = partial apply for closure #1 in DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:);
    *(v40 + 24) = v41;
    v42 = v35;
    v43 = v48;
    (*(v10 + 32))(v40 + v37, v42, v48);
    (*(v32 + 32))(v40 + v38, v36, v33);
    *(v40 + v39) = 2;
    v44 = v50;

    (*(v32 + 8))(v60, v33);
    (*(v10 + 8))(v51, v43);
    *(v2 + 32) = 1;
    v45 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
    v46 = type metadata accessor for UICellAccessory();
    (*(*(v46 - 8) + 56))(v2 + v45, 1, 1, v46);
    *(v2 + 16) = 0xD000000000000015;
    *(v2 + 24) = v53;
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:);
    swift_beginAccess();
    *(v2 + 32) = 1;
    v47 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
    *v47 = partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:);
    v47[1] = v40;
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCSidebarItemCell.ProviderSyncStateAccessoryItem.__deallocating_deinit(void *a1)
{

  outlined destroy of CharacterSet?(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, &_s5UIKit15UICellAccessoryVSgMd, "vP\t");

  return swift_deallocClassInstance();
}

uint64_t DOCSidebarItemCell.UnseenIndicatorState.accessory.getter(char a1)
{
  v46 = type metadata accessor for UICellAccessory.LayoutDimension();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v46, v4);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v50 = &v44 - v7;
  v8 = type metadata accessor for UICellAccessory.Placement();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v44 - v18;
  v20 = (&v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48) - v18);
  v21 = *MEMORY[0x277D74A88];
  v22 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v22 - 8) + 104))(v19, v21, v22);
  *v20 = closure #1 in default argument 1 of UICellAccessory.Placement.leading(_:);
  v20[1] = 0;
  (*(v9 + 104))(v19, *MEMORY[0x277D74AD0], v8);
  if (a1)
  {
    v47 = v15;
    if (a1 == 1)
    {
      v44 = *(v9 + 16);
      v45 = 0x8000000249BC9250;
      v44(v15, v19, v8);
      v23 = v50;
      v24 = v46;
      (*(v2 + 104))(v50, *MEMORY[0x277D74AB0], v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCySo6UIViewCGMd, &_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCySo6UIViewCGMR);
      v25 = swift_allocObject();
      *(v25 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
      v44(v48, v47, v8);
      (*(v2 + 16))(v49, v23, v24);
      v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v27 = (v10 + *(v2 + 80) + v26) & ~*(v2 + 80);
      v28 = v27 + v3;
      v29 = swift_allocObject();
      *(v29 + 16) = closure #1 in DOCSidebarItemCell.UnseenIndicatorState.accessory.getter;
      *(v29 + 24) = 0;
      (*(v9 + 32))(v29 + v26, v48, v8);
      (*(v2 + 32))(v29 + v27, v49, v24);
      *(v29 + v28) = 2;
      (*(v2 + 8))(v50, v24);
      v30 = *(v9 + 8);
      v30(v47, v8);
      v30(v19, v8);
      *(v25 + 32) = 1;
      v31 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
      v32 = type metadata accessor for UICellAccessory();
      (*(*(v32 - 8) + 56))(v25 + v31, 1, 1, v32);
      *(v25 + 16) = 0xD00000000000001CLL;
      *(v25 + 24) = v45;
      *(v25 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarItemCell.UnseenIndicatorState.accessory.getter;
    }

    else
    {
      v44 = *(v9 + 16);
      v45 = 0x8000000249BC9220;
      v44(v15, v19, v8);
      v35 = v50;
      v36 = v46;
      (*(v2 + 104))(v50, *MEMORY[0x277D74AB0], v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCySo6UIViewCGMd, &_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCySo6UIViewCGMR);
      v25 = swift_allocObject();
      *(v25 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
      v44(v48, v47, v8);
      (*(v2 + 16))(v49, v35, v36);
      v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v38 = (v10 + *(v2 + 80) + v37) & ~*(v2 + 80);
      v39 = v38 + v3;
      v29 = swift_allocObject();
      *(v29 + 16) = closure #2 in DOCSidebarItemCell.UnseenIndicatorState.accessory.getter;
      *(v29 + 24) = 0;
      (*(v9 + 32))(v29 + v37, v48, v8);
      (*(v2 + 32))(v29 + v38, v49, v36);
      *(v29 + v39) = 2;
      (*(v2 + 8))(v50, v36);
      v40 = *(v9 + 8);
      v40(v47, v8);
      v40(v19, v8);
      *(v25 + 32) = 1;
      v41 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
      v42 = type metadata accessor for UICellAccessory();
      (*(*(v42 - 8) + 56))(v25 + v41, 1, 1, v42);
      v43 = v45;
      *(v25 + 16) = 0xD000000000000020;
      *(v25 + 24) = v43;
      *(v25 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #1 of DOCSidebarItemCell.UnseenIndicatorState.accessory.getter;
    }

    swift_beginAccess();
    result = v25;
    *(v25 + 32) = 1;
    v33 = (v25 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
    *v33 = closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)specialized partial apply;
    v33[1] = v29;
  }

  else
  {
    (*(v9 + 8))(v19, v8);
    return 0;
  }

  return result;
}

id closure #1 in DOCSidebarItemCell.UnseenIndicatorState.accessory.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [objc_opt_self() linkColor];
  [v0 setBackgroundColor_];

  return v0;
}

id closure #2 in DOCSidebarItemCell.UnseenIndicatorState.accessory.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D18]);

  return [v0 initWithFrame_];
}

Swift::Int DOCSidebarItemCell.UnseenIndicatorState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

double DOCSidebarItemCell.seenIndicatorAccessory.didset(uint64_t a1)
{
  v3 = direct field offset for DOCSidebarItemCell.seenIndicatorAccessory;
  v4 = *(v1 + direct field offset for DOCSidebarItemCell.seenIndicatorAccessory);
  if (v4)
  {
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);

    if (!a1)
    {
      if (!v5)
      {
        return result;
      }

      if (!*(v1 + v3))
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    v5 = 0;
    v6 = 0;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);

  if (!v5)
  {
    if (!v8)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!v8)
  {
LABEL_17:

    goto LABEL_18;
  }

  if (v6 != v9 || v5 != v8)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return result;
    }

LABEL_18:
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);

    specialized DOCSidebarCell.removeAccessoryItem(named:)(v12, v13);

    if (!*(v1 + v3))
    {
      return result;
    }

LABEL_19:

    specialized DOCSidebarCell.addAccessoryItem(_:)(v14);

    return result;
  }

  return result;
}

uint64_t DOCSidebarItemCell.unseenIndicatorState.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.unseenIndicatorState;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*DOCSidebarItemCell.unseenIndicatorState.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for DOCSidebarItemCell.unseenIndicatorState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCSidebarItemCell.unseenIndicatorState.modify;
}

void DOCSidebarItemCell.unseenIndicatorState.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    DOCSidebarItemCell.unseenIndicatorState.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      v8 = DOCSidebarItemCell.UnseenIndicatorState.accessory.getter(v3);
      v9 = *(v7 + direct field offset for DOCSidebarItemCell.seenIndicatorAccessory);
      *(v7 + direct field offset for DOCSidebarItemCell.seenIndicatorAccessory) = v8;

      DOCSidebarItemCell.seenIndicatorAccessory.didset(v9);
    }
  }

  free(v2);
}

void *DOCSidebarItemCell.ejectionController.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void key path setter for DOCSidebarItemCell.syncStateDomain : DOCSidebarItemCell(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(void *))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;
  a6(v10);
}

void DOCSidebarItemCell.ejectionController.didset(void *a1)
{
  v3 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    type metadata accessor for DOCEjectionController();
    v5 = v4;
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    if (*(v1 + v3))
    {
LABEL_5:
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }
  }

  else if (!a1)
  {
    return;
  }

  DOCSidebarItemCell.ejectionStateDidChange()();
}

Swift::Void __swiftcall DOCSidebarItemCell.ejectionStateDidChange()()
{
  v1 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    if ([*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source) isEjectable])
    {
      v3 = *&v0[v1];
      if (v3)
      {
        v4 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source];
        v5 = v3;
        if ([v4 isEjectable])
        {
          v6 = v0;
          v7 = DOCEjectionController._button.getter();

          v8 = *&v0[direct field offset for DOCSidebarItemCell.ejectionButton];
          *&v0[direct field offset for DOCSidebarItemCell.ejectionButton] = v7;
          if (v8)
          {
            type metadata accessor for DOCEjectButton(0);
            v9 = v7;
            v8 = v8;
            v10 = static NSObject.== infix(_:_:)();

            if (v10)
            {

              goto LABEL_11;
            }

            v0 = v6;
          }

          else
          {
            v11 = v7;
          }

          [v0 setNeedsUpdateConfiguration];

          goto LABEL_11;
        }
      }
    }
  }

  v8 = *&v0[direct field offset for DOCSidebarItemCell.ejectionButton];
  *&v0[direct field offset for DOCSidebarItemCell.ejectionButton] = 0;
  if (!v8)
  {
    return;
  }

  [v0 setNeedsUpdateConfiguration];
LABEL_11:
}

void (*DOCSidebarItemCell.ejectionController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for DOCSidebarItemCell.ejectionController;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 72) = v6;
  v7 = v6;
  return DOCSidebarItemCell.ejectionController.modify;
}

void DOCSidebarItemCell.ejectionController.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (!v3)
    {
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (v7)
    {
      type metadata accessor for DOCEjectionController();
      v8 = v3;
      v9 = v7;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {

        v3 = v8;
LABEL_19:

LABEL_20:
        v3 = *v4;
        goto LABEL_24;
      }

      if (!*(v2[10] + v2[11]))
      {
LABEL_18:
        DOCSidebarItemCell.ejectionStateDidChange()();

        goto LABEL_19;
      }
    }

    else
    {
      v14 = v3;
    }

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    goto LABEL_18;
  }

  if (v3)
  {
    if (!v7)
    {
      v15 = v3;
LABEL_22:
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      goto LABEL_23;
    }

    type metadata accessor for DOCEjectionController();
    v11 = v3;
    v12 = v7;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {

      v3 = v11;
LABEL_24:

      goto LABEL_25;
    }

    if (*(v2[10] + v2[11]))
    {
      goto LABEL_22;
    }

LABEL_23:
    DOCSidebarItemCell.ejectionStateDidChange()();

    goto LABEL_24;
  }

  if (v7)
  {
    goto LABEL_23;
  }

LABEL_25:

  free(v2);
}

_BYTE *DOCSidebarItemCell.EjectAccessoryItem.init(ejectButton:)(void *a1)
{
  v3 = type metadata accessor for UICellAccessory.Placement();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v39 - v9;
  v41 = type metadata accessor for UICellAccessory.LayoutDimension();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v41, v13);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v45 = &v39 - v17;
  *(v1 + direct field offset for DOCSidebarItemCell.EjectAccessoryItem.ejectButton) = a1;
  v42 = v1;
  v40 = a1;
  (*(v11 + 104))(&v39 - v17, *MEMORY[0x277D74AB0], v16);
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
  v19 = *MEMORY[0x277D74A90];
  v20 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v20 - 8) + 104))(v10, v19, v20);
  *v18 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
  v18[1] = 0;
  v21 = *MEMORY[0x277D74AD8];
  v22 = *(v4 + 104);
  v39 = v3;
  v22(v10, v21, v3);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v1 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
  (*(v4 + 16))(v44, v10, v3);
  v24 = v43;
  v25 = v41;
  (*(v11 + 16))(v43, v45, v41);
  v26 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v27 = (v5 + *(v11 + 80) + v26) & ~*(v11 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #1 in DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:);
  *(v28 + 24) = v23;
  v29 = v28 + v26;
  v30 = v39;
  (*(v4 + 32))(v29, v44, v39);
  (*(v11 + 32))(v28 + v27, v24, v25);
  *(v28 + v27 + v12) = 1;
  v31 = *(v4 + 8);
  v32 = v40;
  v31(v10, v30);
  (*(v11 + 8))(v45, v25);
  v33 = v42;
  v34 = v42;
  *(v42 + 32) = 1;
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v36 = type metadata accessor for UICellAccessory();
  (*(*(v36 - 8) + 56))(v33 + v35, 1, 1, v36);
  *(v33 + 16) = 0x7463656A65;
  *(v33 + 24) = 0xE500000000000000;
  *(v33 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarItemCell.EjectAccessoryItem.init(ejectButton:);
  swift_beginAccess();
  *(v34 + 32) = 1;
  v37 = (v33 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v37 = partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:);
  v37[1] = v28;
  return v33;
}

uint64_t DOCSidebarItemCell.sourceIsEnabled.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.sourceIsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarItemCell.editingAccessorySwitch.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.$__lazy_storage_$_editingAccessorySwitch;
  if (*(v0 + direct field offset for DOCSidebarItemCell.$__lazy_storage_$_editingAccessorySwitch))
  {
    v2 = *(v0 + direct field offset for DOCSidebarItemCell.$__lazy_storage_$_editingAccessorySwitch);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DOCSidebarItemCell.SourceEnabledSwitchAccessory(0);
    swift_allocObject();
    v2 = DOCSidebarItemCell.SourceEnabledSwitchAccessory.init(didChangeValueHandler:)(partial apply for closure #1 in closure #1 in DOCSidebarItemCell.editingAccessorySwitch.getter, v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

void (*DOCSidebarItemCell.sourceIsEnabled.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = direct field offset for DOCSidebarItemCell.sourceIsEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return DOCSidebarItemCell.sourceIsEnabled.modify;
}

void DOCSidebarItemCell.sourceIsEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  DOCSidebarItemCell.sourceIsEnabled.setter(*(*a1 + 32));

  free(v1);
}

void closure #1 in closure #1 in DOCSidebarItemCell.editingAccessorySwitch.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + direct field offset for DOCSidebarItemCell.delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, *(a1 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.isOn), ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t DOCSidebarItemCell.SourceEnabledSwitchAccessory.init(didChangeValueHandler:)(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for UICellAccessory.LayoutDimension();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v42, v7);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v45 = &v39 - v10;
  v11 = type metadata accessor for UICellAccessory.Placement();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v39 - v17;
  *(v2 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.isOn) = 0;
  v19 = (v2 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.didChangeValueHandler);
  *v19 = a1;
  v19[1] = a2;
  v44 = 0x8000000249BC8990;
  v20 = (&v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48) - v17);
  v21 = *MEMORY[0x277D74A88];
  v22 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v22 - 8) + 104))(v18, v21, v22);
  *v20 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
  v20[1] = 0;
  v23 = *MEMORY[0x277D74AD8];
  v24 = *(v12 + 104);
  v40 = v11;
  v24(v18, v23, v11);
  v25 = v45;
  v26 = v42;
  (*(v5 + 104))(v45, *MEMORY[0x277D74AB0], v42);
  *(v2 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
  (*(v12 + 16))(&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v11);
  v27 = v43;
  v28 = v26;
  (*(v5 + 16))(v43, v25, v26);
  v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v30 = (v13 + *(v5 + 80) + v29) & ~*(v5 + 80);
  v31 = v30 + v6;
  v32 = swift_allocObject();
  *(v32 + 16) = closure #1 in DOCSidebarItemCell.SourceEnabledSwitchAccessory.init(didChangeValueHandler:);
  *(v32 + 24) = 0;
  v33 = v32 + v29;
  v34 = v40;
  (*(v12 + 32))(v33, v41, v40);
  (*(v5 + 32))(v32 + v30, v27, v28);
  *(v32 + v31) = 2;
  (*(v5 + 8))(v45, v28);
  (*(v12 + 8))(v18, v34);
  *(v2 + 32) = 1;
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v36 = type metadata accessor for UICellAccessory();
  (*(*(v36 - 8) + 56))(v2 + v35, 1, 1, v36);
  *(v2 + 16) = 0xD000000000000013;
  *(v2 + 24) = v44;
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarItemCell.SourceEnabledSwitchAccessory.init(didChangeValueHandler:);
  swift_beginAccess();
  *(v2 + 32) = 1;
  v37 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v37 = partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:);
  v37[1] = v32;
  return v2;
}

id closure #1 in DOCSidebarItemCell.SourceEnabledSwitchAccessory.init(didChangeValueHandler:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75AE8]);

  return [v0 init];
}

void DOCSidebarItemCell.SourceEnabledSwitchAccessory.didLoad(view:)(void *a1)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [a1 addAction:v3 forControlEvents:{4096, 0, 0, 0, partial apply for closure #1 in DOCSidebarItemCell.SourceEnabledSwitchAccessory.didLoad(view:), v2}];
}

uint64_t closure #1 in DOCSidebarItemCell.SourceEnabledSwitchAccessory.didLoad(view:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(*result + 216);

    v5 = v4();

    if (v5)
    {
      v6 = [v5 isOn];
      *(v3 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.isOn) = v6;
      v7 = direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded;
      swift_beginAccess();
      v8 = *(v3 + v7);
      if (v8)
      {
        [v8 setOn:v6 animated:0];
      }

      v9 = *(v3 + direct field offset for DOCSidebarItemCell.SourceEnabledSwitchAccessory.didChangeValueHandler);

      v9(v3);
    }
  }

  return result;
}

uint64_t DOCSidebarItemCell.SourceEnabledSwitchAccessory.__deallocating_deinit()
{

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded, &_s5UIKit15UICellAccessoryVSgMd, "vP\t");

  return swift_deallocClassInstance();
}

void vtable thunk for DOCSidebarCellCustomAccessoryItem.__allocating_init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:) dispatching to DOCSidebarItemCell.ProviderSyncStateAccessoryItem.__allocating_init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void @objc DOCSidebarItemCell.isSelected.setter(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, sel_isSelected);
  v9.receiver = v6;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setSelected_, a3);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if (v7 != objc_msgSendSuper2(&v8, sel_isSelected))
  {
    [v6 setNeedsUpdateConfiguration];
  }
}

void (*DOCSidebarItemCell.isSelected.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 120) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 128) = objc_msgSendSuper2(v4, sel_isSelected);
  return DOCSidebarItemCell.isSelected.modify;
}

void DOCSidebarItemCell.isSelected.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver_low = LOBYTE((*a1)[8].receiver);
  receiver = (*a1)[7].receiver;
  super_class = (*a1)[7].super_class;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = receiver;
    v2[1].super_class = super_class;
    v7 = objc_msgSendSuper2(v6 + 1, sel_isSelected);
    v2[2].receiver = receiver;
    v2[2].super_class = super_class;
    objc_msgSendSuper2(v2 + 2, sel_setSelected_, receiver_low);
    v2[3].receiver = receiver;
    v8 = v2 + 3;
  }

  else
  {
    v6[4].receiver = receiver;
    v2[4].super_class = super_class;
    v7 = objc_msgSendSuper2(v6 + 4, sel_isSelected);
    v2[5].receiver = receiver;
    v2[5].super_class = super_class;
    objc_msgSendSuper2(v2 + 5, sel_setSelected_, receiver_low);
    v2[6].receiver = receiver;
    v8 = v2 + 6;
  }

  v8->super_class = super_class;
  if (v7 != [(objc_super *)v8 isSelected])
  {
    [v2[7].receiver setNeedsUpdateConfiguration];
  }

  free(v2);
}

Swift::Void __swiftcall DOCSidebarItemCell.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_tintColorDidChange);
  [v0 setNeedsUpdateConfiguration];
}

void @objc DOCSidebarItemCell.tintColorDidChange()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_tintColorDidChange);
  [v1 setNeedsUpdateConfiguration];
}

uint64_t DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename.setter(char a1)
{
  v3 = direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id @objc DOCSidebarItemCell.isSelected.getter(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

id DOCSidebarItemCell.isSelected.getter(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

void @objc DOCSidebarItemCell.isEditing.setter(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  DOCSidebarItemCell.isEditing.setter(a3);
}

void DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(char a1)
{
  v2 = v1;
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v4 = *&v1[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v4)
  {
    v5 = &v1[direct field offset for DOCSidebarItemCell.delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 32);
      v9 = v4;
      LOBYTE(v6) = v8(v1, ObjectType, v6);
      swift_unknownObjectRelease();
      if (v6)
      {
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        *(v10 + 24) = a1 & 1;
        *(v10 + 32) = v1;
        v11 = objc_opt_self();
        v12 = swift_allocObject();
        v12[2] = partial apply for closure #1 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:);
        v12[3] = v10;
        v12[4] = v2;
        v13 = swift_allocObject();
        *(v13 + 16) = partial apply for closure #2 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:);
        *(v13 + 24) = v12;
        aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_236;
        v14 = _Block_copy(aBlock);
        v15 = v2;
        v9 = v9;
        v16 = v15;

        [v11 performWithoutAnimation_];

        _Block_release(v14);
        LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

        if ((v15 & 1) == 0)
        {
          return;
        }

        __break(1u);
      }
    }
  }
}

void (*DOCSidebarItemCell.isEditing.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 152) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 160) = objc_msgSendSuper2(v4, sel_isEditing);
  return DOCSidebarItemCell.isEditing.modify;
}

void DOCSidebarItemCell.isEditing.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver_low = LOBYTE((*a1)[10].receiver);
  receiver = (*a1)[9].receiver;
  super_class = (*a1)[9].super_class;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = receiver;
    v2[1].super_class = super_class;
    v7 = objc_msgSendSuper2(v6 + 1, sel_isEditing);
    v2[2].receiver = receiver;
    v2[2].super_class = super_class;
    objc_msgSendSuper2(v2 + 2, sel_setEditing_, receiver_low);
    v2[3].receiver = receiver;
    v2[3].super_class = super_class;
    if (v7 == objc_msgSendSuper2(v2 + 3, sel_isEditing))
    {
      goto LABEL_9;
    }

    v12 = v2[9];
    v2[4] = v12;
    v8 = objc_msgSendSuper2(v2 + 4, sel_isEditing, v12);
  }

  else
  {
    v6[5].receiver = receiver;
    v2[5].super_class = super_class;
    v9 = objc_msgSendSuper2(v6 + 5, sel_isEditing);
    v2[6].receiver = receiver;
    v2[6].super_class = super_class;
    objc_msgSendSuper2(v2 + 6, sel_setEditing_, receiver_low);
    v2[7].receiver = receiver;
    v2[7].super_class = super_class;
    if (v9 == objc_msgSendSuper2(v2 + 7, sel_isEditing))
    {
      goto LABEL_9;
    }

    v14 = v2[9];
    v2[8] = v14;
    v8 = objc_msgSendSuper2(v2 + 8, sel_isEditing, v14);
  }

  v10 = v8;
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v11 = *(v13 + direct field offset for DOCSidebarItemCell._inlineEditingTextField);
  if (v11)
  {
    [v11 setUserInteractionEnabled_];
  }

  DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(v10);
LABEL_9:

  free(v2);
}

id @objc DOCSidebarItemCell.canBecomeFocused.getter(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v4 = *&v3[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v4 && [v4 isFirstResponder])
  {

    return 0;
  }

  else
  {
    v7.receiver = v3;
    v7.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v7, sel_canBecomeFocused);
  }

  return v5;
}

id DOCSidebarItemCell.canBecomeFocused.getter()
{
  ObjectType = swift_getObjectType();
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v2 = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v2 && ([v2 isFirstResponder] & 1) != 0)
  {
    return 0;
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_canBecomeFocused);
}

Swift::Void __swiftcall DOCSidebarItemCell.startInlineTextEditing()()
{
  ObjectType = swift_getObjectType();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  if (objc_msgSendSuper2(&v7, sel_isSelected))
  {
    v2 = direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename;
    swift_beginAccess();
    v0[v2] = 1;
    v6.receiver = v0;
    v6.super_class = ObjectType;
    LODWORD(v2) = objc_msgSendSuper2(&v6, sel_isSelected);
    v5.receiver = v0;
    v5.super_class = ObjectType;
    objc_msgSendSuper2(&v5, sel_setSelected_, 0);
    v4.receiver = v0;
    v4.super_class = ObjectType;
    if (v2 != objc_msgSendSuper2(&v4, sel_isSelected))
    {
      [v0 setNeedsUpdateConfiguration];
    }
  }

  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(1);
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v3 = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v3)
  {
    [v3 setUserInteractionEnabled_];
  }

  DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(1);
}

void DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(int a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v43[-v10];
  v12 = direct field offset for DOCSidebarItemCell._inlineEditingTextField;
  if (!*&v1[direct field offset for DOCSidebarItemCell._inlineEditingTextField])
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v48.receiver = v1;
      v48.super_class = ObjectType;
      if (objc_msgSendSuper2(&v48, sel_isEditing) & 1) != 0 || (a1)
      {
        specialized DOCSidebarCell.content.getter(v11);
        v13 = *&v11[*(v4 + 44)];
        outlined destroy of CharacterSet?(v11, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
        v14 = [v13 textLayoutGuide];

        if (v14)
        {
          v44 = a1;
          v15 = [objc_allocWithZone(MEMORY[0x277D75BB8]) initWithFrame_];
          [v15 setTranslatesAutoresizingMaskIntoConstraints_];
          [v15 setTextSelectionBehavior_];
          specialized DOCSidebarCell.content.getter(v7);
          v16 = *&v7[*(v4 + 44)];
          outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
          [v16 addSubview_];

          v17 = [v15 leadingAnchor];
          v18 = [v14 leadingAnchor];
          v19 = [v17 constraintEqualToAnchor_];

          v45 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_249BA0470;
          *(v20 + 32) = v19;
          v46 = v19;
          v21 = [v15 trailingAnchor];
          specialized DOCSidebarCell.content.getter(v7);
          v22 = *&v7[*(v4 + 44)];
          outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
          v23 = [v22 layoutMarginsGuide];

          v24 = [v23 trailingAnchor];
          v25 = [v21 constraintEqualToAnchor_];

          *(v20 + 40) = v25;
          v26 = [v15 topAnchor];
          v27 = [v14 topAnchor];
          v28 = [v26 constraintEqualToAnchor_];

          *(v20 + 48) = v28;
          v29 = [v15 bottomAnchor];
          v30 = [v14 bottomAnchor];
          v31 = [v29 constraintEqualToAnchor_];

          *(v20 + 56) = v31;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v45 activateConstraints_];

          [v15 setEnablesReturnKeyAutomatically_];
          [v15 setKeyboardType_];
          [v15 setReturnKeyType_];
          [v15 setDelegate_];
          [v15 setHidden_];

          [v15 setAdjustsFontForContentSizeCategory_];
          v33 = [objc_opt_self() preferredFontForTextStyle_];
          [v15 setFont_];

          v34 = *&v1[v12];
          *&v1[v12] = v15;
          v35 = v15;

          v36 = *&v1[direct field offset for DOCSidebarItemCell._inlineEditingLeadingConstraint];
          v37 = v46;
          *&v1[direct field offset for DOCSidebarItemCell._inlineEditingLeadingConstraint] = v46;
          v38 = v37;

          DOCSidebarItemCell.updateInlineEditingLeadingInset()();
          DOCSidebarItemCell.updateInlineEditingTextFieldContent()();
          DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
          v39 = *&v1[v12];
          if (v39)
          {
            v47.receiver = v1;
            v47.super_class = ObjectType;
            v40 = v39;
            v41 = objc_msgSendSuper2(&v47, sel_isEditing);
            v42 = 1.0;
            if (((v41 | v44) & 1) == 0)
            {
              v42 = 0.0;
            }

            [v40 setAlpha_];
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCSidebarItemCell.stopInlineTextEditing()()
{
  ObjectType = swift_getObjectType();
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v2 = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v2)
  {
    [v2 setUserInteractionEnabled_];
  }

  DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(0);
  v3 = direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename;
  swift_beginAccess();
  if (v0[v3] == 1)
  {
    v0[v3] = 0;
    v7.receiver = v0;
    v7.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v7, sel_isSelected);
    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, sel_setSelected_, 1);
    v5.receiver = v0;
    v5.super_class = ObjectType;
    if (v4 != objc_msgSendSuper2(&v5, sel_isSelected))
    {
      [v0 setNeedsUpdateConfiguration];
    }
  }
}

Swift::Bool __swiftcall DOCSidebarItemCell.textFieldShouldBeginEditing(_:)(UITextField *a1)
{
  v2 = v1 + direct field offset for DOCSidebarItemCell.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 32))(v1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void closure #1 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(void *a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v50 - v8;
  v10 = type metadata accessor for UICellConfigurationState();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  [a1 setHidden_];
  v52[16] = a2;
  v16 = [a3 window];
  if (v16)
  {

    MEMORY[0x28223BE20](v18, v19);
    v20 = &v50 - 6;
    *(&v50 - 4) = partial apply for closure #1 in closure #1 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:);
    *(&v50 - 3) = v52;
    *(&v50 - 2) = a3;
  }

  else
  {
    v34 = MEMORY[0x28223BE20](0, v17);
    v20 = &v50 - 6;
    *(&v50 - 4) = partial apply for closure #1 in closure #1 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:);
    *(&v50 - 3) = v52;
    *(&v50 - 2) = a3;
    v35 = [a3 window];
    if (v35)
    {

      v36 = a3 + *((*MEMORY[0x277D85000] & *a3) + 0x68);
      swift_beginAccess();
      v36[24] = a2 & 1;
      v37 = [a3 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v15);
      (*(v11 + 8))(v15, v10);
      if (a2)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }
  }

  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = closure #1 in DOCSidebarCell.updateContentBindings(_:)specialized partial apply;
  *(v22 + 24) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  *(v23 + 24) = v22;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_248;
  v24 = _Block_copy(aBlock);

  [v21 performWithoutAnimation_];
  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    return;
  }

  if (a2)
  {
LABEL_5:
    specialized DOCSidebarCell.content.getter(v9);
    v25 = &v9[*(v6 + 40)];
    v26 = *v25;
    v27 = v25[1];

    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
    v28 = MEMORY[0x24C1FAD20](v26, v27);

    v29 = v51;
    [v51 setText_];

    specialized DOCSidebarCell.content.getter(v9);
    v30 = &v9[*(v6 + 40)];
    v31 = *v30;
    v32 = v30[1];

    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
    v33 = MEMORY[0x24C1FAD20](v31, v32);

    [v29 setPlaceholder_];

    return;
  }

LABEL_8:
  specialized DOCSidebarCell.content.getter(v9);
  outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v38 = [a3 traitCollection];
  v39 = v38;
  if (!v38)
  {
    v40 = [objc_opt_self() mainScreen];
    v39 = [v40 traitCollection];
  }

  v41 = v38;
  v42 = [v39 preferredContentSizeCategory];
  v43 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v43)
  {
    v44 = 3;
  }

  else
  {
    v44 = 2;
  }

  DOCSidebarItemCell.titleNumberOfLines.setter(v44);
  v45 = [v51 text];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  DOCSidebarItemCell.title.setter(v47, v49);
}

void closure #2 in DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(double (*a1)(double))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v3 = v2 - 8;
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v9 - v6;
  a1(v5);
  specialized DOCSidebarCell.content.getter(v7);
  v8 = *&v7[*(v3 + 52)];
  outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  [v8 layoutBelowIfNeeded];
}

uint64_t @objc DOCSidebarItemCell.accessibilityExpanded.getter(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  v8 = [v7 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v8) = UICellConfigurationState.isExpanded.getter();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t DOCSidebarItemCell.accessibilityExpanded.getter()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v7) = UICellConfigurationState.isExpanded.getter();
  (*(v2 + 8))(v6, v1);
  return v7 & 1;
}

id @objc DOCSidebarItemCell.accessibilityIsEjectable.getter(uint64_t a1)
{
  v2 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    return [*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source) isEjectable];
  }

  else
  {
    return 0;
  }
}

id DOCSidebarItemCell.isEjectable.getter()
{
  v1 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source) isEjectable];
  }

  else
  {
    return 0;
  }
}

uint64_t @objc DOCSidebarItemCell.accessibilityShowFolder.getter(uint64_t a1)
{
  v2 = direct field offset for DOCSidebarItemCell.isRepresentingFolder;
  swift_beginAccess();
  return *(a1 + v2);
}

id @objc DOCSidebarItemCell.accessibilityTitle.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  v7 = a1;
  specialized DOCSidebarCell.content.getter(v6);

  v8 = &v6[*(v3 + 48)];
  v9 = *v8;
  v10 = v8[1];

  outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v11 = MEMORY[0x24C1FAD20](v9, v10);

  return v11;
}

uint64_t DOCSidebarItemCell.title.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  specialized DOCSidebarCell.content.getter(&v7 - v3);
  v5 = *&v4[*(v1 + 48)];

  outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  return v5;
}

id @objc DOCSidebarItemCell.accessibilitySubtitle.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  v7 = a1;
  specialized DOCSidebarCell.content.getter(v6);

  v8 = &v6[*(v3 + 48)];
  v10 = *(v8 + 4);
  v9 = *(v8 + 5);

  outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  if (v9)
  {
    v11 = MEMORY[0x24C1FAD20](v10, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t DOCSidebarItemCell.subtitle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  specialized DOCSidebarCell.content.getter(&v7 - v3);
  v5 = *&v4[*(v1 + 48) + 32];

  outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  return v5;
}

void *@objc DOCSidebarItemCell.accessibilityTitleTextField.getter(void *a1)
{
  v1 = a1;
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v2 = *&v1[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  v3 = v2;

  return v2;
}

id DOCSidebarItemCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSidebarItemCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[direct field offset for DOCSidebarItemCell.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[direct field offset for DOCSidebarItemCell.isRepresentingFolder] = 0;
  v4[direct field offset for DOCSidebarItemCell.isRepresentingUSB] = 0;
  v10 = &v4[direct field offset for DOCSidebarItemCell.iconProvider];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[direct field offset for DOCSidebarItemCell.itemTag] = 0;
  *&v4[direct field offset for DOCSidebarItemCell._inlineEditingTextField] = 0;
  *&v4[direct field offset for DOCSidebarItemCell._inlineEditingLeadingConstraint] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.syncStateDomain] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.removableMediaStateDomain] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.seenIndicatorAccessory] = 0;
  v4[direct field offset for DOCSidebarItemCell.unseenIndicatorState] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.ejectionController] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.ejectionButton] = 0;
  *&v4[direct field offset for DOCSidebarItemCell.cachedEjectAccesory] = 0;
  v4[direct field offset for DOCSidebarItemCell.sourceIsEnabled] = 2;
  *&v4[direct field offset for DOCSidebarItemCell.$__lazy_storage_$_editingAccessorySwitch] = 0;
  v4[direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t DOCSidebarItemCell.__ivar_destroyer()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + direct field offset for DOCSidebarItemCell.delegate);
  outlined destroy of CharacterSet?(v0 + direct field offset for DOCSidebarItemCell.iconProvider, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMR);
}

id DOCSidebarItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc DOCSidebarItemCell.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of weak DOCPresentationPreheatable?(a1 + direct field offset for DOCSidebarItemCell.delegate);
  outlined destroy of CharacterSet?(a1 + direct field offset for DOCSidebarItemCell.iconProvider, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMR);
}

uint64_t specialized DOCSidebarCell.content.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v33 - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIListContentConfiguration();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UICellConfigurationState();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized DOCSidebarCell.ensureHasContentViewConfiguration()();
  v19 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x24C1FBB10](&v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd, &_s5UIKit22UIContentConfiguration_pSgMR);
  v36 = v11;
  swift_dynamicCast();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellCyAA0D23ItemContentValueBindingVGMd, &_s26DocumentManagerExecutables14DOCSidebarCellCyAA0D23ItemContentValueBindingVGMR);
  v43.receiver = v1;
  v43.super_class = v20;
  v21 = objc_msgSendSuper2(&v43, sel_contentView);
  objc_opt_self();
  v33 = swift_dynamicCastObjCClassUnconditional();
  MEMORY[0x24C1FBB30]();
  v22 = *(v8 + 48);
  if (v22(v6, 1, v7) == 1)
  {
    static UIBackgroundConfiguration.clear()();
    if (v22(v6, 1, v7) != 1)
    {
      outlined destroy of CharacterSet?(v6, &_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
    }
  }

  else
  {
    (*(v8 + 32))(v37, v6, v7);
  }

  v23 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  v24 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68));
  swift_beginAccess();
  v25 = v24[1];
  v39 = *v24;
  v40 = v25;
  v26 = v24[3];
  v41 = v24[2];
  v42 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v28 = v36;
  (*(v12 + 16))(&a1[v27[12]], v15, v36);
  v29 = &a1[v27[10]];
  v30 = v40;
  *v29 = v39;
  v29[1] = v30;
  v31 = v42;
  v29[2] = v41;
  v29[3] = v31;
  *a1 = v23;
  (*(v34 + 32))(&a1[v27[9]], v18, v35);
  *&a1[v27[11]] = v33;
  (*(v8 + 32))(&a1[v27[13]], v37, v7);
  outlined init with copy of DOCSidebarItemContentValueBinding(&v39, v38);
  return (*(v12 + 8))(v15, v28);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v34 - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIListContentConfiguration();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UICellConfigurationState();
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized DOCSidebarCell.ensureHasContentViewConfiguration()();
  v20 = [v1 _bridgedConfigurationState];
  v36 = v19;
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x24C1FBB10](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd, &_s5UIKit22UIContentConfiguration_pSgMR);
  v39 = v11;
  swift_dynamicCast();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellCyAA0D25HeaderContentValueBindingVGMd, "~P\t");
  v41.receiver = v1;
  v41.super_class = v21;
  v22 = objc_msgSendSuper2(&v41, sel_contentView);
  objc_opt_self();
  v35 = swift_dynamicCastObjCClassUnconditional();
  MEMORY[0x24C1FBB30]();
  v23 = *(v8 + 48);
  v24 = v7;
  if (v23(v6, 1, v7) == 1)
  {
    static UIBackgroundConfiguration.clear()();
    if (v23(v6, 1, v7) != 1)
    {
      outlined destroy of CharacterSet?(v6, &_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
    }
  }

  else
  {
    (*(v8 + 32))(v40, v6, v7);
  }

  v25 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  v26 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68));
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  v30 = v39;
  (*(v12 + 16))(&a1[v29[12]], v15, v39);
  v31 = &a1[v29[10]];
  *v31 = v28;
  v31[1] = v27;
  *a1 = v25;
  (*(v37 + 32))(&a1[v29[9]], v36, v38);
  *&a1[v29[11]] = v35;
  (*(v8 + 32))(&a1[v29[13]], v40, v24);
  v32 = *(v12 + 8);

  return v32(v15, v30);
}

uint64_t specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v44 = &v41 - v5;
  v45 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v41 - v21;
  (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v20);
  type metadata accessor for UICellConfigurationState();
  lazy protocol witness table accessor for type UICellConfigurationState and conformance UICellConfigurationState();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0 || (*v22 & 1) == 0)
  {
    static UIListContentConfiguration.subtitleCell()();
    v23 = v42;
    static UIBackgroundConfiguration.listCell()();
    (*(v10 + 40))(&v22[v14[12]], v13, v9);
    (*(v6 + 40))(&v22[v14[13]], v23, v45);
  }

  v24 = &v22[v14[10]];
  v25 = v24[1];
  v54 = *v24;
  v55 = v25;
  v26 = v24[3];
  v56 = v24[2];
  v57 = v26;
  DOCSidebarItemContentValueBinding.apply(to:)();
  outlined init with copy of DOCGridLayout.Spec?(v22, v17, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v27 = v14[12];
  *(&v51 + 1) = v9;
  *&v52 = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
  (*(v10 + 16))(boxed_opaque_existential_1, &v17[v27], v9);
  MEMORY[0x24C1FBB20](&v50);
  v29 = v44;
  v30 = v45;
  (*(v6 + 16))(v44, &v17[v14[13]], v45);
  (*(v6 + 56))(v29, 0, 1, v30);
  MEMORY[0x24C1FBB40](v29);
  v31 = MEMORY[0x277D85000];
  *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60)) = *v17;
  v32 = &v17[v14[10]];
  v33 = v32[3];
  v48 = v32[2];
  v49 = v33;
  v34 = v32[1];
  v46 = *v32;
  v47 = v34;
  outlined init with copy of DOCSidebarItemContentValueBinding(&v46, &v50);
  outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
  v35 = (v2 + *((*v31 & *v2) + 0x68));
  swift_beginAccess();
  v36 = v35[1];
  v50 = *v35;
  v51 = v36;
  v37 = v35[3];
  v52 = v35[2];
  v53 = v37;
  v38 = v47;
  *v35 = v46;
  v35[1] = v38;
  v39 = v49;
  v35[2] = v48;
  v35[3] = v39;
  outlined destroy of DOCSidebarItemContentValueBinding(&v50);
  return outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMd, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d4ItemF12ValueBindingV_GMR);
}

{
  v2 = v1;
  v37[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v38 = v37 - v5;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  MEMORY[0x28223BE20](v15, v16);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = v37 - v22;
  (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v21);
  type metadata accessor for UICellConfigurationState();
  lazy protocol witness table accessor for type UICellConfigurationState and conformance UICellConfigurationState();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0 || (*v23 & 1) == 0)
  {
    v24 = UICellConfigurationState.traitCollection.getter();
    v25 = [v24 sourceOutlineStyle];

    if (v25 == 1)
    {
      static UIListContentConfiguration.prominentInsetGroupedHeader()();
    }

    else
    {
      static UIListContentConfiguration.header()();
    }

    static UIBackgroundConfiguration.listHeader()();
    (*(v11 + 40))(&v23[v15[12]], v14, v10);
    (*(v39 + 40))(&v23[v15[13]], v9, v40);
  }

  UIListContentConfiguration.text.setter();
  outlined init with copy of DOCGridLayout.Spec?(v23, v18, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  v26 = v15[12];
  v41[3] = v10;
  v41[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(v11 + 16))(boxed_opaque_existential_1, &v18[v26], v10);
  MEMORY[0x24C1FBB20](v41);
  v28 = v38;
  v29 = v39;
  v30 = v40;
  (*(v39 + 16))(v38, &v18[v15[13]], v40);
  (*(v29 + 56))(v28, 0, 1, v30);
  MEMORY[0x24C1FBB40](v28);
  v31 = MEMORY[0x277D85000];
  *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60)) = *v18;
  v32 = &v18[v15[10]];
  v34 = *v32;
  v33 = v32[1];

  outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  v35 = (v2 + *((*v31 & *v2) + 0x68));
  swift_beginAccess();
  *v35 = v34;
  v35[1] = v33;

  return outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
}

uint64_t specialized DOCSidebarCell.ensureHasContentViewConfiguration()()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v17[-1] - v9;
  MEMORY[0x24C1FBB10](v17, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd, &_s5UIKit22UIContentConfiguration_pSgMR);
  v11 = type metadata accessor for UIListContentConfiguration();
  v12 = swift_dynamicCast();
  v13 = *(*(v11 - 8) + 56);
  if (v12)
  {
    v13(v10, 0, 1, v11);
    return outlined destroy of CharacterSet?(v10, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  }

  else
  {
    v13(v10, 1, 1, v11);
    outlined destroy of CharacterSet?(v10, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
    v15 = [v0 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    v17[3] = v11;
    v17[4] = MEMORY[0x277D74C30];
    __swift_allocate_boxed_opaque_existential_1(v17);
    static UIListContentConfiguration.subtitleCell()();
    (*(v2 + 8))(v5, v1);
    return MEMORY[0x24C1FBB20](v17);
  }
}

{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v20[-1] - v10;
  MEMORY[0x24C1FBB10](v20, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd, &_s5UIKit22UIContentConfiguration_pSgMR);
  v12 = type metadata accessor for UIListContentConfiguration();
  v13 = swift_dynamicCast();
  v14 = *(*(v12 - 8) + 56);
  if (v13)
  {
    v14(v11, 0, 1, v12);
    return outlined destroy of CharacterSet?(v11, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  }

  else
  {
    v14(v11, 1, 1, v12);
    outlined destroy of CharacterSet?(v11, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
    v16 = [v1 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    v20[3] = v12;
    v20[4] = MEMORY[0x277D74C30];
    __swift_allocate_boxed_opaque_existential_1(v20);
    v17 = UICellConfigurationState.traitCollection.getter();
    v18 = [v17 sourceOutlineStyle];

    if (v18 == 1)
    {
      static UIListContentConfiguration.prominentInsetGroupedHeader()();
    }

    else
    {
      static UIListContentConfiguration.header()();
    }

    (*(v3 + 8))(v6, v2);
    return MEMORY[0x24C1FBB20](v20);
  }
}

double specialized DOCSidebarCell.addAccessoryItem(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
LABEL_22:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](i, v5);
      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v8 = *(v5 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    if (*(v8 + 16) == *(a1 + 16) && *(v8 + 24) == *(a1 + 24))
    {

      return result;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {

      return result;
    }
  }

  swift_beginAccess();

  MEMORY[0x24C1FB090](v11);
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v2) + 0x150))(v12);
  return result;
}

uint64_t specialized DOCSidebarCell.removeAccessoryItem(named:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *v3) + 0x78);
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();

  v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v3 + v7), a1, a2);

  v12 = *(v3 + v7);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v10)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = __CocoaSet.count.getter();
  if (v13 < v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  specialized Array.replaceSubrange<A>(_:with:)(v10, v11, v13);
  swift_endAccess();
  v14 = *(v3 + v7);
  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == v9)
    {
      return result;
    }

    return (*((*v6 & *v3) + 0x150))();
  }

LABEL_12:
  result = __CocoaSet.count.getter();
  if (result == v9)
  {
    return result;
  }

  return (*((*v6 & *v3) + 0x150))();
}

uint64_t specialized DOCSidebarCell.accessoryItem(named:)(uint64_t a1, uint64_t a2)
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

void *specialized DOCSidebarCell.reloadDisplayedAccessories()()
{
  v1 = type metadata accessor for UICellAccessory();
  v2 = *(v1 - 8);
  v38 = v1;
  v39 = v2;
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0xE0))(v4);
  v9 = [v0 traitCollection];
  v10 = [v9 sourceOutlineStyle];

  v11 = *((*v7 & *v0) + 0x78);
  swift_beginAccess();
  v37 = v0;
  v12 = *(v0 + v11);
  v40 = MEMORY[0x277D84F90];
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
    v35 = v6;
    v36 = v12;
    v15 = 0;
    v16 = v12 & 0xC000000000000001;
    v6 = (v12 & 0xFFFFFFFFFFFFFF8);
    v17 = v12 + 32;
    while (1)
    {
      if (v16)
      {
        v12 = MEMORY[0x24C1FC540](v15, v36);
        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v23 = v40;
          v6 = v35;
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
            goto LABEL_6;
          }
        }
      }

LABEL_6:
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

    return UICollectionViewListCell.accessories.setter();
  }

  v24 = __CocoaSet.count.getter();
  if (!v24)
  {
    goto LABEL_36;
  }

LABEL_24:
  v40 = v14;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = v40;
    v28 = v23;
    v29 = v23 & 0xC000000000000001;
    v30 = v28;
    do
    {
      if (v29)
      {
        v31 = MEMORY[0x24C1FC540](v26);
      }

      else
      {
        v31 = *(v28 + 8 * v26 + 32);
      }

      (*(*v31 + 168))();

      v40 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v27 = v40;
      }

      ++v26;
      *(v27 + 16) = v33 + 1;
      (*(v39 + 32))(v27 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, v6, v38);
      v28 = v30;
    }

    while (v24 != v26);
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

id DOCSidebarItemCell.updateInlineEditingLeadingInset()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v1)
  {
    v3 = [v0 traitCollection];
    v4 = specialized static CGSize.doc_preferredSourceListIconSize(for:)(v3);

    result = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingLeadingConstraint];
    if (!result)
    {
      return result;
    }

    v6 = v4 + 8.0;
  }

  else
  {
    result = *&v0[direct field offset for DOCSidebarItemCell._inlineEditingLeadingConstraint];
    if (!result)
    {
      return result;
    }

    v6 = 0.0;
  }

  return [result setConstant_];
}

Swift::Void __swiftcall DOCSidebarItemCell.textFieldDidEndEditing(_:)(UITextField *a1)
{
  v2 = v1;
  v4 = v1 + direct field offset for DOCSidebarItemCell.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    v6 = [(UITextField *)a1 text];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v1, v8, v10, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v12 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  v13 = *(v2 + v12);
  *(v2 + v12) = 0;
  if (v13 == 1)
  {
    specialized DOCSidebarCell.reloadDisplayedAccessories()();
  }
}

uint64_t specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)@<X0>(uint64_t (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{
  v38 = a5;
  v36 = a4;
  v37 = a8;
  v34 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v33 - v13;
  v33 = type metadata accessor for UICellAccessory.Placement();
  v15 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v19 = *(v35 - 8);
  v21 = MEMORY[0x28223BE20](v35, v20);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v25 = swift_dynamicCastClassUnconditional();
  v26 = *(*v25 + 224);
  v27 = v24;
  v26(v24);
  v28 = (*(*v25 + 248))(v27);
  (*(*v25 + 264))(v28);
  (*(v15 + 16))(v18, v34, v33);
  v29 = type metadata accessor for UICellAccessory.LayoutDimension();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v14, v36, v29);
  (*(v30 + 56))(v14, 0, 1, v29);
  v31 = v27;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  return (*(v19 + 8))(v23, v35);
}

uint64_t specialized closure #1 in DOCSidebarCell.updateContentBindings(_:)(void (*a1)(char *), uint64_t a2, char *a3)
{
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((*MEMORY[0x277D85000] & *a3) + 0x68);
  swift_beginAccess();
  a1(&a3[v10]);
  swift_endAccess();
  v11 = [a3 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v9);
  return (*(v6 + 8))(v9, v5);
}

{
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((*MEMORY[0x277D85000] & *a3) + 0x68);
  swift_beginAccess();
  a1(&a3[v10]);
  swift_endAccess();
  v11 = [a3 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v9);
  return (*(v6 + 8))(v9, v5);
}

id specialized DOCSidebarItemContentValueBinding.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  v3 = [v2 traitCollection];

  v4 = [v3 preferredContentSizeCategory];
  v5 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (one-time initialization token for blank != -1)
  {
    swift_once();
  }

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  swift_beginAccess();
  v7 = static DOCSidebarIcon.blank;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v7;

  return v7;
}

uint64_t outlined assign with copy of DOCSidebarItemIconProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMd, &_s26DocumentManagerExecutables26DOCSidebarItemIconProvider_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void specialized DOCSidebarItemCell.TagIconProvider.configureRequestForNoneTag(_:cell:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() nonClearNoneTagColor];
  MEMORY[0x24C1FBB30]();
  v9 = type metadata accessor for UIBackgroundConfiguration();
  if ((*(*(v9 - 8) + 48))(v7, 1, v9))
  {
    outlined destroy of CharacterSet?(v7, &_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  }

  else
  {
    v10 = UIBackgroundConfiguration.backgroundColor.getter();
    outlined destroy of CharacterSet?(v7, &_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
    if (v10)
    {
      v11 = [a2 tintColor];
      v12 = [v10 _isSimilarToColor_withinPercentage_];

      if (v12)
      {
        v13 = [objc_opt_self() systemWhiteColor];

        v8 = v13;
      }

      else
      {
      }
    }
  }

  [a1 setRingColor_];
}

id specialized DOCSidebarItemCell.RawImageIconProvider.iconByResizing(_:toSize:forCell:)(void *a1, char a2, void *a3, double a4, double a5)
{
  if ([a1 isSymbolImage])
  {
    return a1;
  }

  [a1 size];
  if (v11 == a4 && v10 == a5)
  {
    return a1;
  }

  v13 = [a3 traitCollection];
  v14 = [objc_opt_self() formatForTraitCollection_];
  v15 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v14 format:{a4, a5}];

  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2 & 1;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in DOCSidebarItemCell.RawImageIconProvider.iconByResizing(_:toSize:forCell:);
  *(v17 + 24) = v16;
  v22[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v22[5] = v17;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v22[3] = &block_descriptor_187;
  v18 = _Block_copy(v22);
  v19 = a1;

  v20 = [v15 imageWithActions_];

  _Block_release(v18);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v20;
  }

  __break(1u);
  return result;
}

void partial apply for closure #1 in DOCSidebarItemCell.title.setter(void *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t partial apply for specialized closure #1 in DOCSidebarCell.updateContentBindings(_:)()
{
  return specialized closure #1 in DOCSidebarCell.updateContentBindings(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in DOCSidebarCell.updateContentBindings(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

void partial apply for closure #1 in DOCSidebarItemCell.subtitle.setter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
}

_BYTE *specialized DOCSidebarItemCell.ProviderSyncStateAccessoryItem.init(for:)(void *a1)
{
  v2 = v1;
  v58 = type metadata accessor for UICellAccessory.LayoutDimension();
  v60 = *(v58 - 8);
  v62 = *(v60 + 64);
  MEMORY[0x28223BE20](v58, v4);
  v61 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v51 - v16;
  type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemViewModel();
  swift_allocObject();
  v59 = specialized DOCFileProviderSyncStateSidebarCellAccessoryItemViewModel.init(for:)(a1);
  v18 = objc_allocWithZone(type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemView(0));

  v20 = DOCFileProviderSyncStateSidebarCellAccessoryItemView.init(with:)(v19);
  v55 = v20;
  v56 = v2;
  *(v2 + direct field offset for DOCSidebarItemCell.ProviderSyncStateAccessoryItem.accessoryView) = v20;
  v63 = 0x8000000249BC91D0;
  v21 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
  v22 = *MEMORY[0x277D74A90];
  v23 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v23 - 8) + 104))(v17, v22, v23);
  *v21 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
  v21[1] = 0;
  v24 = *MEMORY[0x277D74AD8];
  v25 = *(v11 + 104);
  v54 = v17;
  v52 = v10;
  v25(v17, v24, v10);
  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  v27 = *MEMORY[0x277D74AB0];
  v28 = v60;
  v29 = *(v60 + 104);
  v30 = v9;
  v53 = v9;
  v31 = v9;
  v32 = v58;
  v29(v31, v27, v58);
  *(v2 + direct field offset for DOCSidebarCellCustomAccessoryItem.viewIfLoaded) = 0;
  v33 = v57;
  (*(v11 + 16))(v57, v17, v10);
  v34 = v28;
  v35 = v61;
  v36 = v30;
  v37 = v32;
  (*(v28 + 16))(v61, v36, v32);
  v38 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v39 = (v12 + *(v34 + 80) + v38) & ~*(v34 + 80);
  v40 = v39 + v62;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for closure #1 in DOCSidebarItemCell.RemoveableItemStateAccessoryItem.init(for:);
  *(v41 + 24) = v26;
  v42 = v41 + v38;
  v43 = v52;
  (*(v11 + 32))(v42, v33, v52);
  (*(v34 + 32))(v41 + v39, v35, v37);
  *(v41 + v40) = 2;
  v44 = v55;

  (*(v34 + 8))(v53, v37);
  (*(v11 + 8))(v54, v43);
  v45 = v56;
  v46 = v56;
  *(v56 + 32) = 1;
  v47 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryIfLoaded;
  v48 = type metadata accessor for UICellAccessory();
  (*(*(v48 - 8) + 56))(v45 + v47, 1, 1, v48);
  *(v45 + 16) = 0xD000000000000013;
  *(v45 + 24) = v63;
  *(v45 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles) = &outlined read-only object #0 of DOCSidebarItemCell.ProviderSyncStateAccessoryItem.init(for:);
  swift_beginAccess();
  *(v46 + 32) = 1;
  v49 = (v45 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_accessoryProvider);
  *v49 = closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)specialized partial apply;
  v49[1] = v41;
  return v45;
}

uint64_t specialized DOCSidebarItemCell.textFieldDidBeginEditing(_:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 1;
  if ((v2 & 1) == 0)
  {
    specialized DOCSidebarCell.reloadDisplayedAccessories()();
  }

  v3 = v0 + direct field offset for DOCSidebarItemCell.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v0, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarItemCell.UnseenIndicatorState and conformance DOCSidebarItemCell.UnseenIndicatorState()
{
  result = lazy protocol witness table cache variable for type DOCSidebarItemCell.UnseenIndicatorState and conformance DOCSidebarItemCell.UnseenIndicatorState;
  if (!lazy protocol witness table cache variable for type DOCSidebarItemCell.UnseenIndicatorState and conformance DOCSidebarItemCell.UnseenIndicatorState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarItemCell.UnseenIndicatorState and conformance DOCSidebarItemCell.UnseenIndicatorState);
  }

  return result;
}

uint64_t keypath_set_40Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id keypath_get_45Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarIcon(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarIcon(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarIcon.Metrics(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCSidebarIcon.Metrics(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarItemContentValueBinding(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for DOCSidebarItemContentValueBinding(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for DOCSidebarItemCell(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UICellConfigurationState and conformance UICellConfigurationState()
{
  result = lazy protocol witness table cache variable for type UICellConfigurationState and conformance UICellConfigurationState;
  if (!lazy protocol witness table cache variable for type UICellConfigurationState and conformance UICellConfigurationState)
  {
    type metadata accessor for UICellConfigurationState();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UICellConfigurationState and conformance UICellConfigurationState);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for UICellAccessory.Placement() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for UICellAccessory.LayoutDimension() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  return specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(*(v4 + 16), v4 + v9, v4 + v12, *(v4 + v12 + *(v11 + 64)), a2, a3, a4);
}

uint64_t partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)@<X0>(uint64_t a2@<X8>)
{
  return partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(&_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCyAA14DOCEjectButtonCGMd, &_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCyAA14DOCEjectButtonCGMR, a2);
}

{
  return partial apply for specialized closure #1 in DOCSidebarCellCustomAccessoryItem.init(identifier:layoutWidth:maintainsFixedSize:placement:viewProvider:)(&_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCySo8UISwitchCGMd, &_s26DocumentManagerExecutables33DOCSidebarCellCustomAccessoryItemCySo8UISwitchCGMR, a2);
}

uint64_t objectdestroy_163Tm()
{
  v1 = type metadata accessor for UICellAccessory.Placement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UICellAccessory.LayoutDimension();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 1, v10 | 7);
}

uint64_t outlined init with copy of DOCSidebarItemIconProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Bool __swiftcall DOCCopyOperation.shouldUseDSCopyEngine()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if ((specialized DOCCopyOperation.itemSupportsDSCopy(_:)(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem)) & 1) == 0)
      {
        break;
      }

      v2 = v2 ? __CocoaSet.count.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = v0;
      v4 = 0;
      while (1)
      {
        v0 = v2 == v4;
        if (v2 == v4)
        {
LABEL_16:

          return v0;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x24C1FC540](v4, v1);
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v7 = specialized DOCCopyOperation.itemSupportsDSCopy(_:)(v5);

        ++v4;
        if ((v7 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    while (__CocoaSet.count.getter());
  }

  LOBYTE(v0) = 0;
  return v0;
}

Swift::Bool __swiftcall DOCCopyOperation.handlePresendNotifications_asDSCopy()()
{
  v1 = v0;
  LOBYTE(v2) = DOCCopyOperation.shouldUseDSCopyEngine()();
  if ((v2 & 1) == 0)
  {
    return v2 & 1;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem);
  v4 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v3, 3);
  v36 = v3;

  if (v4)
  {
    v29 = FPProviderDomain.shouldUseDSEnumeration.getter();

    if (v29)
    {
      return v2 & 1;
    }
  }

  v5 = [v1 stitcher];
  if (!v5)
  {
    return v2 & 1;
  }

  v6 = v5;
  [v5 start];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8FPItemIDC_ADTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v37 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems);
  v35 = v8;
  if (v8 >> 62)
  {
LABEL_43:
    v31 = v7;
    v9 = __CocoaSet.count.getter();
    v7 = v31;
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_36:
    (*((*MEMORY[0x277D85000] & *v1) + 0x100))();
    [v6 flush];

    return v2 & 1;
  }

LABEL_6:
  v32 = v1;
  v33 = v2;
  v10 = 0;
  v2 = v35;
  v34 = v6;
  while (1)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v10, v2);
    }

    else
    {
      if (v10 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v7 = *(v2 + 8 * v10 + 32);
    }

    v12 = v7;
    v1 = (v10 + 1);
    if (__OFADD__(v10, 1))
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

    v13 = [v7 itemID];
    v14 = [v36 itemIdentifier];
    v15 = [v36 providerDomainID];
    v16 = [v6 createPlaceholderWithCopyOfExistingItem:v12 lastUsageUpdatePolicy:1 underParent:v14 inProviderDomainID:v15];

    if (v16)
    {
      break;
    }

    v11 = specialized Dictionary._Variant.removeValue(forKey:)(v13);

LABEL_8:
    ++v10;
    if (v1 == v9)
    {
      LOBYTE(v2) = v33;
      v1 = v32;
      goto LABEL_36;
    }
  }

  v17 = v37;
  if ((v37 & 0xC000000000000001) != 0)
  {
    if (v37 >= 0)
    {
      v17 = (v37 & 0xFFFFFFFFFFFFFF8);
    }

    v7 = __CocoaSet.count.getter();
    if (__OFADD__(v7, 1))
    {
      goto LABEL_40;
    }

    v17 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8FPItemIDC_AHTt1g5Tm(v17, v7 + 1, &_ss18_DictionaryStorageCySo8FPItemIDCADGMd, &_ss18_DictionaryStorageCySo8FPItemIDCADGMR, &lazy cache variable for type metadata for FPItemID, 0x277CC6400);
    v37 = v17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v7 = (v20 + v21);
  if (__OFADD__(v20, v21))
  {
    goto LABEL_39;
  }

  LOBYTE(v2) = v19;
  if (v17[3] >= v7)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo8FPItemIDCADGMd, &_ss18_DictionaryStorageCySo8FPItemIDCADGMR);
      if (v2)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    v17[(v6 >> 6) + 8] |= 1 << v6;
    *(v17[6] + 8 * v6) = v13;
    *(v17[7] + 8 * v6) = v16;

    v26 = v17[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_42;
    }

    v17[2] = v28;
    goto LABEL_31;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v7, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySo8FPItemIDCADGMd, &_ss18_DictionaryStorageCySo8FPItemIDCADGMR);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if ((v2 & 1) == (v23 & 1))
  {
    v6 = v22;
    if ((v2 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_27:
    v24 = v17[7];
    v25 = *(v24 + 8 * v6);
    *(v24 + 8 * v6) = v16;

LABEL_31:
    v37 = v17;
    v6 = v34;
    v2 = v35;
    goto LABEL_8;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID, 0x277CC6400);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCCopyOperation.handleActionMain_asDSCopy()()
{
  v1 = DOCCopyOperation.shouldUseDSCopyEngine()();
  if (!v1)
  {
    return v1;
  }

  v2 = DOCCreateDSNSHelperContext();
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DOCDSCopyEngineXPCConnection();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v9 = v4;
    v10 = &protocol witness table for DOCDSCopyEngineXPCConnection;
    *&v8 = v5;
    outlined init with take of DOCGoToFolderCandidate(&v8, v11);
    v6 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    specialized DOCCopyOperation.copyWithDSCopyEngine(_:)(*v6, v0);
    __swift_destroy_boxed_opaque_existential_0(v11);
    return v1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t DOCCopyOperation.transferResults.getter()
{
  if (!DOCCopyOperation.shouldUseDSCopyEngine()())
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    outlined destroy of CharacterSet?(&v13, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMR);
    v12.receiver = v0;
    v12.super_class = type metadata accessor for DOCCopyOperation();
    v9 = objc_msgSendSuper2(&v12, sel_transferResults);
    if (v9)
    {
      v10 = v9;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      return v8;
    }

    return 0;
  }

  v1 = DOCCreateDSNSHelperContext();
  if (v1)
  {
    v2 = v1;
    v3 = type metadata accessor for DOCDSCopyEngineXPCConnection();
    inited = swift_initStackObject();
    *(inited + 16) = v2;
    *(&v14 + 1) = v3;
    v15 = &protocol witness table for DOCDSCopyEngineXPCConnection;
    *&v13 = inited;
    v5 = outlined destroy of CharacterSet?(&v13, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMR);
    v6 = (*((*MEMORY[0x277D85000] & *v0) + 0xB0))(v5);
    if (v6)
    {
      v7 = specialized Dictionary.compactMapValues<A>(_:)(v6);

      v8 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v7);

      return v8;
    }

    return 0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = &_s10Foundation3URLV3key_So7DOCNode_p5valuetMd;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetMd, &_s10Foundation3URLV3key_So7DOCNode_p5valuetMR);
  MEMORY[0x28223BE20](v55, v3);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v54 = &v46 - v7;
  MEMORY[0x28223BE20](v8, v9);
  v53 = &v46 - v10;
  v49 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v56 = a1;

  v17 = 0;
  v51 = v15;
  for (i = a1 + 64; ; v11 = i)
  {
    v18 = v17;
    if (!v14)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v19 = v2;
      v17 = v18;
LABEL_11:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v56;
      v23 = *(v56 + 48);
      v24 = type metadata accessor for URL();
      v50 = *(v24 - 8);
      v25 = *(v50 + 72);
      v26 = v53;
      (*(v50 + 16))(v53, v23 + v25 * v21, v24);
      v27 = v54;
      *(v26 + *(v55 + 48)) = *(*(v22 + 56) + 8 * v21);
      v2 = v19;
      v28 = v19;
      v29 = v27;
      outlined init with take of (key: URL, value: FPItem)(v26, v27, v28, &_s10Foundation3URLV3key_So7DOCNode_p5valuetMR);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = DOCNode.fpfs_syncFetchFPItem()();
      if (v30)
      {
        break;
      }

      result = outlined destroy of CharacterSet?(v29, v2, &_s10Foundation3URLV3key_So7DOCNode_p5valuetMR);
      v18 = v17;
      v15 = v51;
      v11 = i;
      if (!v14)
      {
LABEL_7:
        while (1)
        {
          v17 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v17 >= v15)
          {

            return v49;
          }

          v14 = *(v11 + 8 * v17);
          ++v18;
          if (v14)
          {
            v19 = v2;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    v31 = v30;
    v46 = v25;
    v47 = v24;
    outlined init with take of (key: URL, value: FPItem)(v29, v48, v2, &_s10Foundation3URLV3key_So7DOCNode_p5valuetMR);
    v32 = v49[2];
    if (v49[3] <= v32)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32 + 1, 1, &_ss18_DictionaryStorageCy10Foundation3URLVSo6FPItemCGMd, &_ss18_DictionaryStorageCy10Foundation3URLVSo6FPItemCGMR);
    }

    v33 = v57;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v34 = v33 + 64;
    v49 = v33;
    v35 = -1 << *(v33 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v33 + 64 + 8 * (v36 >> 6))) == 0)
    {
      break;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v33 + 64 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v39 = v50;
    v40 = v46;
LABEL_26:
    *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v45 = v49;
    (*(v39 + 32))(v49[6] + v38 * v40, v48, v47);
    *(v45[7] + 8 * v38) = v31;
    ++v45[2];
    result = swift_unknownObjectRelease();
    v15 = v51;
  }

  v41 = 0;
  v42 = (63 - v35) >> 6;
  v39 = v50;
  v40 = v46;
  while (++v37 != v42 || (v41 & 1) == 0)
  {
    v43 = v37 == v42;
    if (v37 == v42)
    {
      v37 = 0;
    }

    v41 |= v43;
    v44 = *(v34 + 8 * v37);
    if (v44 != -1)
    {
      v38 = __clz(__rbit64(~v44)) + (v37 << 6);
      goto LABEL_26;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v47 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So6FPItemC5valuetMd, &_s10Foundation3URLV3key_So6FPItemC5valuetMR);
  MEMORY[0x28223BE20](v46, v6);
  v45 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v44 = v42 - v10;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVSo6FPItemCGMd, &_ss18_DictionaryStorageCys11AnyHashableVSo6FPItemCGMR);
    v11 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v12 = v50 + 64;
  v13 = 1 << *(v50 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v50 + 64);
  v16 = (v13 + 63) >> 6;
  v42[1] = v49 + 16;
  v42[0] = v49 + 32;
  v17 = v11 + 64;

  v19 = 0;
  v43 = v11;
  while (v15)
  {
LABEL_15:
    v23 = __clz(__rbit64(v15)) | (v19 << 6);
    v25 = v49;
    v24 = v50;
    v26 = v44;
    v27 = v48;
    (*(v49 + 16))(v44, *(v50 + 48) + *(v49 + 72) * v23, v48);
    v28 = *(*(v24 + 56) + 8 * v23);
    v29 = v46;
    *&v26[*(v46 + 48)] = v28;
    v30 = v26;
    v31 = v45;
    outlined init with take of (key: URL, value: FPItem)(v30, v45, &_s10Foundation3URLV3key_So6FPItemC5valuetMd, &_s10Foundation3URLV3key_So6FPItemC5valuetMR);
    v32 = *(v29 + 48);
    (*(v25 + 32))(v47, v31, v27);
    v33 = v28;
    swift_dynamicCast();
    v34 = *(v31 + v32);
    v54 = v51;
    v11 = v43;
    result = AnyHashable._rawHashValue(seed:)(*(v43 + 40));
    v35 = -1 << *(v11 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v17 + 8 * (v36 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v35) >> 6;
      while (++v37 != v39 || (v38 & 1) == 0)
      {
        v40 = v37 == v39;
        if (v37 == v39)
        {
          v37 = 0;
        }

        v38 |= v40;
        v41 = *(v17 + 8 * v37);
        if (v41 != -1)
        {
          v20 = __clz(__rbit64(~v41)) + (v37 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v20 = __clz(__rbit64((-1 << v36) & ~*(v17 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v15 &= v15 - 1;
    *(v17 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v21 = *(v11 + 48) + 40 * v20;
    *v21 = v51;
    *(v21 + 16) = v52;
    *(v21 + 32) = v53;
    *(*(v11 + 56) + 8 * v20) = v34;
    ++*(v11 + 16);
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v22 >= v16)
    {

      return v11;
    }

    v15 = *(v12 + 8 * v22);
    ++v19;
    if (v15)
    {
      v19 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = outlined init with take of Any(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);

        v19 = v18;
        swift_dynamicCast();
        outlined init with take of Any(&v25, v27);
        outlined init with take of Any(v27, v28);
        outlined init with take of Any(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = outlined init with take of Any(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = outlined init with take of Any(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84F98];
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8FPItemIDCSo7DOCNode_pGMd, &_ss18_DictionaryStorageCySo8FPItemIDCSo7DOCNode_pGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
LABEL_6:
  if (type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID, 0x277CC6400) != MEMORY[0x277D837D0])
  {
    if (v2)
    {
      v4 = __CocoaDictionary.makeIterator()();
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = v4 | 0x8000000000000000;
    }

    else
    {
      v14 = -1 << *(a1 + 32);
      v6 = ~v14;
      v5 = a1 + 64;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v7 = v16 & *(a1 + 64);
      v8 = a1;
    }

    v17 = (v6 + 64) >> 6;
    v18 = v3 + 64;

    v20 = 0;
    for (i = v8; ; v8 = i)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        v30 = __CocoaDictionary.Iterator.next()();
        if (!v30 || (v62 = v30, swift_dynamicCast(), type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8), swift_dynamicCast(), v29 = v62, v28 = v64, v23 = v20, v25 = v7, !v64))
        {
LABEL_38:
          v38 = i;
          goto LABEL_62;
        }
      }

      else
      {
        v22 = v7;
        v23 = v20;
        if (!v7)
        {
          v24 = v20;
          while (1)
          {
            v23 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v23 >= v17)
            {
              goto LABEL_38;
            }

            v22 = *(v5 + 8 * v23);
            ++v24;
            if (v22)
            {
              v8 = i;
              goto LABEL_25;
            }
          }

LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_25:
        v25 = (v22 - 1) & v22;
        v26 = (v23 << 9) | (8 * __clz(__rbit64(v22)));
        v27 = *(*(v8 + 56) + v26);
        v28 = *(*(v8 + 48) + v26);
        v29 = v27;
        if (!v28)
        {
          goto LABEL_38;
        }
      }

      result = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v31 = -1 << *(v3 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) != 0)
      {
        v21 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        do
        {
          if (++v33 == v35 && (v34 & 1) != 0)
          {
            __break(1u);
            goto LABEL_64;
          }

          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
        }

        while (v37 == -1);
        v21 = __clz(__rbit64(~v37)) + (v33 << 6);
      }

      *(v18 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v3 + 48) + 8 * v21) = v28;
      *(*(v3 + 56) + 8 * v21) = v29;
      ++*(v3 + 16);
      v20 = v23;
      v7 = v25;
    }
  }

  if (v2)
  {
    v9 = __CocoaDictionary.makeIterator()();
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v9 | 0x8000000000000000;
  }

  else
  {
    v39 = -1 << *(a1 + 32);
    v11 = ~v39;
    v10 = a1 + 64;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v12 = v41 & *(a1 + 64);
    v13 = a1;
  }

  v42 = (v11 + 64) >> 6;

  v43 = 0;
  for (j = v13; ; v13 = j)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      v55 = __CocoaDictionary.Iterator.next()();
      if (!v55)
      {
        v38 = v13;
        goto LABEL_62;
      }

      v63 = v55;
      swift_dynamicCast();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      swift_dynamicCast();
      v54 = v63;
      v53 = v64;
      v48 = v43;
      v50 = v12;
      if (!v64)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v47 = v12;
      v48 = v43;
      if (!v12)
      {
        v49 = v43;
        while (1)
        {
          v48 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_65;
          }

          if (v48 >= v42)
          {
            break;
          }

          v47 = *(v10 + 8 * v48);
          ++v49;
          if (v47)
          {
            v13 = j;
            goto LABEL_53;
          }
        }

LABEL_61:
        v38 = j;
LABEL_62:
        outlined consume of Set<UITouch>.Iterator._Variant(v38);

        return v3;
      }

LABEL_53:
      v50 = (v47 - 1) & v47;
      v51 = (v48 << 9) | (8 * __clz(__rbit64(v47)));
      v52 = *(*(v13 + 56) + v51);
      v53 = *(*(v13 + 48) + v51);
      v54 = v52;
      if (!v53)
      {
        goto LABEL_61;
      }
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(v53);
    if (v56)
    {
      v44 = *(v3 + 48);
      v45 = *(v44 + 8 * result);
      *(v44 + 8 * result) = v53;
      v46 = result;

      *(*(v3 + 56) + 8 * v46) = v54;
      result = swift_unknownObjectRelease();
      goto LABEL_45;
    }

    if (*(v3 + 16) >= *(v3 + 24))
    {
      goto LABEL_66;
    }

    *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(*(v3 + 48) + 8 * result) = v53;
    *(*(v3 + 56) + 8 * result) = v54;
    v57 = *(v3 + 16);
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      break;
    }

    *(v3 + 16) = v59;
LABEL_45:
    v43 = v48;
    v12 = v50;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id DOCCopyOperation.doc_transferResults.getter()
{
  if (DOCCopyOperation.shouldUseDSCopyEngine()())
  {
    v1 = DOCCreateDSNSHelperContext();
    if (v1)
    {
      v2 = v1;
      v3 = type metadata accessor for DOCDSCopyEngineXPCConnection();
      inited = swift_initStackObject();
      *(inited + 16) = v2;
      *(&v11 + 1) = v3;
      v12 = &protocol witness table for DOCDSCopyEngineXPCConnection;
      *&v10 = inited;
      v5 = outlined destroy of CharacterSet?(&v10, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMR);
      return (*((*MEMORY[0x277D85000] & *v0) + 0xB0))(v5);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    outlined destroy of CharacterSet?(&v10, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMR);
    result = [v0 transferResults];
    if (result)
    {
      v7 = result;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v8);

      return v9;
    }
  }

  return result;
}

uint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetMd, &_s10Foundation3URLV3key_So7DOCNode_p5valuetMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v64 = &v56 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7DOCNode_ptMd, &_s10Foundation3URLV_So7DOCNode_ptMR);
  MEMORY[0x28223BE20](v63, v9);
  v62 = &v56 - v10;
  v11 = type metadata accessor for URL();
  v67 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v70 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v61 = &v56 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v60 = &v56 - v19;
  v68 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLVSo7DOCNode_pGMd, &_ss18_DictionaryStorageCy10Foundation3URLVSo7DOCNode_pGMR);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  v21 = v68 + 64;
  v22 = 1 << *(v68 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v68 + 64);
  v25 = (v22 + 63) >> 6;
  v66 = (v67 + 56);
  v71 = (v67 + 32);

  v27 = 0;
  v65 = v5;
  v59 = v21;
  v58 = v25;
  v57 = v20;
  v56 = v20 + 64;
  while (1)
  {
    if (!v24)
    {
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v25)
        {

          return v20;
        }

        v24 = *(v21 + 8 * v29);
        ++v27;
        if (v24)
        {
          v27 = v29;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v30 = __clz(__rbit64(v24)) | (v27 << 6);
    v31 = v68;
    outlined init with copy of AnyHashable(*(v68 + 48) + 40 * v30, v76);
    v32 = *(*(v31 + 56) + 8 * v30);
    *(&v77 + 1) = v32;
    v74[0] = v76[0];
    v74[1] = v76[1];
    v75 = v77;
    outlined init with copy of AnyHashable(v74, v73);
    v33 = v32;
    if (!swift_dynamicCast())
    {
      break;
    }

    v34 = v5;
    (*v66)(v5, 0, 1, v11);
    v35 = *v71;
    v36 = v61;
    (*v71)(v61, v34, v11);
    v37 = *(&v75 + 1);
    outlined destroy of CharacterSet?(v74, &_ss11AnyHashableV3key_So6FPItemC5valuetMd, &_ss11AnyHashableV3key_So6FPItemC5valuetMR);
    v72 = &unk_285DA7F78;
    v38 = swift_dynamicCastObjCProtocolUnconditional();
    v39 = v11;
    v40 = v64;
    v35(v64, v36, v39);
    v41 = v63;
    v42 = *(v63 + 48);
    v43 = v62;
    v44 = v40;
    v11 = v39;
    v35(v62, v44, v39);
    *&v43[v42] = v38;
    v45 = *(v41 + 48);
    v46 = v70;
    v47 = v60;
    v35(v60, v43, v11);
    v69 = *&v43[v45];
    v20 = v57;
    v48 = v35;
    v35(v46, v47, v11);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v49 = -1 << *(v20 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    if (((-1 << v50) & ~*(v56 + 8 * (v50 >> 6))) == 0)
    {
      v52 = 0;
      v53 = (63 - v49) >> 6;
      v5 = v65;
      v21 = v59;
      v25 = v58;
      while (++v51 != v53 || (v52 & 1) == 0)
      {
        v54 = v51 == v53;
        if (v51 == v53)
        {
          v51 = 0;
        }

        v52 |= v54;
        v55 = *(v56 + 8 * v51);
        if (v55 != -1)
        {
          v28 = __clz(__rbit64(~v55)) + (v51 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v28 = __clz(__rbit64((-1 << v50) & ~*(v56 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
    v5 = v65;
    v21 = v59;
    v25 = v58;
LABEL_9:
    v24 &= v24 - 1;
    *(v56 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = (v48)(*(v20 + 48) + *(v67 + 72) * v28, v70, v11);
    *(*(v20 + 56) + 8 * v28) = v69;
    ++*(v20 + 16);
  }

  outlined destroy of CharacterSet?(v74, &_ss11AnyHashableV3key_So6FPItemC5valuetMd, &_ss11AnyHashableV3key_So6FPItemC5valuetMR);

  (*v66)(v5, 1, 1, v11);
  outlined destroy of CharacterSet?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return 0;
}

void specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    outlined init with take of Any(v22, v21);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + v8) = v20 & 1;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + v15) = v20 & 1;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18FPProviderDomainIDaSo0cD0CGMd, &_ss18_DictionaryStorageCySo18FPProviderDomainIDaSo0cD0CGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  v22 = v1;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v11 >= v7)
        {

          return;
        }

        v6 = *(v3 + 8 * v11);
        ++v9;
        if (v6)
        {
          v9 = v11;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_15:
    v12 = __clz(__rbit64(v6)) | (v9 << 6);
    outlined init with copy of AnyHashable(*(v1 + 48) + 40 * v12, v29);
    outlined init with copy of Any(*(v1 + 56) + 32 * v12, v30 + 8);
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v26[0] = v29[0];
    v26[1] = v29[1];
    outlined init with copy of AnyHashable(v26, v24);
    type metadata accessor for FPProviderDomainID(0);
    if (!swift_dynamicCast())
    {
      outlined destroy of CharacterSet?(v26, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

LABEL_29:
      v25 = 0;

      return;
    }

    v13 = v25;
    outlined init with copy of Any(v27 + 8, v24);
    outlined destroy of CharacterSet?(v26, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_29;
    }

    v23 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v8 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v8 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    v1 = v22;
LABEL_9:
    v6 &= v6 - 1;
    *(v8 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + 8 * v10) = v13;
    *(*(v2 + 56) + 8 * v10) = v23;
    ++*(v2 + 16);
  }

  v18 = 0;
  v19 = (63 - v15) >> 6;
  v1 = v22;
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    v21 = *(v8 + 8 * v17);
    if (v21 != -1)
    {
      v10 = __clz(__rbit64(~v21)) + (v17 << 6);
      goto LABEL_9;
    }
  }

LABEL_31:
  __break(1u);
}