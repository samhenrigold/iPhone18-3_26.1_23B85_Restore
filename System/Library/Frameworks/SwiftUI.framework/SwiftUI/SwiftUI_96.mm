SwiftUI::TabCustomizationBehavior __swiftcall TabItem.resolvedUIKitTopBarCustomizationBehavior(customizationEnabled:)(Swift::Bool customizationEnabled)
{
  v3 = v1;
  if (!TabItem.needsCustomizationIDForEnablement.getter() || (result.role = TabItem.hasCustomizationID.getter(), (result.role & 1) != 0))
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v8 = static TabOptions.TraitKey.defaultValue;
    v9[0] = unk_1EAB09380;
    *(v9 + 9) = *(&word_1EAB09388 + 1);
    v12 = static TabOptions.TraitKey.defaultValue;
    *v13 = unk_1EAB09380;
    *&v13[9] = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v8, &v10);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v10 = v12;
    v11[0] = *v13;
    *(v11 + 9) = *&v13[9];
    outlined destroy of TabOptions(&v10);
    v12 = v6;
    *v13 = *v7;
    *&v13[9] = *&v7[9];
    result.role = outlined destroy of TabOptions(&v12);
    v5 = v13[10];
    goto LABEL_6;
  }

  if (customizationEnabled)
  {
    result.role = TabItem.isGroupChild.getter();
    if ((result.role & 1) == 0)
    {
      v5 = 2;
LABEL_6:
      *v3 = v5;
      return result;
    }
  }

  *v3 = 0;
  return result;
}

SwiftUI::SpringLoadingBehavior __swiftcall TabItem.resolvedSpringLoadingBehavior(environmentBehavior:)(SwiftUI::SpringLoadingBehavior environmentBehavior)
{
  v2 = v1;
  v3 = *environmentBehavior.guts;
  result.guts = ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v5)
  {
    result.guts = ViewTraitCollection.value<A>(for:defaultValue:)();
    v3 = v5;
  }

  *v2 = v3;
  return result;
}

uint64_t TabItem.clientDefaultVisibility(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  *&v15 = *(v1 + 96);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v19 = static TabOptions.TraitKey.defaultValue;
  v20[0] = unk_1EAB09380;
  *(v20 + 9) = *(&word_1EAB09388 + 1);
  v23 = static TabOptions.TraitKey.defaultValue;
  *v24 = unk_1EAB09380;
  *&v24[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v19, &v21);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v21 = v23;
  v22[0] = *v24;
  *(v22 + 9) = *&v24[9];
  outlined destroy of TabOptions(&v21);
  *&v24[9] = *&v18[9];
  v23 = v17;
  *v24 = *v18;
  v3 = *&v18[9] >> 56;

  outlined destroy of TabOptions(&v23);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0) || (, v13 = static TabOptions.TraitKey.defaultValue, v14[0] = unk_1EAB09380, *(v14 + 9) = *(&word_1EAB09388 + 1), v9 = static TabOptions.TraitKey.defaultValue, *v10 = unk_1EAB09380, *&v10[9] = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v13, &v11), ViewTraitCollection.value<A>(for:defaultValue:)(), v15 = v9, v16[0] = *v10, *(v16 + 9) = *&v10[9], outlined destroy of TabOptions(&v15), *&v18[9] = *&v12[9], v17 = v11, *v18 = *v12, v3 = *&v12[9] >> 56, , outlined destroy of TabOptions(&v17), *(v3 + 16)) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(2u), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + v4);
  }

  else
  {

    return 0;
  }

  return v7;
}

Swift::Bool_optional __swiftcall TabSidebarConfiguration.sidebarVisible()()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  if (v2 && (v3 = v0[24], v6 = *(v0 + 1), v7 = v2, v8 = v3, type metadata accessor for Binding<Visibility>(0, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](&v5), v5))
  {
    LOBYTE(v1) = v5 == 1;
  }

  else if (v1 != 1 && v1 != 2)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

Swift::Int_optional __swiftcall TabItem.sectionID(at:)(Swift::Int at)
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (at < 0 || *(v5 + 16) <= at)
  {

    v3 = 0;
    v4 = 1;
  }

  else
  {
    v2 = *(v5 + 8 * at + 32);

    v3 = v2;
    v4 = 0;
  }

  result.value = v3;
  result.is_nil = v4;
  return result;
}

char *static AdaptableTabView.makeTabGroups(_:depth:maxDepth:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v71[0] = MEMORY[0x1E69E7CC0];
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI8TabEntryOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v69 = v8;
  v70 = v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
LABEL_37:
    static AdaptableTabView.makeGroup(from:depth:maxDepth:result:cache:)(&v69, a2, a3, v71, &v70);

    v46 = v59;
    static Log.tabView.getter();
    v47 = type metadata accessor for Logger();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      outlined destroy of Binding<TabViewCustomization>(v46, type metadata accessor for Logger?);
    }

    else
    {
      v49 = v71[0];

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v62[0] = v53;
        *v52 = 136315138;
        v54 = specialized implicit closure #1 in static AdaptableTabView.extractTabs(_:)(v49);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v62);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_18BD4A000, v50, v51, "Made groups:\n%s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x18D0110E0](v53, -1, -1);
        v57 = v52;
        v46 = v59;
        MEMORY[0x18D0110E0](v57, -1, -1);
      }

      (*(v48 + 8))(v46, v47);
    }

    swift_beginAccess();
    return v71[0];
  }

  v11 = a1 + 32;
  v60 = a3;
  while (1)
  {
    outlined init with copy of TabItem(v11, v67);
    v61[0] = v68;
    v66 = v8;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v13 = *(*&v62[0] + 16);

    if (v13 || (*&v62[0] = v68, (ViewTraitCollection.isAuxiliaryContent.getter() & 1) != 0))
    {
      v61[0] = v68;
      v66 = v8;
      ViewTraitCollection.value<A>(for:defaultValue:)();
      if ((a2 & 0x8000000000000000) != 0 || *(*&v62[0] + 16) <= a2)
      {
      }

      else
      {
        v14 = *(*&v62[0] + 8 * a2 + 32);

        v15 = *(v69 + 16);
        if (v15)
        {
          outlined init with copy of TabItem(v69 + 112 * v15 - 80, v62);
          v65 = v8;
          v66 = v63;
          ViewTraitCollection.value<A>(for:defaultValue:)();
          if (*(v61[0] + 16) <= a2)
          {

            outlined destroy of TabItem(v62);
          }

          else
          {
            v16 = *(v61[0] + 8 * a2 + 32);

            outlined destroy of TabItem(v62);
            if (v16 == v14)
            {
              goto LABEL_30;
            }
          }
        }

        static AdaptableTabView.makeGroup(from:depth:maxDepth:result:cache:)(&v69, a2, a3, v71, &v70);
      }

LABEL_30:
      outlined init with copy of TabItem(v67, v62);
      v37 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[112 * v39];
      v41 = v62[0];
      v42 = v62[2];
      *(v40 + 3) = v62[1];
      *(v40 + 4) = v42;
      *(v40 + 2) = v41;
      v43 = v62[3];
      v44 = v62[4];
      v45 = v63;
      *(v40 + 7) = v62[5];
      *(v40 + 8) = v45;
      *(v40 + 5) = v43;
      *(v40 + 6) = v44;
      v69 = v37;
      outlined destroy of TabItem(v67);
      goto LABEL_5;
    }

    static AdaptableTabView.makeGroup(from:depth:maxDepth:result:cache:)(&v69, a2, a3, v71, &v70);
    outlined init with copy of TabItem(v67, v62);
    v64 = 0;
    outlined init with copy of TabEntry(v62, v61);
    v17 = v71[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    memcpy(&v17[288 * v19 + 32], v61, 0x119uLL);
    v71[0] = v17;
    v20 = TabItem.platformIdentifier.getter();
    v22 = v21;
    outlined init with copy of TabEntry(v62, v61);
    v23 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v23;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22);
    v27 = v23[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v23[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if ((v30 & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_45;
      }

      v26 = v31;
      if ((v30 & 1) == 0)
      {
LABEL_26:
        v12 = v66;
        v66[(v26 >> 6) + 8] |= 1 << v26;
        v33 = (v12[6] + 16 * v26);
        *v33 = v20;
        v33[1] = v22;
        memcpy((v12[7] + 288 * v26), v61, 0x119uLL);
        outlined destroy of TabEntry(v62);
        v34 = v12[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_44;
        }

        v12[2] = v36;
        goto LABEL_4;
      }
    }

    v12 = v66;
    outlined assign with take of TabEntry(v61, v66[7] + 288 * v26);
    outlined destroy of TabEntry(v62);
LABEL_4:
    v70 = v12;
    outlined destroy of TabItem(v67);
    a3 = v60;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v11 += 112;
    if (!--v10)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static AdaptableTabView.makeGroup(from:depth:maxDepth:result:cache:)(uint64_t *a1, Swift::Int a2, uint64_t a3, char **a4, void *a5)
{
  v8 = a1;
  v9 = *a1;
  v97 = static AdaptableTabView.parseItems(from:depth:maxDepth:)(v96, v99, *a1, a2, a3);
  v98 = v10;
  outlined init with copy of (offset: Int, element: TabItem)(v96, v90, type metadata accessor for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?));
  v11 = *&v90[7];
  v95[4] = v90[4];
  v95[5] = v90[5];
  v95[6] = v90[6];
  v95[0] = v90[0];
  v95[1] = v90[1];
  v95[3] = v90[3];
  v95[2] = v90[2];
  v94[0] = v90[8];
  v94[1] = v90[9];
  v94[6] = v90[14];
  v94[5] = v90[13];
  v94[4] = v90[12];
  v94[2] = v90[10];
  v94[3] = v90[11];
  if (!*(*&v90[7] + 16) || !*(v9 + 16) || (v67 = *(&v90[7] + 1), outlined init with copy of TabItem(v9 + 32, v90), v100 = TabItem.sectionID(at:)(a2), value = v100.value, is_nil = v100.is_nil, outlined destroy of TabItem(v90), is_nil))
  {

    v14 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<Visibility>(v94, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    outlined destroy of Binding<Visibility>(v95, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v14);
    outlined destroy of Binding<TabViewCustomization>(v96, type metadata accessor for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?));

    goto LABEL_5;
  }

  v64 = a5;
  v65 = v8;
  v66 = a4;
  *&v90[0] = value;
  v62 = dispatch thunk of CustomStringConvertible.description.getter();
  v63 = v16;
  outlined init with copy of TabItem?(v95, v93, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
  outlined init with copy of TabItem?(v94, v92, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
  memset(&v91[6], 0, 224);
  v17 = *(v11 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
LABEL_49:
    v91[0] = v18;
    v91[1] = v11;
    v91[2] = v67;
    outlined init with copy of TabItem?(v93, v90, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
    if (*(&v90[1] + 1))
    {
      v80 = *&v90[6];
      v52 = one-time initialization token for defaultValue;

      if (v52 != -1)
      {
        swift_once();
      }

      v81 = static TabOptions.TraitKey.defaultValue;
      *v82 = unk_1EAB09380;
      *&v82[9] = *(&word_1EAB09388 + 1);
      v68 = static TabOptions.TraitKey.defaultValue;
      *v69 = unk_1EAB09380;
      *&v69[9] = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v81, &v74);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      __dst[0] = v68;
      __dst[1] = *v69;
      *(&__dst[1] + 9) = *&v69[9];
      outlined destroy of TabOptions(__dst);
      *__src = v74;
      *&__src[16] = *v75;
      *&__src[25] = *&v75[9];
      v53 = *(&v74 + 1);
      v54 = *v75;
      v55 = v75[8];
      outlined copy of TabCustomizationID?(*(&v74 + 1), *v75, v75[8]);
      outlined destroy of TabOptions(__src);
      outlined destroy of TabItem(v90);
      if (v55 != 255)
      {

        v8 = v65;
LABEL_56:
        v91[3] = v53;
        v91[4] = v54;
        LOBYTE(v91[5]) = v55 & 1;
        outlined assign with copy of TabItem?(v93, &v91[6]);
        outlined assign with copy of TabItem?(v92, &v91[20]);
        if (*(v18 + 2) && (outlined init with copy of TabItem((v18 + 32), v90), , v56 = *&v90[6], , outlined destroy of _VariadicView_Children.Element(v90), *&__dst[0] = v56, *&v81 = MEMORY[0x1E69E7CC0], ViewTraitCollection.value<A>(for:defaultValue:)(), , *(*__src + 16)))
        {
          v57 = *(*__src + 32);
        }

        else
        {

          v57 = AGMakeUniqueID();
        }

        v58 = MEMORY[0x1E69E6720];
        outlined destroy of Binding<Visibility>(v92, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
        outlined destroy of Binding<Visibility>(v93, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v58);
        v91[34] = v57;
        memcpy(__src, v91, sizeof(__src));
        static AdaptableTabView.updateEntryCache(_:adding:)(v64, __src);
        outlined init with copy of TabItemGroup(__src, v90);
        BYTE8(v90[17]) = 1;
        v19 = *v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_61;
      }
    }

    else
    {

      outlined destroy of Binding<Visibility>(v90, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    }

    v8 = v65;
    v53 = v62;
    v54 = v63;
    LOBYTE(v55) = 1;
    goto LABEL_56;
  }

  v19 = (v11 + 32);
  v8 = 112;
  while (1)
  {
    outlined init with copy of TabEntry(v19, v90);
    outlined init with copy of TabEntry(v90, __src);
    if ((v89 & 1) == 0)
    {
      __dst[4] = *&__src[64];
      __dst[5] = *&__src[80];
      __dst[6] = *&__src[96];
      __dst[0] = *__src;
      __dst[1] = *&__src[16];
      __dst[2] = *&__src[32];
      __dst[3] = *&__src[48];
      outlined init with copy of TabItem(__dst, &v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v39 = *(v18 + 2);
      v38 = *(v18 + 3);
      if (v39 >= v38 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v18);
      }

      outlined destroy of TabItem(__dst);
      outlined destroy of TabEntry(v90);
      *(v18 + 2) = v39 + 1;
      v40 = &v18[112 * v39];
      v42 = *v82;
      v41 = *&v82[16];
      *(v40 + 2) = v81;
      *(v40 + 3) = v42;
      *(v40 + 4) = v41;
      v43 = v86;
      v45 = v83;
      v44 = v84;
      *(v40 + 7) = v85;
      *(v40 + 8) = v43;
      *(v40 + 5) = v45;
      *(v40 + 6) = v44;
      goto LABEL_10;
    }

    memcpy(__dst, __src, 0x118uLL);
    outlined init with copy of TabItem?(&__dst[3], &v81, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
    if (*&v82[8])
    {
      v77 = v84;
      v78 = v85;
      v79 = v86;
      v74 = v81;
      *v75 = *v82;
      *&v75[16] = *&v82[16];
      v76 = v83;
      outlined init with copy of TabItem(&v74, &v68);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      }

      outlined destroy of TabItem(&v74);
      *(v18 + 2) = v21 + 1;
      v22 = &v18[112 * v21];
      v24 = *v69;
      v23 = *&v69[16];
      *(v22 + 2) = v68;
      *(v22 + 3) = v24;
      *(v22 + 4) = v23;
      v25 = v73;
      v27 = v70;
      v26 = v71;
      *(v22 + 7) = v72;
      *(v22 + 8) = v25;
      *(v22 + 5) = v27;
      *(v22 + 6) = v26;
    }

    v28 = *&__dst[0];
    v29 = *&__dst[1];
    v30 = *(*&__dst[1] + 16);
    v31 = *(*&__dst[0] + 16);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v32 > *(v28 + 3) >> 1)
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v34, 1, v28);
    }

    if (*(v29 + 16))
    {
      if ((*(v28 + 3) >> 1) - *(v28 + 2) < v30)
      {
        goto LABEL_68;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v35 = *(v28 + 2);
        v36 = __OFADD__(v35, v30);
        v37 = v35 + v30;
        if (v36)
        {
          goto LABEL_70;
        }

        *(v28 + 2) = v37;
        goto LABEL_37;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_65;
      }
    }

    v37 = *(v28 + 2);
LABEL_37:
    v46 = *(v18 + 2);
    v47 = v46 + v37;
    if (__OFADD__(v46, v37))
    {
      goto LABEL_66;
    }

    v48 = swift_isUniquelyReferenced_nonNull_native();
    if (!v48 || v47 > *(v18 + 3) >> 1)
    {
      if (v46 <= v47)
      {
        v49 = v46 + v37;
      }

      else
      {
        v49 = v46;
      }

      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48, v49, 1, v18);
    }

    if (*(v28 + 2))
    {
      if ((*(v18 + 3) >> 1) - *(v18 + 2) < v37)
      {
        goto LABEL_69;
      }

      swift_arrayInitWithCopy();

      if (v37)
      {
        v50 = *(v18 + 2);
        v36 = __OFADD__(v50, v37);
        v51 = v50 + v37;
        if (v36)
        {
          goto LABEL_71;
        }

        *(v18 + 2) = v51;
      }
    }

    else
    {

      if (v37)
      {
        goto LABEL_67;
      }
    }

    outlined destroy of TabItemGroup(__dst);
    outlined destroy of TabEntry(v90);
LABEL_10:
    v19 += 288;
    if (!--v17)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
LABEL_61:
  v60 = *(v19 + 2);
  v59 = *(v19 + 3);
  if (v60 >= v59 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v19);
  }

  outlined destroy of TabItemGroup(__src);
  v61 = MEMORY[0x1E69E6720];
  outlined destroy of Binding<Visibility>(v94, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
  outlined destroy of Binding<Visibility>(v95, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v61);
  outlined destroy of Binding<TabViewCustomization>(v96, type metadata accessor for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?));
  *(v19 + 2) = v60 + 1;
  memcpy(&v19[288 * v60 + 32], v90, 0x119uLL);

  *v66 = v19;
LABEL_5:
  *v8 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t specialized implicit closure #1 in static AdaptableTabView.extractTabs(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v45 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = a1 + 32;
    v2 = v45;
    do
    {
      outlined init with copy of TabEntry(v4, v44);
      outlined init with copy of TabEntry(v44, __src);
      if (v43)
      {
        memcpy(__dst, __src, sizeof(__dst));
        strcpy(&v37, "TabItemGroup ");
        HIWORD(v37) = -4864;
        v5 = TabItemGroup.description.getter();
        MEMORY[0x18D00C9B0](v5);

        v7 = *(&v37 + 1);
        v6 = v37;
        outlined destroy of TabItemGroup(__dst);
      }

      else
      {
        *&__dst[64] = *&__src[64];
        *&__dst[80] = *&__src[80];
        *&__dst[96] = *&__src[96];
        *__dst = *__src;
        *&__dst[16] = *&__src[16];
        *&__dst[32] = *&__src[32];
        *&__dst[48] = *&__src[48];
        *&v37 = 0;
        *(&v37 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v39 = 0x206D657449626154;
        v40 = 0xE800000000000000;
        *&v37 = *&__dst[104];
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v10 = v9;
        *&v37 = *&__dst[96];
        if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
        {
          *&v25 = *&__dst[96];
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v33 = static TabOptions.TraitKey.defaultValue;
          v34[0] = unk_1EAB09380;
          *(v34 + 9) = *(&word_1EAB09388 + 1);
          v29 = static TabOptions.TraitKey.defaultValue;
          v30[0] = unk_1EAB09380;
          *(v30 + 9) = *(&word_1EAB09388 + 1);
          outlined init with copy of TabOptions(&v33, &v27);
          ViewTraitCollection.value<A>(for:defaultValue:)();
          v35 = v29;
          v36[0] = v30[0];
          *(v36 + 9) = *(v30 + 9);
          outlined destroy of TabOptions(&v35);
          v37 = v31;
          *v38 = v32[0];
          *&v38[9] = *(v32 + 9);
          outlined destroy of TabOptions(&v37);
          if (v38[24])
          {
            if (TabItem.needsCustomizationIDForEnablement.getter())
            {
              v27 = static TabOptions.TraitKey.defaultValue;
              v28[0] = unk_1EAB09380;
              *(v28 + 9) = *(&word_1EAB09388 + 1);
              v23 = static TabOptions.TraitKey.defaultValue;
              *v24 = unk_1EAB09380;
              *&v24[9] = *(&word_1EAB09388 + 1);
              outlined init with copy of TabOptions(&v27, &v25);
              ViewTraitCollection.value<A>(for:defaultValue:)();
              v29 = v23;
              v30[0] = *v24;
              *(v30 + 9) = *&v24[9];
              outlined destroy of TabOptions(&v29);
              v31 = v25;
              v32[0] = v26[0];
              *(v32 + 9) = *(v26 + 9);
              v11 = *(&v25 + 1);
              v12 = *&v26[0];
              v13 = BYTE8(v26[0]);
              outlined copy of TabCustomizationID?(*(&v25 + 1), *&v26[0], SBYTE8(v26[0]));
              outlined destroy of TabOptions(&v31);
              if (v13 != 255)
              {

                v8 = v11;
                v10 = v12;
              }
            }
          }

          else
          {

            v8 = 0xD000000000000016;
            v10 = 0x800000018CD45E10;
          }
        }

        MEMORY[0x18D00C9B0](v8, v10);

        MEMORY[0x18D00C9B0](0x3D6E656464696820, 0xE800000000000000);
        v14 = TabEntry.hidden.getter();
        v15 = (v14 & 1) == 0;
        if (v14)
        {
          v16 = 1702195828;
        }

        else
        {
          v16 = 0x65736C6166;
        }

        if (v15)
        {
          v17 = 0xE500000000000000;
        }

        else
        {
          v17 = 0xE400000000000000;
        }

        MEMORY[0x18D00C9B0](v16, v17);

        v6 = v39;
        v7 = v40;
        outlined destroy of TabItem(__dst);
      }

      outlined destroy of TabEntry(v44);
      v45 = v2;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v2 = v45;
      }

      *(v2 + 16) = v19 + 1;
      v20 = v2 + 16 * v19;
      *(v20 + 32) = v6;
      *(v20 + 40) = v7;
      v4 += 288;
      --v1;
    }

    while (v1);
  }

  v44[0] = v2;
  type metadata accessor for Binding<Visibility>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v21 = BidirectionalCollection<>.joined(separator:)();

  return v21;
}

char *static AdaptableTabView.parseItems(from:depth:maxDepth:)(char *result, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  v6 = *(a3 + 16);
  if (!v6)
  {
LABEL_45:
    v44 = v66;
    *(result + 4) = v65;
    *(result + 5) = v44;
    *(result + 6) = v67;
    v45 = v62;
    *result = v61;
    *(result + 1) = v45;
    v46 = v64;
    *(result + 2) = v63;
    *(result + 3) = v46;
    return v5;
  }

  v7 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
    goto LABEL_50;
  }

  v8 = a5;
  v47 = result;
  v10 = a3 + 32;
  v11 = v5;
  v12 = v5;
  v48 = a4 + 1;
  while (1)
  {
    outlined init with copy of TabItem(v10, &v53);
    if (v7 >= v8)
    {
      goto LABEL_18;
    }

    *&__src[0] = v59;
    if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
    {
      break;
    }

    v51 = v59;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v13 = *(*&__src[0] + 16);

    v14 = v13 + 1 - a4;
    if (__OFSUB__(v13 + 1, a4))
    {
      goto LABEL_47;
    }

LABEL_12:
    if (v14 >= 2)
    {
      outlined init with copy of TabItem(&v53, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[112 * v17];
      v19 = __src[0];
      v20 = __src[2];
      *(v18 + 3) = __src[1];
      *(v18 + 4) = v20;
      *(v18 + 2) = v19;
      v21 = __src[3];
      v22 = __src[4];
      v23 = __src[6];
      *(v18 + 7) = __src[5];
      *(v18 + 8) = v23;
      *(v18 + 5) = v21;
      *(v18 + 6) = v22;
      outlined destroy of TabItem(&v53);
      v8 = a5;
      goto LABEL_5;
    }

LABEL_18:
    if (*(v12 + 2))
    {
      v24 = static AdaptableTabView.makeTabGroups(_:depth:maxDepth:)(v12, v7, v8);

      specialized Array.append<A>(contentsOf:)(v24);
      v12 = v5;
    }

    *&__src[0] = v59;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    if (v51 == 1)
    {
      *&__src[0] = v59;
      if (ViewTraitCollection.isAuxiliaryContent.getter())
      {
        v51 = v59;
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v25 = *(*&__src[0] + 16);

        v26 = v25 + 1 - a4;
        if (__OFSUB__(v25 + 1, a4))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v51 = v59;
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v27 = *(*&__src[0] + 16);

        v26 = v27 - a4;
        if (__OFSUB__(v27, a4))
        {
          goto LABEL_48;
        }
      }

      if (v26 <= 1)
      {
        outlined init with copy of TabItem?(&v61, __src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
        if (!*(&__src[1] + 1))
        {
          v43 = MEMORY[0x1E69E6720];
          outlined destroy of Binding<Visibility>(&v61, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
          v7 = v48;
          outlined destroy of Binding<Visibility>(__src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v43);
          v65 = v57;
          v66 = v58;
          v67 = v59;
          v61 = v53;
          v62 = v54;
          v63 = v55;
          v64 = v56;
          goto LABEL_5;
        }

        outlined destroy of Binding<Visibility>(__src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
      }
    }

    *&__src[0] = v59;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    if (v51 != 1)
    {
      goto LABEL_32;
    }

    outlined init with copy of TabItem?(a2, __src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
    if (*(&__src[1] + 1))
    {
      outlined destroy of Binding<Visibility>(__src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
LABEL_32:
      *&__src[0] = v59;
      if (ViewTraitCollection.isAuxiliaryContent.getter())
      {
        outlined init with copy of TabItem(&v53, __src);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v29 = *(v11 + 2);
        v28 = *(v11 + 3);
        if (v29 >= v28 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v11);
        }

        *(v11 + 2) = v29 + 1;
        v30 = &v11[112 * v29];
        v31 = __src[0];
        v32 = __src[2];
        *(v30 + 3) = __src[1];
        *(v30 + 4) = v32;
        *(v30 + 2) = v31;
        v33 = __src[3];
        v34 = __src[4];
        v35 = __src[6];
        *(v30 + 7) = __src[5];
        *(v30 + 8) = v35;
        *(v30 + 5) = v33;
        *(v30 + 6) = v34;
        outlined destroy of TabItem(&v53);
      }

      else
      {
        outlined init with copy of TabItem(&v53, __src);
        BYTE8(__src[17]) = 0;
        v36 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
        }

        v38 = *(v36 + 2);
        v37 = *(v36 + 3);
        if (v38 >= v37 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
        }

        *(v36 + 2) = v38 + 1;
        memcpy(&v36[288 * v38 + 32], __src, 0x119uLL);
        v60 = v36;
        outlined destroy of TabItem(&v53);
        v8 = a5;
      }

      goto LABEL_5;
    }

    v39 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<Visibility>(a2, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    v7 = v48;
    outlined destroy of Binding<Visibility>(__src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v39);
    v40 = v58;
    a2[4] = v57;
    a2[5] = v40;
    a2[6] = v59;
    v41 = v54;
    *a2 = v53;
    a2[1] = v41;
    v42 = v56;
    a2[2] = v55;
    a2[3] = v42;
LABEL_5:
    v10 += 112;
    if (!--v6)
    {

      v5 = v60;
      result = v47;
      goto LABEL_45;
    }
  }

  v51 = v59;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v15 = *(*&__src[0] + 16);

  v14 = v15 - a4;
  if (!__OFSUB__(v15, a4))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t static AdaptableTabView.updateEntryCache(_:adding:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  outlined init with copy of TabItemGroup(a2, __src);
  BYTE8(__src[17]) = 1;
  outlined copy of TabCustomizationID.Base();
  result = specialized Dictionary.subscript.setter(__src, v4, v5);
  v55 = a2;
  v7 = a2[1];
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_27:
    v32 = v55[2];
    v57 = *(v32 + 16);
    if (!v57)
    {
      return result;
    }

    v33 = 0;
    for (i = v32 + 32; ; i += 112)
    {
      if (v33 >= *(v32 + 16))
      {
        goto LABEL_53;
      }

      outlined init with copy of TabItem(i, v60);
      *&__src[0] = *(&v60[6] + 1);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      *&__src[0] = *&v60[6];
      if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
      {
        *&v69 = *&v60[6];
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v61 = static TabOptions.TraitKey.defaultValue;
        *v62 = unk_1EAB09380;
        *&v62[9] = *(&word_1EAB09388 + 1);
        v74 = static TabOptions.TraitKey.defaultValue;
        v75[0] = unk_1EAB09380;
        *(v75 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v61, &v72);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        __dst[0] = v74;
        __dst[1] = v75[0];
        *(&__dst[1] + 9) = *(v75 + 9);
        outlined destroy of TabOptions(__dst);
        __src[0] = v76;
        __src[1] = v77[0];
        *(&__src[1] + 9) = *(v77 + 9);
        outlined destroy of TabOptions(__src);
        if (BYTE8(__src[2]))
        {
          if (TabItem.needsCustomizationIDForEnablement.getter())
          {
            v72 = static TabOptions.TraitKey.defaultValue;
            v73[0] = unk_1EAB09380;
            *(v73 + 9) = *(&word_1EAB09388 + 1);
            v67 = static TabOptions.TraitKey.defaultValue;
            v68[0] = unk_1EAB09380;
            *(v68 + 9) = *(&word_1EAB09388 + 1);
            outlined init with copy of TabOptions(&v72, &v69);
            ViewTraitCollection.value<A>(for:defaultValue:)();
            v74 = v67;
            v75[0] = v68[0];
            *(v75 + 9) = *(v68 + 9);
            outlined destroy of TabOptions(&v74);
            v76 = v69;
            v77[0] = v70[0];
            *(v77 + 9) = *(v70 + 9);
            v39 = *(&v69 + 1);
            v40 = *&v70[0];
            v41 = BYTE8(v70[0]);
            outlined copy of TabCustomizationID?(*(&v69 + 1), *&v70[0], SBYTE8(v70[0]));
            outlined destroy of TabOptions(&v76);
            if (v41 != 255)
            {

              v36 = v39;
              v38 = v40;
            }
          }
        }

        else
        {

          v36 = 0xD000000000000016;
          v38 = 0x800000018CD45E10;
        }
      }

      outlined init with copy of TabItem(v60, __src);
      BYTE8(__src[17]) = 0;
      memcpy(__dst, __src, 0x119uLL);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = *a1;
      v43 = v61;
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v38);
      v46 = *(v43 + 16);
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_54;
      }

      v49 = v44;
      if (*(v43 + 24) >= v48)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v44)
          {
            goto LABEL_29;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v49)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, isUniquelyReferenced_nonNull_native);
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v38);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_58;
        }

        v45 = v50;
        if (v49)
        {
LABEL_29:

          v35 = v61;
          outlined assign with take of TabEntry(__dst, *(v61 + 56) + 288 * v45);
          goto LABEL_30;
        }
      }

      v35 = v61;
      *(v61 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v52 = (v35[6] + 16 * v45);
      *v52 = v36;
      v52[1] = v38;
      memcpy((v35[7] + 288 * v45), __dst, 0x119uLL);
      v53 = v35[2];
      v30 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v30)
      {
        goto LABEL_56;
      }

      v35[2] = v54;
LABEL_30:
      ++v33;
      *a1 = v35;
      result = outlined destroy of TabItem(v60);
      if (v57 == v33)
      {
        return result;
      }
    }
  }

  v9 = 0;
  v10 = v7 + 32;
  v56 = v7;
  while (v9 < *(v7 + 16))
  {
    outlined init with copy of TabEntry(v10, __src);
    if ((BYTE8(__src[17]) & 1) == 0)
    {
      v65 = __src[5];
      v66 = __src[6];
      v61 = __src[0];
      *v62 = __src[1];
      v63 = __src[3];
      v64 = __src[4];
      *&v62[16] = __src[2];
      *&__dst[0] = *(&__src[6] + 1);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      *&__dst[0] = v66;
      if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
      {
        *&v67 = v66;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v76 = static TabOptions.TraitKey.defaultValue;
        v77[0] = unk_1EAB09380;
        *(v77 + 9) = *(&word_1EAB09388 + 1);
        v72 = static TabOptions.TraitKey.defaultValue;
        v73[0] = unk_1EAB09380;
        *(v73 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v76, &v69);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v60[0] = v72;
        v60[1] = v73[0];
        *(&v60[1] + 9) = *(v73 + 9);
        outlined destroy of TabOptions(v60);
        __dst[0] = v74;
        __dst[1] = v75[0];
        *(&__dst[1] + 9) = *(v75 + 9);
        outlined destroy of TabOptions(__dst);
        if (BYTE8(__dst[2]))
        {
          if (TabItem.needsCustomizationIDForEnablement.getter())
          {
            v69 = static TabOptions.TraitKey.defaultValue;
            v70[0] = unk_1EAB09380;
            *(v70 + 9) = *(&word_1EAB09388 + 1);
            v58 = static TabOptions.TraitKey.defaultValue;
            *v59 = unk_1EAB09380;
            *&v59[9] = *(&word_1EAB09388 + 1);
            outlined init with copy of TabOptions(&v69, &v67);
            ViewTraitCollection.value<A>(for:defaultValue:)();
            v72 = v58;
            v73[0] = *v59;
            *(v73 + 9) = *&v59[9];
            outlined destroy of TabOptions(&v72);
            v74 = v67;
            v75[0] = v68[0];
            *(v75 + 9) = *(v68 + 9);
            v14 = *(&v67 + 1);
            v15 = *&v68[0];
            v16 = BYTE8(v68[0]);
            outlined copy of TabCustomizationID?(*(&v67 + 1), *&v68[0], SBYTE8(v68[0]));
            outlined destroy of TabOptions(&v74);
            if (v16 != 255)
            {

              v11 = v14;
              v13 = v15;
            }
          }
        }

        else
        {

          v11 = 0xD000000000000016;
          v13 = 0x800000018CD45E10;
        }
      }

      outlined init with copy of TabItem(&v61, __dst);
      BYTE8(__dst[17]) = 0;
      memcpy(v60, __dst, 0x119uLL);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *&v76 = *a1;
      v18 = v76;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
      v21 = *(v18 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_55;
      }

      v24 = v19;
      if (*(v18 + 24) >= v23)
      {
        if (v17)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if ((v24 & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, v17);
        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_58;
        }

        v20 = v25;
        if ((v24 & 1) == 0)
        {
LABEL_24:
          v27 = v76;
          *(v76 + 8 * (v20 >> 6) + 64) |= 1 << v20;
          v28 = (v27[6] + 16 * v20);
          *v28 = v11;
          v28[1] = v13;
          memcpy((v27[7] + 288 * v20), v60, 0x119uLL);
          v29 = v27[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_57;
          }

          v27[2] = v31;
          goto LABEL_26;
        }
      }

      v27 = v76;
      outlined assign with take of TabEntry(v60, *(v76 + 56) + 288 * v20);
LABEL_26:
      *a1 = v27;
      result = outlined destroy of TabItem(&v61);
      v7 = v56;
      goto LABEL_4;
    }

    memcpy(__dst, __src, 0x118uLL);
    static AdaptableTabView.updateEntryCache(_:adding:)(a1, __dst);
    result = outlined destroy of TabItemGroup(__dst);
LABEL_4:
    ++v9;
    v10 += 288;
    if (v8 == v9)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall IndexUniqueIDProjection.get(base:)(Swift::Int base)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3 <= base)
  {
    if (v3)
    {
      return *(v2 + 136);
    }

    else
    {
      return 0;
    }
  }

  else if (base < 0)
  {
    __break(1u);
  }

  else
  {
    return *(v2 + 112 * base + 136);
  }

  return base;
}

Swift::Void __swiftcall IndexUniqueIDProjection.set(base:newValue:)(Swift::Int *base, Swift::Int newValue)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v4 + 16))
    {
      *&v30 = v7;
      outlined init with copy of TabItem(v8, &v30 + 8);
      v27 = v35;
      v28 = v36;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v29 = v37;
      v25 = v33;
      v26 = v34;
      outlined init with copy of (offset: Int, element: TabItem)(&v22, v20, type metadata accessor for (offset: Int, element: TabItem));
      v9 = v21[13];
      outlined destroy of TabItem(v21);
      if (v9 == newValue)
      {
        v11 = v22;
        v12 = v23;
        v13 = v24;
        v14 = v25;
        v15 = v26;
        v16 = v27;
        v17 = v28;
        v10 = v29;
        goto LABEL_8;
      }

      ++v7;
      outlined destroy of Binding<TabViewCustomization>(&v22, type metadata accessor for (offset: Int, element: TabItem));
      v8 += 112;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v10 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
LABEL_8:
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    v35 = v16;
    v36 = v17;
    v37 = v10;
    if (v13)
    {
      v19 = v11;
      outlined destroy of TabItem(&v30 + 8);
      v18 = v19;
    }

    else
    {
      outlined destroy of Binding<TabViewCustomization>(&v30, type metadata accessor for (offset: Int, element: TabItem)?);
      v18 = 0;
    }

    *base = v18;
  }
}

Swift::Int protocol witness for Projection.get(base:) in conformance IndexUniqueIDProjection@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = IndexUniqueIDProjection.get(base:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IndexUniqueIDProjection()
{
  Hasher.init(_seed:)();
  IndexUniqueIDProjection.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IndexUniqueIDProjection(uint64_t a1)
{
  Hasher.init(_seed:)();
  IndexUniqueIDProjection.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t IndexUniqueIDProjection.hash(into:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      outlined init with copy of TabItem(v4, v7);
      _ViewList_View.viewID.getter();
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(v6);
      v5 = outlined destroy of TabItem(v7);
      v4 += 112;
      --v3;
    }

    while (v3);
  }

  return v5;
}

Swift::Void __swiftcall ItemIndexTabsOnlyIndexProjection.set(base:newValue:)(Swift::Int *base, Swift::Int newValue)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(newValue), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    *base = v8;
  }

  else
  {
    swift_endAccess();
  }
}

Swift::Int ItemIndexTabsOnlyIndexProjection.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      outlined init with copy of TabItem(v3, v6);
      _ViewList_View.viewID.getter();
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(&v5);
      outlined destroy of TabItem(v6);
      v3 += 112;
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance ItemIndexTabsOnlyIndexProjection@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  result = swift_endAccess();
  *a2 = v9;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ItemIndexTabsOnlyIndexProjection(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      outlined init with copy of TabItem(v5, v8);
      _ViewList_View.viewID.getter();
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(&v7);
      outlined destroy of TabItem(v8);
      v5 += 112;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance InAdaptableTabViewContext(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
  PropertyList.subscript.getter();
  return v3;
}

double TabHostingController.HostingView.appendViewGraphFeatures()(uint64_t a1)
{
  UIHostingViewBase.viewGraph.getter();

  lazy protocol witness table accessor for type ToolbarInputFeature and conformance ToolbarInputFeature();
  ViewGraph.append<A>(feature:)();

  return result;
}

char *TabHostingController.HostingView.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  outlined init with copy of TabItem.RootView(a1, v6);
  v4 = specialized _UIHostingView.init(rootView:)(v6);
  outlined destroy of TabItem.RootView(a1);
  return v4;
}

id @objc TabHostingController.HostingView.init(coder:)(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for TabHostingController.HostingView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id TabHostingController.HostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabHostingController.HostingView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TabHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  objc_allocWithZone(v1);
  outlined init with copy of TabItem.RootView(a1, v8);
  v3 = objc_allocWithZone(type metadata accessor for TabHostingController.HostingView(0));
  outlined init with copy of TabItem.RootView(v8, v7);
  v4 = specialized _UIHostingView.init(rootView:)(v7);
  outlined destroy of TabItem.RootView(v8);
  v5 = specialized UIHostingController.init(_hostingView:)(v4);
  outlined destroy of TabItem.RootView(a1);
  return v5;
}

double destroy for TabSidebarConfiguration(void *a1)
{
  if (a1[2])
  {
  }

  if (a1[4] != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for TabSidebarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
  }

  v5 = *(a2 + 32);
  if (v5 == 1)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    *(a1 + 48) = v7;
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for TabSidebarConfiguration(uint64_t a1, uint64_t a2, __n128 a3)
{
  *a1 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v5)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Binding<Visibility>(a1 + 8, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]);
      v6 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v6;
    }
  }

  else if (v5)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v7 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v7;
  }

  v8 = (a1 + 32);
  v10 = (a2 + 32);
  v9 = *(a2 + 32);
  if (*(a1 + 32) == 1)
  {
    if (v9 == 1)
    {
      v11 = *v10;
      *(a1 + 48) = *(a2 + 48);
      *v8 = v11;
    }

    else
    {
      *(a1 + 32) = v9;
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
    }
  }

  else if (v9 == 1)
  {
    outlined destroy of TabSidebarAccessoryViewConfiguration(a1 + 32);
    v12 = *(a2 + 48);
    *v8 = *v10;
    *(a1 + 48) = v12;
  }

  else
  {
    *(a1 + 32) = v9;

    *(a1 + 40) = *(a2 + 40);

    *(a1 + 48) = *(a2 + 48);
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for TabSidebarConfiguration(uint64_t a1, uint64_t a2, __n128 a3)
{
  *a1 = *a2;
  if (*(a1 + 16))
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = v5;

      *(a1 + 24) = *(a2 + 24);
      goto LABEL_6;
    }

    outlined destroy of Binding<Visibility>(a1 + 8, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  v6 = *(a2 + 32);
  if (*(a1 + 32) != 1)
  {
    if (v6 != 1)
    {
      *(a1 + 32) = v6;

      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);

      goto LABEL_11;
    }

    outlined destroy of TabSidebarAccessoryViewConfiguration(a1 + 32);
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
LABEL_11:
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TabSidebarConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TabSidebarConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void *static AdaptableTabView.makeSelectionCache(items:selectionValueOnlyIncludesTabs:processedTabs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Si14uiKitHostIndex_Si07swiftuieF0SS18platformIdentifiertTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v40 = v6;
  v7 = specialized static AdaptableTabView.makeIDToSelectionCache(items:selectionValueOnlyIncludesTabs:)(a1, v4);
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = a3 + 32;
    do
    {
      *v37 = v9;
      outlined init with copy of TabEntry(v11, &v37[8]);
      if (v39 == 255)
      {
        break;
      }

      v12 = *v37;
      *v37 = *&v37[8];
      *&v37[16] = *&v37[24];
      *&v37[32] = *&v37[40];
      *&v37[48] = *&v37[56];
      *&v37[64] = *&v37[72];
      *&v37[80] = *&v37[88];
      *&v37[96] = *&v37[104];
      *&v37[112] = *&v37[120];
      *&v37[128] = *&v37[136];
      *&v37[144] = *&v37[152];
      *&v37[160] = *&v37[168];
      *&v37[176] = *&v37[184];
      *&v37[192] = *&v37[200];
      *&v37[208] = *&v37[216];
      *&v37[224] = *&v37[232];
      *&v37[240] = *&v37[248];
      *&v37[256] = *&v37[264];
      *&v37[272] = v38;
      LOBYTE(v38) = v39;
      static AdaptableTabView.updateSelectionCache(_:adding:idToSelectionCache:hostIndex:)(&v40, v37, v7, v10, v12);
      outlined init with copy of TabEntry(v37, __src);
      if (v36)
      {
        memcpy(__dst, __src, 0x118uLL);
        outlined init with copy of TabItem?(&__dst[3], &v32, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
        if (*&v33[8])
        {
          v13 = one-time initialization token for defaultValue;

          if (v13 != -1)
          {
            swift_once();
          }

          v26 = static TabOptions.TraitKey.defaultValue;
          v27[0] = unk_1EAB09380;
          *(v27 + 9) = *(&word_1EAB09388 + 1);
          v30 = static TabOptions.TraitKey.defaultValue;
          v31[0] = unk_1EAB09380;
          *(v31 + 9) = *(&word_1EAB09388 + 1);
          outlined init with copy of TabOptions(&v26, &v28);
          ViewTraitCollection.value<A>(for:defaultValue:)();
          outlined destroy of TabItemGroup(__dst);
          outlined destroy of TabEntry(v37);
          v28 = v30;
          v29[0] = v31[0];
          *(v29 + 9) = *(v31 + 9);
          outlined destroy of TabOptions(&v28);

          v30 = v24;
          v31[0] = *v25;
          *(v31 + 9) = *&v25[9];
          outlined destroy of TabOptions(&v30);
          v14 = BYTE1(v30);
          result = outlined destroy of TabItem(&v32);
        }

        else
        {
          outlined destroy of TabItemGroup(__dst);
          outlined destroy of TabEntry(v37);
          result = outlined destroy of Binding<Visibility>(&v32, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
          v14 = 0;
        }
      }

      else
      {
        __dst[5] = *&__src[80];
        __dst[6] = *&__src[96];
        __dst[0] = *__src;
        __dst[1] = *&__src[16];
        __dst[3] = *&__src[48];
        __dst[4] = *&__src[64];
        __dst[2] = *&__src[32];
        *&v24 = *&__src[96];
        v16 = one-time initialization token for defaultValue;

        if (v16 != -1)
        {
          swift_once();
        }

        v28 = static TabOptions.TraitKey.defaultValue;
        v29[0] = unk_1EAB09380;
        *(v29 + 9) = *(&word_1EAB09388 + 1);
        v32 = static TabOptions.TraitKey.defaultValue;
        *v33 = unk_1EAB09380;
        *&v33[9] = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v28, &v30);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        outlined destroy of TabItem(__dst);
        outlined destroy of TabEntry(v37);
        v30 = v32;
        v31[0] = *v33;
        *(v31 + 9) = *&v33[9];
        outlined destroy of TabOptions(&v30);

        v32 = v26;
        *v33 = v27[0];
        *&v33[9] = *(v27 + 9);
        result = outlined destroy of TabOptions(&v32);
        v14 = BYTE1(v32);
      }

      v17 = v14 ^ 1u;
      v18 = __OFADD__(v10, v17);
      v10 += v17;
      if (v18)
      {
        __break(1u);
        return result;
      }

      ++v9;
      v11 += 288;
    }

    while (v8 != v9);
    v6 = v40;

    if (!v6[2] || (specialized __RawDictionaryStorage.find<A>(_:)(0), (v19 & 1) == 0))
    {
      v20 = TabEntry.platformIdentifier.getter();
      v22 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v6;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, 0, v20, v22, 0, isUniquelyReferenced_nonNull_native);
      return *v37;
    }
  }

  else
  {

    if (v6[2])
    {
      specialized __RawDictionaryStorage.find<A>(_:)(0);
    }
  }

  return v6;
}

uint64_t static AdaptableTabView.updateSelectionCache(_:adding:idToSelectionCache:hostIndex:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of TabEntry(a2, __src);
  if (v23)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v9 = *(__dst[1] + 16);
    if (v9)
    {
      v10 = __dst[1] + 32;
      do
      {
        outlined init with copy of TabEntry(v10, v20);
        static AdaptableTabView.updateSelectionCache(_:adding:idToSelectionCache:hostIndex:)(a1, v20, a3, a4, a5);
        outlined destroy of TabEntry(v20);
        v10 += 288;
        --v9;
      }

      while (v9);
    }

    return outlined destroy of TabItemGroup(__dst);
  }

  else
  {
    v20[4] = *&__src[64];
    v20[5] = *&__src[80];
    v20[6] = *&__src[96];
    v20[0] = *__src;
    v20[1] = *&__src[16];
    v20[2] = *&__src[32];
    v20[3] = *&__src[48];
    v12 = TabItem.platformIdentifier.getter();
    v14 = v13;
    if (*(a3 + 16) && (v15 = v12, v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v17 & 1) != 0))
    {
      v18 = *(*(a3 + 56) + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = *a1;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5, v15, v14, v18, isUniquelyReferenced_nonNull_native);
      *a1 = __dst[0];
    }

    else
    {
    }

    return outlined destroy of TabItem(v20);
  }
}

uint64_t TabItemGroup.updateChildSelection(in:selectedID:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = v5;
  v8 = [v6 _children];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITab, 0x1E69DD780);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
LABEL_29:
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_30:

LABEL_31:

    return 0;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_5:
  v24 = v6;
  v25 = v7;
  v7 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18D00E9C0](v7, v9);
    }

    else
    {
      if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v11 = *(v9 + 8 * v7 + 32);
    }

    v12 = v11;
    v13 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v6 = [v11 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == a2 && v16 == a3)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v23 = v19;

      [v24 _setSelectedElement_];

      goto LABEL_25;
    }

LABEL_19:
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      break;
    }

    ++v7;
    if (v13 == v10)
    {

      goto LABEL_31;
    }
  }

  v21 = v20;

  v22 = v12;
  if (TabItemGroup.updateChildSelection(in:selectedID:)(v21, a2, a3))
  {
    [v24 _setSelectedElement_];

LABEL_25:
    return 1;
  }

  return 0;
}

id TabItem.swipeActionsConfiguration(for:)(char a1)
{
  if (a1)
  {
    *&v147 = *(v1 + 96);
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    *&v140 = static SwipeActions.TraitKey.defaultValue;
    v2 = ViewTraitCollection.value<A>(for:defaultValue:)();
    v3 = v175;
    MEMORY[0x18D00ABE0](v2);
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v4 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<Visibility>(&v238, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v251 = 0u;
    outlined destroy of Binding<Visibility>(&v245, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v4);
    AGGraphClearUpdate();
    v5 = *(v175 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *MEMORY[0x1E698D3F8];
      v8 = v5 - 1;
      v9 = 1;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      while (2)
      {
        while (1)
        {
          v24 = v6 <= *(v3 + 16) ? *(v3 + 16) : v6;
          v25 = v6;
          v136 = v17;
          v138 = v16;
          v132 = v19;
          v134 = v18;
          v128 = v21;
          v130 = v20;
          v124 = v23;
          v126 = v22;
          v120 = v10;
          v122 = v15;
          v116 = v12;
          v118 = v11;
          v112 = v14;
          v114 = v13;
          while (1)
          {
            if (v24 == v25)
            {
              __break(1u);
              goto LABEL_43;
            }

            v6 = v25 + 1;
            if (AGWeakAttributeGetAttribute() != v7)
            {
              break;
            }

            ++v25;
            if (v5 == v6)
            {

              goto LABEL_37;
            }
          }

          if (v9)
          {
            break;
          }

          Value = AGGraphGetValue();
          v38 = Value[1];
          v175 = *Value;
          v176 = v38;
          v39 = Value[4];
          v41 = Value[2];
          v40 = Value[3];
          v180 = Value[5];
          v179 = v39;
          v177 = v41;
          v178 = v40;
          v42 = Value[8];
          v44 = Value[6];
          v43 = Value[7];
          v184 = Value[9];
          v183 = v42;
          v181 = v44;
          v182 = v43;
          v45 = Value[12];
          v47 = Value[10];
          v46 = Value[11];
          v188 = Value[13];
          v187 = v45;
          v185 = v47;
          v186 = v46;
          v189 = v124;
          v190 = v120;
          v191 = v118;
          v192 = v116;
          v193 = v114;
          v194 = v112;
          v195 = v122;
          v172 = v114;
          v173 = v112;
          v174 = v122;
          v169 = v120;
          v171 = v116;
          v170 = v118;
          v165 = v179;
          v166 = v180;
          v167 = v181;
          v168 = v124;
          v161 = v175;
          v162 = v176;
          v163 = v177;
          v164 = v178;
          outlined init with copy of SwipeActions.Value(&v175, &v147);
          outlined init with copy of TabItem?(&v175, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          outlined init with copy of TabItem?(&v182, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          outlined init with copy of TabItem?(&v189, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          static SwipeActions.Configuration.reduce(_:_:)(&v168, &v161, &v147);
          v200 = v165;
          v201 = v166;
          v202 = v167;
          v196 = v161;
          v197 = v162;
          v199 = v164;
          v198 = v163;
          v48 = MEMORY[0x1E69E6720];
          outlined destroy of Binding<Visibility>(&v196, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
          v207 = v172;
          v208 = v173;
          v209 = v174;
          v203 = v168;
          v204 = v169;
          v206 = v171;
          v205 = v170;
          outlined destroy of Binding<Visibility>(&v203, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v48);
          v106 = v147;
          v107 = v149;
          v108 = v148;
          v110 = v150;
          v111 = v152;
          v109 = v151;
          v105 = v153;
          v210 = v124;
          v211 = v120;
          v212 = v118;
          v213 = v116;
          v214 = v114;
          v215 = v112;
          v216 = v122;
          outlined destroy of Binding<Visibility>(&v210, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v48);
          v217 = v138;
          v218 = v136;
          v219 = v134;
          v220 = v132;
          v221 = v130;
          v222 = v128;
          v223 = v126;
          v172 = v130;
          v173 = v128;
          v174 = v126;
          v169 = v136;
          v171 = v132;
          v170 = v134;
          v165 = v186;
          v166 = v187;
          v167 = v188;
          v168 = v138;
          v161 = v182;
          v162 = v183;
          v163 = v184;
          v164 = v185;
          outlined init with copy of TabItem?(&v217, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          static SwipeActions.Configuration.reduce(_:_:)(&v168, &v161, &v147);
          outlined destroy of SwipeActions.Value(&v175);
          v228 = v165;
          v229 = v166;
          v230 = v167;
          v224 = v161;
          v225 = v162;
          v227 = v164;
          v226 = v163;
          outlined destroy of Binding<Visibility>(&v224, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v48);
          v235 = v172;
          v236 = v173;
          v237 = v174;
          v231 = v168;
          v232 = v169;
          v234 = v171;
          v233 = v170;
          outlined destroy of Binding<Visibility>(&v231, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v48);
          v98 = v148;
          v99 = v147;
          v101 = v150;
          v102 = v149;
          v100 = v151;
          v103 = v152;
          v104 = v153;
          v140 = v138;
          v141 = v136;
          v142 = v134;
          v143 = v132;
          v144 = v130;
          v145 = v128;
          v146 = v126;
          outlined destroy of Binding<Visibility>(&v140, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v48);
          if (v8 == v25)
          {
            goto LABEL_44;
          }

          v9 = 0;
          v15 = v105;
          v23 = v106;
          v11 = v107;
          v10 = v108;
          v13 = v109;
          v12 = v110;
          v14 = v111;
          v17 = v98;
          v16 = v99;
          v19 = v101;
          v18 = v102;
          v20 = v100;
          v21 = v103;
          v22 = v104;
        }

        v26 = AGGraphGetValue();
        v27 = v26[1];
        v147 = *v26;
        v148 = v27;
        v28 = v26[2];
        v29 = v26[3];
        v30 = v26[5];
        v151 = v26[4];
        v152 = v30;
        v149 = v28;
        v150 = v29;
        v31 = v26[6];
        v32 = v26[7];
        v33 = v26[9];
        v155 = v26[8];
        v156 = v33;
        v153 = v31;
        v154 = v32;
        v34 = v26[10];
        v35 = v26[11];
        v36 = v26[13];
        v159 = v26[12];
        v160 = v36;
        v157 = v34;
        v158 = v35;
        v175 = v124;
        v176 = v120;
        v177 = v118;
        v178 = v116;
        v179 = v114;
        v180 = v112;
        v181 = v122;
        v182 = v138;
        v183 = v136;
        v184 = v134;
        v185 = v132;
        v186 = v130;
        v187 = v128;
        v188 = v126;
        outlined init with copy of SwipeActions.Value(&v147, &v140);
        outlined destroy of SwipeActions.Value(&v175);
        v23 = v147;
        v10 = v148;
        v11 = v149;
        v12 = v150;
        v13 = v151;
        v14 = v152;
        v15 = v153;
        v16 = v154;
        v17 = v155;
        v18 = v156;
        v19 = v157;
        v20 = v158;
        v21 = v159;
        v22 = v160;
        if (v8 != v25)
        {
          v9 = 0;
          continue;
        }

        break;
      }

      v136 = v155;
      v138 = v154;
      v132 = v157;
      v134 = v156;
      v128 = v159;
      v130 = v158;
      v124 = v147;
      v126 = v160;
      v120 = v148;
      v122 = v153;
      v116 = v150;
      v118 = v149;
      v112 = v152;
      v114 = v151;
    }

    else
    {

      v122 = 0u;
      v124 = 0u;
      v118 = 0u;
      v120 = 0u;
      v114 = 0u;
      v116 = 0u;
      v112 = 0u;
      v136 = 0u;
      v138 = 0u;
      v132 = 0u;
      v134 = 0u;
      v128 = 0u;
      v130 = 0u;
      v126 = 0u;
    }

LABEL_37:
    AGGraphSetUpdate();
    static Update.end()();
    v176 = v120;
    v175 = v124;
    v178 = v116;
    v177 = v118;
    v180 = v112;
    v179 = v114;
    v182 = v138;
    v181 = v122;
    v184 = v134;
    v183 = v136;
    v186 = v130;
    v185 = v132;
    v188 = v126;
    v187 = v128;
    outlined init with copy of TabItem?(&v182, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
    outlined destroy of SwipeActions.Value(&v175);
    v96 = *(&v183 + 1);
    *&v141 = v183;
    v140 = v182;
    v149 = v186;
    v150 = v187;
    v151 = v188;
    v147 = v184;
    v148 = v185;
    if (*(&v183 + 1))
    {
LABEL_38:
      v175 = v140;
      *&v176 = v141;
      v179 = v149;
      v180 = v150;
      v181 = v151;
      v178 = v148;
      v177 = v147;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration, 0x1E69DCFC0);
      *(&v176 + 1) = v96;
      return specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(&v175, 0, closure #1 in closure #1 in TabItem.swipeActionsConfiguration(for:), 0);
    }
  }

  else
  {
    *&v147 = *(v1 + 96);
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    *&v140 = static SwipeActions.TraitKey.defaultValue;
    v49 = ViewTraitCollection.value<A>(for:defaultValue:)();
    v50 = v175;
    MEMORY[0x18D00ABE0](v49);
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v51 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<Visibility>(&v238, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v251 = 0u;
    outlined destroy of Binding<Visibility>(&v245, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v51);
    AGGraphClearUpdate();
    v52 = *(v175 + 16);
    if (v52)
    {
      v53 = 0;
      v54 = *MEMORY[0x1E698D3F8];
      v55 = v52 - 1;
      v56 = 1;
      v57 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      while (2)
      {
        if (v53 <= *(v50 + 16))
        {
          v71 = *(v50 + 16);
        }

        else
        {
          v71 = v53;
        }

        v72 = v53;
        v137 = v64;
        v139 = v63;
        v133 = v66;
        v135 = v65;
        v129 = v68;
        v131 = v67;
        v125 = v70;
        v127 = v69;
        v121 = v57;
        v123 = v62;
        v117 = v59;
        v119 = v58;
        v113 = v61;
        v115 = v60;
        while (1)
        {
          if (v71 == v72)
          {
LABEL_43:
            __break(1u);
LABEL_44:

            v118 = v107;
            v120 = v108;
            v122 = v105;
            v124 = v106;
            v114 = v109;
            v116 = v110;
            v112 = v111;
            v136 = v98;
            v138 = v99;
            v132 = v101;
            v134 = v102;
            v128 = v103;
            v130 = v100;
            v126 = v104;
            goto LABEL_37;
          }

          v53 = v72 + 1;
          if (AGWeakAttributeGetAttribute() != v54)
          {
            break;
          }

          ++v72;
          if (v52 == v53)
          {

            goto LABEL_40;
          }
        }

        if (v56)
        {
          v73 = AGGraphGetValue();
          v74 = v73[1];
          v147 = *v73;
          v148 = v74;
          v75 = v73[2];
          v76 = v73[3];
          v77 = v73[5];
          v151 = v73[4];
          v152 = v77;
          v149 = v75;
          v150 = v76;
          v78 = v73[6];
          v79 = v73[7];
          v80 = v73[9];
          v155 = v73[8];
          v156 = v80;
          v153 = v78;
          v154 = v79;
          v81 = v73[10];
          v82 = v73[11];
          v83 = v73[13];
          v159 = v73[12];
          v160 = v83;
          v157 = v81;
          v158 = v82;
          v175 = v125;
          v176 = v121;
          v177 = v119;
          v178 = v117;
          v179 = v115;
          v180 = v113;
          v181 = v123;
          v182 = v139;
          v183 = v137;
          v184 = v135;
          v185 = v133;
          v186 = v131;
          v187 = v129;
          v188 = v127;
          outlined init with copy of SwipeActions.Value(&v147, &v140);
          outlined destroy of SwipeActions.Value(&v175);
          v70 = v147;
          v57 = v148;
          v58 = v149;
          v59 = v150;
          v60 = v151;
          v61 = v152;
          v62 = v153;
          v63 = v154;
          v64 = v155;
          v65 = v156;
          v66 = v157;
          v67 = v158;
          v68 = v159;
          v69 = v160;
          if (v55 != v72)
          {
            v56 = 0;
            continue;
          }

          v137 = v155;
          v139 = v154;
          v133 = v157;
          v135 = v156;
          v129 = v159;
          v131 = v158;
          v125 = v147;
          v127 = v160;
          v121 = v148;
          v123 = v153;
          v117 = v150;
          v119 = v149;
          v113 = v152;
          v115 = v151;
        }

        else
        {
          v84 = AGGraphGetValue();
          v85 = v84[1];
          v175 = *v84;
          v176 = v85;
          v86 = v84[4];
          v88 = v84[2];
          v87 = v84[3];
          v180 = v84[5];
          v179 = v86;
          v177 = v88;
          v178 = v87;
          v89 = v84[8];
          v91 = v84[6];
          v90 = v84[7];
          v184 = v84[9];
          v183 = v89;
          v181 = v91;
          v182 = v90;
          v92 = v84[12];
          v94 = v84[10];
          v93 = v84[11];
          v188 = v84[13];
          v187 = v92;
          v185 = v94;
          v186 = v93;
          v189 = v125;
          v190 = v121;
          v191 = v119;
          v192 = v117;
          v193 = v115;
          v194 = v113;
          v195 = v123;
          v172 = v115;
          v173 = v113;
          v174 = v123;
          v169 = v121;
          v171 = v117;
          v170 = v119;
          v165 = v179;
          v166 = v180;
          v167 = v181;
          v168 = v125;
          v161 = v175;
          v162 = v176;
          v163 = v177;
          v164 = v178;
          outlined init with copy of SwipeActions.Value(&v175, &v147);
          outlined init with copy of TabItem?(&v175, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          outlined init with copy of TabItem?(&v182, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          outlined init with copy of TabItem?(&v189, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          static SwipeActions.Configuration.reduce(_:_:)(&v168, &v161, &v147);
          v200 = v165;
          v201 = v166;
          v202 = v167;
          v196 = v161;
          v197 = v162;
          v199 = v164;
          v198 = v163;
          v95 = MEMORY[0x1E69E6720];
          outlined destroy of Binding<Visibility>(&v196, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
          v207 = v172;
          v208 = v173;
          v209 = v174;
          v203 = v168;
          v204 = v169;
          v206 = v171;
          v205 = v170;
          outlined destroy of Binding<Visibility>(&v203, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v95);
          v106 = v147;
          v107 = v149;
          v108 = v148;
          v110 = v150;
          v111 = v152;
          v109 = v151;
          v105 = v153;
          v210 = v125;
          v211 = v121;
          v212 = v119;
          v213 = v117;
          v214 = v115;
          v215 = v113;
          v216 = v123;
          outlined destroy of Binding<Visibility>(&v210, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v95);
          v217 = v139;
          v218 = v137;
          v219 = v135;
          v220 = v133;
          v221 = v131;
          v222 = v129;
          v223 = v127;
          v172 = v131;
          v173 = v129;
          v174 = v127;
          v169 = v137;
          v171 = v133;
          v170 = v135;
          v165 = v186;
          v166 = v187;
          v167 = v188;
          v168 = v139;
          v161 = v182;
          v162 = v183;
          v163 = v184;
          v164 = v185;
          outlined init with copy of TabItem?(&v217, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          static SwipeActions.Configuration.reduce(_:_:)(&v168, &v161, &v147);
          outlined destroy of SwipeActions.Value(&v175);
          v228 = v165;
          v229 = v166;
          v230 = v167;
          v224 = v161;
          v225 = v162;
          v227 = v164;
          v226 = v163;
          outlined destroy of Binding<Visibility>(&v224, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v95);
          v235 = v172;
          v236 = v173;
          v237 = v174;
          v231 = v168;
          v232 = v169;
          v234 = v171;
          v233 = v170;
          outlined destroy of Binding<Visibility>(&v231, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v95);
          v98 = v148;
          v99 = v147;
          v101 = v150;
          v102 = v149;
          v100 = v151;
          v103 = v152;
          v104 = v153;
          v140 = v139;
          v141 = v137;
          v142 = v135;
          v143 = v133;
          v144 = v131;
          v145 = v129;
          v146 = v127;
          outlined destroy of Binding<Visibility>(&v140, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v95);
          if (v55 != v72)
          {
            v56 = 0;
            v62 = v105;
            v70 = v106;
            v58 = v107;
            v57 = v108;
            v60 = v109;
            v59 = v110;
            v61 = v111;
            v64 = v98;
            v63 = v99;
            v66 = v101;
            v65 = v102;
            v67 = v100;
            v68 = v103;
            v69 = v104;
            continue;
          }

          v119 = v107;
          v121 = v108;
          v123 = v105;
          v125 = v106;
          v115 = v109;
          v117 = v110;
          v113 = v111;
          v137 = v98;
          v139 = v99;
          v133 = v101;
          v135 = v102;
          v129 = v103;
          v131 = v100;
          v127 = v104;
        }

        break;
      }
    }

    else
    {

      v123 = 0u;
      v125 = 0u;
      v119 = 0u;
      v121 = 0u;
      v115 = 0u;
      v117 = 0u;
      v113 = 0u;
      v137 = 0u;
      v139 = 0u;
      v133 = 0u;
      v135 = 0u;
      v129 = 0u;
      v131 = 0u;
      v127 = 0u;
    }

LABEL_40:
    AGGraphSetUpdate();
    static Update.end()();
    v176 = v121;
    v175 = v125;
    v178 = v117;
    v177 = v119;
    v180 = v113;
    v179 = v115;
    v182 = v139;
    v181 = v123;
    v184 = v135;
    v183 = v137;
    v186 = v131;
    v185 = v133;
    v188 = v127;
    v187 = v129;
    outlined init with copy of TabItem?(&v175, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
    outlined destroy of SwipeActions.Value(&v175);
    v96 = *(&v176 + 1);
    *&v141 = v176;
    v140 = v175;
    v149 = v179;
    v150 = v180;
    v151 = v181;
    v147 = v177;
    v148 = v178;
    if (*(&v176 + 1))
    {
      goto LABEL_38;
    }
  }

  return 0;
}

UIContextMenuConfiguration_optional __swiftcall TabItem.menuConfiguration()()
{
  v1 = type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TabContextMenuKey.Storage?(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformItemList.Item?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlatformItemList.Item(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = *(v0 + 96);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, static TabContextMenuKey.defaultValue);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v15 = type metadata accessor for TabContextMenuKey.Storage(0);
  if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v7, type metadata accessor for TabContextMenuKey.Storage?);
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_9:
    v16 = type metadata accessor for PlatformItemList.Item?;
    v17 = v10;
    goto LABEL_10;
  }

  outlined init with copy of (offset: Int, element: TabItem)(v7, v3, type metadata accessor for TabContextMenuKey.Storage.Guts);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v3, type metadata accessor for TabContextMenuKey.Storage.Guts);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  else
  {
    _s7SwiftUI16PlatformItemListV0D0VWObTm_0(v3, v10, type metadata accessor for PlatformItemList.Item?);
  }

  outlined destroy of Binding<TabViewCustomization>(v7, type metadata accessor for TabContextMenuKey.Storage);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_9;
  }

  _s7SwiftUI16PlatformItemListV0D0VWObTm_0(v10, v14, type metadata accessor for PlatformItemList.Item);
  v20 = *(v14 + 117);
  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v22 = objc_opt_self();
    aBlock[4] = partial apply for closure #1 in TabItem.menuConfiguration();
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
    aBlock[3] = &block_descriptor_28;
    v23 = _Block_copy(aBlock);

    v24 = [v22 configurationWithIdentifier:0 previewProvider:0 actionProvider:v23];

    _Block_release(v23);
    [v24 setPreferredMenuElementOrder_];
    outlined destroy of Binding<TabViewCustomization>(v14, type metadata accessor for PlatformItemList.Item);
    v19 = v24;
    goto LABEL_14;
  }

  v16 = type metadata accessor for PlatformItemList.Item;
  v17 = v14;
LABEL_10:
  outlined destroy of Binding<TabViewCustomization>(v17, v16);
  v19 = 0;
LABEL_14:
  result.value.super.isa = v19;
  result.is_nil = v18;
  return result;
}

void closure #1 in TabItem.menuConfiguration()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  v6 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = MEMORY[0x1E69E7CC8];
  v5[8] = 0;
  *(v5 + 2) = v8;
  *(v5 + 3) = v7;
  *(v5 + 4) = v6;
  *(v5 + 5) = v8;
  v5[48] = 0;
  type metadata accessor for (offset: Int, element: TabItem)?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v9 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v9, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of (offset: Int, element: TabItem)(v12, v11 + v10, type metadata accessor for MenuVisitor.MenuStackGroup);
  *(v5 + 7) = v11;
  v13 = *(v3 + 32);
  v14 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  *v5 = 0;
  MenuVisitor.visit(_:uniqueNames:)(a2, &v20);

  v15 = *(v5 + 4);

  outlined destroy of Binding<TabViewCustomization>(v5, type metadata accessor for MenuVisitor);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, v16, 0, v21, 0, 0xFFFFFFFFFFFFFFFFLL, v15, v18);
}

BOOL TabItem.visibleInSidebar(customization:)(uint64_t a1)
{
  v2 = type metadata accessor for TabViewCustomization(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<TabViewCustomization>(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of (offset: Int, element: TabItem)(a1, v7, type metadata accessor for Binding<TabViewCustomization>?);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v7, type metadata accessor for Binding<TabViewCustomization>?);
    v28 = 1;
    v13 = TabItem.clientDefaultVisibility(for:)(&v28) >= 2u;
  }

  else
  {
    v14 = _s7SwiftUI16PlatformItemListV0D0VWObTm_0(v7, v12, type metadata accessor for Binding<TabViewCustomization>);
    v15 = TabItem.resolvedCustomizationID.getter(v14);
    v17 = v16;
    v19 = v18;
    MEMORY[0x18D00ACC0](v9);
    v20 = *&v4[*(v2 + 20)];
    if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v19 & 1), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 2 * v21);
      outlined consume of TabCustomizationID.Base();
      if (v23)
      {
        outlined destroy of Binding<TabViewCustomization>(v4, type metadata accessor for TabViewCustomization);
        outlined destroy of Binding<TabViewCustomization>(v12, type metadata accessor for Binding<TabViewCustomization>);
        return v23 == 1;
      }
    }

    else
    {
      outlined consume of TabCustomizationID.Base();
    }

    outlined destroy of Binding<TabViewCustomization>(v4, type metadata accessor for TabViewCustomization);
    v27 = 1;
    v25 = TabItem.clientDefaultVisibility(for:)(&v27);
    outlined destroy of Binding<TabViewCustomization>(v12, type metadata accessor for Binding<TabViewCustomization>);
    v13 = v25 >= 2;
  }

  return !v13;
}

uint64_t TabItem.tabPlacement(customization:)(uint64_t a1)
{
  v2 = TabItem.sidebarOnly.getter();
  v11 = 0;
  v3 = TabItem.clientDefaultVisibility(for:)(&v11);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v5 = (*(*(v4 - 8) + 48))(a1, 1, v4) != 1;
  TabItem.resolvedUIKitTopBarCustomizationBehavior(customizationEnabled:)(v5);
  v6 = qword_18CD9BC40[v10];
  v7 = TabItem.pinned.getter();
  v8 = 2;
  if (v3 != 2)
  {
    v8 = v6;
  }

  if (v7)
  {
    v8 = 4;
  }

  if (v2)
  {
    return 6;
  }

  else
  {
    return v8;
  }
}

void UIKitTabBarController.updateTabBarToConfiguration(_:transaction:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 1);
  v7 = [v2 tabBar];
  [v7 setSpringLoaded_];

  v8 = qword_18CD9BC58[v5];
  if (v8 != [v3 tabBarMinimizeBehavior])
  {
    [v3 setTabBarMinimizeBehavior_];
  }

  if (v6)
  {
    swift_retain_n();
    v9 = AnyView.init<A>(_:)();
    v10 = *&v3[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_bottomAccessoryHost];
    if (v10)
    {
      v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x60);
      swift_beginAccess();
      *(v10 + v11) = v9;
      v12 = v10;

      _s7SwiftUI14_UIHostingViewCyAA7TabItemV04RootD0VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView);
      lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, v13);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }

    else
    {
      v15 = objc_allocWithZone(type metadata accessor for UIKitTabBarBottomAccessory(0));
      v16 = swift_retain_n();
      v17 = specialized _UIHostingView.init(rootView:)(v16);
      *(v17 + *((*MEMORY[0x1E69E7D40] & *v17) + 0x1C0) + 8) = &protocol witness table for UIKitTabBarBottomAccessory;
      swift_unknownObjectWeakAssign();
      v18 = v17;
      v19 = specialized _UIHostingView.base.getter();
      UIHostingViewBase.safeAreaRegions.setter();

      v20 = v18;
      v21 = Transaction.isAnimated.getter();
      v22 = [objc_allocWithZone(MEMORY[0x1E69DCFE8]) initWithContentView_];
      [v3 setBottomAccessory:v22 animated:v21 & 1];
    }
  }

  else
  {
    v14 = Transaction.isAnimated.getter() & 1;

    [v3 setBottomAccessory:0 animated:v14];
  }
}

uint64_t UIKitTabBarController.updateColorScheme(selectedHostVC:environment:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(a1 + direct field offset for UIHostingController.host);
  _s7SwiftUI14_UIHostingViewCyAA7TabItemV04RootD0VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView);
  lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, v5);
  v6 = v4;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  if (v8 == 2)
  {
    EnvironmentValues.systemColorScheme.getter();
  }

  UIViewController.traitOverrides.getter();
  UIMutableTraits.userInterfaceStyle.setter();
  UIViewController.traitOverrides.setter();
  UIViewController.traitOverrides.getter();
  UIMutableTraits.userInterfaceStyle.setter();
  return UIViewController.traitOverrides.setter();
}

double closure #1 in UIHostingController.createBridgedTab(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    swift_unknownObjectRetain();
    PlatformItem.SelectionContent.select()();
    swift_unknownObjectRelease();
  }

  return result;
}

double TabHostingController.updateTabEnvironment(environment:coordinator:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for Logger?(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = [v3 traitCollection];
  v12 = [v11 userInterfaceIdiom];

  v42 = v9;
  v43 = v10;
  EnvironmentValues.horizontalSizeClass.getter();
  if (v12 > 4)
  {
    if (v12 == 5)
    {
      goto LABEL_13;
    }

    if (v12 == 6)
    {
      v15 = 3;
      v14 = 1;
      goto LABEL_16;
    }

LABEL_12:
    v14 = 0;
    v15 = 5;
    v16 = 1;
    goto LABEL_17;
  }

  if (!v12)
  {
LABEL_8:
    v14 = 0;
    v15 = 2;
    goto LABEL_16;
  }

  if (v12 != 1 || v40 == 2)
  {
    goto LABEL_12;
  }

  if ((v40 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (*(a2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_isUIKitSidebarVisible))
  {
    v16 = 0;
    v15 = 1;
    v14 = 1;
    goto LABEL_17;
  }

  v14 = 0;
  v15 = 0;
LABEL_16:
  v16 = 0;
LABEL_17:
  v17 = direct field offset for UIHostingController.host;
  v18 = *&v3[direct field offset for UIHostingController.host];
  UIHostingViewBase.environmentOverride.getter();

  if (v40 == 1)
  {
    EnvironmentValues.init()();
    v19 = v43;
  }

  else
  {
    v19 = v41;
    v42 = v40;
    v43 = v41;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabBarPlacementKey>, &type metadata for TabBarPlacementKey, &protocol witness table for TabBarPlacementKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>();
  if (v19)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v40 == 5)
  {
    if ((v16 & 1) == 0)
    {
LABEL_30:
      LOBYTE(v40) = v15;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabBarPlacementKey>, &type metadata for TabBarPlacementKey, &protocol witness table for TabBarPlacementKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.subscript.setter();
      if (v19)
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

        v20 = 1;
        goto LABEL_32;
      }

      v20 = 1;
      goto LABEL_34;
    }
  }

  else if ((v16 & 1) != 0 || v40 != v15)
  {
    goto LABEL_30;
  }

  v20 = 0;
  if (v19)
  {
LABEL_32:
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    goto LABEL_35;
  }

LABEL_34:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
LABEL_35:
  if (v14 == v40)
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    LOBYTE(v40) = v14;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v19)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  v37 = v14;
  v21 = v17;
  v22 = v38;
  static Log.tabView.getter();
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v22, type metadata accessor for Logger?);
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315394;
      v39 = v15;
      type metadata accessor for Binding<Visibility>(0, &lazy cache variable for type metadata for TabBarPlacement.Placement?, &type metadata for TabBarPlacement.Placement, MEMORY[0x1E69E6720]);
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v40);

      *(v27 + 4) = v31;
      *(v27 + 12) = 1024;
      *(v27 + 14) = v37;
      _os_log_impl(&dword_18BD4A000, v25, v26, "Updated tab environment to tabBarPlacement: %s showingSections\n%{BOOL}d", v27, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x18D0110E0](v28, -1, -1);
      v32 = v27;
      v22 = v38;
      MEMORY[0x18D0110E0](v32, -1, -1);
    }

    (*(v24 + 8))(v22, v23);
  }

  v33 = *&v3[v21];
  v40 = v42;
  v41 = v43;

  v34 = v33;

  UIHostingViewBase.environmentOverride.setter();

LABEL_46:

  return result;
}

void TabHostingController.setChildRootViewCreatingHostIfNeeded(_:childID:transaction:coordinator:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v76 - v17);
  v19 = [v5 _uip_tabElement];
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v82 = v18;
      v88 = v6;
      v89 = a4;
      v84 = a1;
      v22 = a2;
      v86 = v20;
      v23 = [v21 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_groupHostCache;
      swift_beginAccess();
      v28 = v26;
      v29 = v24;
      v30 = *(a5 + v27);
      v31 = *(v30 + 16);
      v87 = a3;
      v90 = v28;
      v85 = a5;
      if (v31 && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v28), (v33 & 1) != 0))
      {
        v34 = (*(v30 + 56) + 32 * v32);
        v35 = v34[1];
        v36 = v34[2];
        v37 = v34[3];
        swift_endAccess();

        v38 = v22;
        specialized OrderedDictionary.subscript.getter(v22, a3, v35, v36, v37);
        if (v39)
        {
          v40 = v39;
          v79 = v37;
          v80 = v36;
          v41 = swift_dynamicCastClass();
          v42 = v88;
          v43 = v89;
          if (v41)
          {
            v44 = v41;
            v83 = v29;
            v84 = v40;
            ObjectType = v35;
            v45 = v82;
            static Log.tabView.getter();
            v46 = type metadata accessor for Logger();
            v47 = *(v46 - 8);
            if ((*(v47 + 48))(v45, 1, v46) == 1)
            {
              outlined destroy of Binding<TabViewCustomization>(v45, type metadata accessor for Logger?);
            }

            else
            {
              v81 = v38;
              v67 = v87;

              v68 = v90;

              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.default.getter();

              v78 = v69;
              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                v77 = swift_slowAlloc();
                v94[0] = v77;
                *v71 = 136315394;
                *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v67, v94);
                *(v71 + 12) = 2080;
                *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v68, v94);
                v72 = v70;
                v73 = v78;
                _os_log_impl(&dword_18BD4A000, v78, v72, "Using cached VC for child '%s' in group '%s'", v71, 0x16u);
                v74 = v77;
                swift_arrayDestroy();
                MEMORY[0x18D0110E0](v74, -1, -1);
                MEMORY[0x18D0110E0](v71, -1, -1);
              }

              else
              {
              }

              (*(v47 + 8))(v45, v46);
              v38 = v81;
            }

            v75 = v84;
            specialized TabViewCoordinator_Phone.didUseChild(_:childID:for:)(v38, v87, v83, v90);

            v43 = v89;
LABEL_22:

            v94[0] = v44;
            v95 = 1;
            v66 = *&v42[direct field offset for UIHostingController.host];
            specialized _UIHostingView.setRootView(_:transaction:)(v94, v43);

            outlined destroy of TabItem.RootView(v94);
            return;
          }

          a3 = v87;
LABEL_11:
          static Log.tabView.getter();
          v48 = type metadata accessor for Logger();
          v49 = *(v48 - 8);
          if ((*(v49 + 48))(v14, 1, v48) == 1)
          {
            outlined destroy of Binding<TabViewCustomization>(v14, type metadata accessor for Logger?);
            v50 = ObjectType;
          }

          else
          {
            v83 = v29;
            v81 = v38;

            v52 = v90;

            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.default.getter();

            v82 = v53;
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v94[0] = swift_slowAlloc();
              v56 = v94[0];
              *v55 = 136315394;
              v38 = v81;
              *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, a3, v94);
              *(v55 + 12) = 2080;
              *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v52, v94);
              v57 = v54;
              v58 = v82;
              _os_log_impl(&dword_18BD4A000, v82, v57, "Making new VC for child '%s' in group '%s'", v55, 0x16u);
              swift_arrayDestroy();
              v59 = v56;
              v42 = v88;
              MEMORY[0x18D0110E0](v59, -1, -1);
              v60 = v55;
              v43 = v89;
              MEMORY[0x18D0110E0](v60, -1, -1);
            }

            else
            {

              v38 = v81;
            }

            v50 = ObjectType;
            (*(v49 + 8))(v14, v48);
            v29 = v83;
          }

          outlined init with copy of TabItem.RootView(v84, v94);
          objc_allocWithZone(v50);
          outlined init with copy of TabItem.RootView(v94, v93);
          v61 = objc_allocWithZone(type metadata accessor for TabHostingController.HostingView(0));
          outlined init with copy of TabItem.RootView(v93, v92);
          v62 = specialized _UIHostingView.init(rootView:)(v92);
          outlined destroy of TabItem.RootView(v93);
          v63 = specialized UIHostingController.init(_hostingView:)(v62);
          outlined destroy of TabItem.RootView(v94);
          v44 = v63;
          v64._countAndFlagsBits = v38;
          v64._object = v87;
          v65._countAndFlagsBits = v29;
          v65._object = v90;
          TabViewCoordinator_Phone.cacheChild(_:childID:for:)(v44, v64, v65);
          goto LABEL_22;
        }
      }

      else
      {
        swift_endAccess();
        v38 = v22;
      }

      v42 = v88;
      v43 = v89;
      goto LABEL_11;
    }
  }

  ObjectType = *&v6[direct field offset for UIHostingController.host];
  specialized _UIHostingView.setRootView(_:transaction:)(a1, a4);
  v51 = ObjectType;
}

void type metadata accessor for (offset: Int, element: TabItem)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: TabItem))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: TabItem));
    }
  }
}

uint64_t outlined destroy of Binding<TabViewCustomization>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (offset: Int, element: TabItem)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of Binding<Visibility>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<Visibility>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined init with copy of TabItem?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Binding<Visibility>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TabViewAdaptationMode and conformance TabViewAdaptationMode()
{
  result = lazy protocol witness table cache variable for type TabViewAdaptationMode and conformance TabViewAdaptationMode;
  if (!lazy protocol witness table cache variable for type TabViewAdaptationMode and conformance TabViewAdaptationMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewAdaptationMode, &type metadata for TabViewAdaptationMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewAdaptationMode and conformance TabViewAdaptationMode);
  }

  return result;
}

char *specialized static AdaptableTabView.extractTabs(_:)(uint64_t a1)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI8TabEntryOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_32:
    v30 = v43;
    static Log.tabView.getter();
    v31 = type metadata accessor for Logger();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      outlined destroy of Binding<TabViewCustomization>(v30, type metadata accessor for Logger?);
    }

    else
    {

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v61[0] = v36;
        *v35 = 136315138;
        v37 = specialized implicit closure #1 in static AdaptableTabView.extractTabs(_:)(v4);
        v44 = v4;
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v61);
        v4 = v44;

        *(v35 + 4) = v39;
        _os_log_impl(&dword_18BD4A000, v33, v34, "Extracted tabs:\n%s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x18D0110E0](v36, -1, -1);
        MEMORY[0x18D0110E0](v35, -1, -1);
      }

      (*(v32 + 8))(v43, v31);
    }

    return v4;
  }

  v7 = a1 + 32;
  v42 = 0x800000018CD45E10;
  while (1)
  {
    outlined init with copy of TabItem(v7, v63);
    v61[0] = v64;
    if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
    {
      v61[0] = v64;
      LOBYTE(v58) = 0;
      ViewTraitCollection.value<A>(for:defaultValue:)();
      if ((v60[0] & 1) == 0)
      {
        v61[0] = v64;
        LOBYTE(v58) = 0;
        ViewTraitCollection.value<A>(for:defaultValue:)();
        if ((v60[0] & 1) == 0)
        {
          break;
        }
      }
    }

    outlined destroy of TabItem(v63);
LABEL_4:
    v7 += 112;
    if (!--v6)
    {
      goto LABEL_32;
    }
  }

  outlined init with copy of TabItem(v63, v61);
  v62 = 0;
  outlined init with copy of TabEntry(v61, v60);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v9 = *(v4 + 2);
  v8 = *(v4 + 3);
  if (v9 >= v8 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
  }

  *(v4 + 2) = v9 + 1;
  memcpy(&v4[288 * v9 + 32], v60, 0x119uLL);
  *&v60[0] = v65;
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  *&v60[0] = v64;
  v13 = ViewTraitCollection.isAuxiliaryContent.getter();
  v44 = v4;
  if ((v13 & 1) == 0)
  {
    *&v48 = v64;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v56 = static TabOptions.TraitKey.defaultValue;
    v57[0] = unk_1EAB09380;
    *(v57 + 9) = *(&word_1EAB09388 + 1);
    v52 = static TabOptions.TraitKey.defaultValue;
    v53[0] = unk_1EAB09380;
    *(v53 + 9) = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v56, &v50);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v58 = v52;
    v59[0] = v53[0];
    *(v59 + 9) = *(v53 + 9);
    outlined destroy of TabOptions(&v58);
    v60[0] = v54;
    v60[1] = v55[0];
    *(&v60[1] + 9) = *(v55 + 9);
    outlined destroy of TabOptions(v60);
    if (BYTE8(v60[2]))
    {
      if (TabItem.needsCustomizationIDForEnablement.getter())
      {
        v47 = v64;
        v50 = static TabOptions.TraitKey.defaultValue;
        v51[0] = unk_1EAB09380;
        *(v51 + 9) = *(&word_1EAB09388 + 1);
        v45 = static TabOptions.TraitKey.defaultValue;
        v46[0] = unk_1EAB09380;
        *(v46 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v50, &v48);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v52 = v45;
        v53[0] = v46[0];
        *(v53 + 9) = *(v46 + 9);
        outlined destroy of TabOptions(&v52);
        v54 = v48;
        v55[0] = *v49;
        *(v55 + 9) = *&v49[9];
        v14 = *(&v48 + 1);
        v15 = *v49;
        v16 = v49[8];
        outlined copy of TabCustomizationID?(*(&v48 + 1), *&v55[0], SBYTE8(v55[0]));
        outlined destroy of TabOptions(&v54);
        if (v16 != 255)
        {

          v10 = v14;
          v12 = v15;
        }
      }
    }

    else
    {

      v10 = 0xD000000000000016;
      v12 = v42;
    }
  }

  outlined init with copy of TabEntry(v61, v60);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v58 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
  v20 = v5[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (!__OFADD__(v20, v21))
  {
    v23 = v18;
    if (v5[3] < v22)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_40;
      }

      v19 = v24;
      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_27:

      v5 = v58;
      outlined assign with take of TabEntry(v60, *(v58 + 56) + 288 * v19);
      outlined destroy of TabEntry(v61);
LABEL_31:
      outlined destroy of TabItem(v63);
      v4 = v44;
      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v23)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    v5 = v58;
    *(v58 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v26 = (v5[6] + 16 * v19);
    *v26 = v10;
    v26[1] = v12;
    memcpy((v5[7] + 288 * v19), v60, 0x119uLL);
    outlined destroy of TabEntry(v61);
    v27 = v5[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_39;
    }

    v5[2] = v29;
    goto LABEL_31;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized ItemIndexTabsOnlyIndexProjection.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v2[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v44 = v2 + 3;
  v2[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v4);
  v5 = v2 + 4;
  v2[2] = a1;
  v6 = *(a1 + 16);

  if (v6)
  {
    v7 = 0;
    v43 = 0;
    v45 = a1 + 32;
LABEL_3:
    v8 = v45 + 112 * v7;
    while (v7 < v6)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_35;
      }

      *v47 = v7;
      outlined init with copy of TabItem(v8, &v47[8]);
      if (!*&v48[8])
      {
        return v2;
      }

      v10 = *v47;
      *v47 = *&v47[8];
      *&v47[16] = *v48;
      *v48 = *&v48[8];
      *&v48[16] = *&v48[24];
      *&v48[32] = *&v48[40];
      *&v48[48] = *&v48[56];
      *&v48[64] = *&v49[0];
      v49[0] = *(v49 + 8);
      if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
      {
        ViewTraitCollection.value<A>(for:defaultValue:)();
        if ((v46 & 1) == 0)
        {
          ViewTraitCollection.value<A>(for:defaultValue:)();
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v11 = *v44;
          *v44 = 0x8000000000000000;
          v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
          v14 = v11[2];
          v15 = (v12 & 1) == 0;
          v16 = v14 + v15;
          if (!__OFADD__(v14, v15))
          {
            if (v11[3] >= v16)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v19 = v11;
                if ((v12 & 1) == 0)
                {
                  goto LABEL_19;
                }
              }

              else
              {
                v39 = v12;
                specialized _NativeDictionary.copy()();
                v19 = v11;
                if ((v39 & 1) == 0)
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
              v38 = v12;
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
              v17 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
              if ((v38 & 1) != (v18 & 1))
              {
                goto LABEL_41;
              }

              v13 = v17;
              v19 = v11;
              if ((v38 & 1) == 0)
              {
LABEL_19:
                v19[(v13 >> 6) + 8] |= 1 << v13;
                *(v19[6] + 8 * v13) = v10;
                *(v19[7] + 8 * v13) = v43;
                v20 = v19[2];
                v21 = __OFADD__(v20, 1);
                v22 = v20 + 1;
                if (v21)
                {
                  goto LABEL_39;
                }

                v19[2] = v22;
LABEL_21:
                *v44 = v19;
                swift_endAccess();
                swift_beginAccess();
                v23 = swift_isUniquelyReferenced_nonNull_native();
                v24 = *v5;
                v46 = *v5;
                *v5 = 0x8000000000000000;
                v25 = v43;
                v26 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
                v28 = v24[2];
                v29 = (v27 & 1) == 0;
                v21 = __OFADD__(v28, v29);
                v30 = v28 + v29;
                if (!v21)
                {
                  if (v24[3] < v30)
                  {
                    v41 = v27;
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, v23);
                    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
                    v32 = v31 & 1;
                    v27 = v41;
                    if ((v41 & 1) != v32)
                    {
                      goto LABEL_41;
                    }

LABEL_26:
                    v33 = v46;
                    if (v27)
                    {
                      goto LABEL_27;
                    }

LABEL_29:
                    v33[(v26 >> 6) + 8] |= 1 << v26;
                    *(v33[6] + 8 * v26) = v43;
                    *(v33[7] + 8 * v26) = v10;
                    v35 = v33[2];
                    v21 = __OFADD__(v35, 1);
                    v36 = v35 + 1;
                    if (!v21)
                    {
                      v33[2] = v36;
                      goto LABEL_31;
                    }

LABEL_40:
                    __break(1u);
LABEL_41:
                    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                    __break(1u);
                    return result;
                  }

                  if (v23)
                  {
                    goto LABEL_26;
                  }

                  v42 = v26;
                  v34 = v27;
                  specialized _NativeDictionary.copy()();
                  v26 = v42;
                  v33 = v46;
                  if ((v34 & 1) == 0)
                  {
                    goto LABEL_29;
                  }

LABEL_27:
                  *(v33[7] + 8 * v26) = v10;
LABEL_31:
                  *v5 = v33;
                  swift_endAccess();
                  outlined destroy of TabItem(v47);
                  ++v43;
                  if (!__OFADD__(v25, 1))
                  {
                    v7 = v9;
                    if (v9 != v6)
                    {
                      goto LABEL_3;
                    }

                    return v2;
                  }

LABEL_38:
                  __break(1u);
LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_37:
                __break(1u);
                goto LABEL_38;
              }
            }

            *(v19[7] + 8 * v13) = v43;
            goto LABEL_21;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      outlined destroy of TabItem(v47);
      ++v7;
      v8 += 112;
      if (v9 == v6)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return v2;
}

void *specialized static AdaptableTabView.makeIDToSelectionCache(items:selectionValueOnlyIncludesTabs:)(uint64_t a1, char a2)
{
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v3;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 112)
  {
    outlined init with copy of TabItem(i, v53);
    if (a2)
    {
      *&v51 = v54;
      if (ViewTraitCollection.isAuxiliaryContent.getter() & 1) != 0 || (*&v51 = v54, LOBYTE(v47) = 0, ViewTraitCollection.value<A>(for:defaultValue:)(), (v49) || (*&v51 = v54, LOBYTE(v47) = 0, ViewTraitCollection.value<A>(for:defaultValue:)(), v49 == 1))
      {
        outlined destroy of TabItem(v53);
        goto LABEL_4;
      }
    }

    *&v51 = v55;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;
    *&v51 = v54;
    if (ViewTraitCollection.isAuxiliaryContent.getter())
    {
LABEL_10:
      v9 = v26;
      goto LABEL_20;
    }

    *&v40 = v54;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v47 = static TabOptions.TraitKey.defaultValue;
    v48[0] = unk_1EAB09380;
    *(v48 + 9) = *(&word_1EAB09388 + 1);
    v44 = static TabOptions.TraitKey.defaultValue;
    v45[0] = unk_1EAB09380;
    *(v45 + 9) = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v47, &v42);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v49 = v44;
    v50[0] = v45[0];
    *(v50 + 9) = *(v45 + 9);
    outlined destroy of TabOptions(&v49);
    v51 = v45[2];
    *v52 = v46[0];
    *&v52[9] = *(v46 + 9);
    outlined destroy of TabOptions(&v51);
    if (v52[24])
    {
      *&v34 = v54;
      v40 = static TabOptions.TraitKey.defaultValue;
      v41[0] = unk_1EAB09380;
      *(v41 + 9) = *(&word_1EAB09388 + 1);
      v36 = static TabOptions.TraitKey.defaultValue;
      v37[0] = unk_1EAB09380;
      *(v37 + 9) = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v40, &v38);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v42 = v36;
      v43[0] = v37[0];
      *(v43 + 9) = *(v37 + 9);
      outlined destroy of TabOptions(&v42);
      v44 = v38;
      v45[0] = v39[0];
      *(v45 + 9) = *(v39 + 9);
      outlined destroy of TabOptions(&v44);
      if (BYTE10(v45[0]))
      {
        v34 = static TabOptions.TraitKey.defaultValue;
        v35[0] = unk_1EAB09380;
        *(v35 + 9) = *(&word_1EAB09388 + 1);
        v28 = static TabOptions.TraitKey.defaultValue;
        *v30 = unk_1EAB09380;
        *&v30[9] = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v34, &v32);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v36 = v28;
        v37[0] = *v30;
        *(v37 + 9) = *&v30[9];
        outlined destroy of TabOptions(&v36);
        v38 = v32;
        v39[0] = v33[0];
        *(v39 + 9) = *(v33 + 9);
        outlined destroy of TabOptions(&v38);
        if (BYTE9(v39[0]))
        {
          if (!TabItem.alwaysRequiresCustomizationID.getter())
          {
            goto LABEL_10;
          }
        }
      }

      v34 = static TabOptions.TraitKey.defaultValue;
      v35[0] = unk_1EAB09380;
      *(v35 + 9) = *(&word_1EAB09388 + 1);
      v29 = static TabOptions.TraitKey.defaultValue;
      *v31 = unk_1EAB09380;
      *&v31[9] = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v34, &v32);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v36 = v29;
      v37[0] = *v31;
      *(v37 + 9) = *&v31[9];
      outlined destroy of TabOptions(&v36);
      v38 = v32;
      v39[0] = v33[0];
      *(v39 + 9) = *(v33 + 9);
      v9 = *(&v32 + 1);
      v10 = *&v33[0];
      v11 = BYTE8(v33[0]);
      outlined copy of TabCustomizationID?(*(&v32 + 1), *&v33[0], SBYTE8(v33[0]));
      outlined destroy of TabOptions(&v38);
      if (v11 == 255)
      {
        goto LABEL_10;
      }

      v8 = v10;
    }

    else
    {

      v9 = 0xD000000000000016;
      v8 = 0x800000018CD45E10;
    }

LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v51 = v3;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
    v15 = v3[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    if (v3[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if ((v18 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_38;
      }

      v14 = v19;
      if ((v18 & 1) == 0)
      {
LABEL_30:
        v3 = v51;
        *(v51 + 8 * (v14 >> 6) + 64) |= 1 << v14;
        v21 = (v3[6] + 16 * v14);
        *v21 = v9;
        v21[1] = v8;
        *(v3[7] + 8 * v14) = v5;
        v22 = v3[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_37;
        }

        v3[2] = v24;
        goto LABEL_32;
      }
    }

    v3 = v51;
    *(*(v51 + 56) + 8 * v14) = v5;
LABEL_32:
    outlined destroy of TabItem(v53);
    v23 = __OFADD__(v5++, 1);
    if (v23)
    {
      __break(1u);
      return v3;
    }

LABEL_4:
    if (!--v4)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void type metadata accessor for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?))
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Binding<Visibility>(255, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    v1 = MEMORY[0x1E69E62F8];
    type metadata accessor for Binding<Visibility>(255, &lazy cache variable for type metadata for [TabEntry], &type metadata for TabEntry, MEMORY[0x1E69E62F8]);
    type metadata accessor for Binding<Visibility>(255, &lazy cache variable for type metadata for [TabItem], &type metadata for TabItem, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?));
    }
  }
}

uint64_t outlined assign with copy of TabItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<Visibility>(0, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabBarPlacementKey>, &type metadata for TabBarPlacementKey, &protocol witness table for TabBarPlacementKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with copy of (offset: Int, element: TabItem)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI14_UIHostingViewCyAA7TabItemV04RootD0VGMaTm_0(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v7);
    atomic_store(result, a1);
  }

  return result;
}

void *specialized UIKitTabBarController.updateSidebarToConfiguration(coordinator:customization:transaction:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = (&v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TabViewCustomization(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 16);
  v91[0] = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration);
  v91[1] = v13;
  v15 = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration);
  v14 = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 16);
  v92[0] = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 32);
  *(v92 + 9) = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 41);
  v88 = v15;
  v89 = v14;
  v90[0] = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 32);
  *(v90 + 9) = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 41);
  outlined init with copy of TabSidebarConfiguration(v91, v87);
  v16.value = TabSidebarConfiguration.sidebarVisible()().value;
  v86 = v2;
  if (v16.value != 2)
  {
    value = v16.value;
    v18 = [v3 sidebar];
    v19 = [v18 isHidden];

    v20 = v19 ^ value;
    v3 = v86;
    if ((v20 & 1) == 0)
    {
      v21 = [v86 sidebar];
      [v21 setHidden_];
    }
  }

  v22 = [v3 mode] == 2;
  v23 = [v3 sidebar];
  v24 = [v23 isHidden];

  *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_isUIKitSidebarVisible) = v22 & ~v24;
  type metadata accessor for Binding<TabViewCustomization>(0);
  v26 = v25;
  v27 = *(*(v25 - 8) + 48);
  v28 = v27(a2, 1, v25);
  v29 = [v3 _uip_sidebar];
  v30 = [v29 _isEditable];

  v31 = (v28 != 1) == v30;
  v32 = v86;
  if (!v31)
  {
    v33 = [v86 _uip_sidebar];
    [v33 _setEditable_];
  }

  outlined init with copy of (offset: Int, element: TabItem)(a2, v12, type metadata accessor for Binding<TabViewCustomization>?);
  if (v27(v12, 1, v26) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v12, type metadata accessor for Binding<TabViewCustomization>?);
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v36 = v84;
    MEMORY[0x18D00ACC0](v26);
    outlined destroy of Binding<TabViewCustomization>(v12, type metadata accessor for Binding<TabViewCustomization>);
    v34 = UUID.uuidString.getter();
    v35 = v37;
    outlined destroy of Binding<TabViewCustomization>(v36, type metadata accessor for TabViewCustomization);
  }

  v38 = v85;
  v39 = [v32 customizationIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (!v35)
    {
      if (!v43)
      {
        goto LABEL_32;
      }

      v44 = 1;
      goto LABEL_22;
    }

    if (v43)
    {
      if (v34 == v41 && v35 == v43)
      {

        goto LABEL_32;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v45)
      {

        goto LABEL_32;
      }
    }
  }

  else if (!v35)
  {
    goto LABEL_32;
  }

  v44 = 0;
LABEL_22:
  static Log.tabView.getter();
  v46 = type metadata accessor for Logger();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v38, 1, v46) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v38, type metadata accessor for Logger?);
  }

  else
  {

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    v85 = v48;
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v83 = v50;
      v84 = swift_slowAlloc();
      v87[0] = v84;
      *v50 = 136315138;
      *&v88 = v34;
      *(&v88 + 1) = v35;
      type metadata accessor for Binding<Visibility>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

      v51 = String.init<A>(describing:)();
      v53 = v34;
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v87);

      v55 = v83;
      *(v83 + 1) = v54;
      v34 = v53;
      v56 = v49;
      v57 = v85;
      v58 = v55;
      _os_log_impl(&dword_18BD4A000, v85, v56, "Updating sidebar customization id to\n%s", v55, 0xCu);
      v59 = v84;
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x18D0110E0](v59, -1, -1);
      MEMORY[0x18D0110E0](v58, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v38, v46);
  }

  v32 = v86;
  if (v44)
  {
    v60 = 0;
  }

  else
  {
    v60 = MEMORY[0x18D00C850](v34, v35);
  }

  [v32 setCustomizationIdentifier_];

LABEL_32:
  v61 = *(&v92[0] + 1);
  v62 = *&v92[0];
  if (*&v92[0] == 1)
  {
    v63 = 0;
  }

  else
  {

    v63 = v62;
  }

  v64 = [v32 sidebar];
  if (v63)
  {
    type metadata accessor for UIHostingConfiguration<AnyView, EmptyView>();
    v66 = v65;
    *(&v89 + 1) = v65;
    *&v90[0] = lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type UIHostingConfiguration<AnyView, EmptyView> and conformance UIHostingConfiguration<A, B>, 255, type metadata accessor for UIHostingConfiguration<AnyView, EmptyView>, protocol conformance descriptor for UIHostingConfiguration<A, B>);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
    v68 = boxed_opaque_existential_1 + *(v66 + 56);
    *v68 = 1;

    MEMORY[0x18D007050](v69);
    *(v68 + 9) = 0;
    v68[80] = 1;
    *(v68 + 11) = 0;
    v68[96] = 1;
    *(v68 + 97) = 1;
    v70 = type metadata accessor for UIHostingConfigurationStorage(0);
    v71 = v70[9];
    v72 = type metadata accessor for UICellConfigurationState();
    (*(*(v72 - 8) + 56))(&v68[v71], 1, 1, v72);
    v68[v70[10]] = 0;
    *&v68[v70[11] + 8] = 0;
    swift_unknownObjectWeakInit();
    *boxed_opaque_existential_1 = v63;
    *v68 = 0;
  }

  else
  {
    *&v90[0] = 0;
    v88 = 0u;
    v89 = 0u;
  }

  UITabBarControllerSidebar.headerContentConfiguration.setter();

  if (v62 == 1)
  {
    v61 = 0;
  }

  else
  {
  }

  v73 = [v32 sidebar];
  if (v61)
  {
    type metadata accessor for UIHostingConfiguration<AnyView, EmptyView>();
    v75 = v74;
    *(&v89 + 1) = v74;
    *&v90[0] = lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type UIHostingConfiguration<AnyView, EmptyView> and conformance UIHostingConfiguration<A, B>, 255, type metadata accessor for UIHostingConfiguration<AnyView, EmptyView>, protocol conformance descriptor for UIHostingConfiguration<A, B>);
    v76 = __swift_allocate_boxed_opaque_existential_1(&v88);
    v77 = v76 + *(v75 + 56);
    *v77 = 1;

    MEMORY[0x18D007050](v78);
    *(v77 + 9) = 0;
    v77[80] = 1;
    *(v77 + 11) = 0;
    v77[96] = 1;
    *(v77 + 97) = 1;
    v79 = type metadata accessor for UIHostingConfigurationStorage(0);
    v80 = v79[9];
    v81 = type metadata accessor for UICellConfigurationState();
    (*(*(v81 - 8) + 56))(&v77[v80], 1, 1, v81);
    v77[v79[10]] = 0;
    *&v77[v79[11] + 8] = 0;
    swift_unknownObjectWeakInit();
    *v76 = v61;
    *v77 = 0;
  }

  else
  {
    *&v90[0] = 0;
    v88 = 0u;
    v89 = 0u;
  }

  UITabBarControllerSidebar.footerContentConfiguration.setter();

  return outlined destroy of TabSidebarConfiguration(v91);
}

void type metadata accessor for UIHostingConfiguration<AnyView, EmptyView>()
{
  if (!lazy cache variable for type metadata for UIHostingConfiguration<AnyView, EmptyView>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E6981910];
    v4[1] = MEMORY[0x1E6981E70];
    v4[2] = MEMORY[0x1E6981900];
    v4[3] = MEMORY[0x1E6981E60];
    v2 = type metadata accessor for UIHostingConfiguration(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for UIHostingConfiguration<AnyView, EmptyView>);
    }
  }
}

void type metadata accessor for Binding<Visibility>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI14_UIHostingViewCyAA7TabItemV04RootD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for _UIHostingView(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for TabBarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for TabBarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for TabBarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

Swift::Int __swiftcall DragReorderableDelegate.targetDropDestinationIndex(from:destinationIndex:)(Swift::Int_optional from, Swift::Int destinationIndex)
{
  return destinationIndex;
}

{
  return destinationIndex;
}

uint64_t type metadata accessor for DragReorderableChildResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for DragReorderableChildResponder;
  if (!type metadata singleton initialization cache for DragReorderableChildResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DragReorderableLayoutAdaptor.init(root:content:padding:contentTypes:spacing:delegate:containerID:placeholderID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  (*(*(a14 - 8) + 32))(a9, a1, a14);
  v34[0] = a14;
  v34[1] = a15;
  v35 = a16;
  v36 = a17;
  v37 = a18;
  v28 = type metadata accessor for DragReorderableLayoutAdaptor(0, v34);
  (*(*(a15 - 8) + 32))(a9 + v28[17], a2, a15);
  v29 = (a9 + v28[18]);
  *v29 = a10;
  v29[1] = a11;
  v29[2] = a12;
  v29[3] = a13;
  *(a9 + v28[19]) = a3;
  v30 = a9 + v28[20];
  *v30 = a4;
  *(v30 + 8) = a5 & 1;
  result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a6, a9 + v28[21]);
  *(a9 + v28[22]) = a7;
  *(a9 + v28[23]) = a8;
  return result;
}

uint64_t static DragReorderableLayoutView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v47 = *(a2 + 32);
  v48 = v8;
  v10 = *(a2 + 48);
  v49 = *(a2 + 64);
  v11 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v11;
  v42 = v47;
  v43 = v10;
  v44 = *(a2 + 64);
  v12 = *a1;
  v50 = *(a2 + 80);
  v45 = *(a2 + 80);
  v40 = v46[0];
  v41 = v9;
  LODWORD(v53[0]) = HIDWORD(v8);
  v38 = type metadata accessor for DragReorderableLayoutView.ChildTransform(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DragReorderableLayoutView<A>.ChildTransform, v38);
  outlined init with copy of _ViewInputs(v46, &v55);
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Attribute<ViewTransform>, MEMORY[0x1E697E228], MEMORY[0x1E698D388]);
  v13 = MEMORY[0x1E69E73E0];
  v14 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v53, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_17, v37, v38, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  _ViewInputs.transform.setter();
  v35 = a3;
  v36 = a4;
  LODWORD(v55) = v12;
  type metadata accessor for DragReorderableLayoutView(255, a3, a4, v17);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v18 = _GraphValue.value.getter();
  v19 = *MEMORY[0x1E698D3F8];
  *&v55 = __PAIR64__(HIDWORD(v43), v18);
  DWORD2(v55) = v19;
  Coordinator = type metadata accessor for DragReorderableLayoutView.MakeCoordinator(0, a3, a4, v20);
  v34 = swift_getWitnessTable(protocol conformance descriptor for DragReorderableLayoutView<A>.MakeCoordinator, Coordinator);
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for Attribute<DragReorderableLayoutCoordinator>, type metadata accessor for DragReorderableLayoutCoordinator, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v55, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_16, v32, Coordinator, v13, v21, v14, v22);
  v23 = v53[0];
  v25 = type metadata accessor for DragReorderableLayoutCore(0, a3, a4, v24);
  *&v55 = __PAIR64__(v23, v18);
  Core = type metadata accessor for DragReorderableLayoutView.MakeCore(0, a3, a4, v26);
  swift_getWitnessTable(protocol conformance descriptor for DragReorderableLayoutView<A>.MakeCore, Core);
  _GraphValue.init<A>(_:)();
  v51[2] = v42;
  v51[3] = v43;
  v51[4] = v44;
  v52 = v45;
  v51[0] = v40;
  v51[1] = v41;
  v57 = v42;
  v58 = v43;
  v59 = v44;
  v60 = v45;
  v55 = v40;
  v56 = v41;
  outlined init with copy of _ViewInputs(v51, v53);
  swift_getWitnessTable(protocol conformance descriptor for DragReorderableLayoutCore<A>, v25);
  static View.makeDebuggableView(view:inputs:)();
  v53[2] = v57;
  v53[3] = v58;
  v53[4] = v59;
  v54 = v60;
  v53[0] = v55;
  v53[1] = v56;
  outlined destroy of _ViewInputs(v53);
  AGGraphMutateAttribute();
  v57 = v42;
  v58 = v43;
  v59 = v44;
  v60 = v45;
  v55 = v40;
  v56 = v41;
  result = outlined destroy of _ViewInputs(&v55);
  *a5 = v29;
  *(a5 + 8) = v30;
  *(a5 + 12) = v31;
  return result;
}

uint64_t closure #2 in static DragReorderableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = _ViewOutputs.viewResponders()();
  result = type metadata accessor for DragReorderableLayoutView.MakeCoordinator(0, a4, a5, v9);
  *(a1 + 8) = v8;
  return result;
}

void DragReorderableLayoutView.MakeCoordinator.updateValue()(uint64_t a1)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *&v95 = swift_getAssociatedTypeWitness();
  *(&v95 + 1) = swift_getAssociatedTypeWitness();
  *v96 = swift_getAssociatedTypeWitness();
  *&v96[8] = swift_getAssociatedConformanceWitness();
  *&v96[16] = swift_getAssociatedConformanceWitness();
  *&v96[24] = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for DragReorderableLayoutAdaptor(0, &v95);
  v93 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = (v73 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v86 = (v73 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v73 - v12;
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v89 = (v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v87 = (v73 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v73 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v73 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v73 - v26;
  v92 = type metadata accessor for DragReorderableLayoutCoordinator();
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue)
  {
    goto LABEL_11;
  }

  v29 = *OutputValue;
  v30 = *v1;
  v85 = *(v1 + 4);
  LODWORD(v84) = *(v1 + 8);

  LODWORD(v90) = v30;
  Value = AGGraphGetValue();
  v21 = (v14 + 16);
  v89 = *(v14 + 16);
  v89(v27, Value, v2);
  v24 = (v3 + 64);
  v88 = *(v3 + 64);
  v88(v2, v3);
  v32 = *(v14 + 8);
  v91 = v14 + 8;
  v86 = v32;
  v32(v27, v2);
  v33 = *&v13[v4[22]];
  v34 = v93 + 8;
  v87 = *(v93 + 8);
  v87(v13, v4);
  *(v29 + 16) = v33;

  v35 = AGGraphGetOutputValue();
  if (!v35)
  {
    __break(1u);
    goto LABEL_14;
  }

  v36 = *v35;

  v37 = AGGraphGetValue();
  v89(v27, v37, v2);
  v88(v2, v3);
  v86(v27, v2);
  v38 = *&v13[v4[19]];

  v93 = v34;
  v87(v13, v4);
  *(v36 + 24) = v38;

  v39 = AGGraphGetOutputValue();
  if (!v39)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v40 = *v39;

  v41 = AGGraphGetValue();
  v89(v27, v41, v2);
  v88(v2, v3);
  v86(v27, v2);
  v42 = &v13[v4[20]];
  v43 = *v42;
  v14 = v42[8];
  v87(v13, v4);
  *(v40 + 32) = v43;
  *(v40 + 40) = v14;

  v44 = AGGraphGetOutputValue();
  if (!v44)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = *v44;

  v45 = AGGraphGetValue();
  v89(v27, v45, v2);
  v88(v2, v3);
  v86(v27, v2);
  outlined init with copy of _Benchmark(&v13[v4[21]], &v95);
  v87(v13, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v6 + 6);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v95, (v6 + 48));
  swift_endAccess();

  v46 = AGGraphGetOutputValue();
  if (!v46)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = *v46;
  if (*MEMORY[0x1E698D3F8] == v84)
  {
    v1 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v1 = v84;
  }

  *(v2 + 88) = AGCreateWeakAttribute();

  v47 = AGGraphGetOutputValue();
  if (v47)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v82 = *v1;
  v85 = *(v1 + 4);
  v76 = v21;
  v48 = AGGraphGetValue();
  v90 = *(v14 + 16);
  v84 = v14 + 16;
  v90(v27, v48, v2);
  v77 = v6;
  v81 = *(v3 + 64);
  v81(v2, v3);
  v49 = *(v14 + 8);
  v49(v27, v2);
  v91 = v14 + 8;
  v75 = v49;
  v79 = *&v13[v4[22]];
  v74 = *(v93 + 8);
  v93 += 8;
  v74(v13, v4);
  v50 = AGGraphGetValue();
  v90(v24, v50, v2);
  v51 = v86;
  v52 = v3;
  v73[1] = v3 + 64;
  v83 = v3;
  v53 = v81;
  v81(v2, v52);
  v49(v24, v2);
  v78 = *&v51[v4[19]];

  v54 = v74;
  v80 = v4;
  v74(v51, v4);
  v55 = AGGraphGetValue();
  v56 = v76;
  v57 = v90;
  v90(v76, v55, v2);
  v58 = v88;
  v53(v2, v83);
  v59 = v75;
  v75(v56, v2);
  v60 = &v58[v80[20]];
  v86 = *v60;
  LODWORD(v76) = v60[8];
  v54(v58);
  v61 = AGGraphGetValue();
  v62 = v87;
  v57(v87, v61, v2);
  v63 = v77;
  v64 = v83;
  v81(v2, v83);
  v65 = v59;
  v59(v62, v2);
  v66 = v80;
  outlined init with copy of _Benchmark(&v63[v80[21]], v94);
  (v54)(v63, v66);
  v67 = AGGraphGetValue();
  v68 = v89;
  v90(v89, v67, v2);
  (*(v64 + 72))(&v95, v2, v64);
  v65(v68, v2);
  v69 = swift_allocObject();
  *(v69 + 32) = 0;
  *(v69 + 40) = 1;
  *(v69 + 152) = 0;
  *(v69 + 160) = 1;
  *(v69 + 168) = 0u;
  *(v69 + 184) = 0u;
  *(v69 + 200) = 0u;
  *(v69 + 216) = 1;
  *(v69 + 224) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI32DragReorderableLayoutCoordinator33_1B0CD5E46D60A3CA175732DDA089171CLLC10ChildFrameVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v69 + 232) = 0;
  v70 = v78;
  *(v69 + 16) = v79;
  *(v69 + 24) = v70;
  *(v69 + 32) = v86;
  *(v69 + 40) = v76;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v94, v69 + 48);
  v71 = *v96;
  *(v69 + 104) = v95;
  *(v69 + 120) = v71;
  *(v69 + 129) = *&v96[9];
  *(v69 + 88) = 0;
  *(v69 + 96) = 0;
  *&v94[0] = v69;
  AGGraphSetOutputValue();

  v47 = AGGraphGetOutputValue();
  if (v47)
  {
LABEL_12:
    v72 = *v47;

    *(v72 + 96) = AGCreateWeakAttribute();

    return;
  }

LABEL_17:
  __break(1u);
}

double DragReorderableLayoutView.ChildTransform.transform.getter@<D0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  *a2 = *Value;
  *(a2 + 8) = v4;
  v5 = *(Value + 32);
  *(a2 + 16) = *(Value + 16);
  *(a2 + 32) = v5;

  return result;
}

uint64_t DragReorderableLayoutView.ChildTransform.value.getter@<X0>(uint64_t a2@<X8>)
{
  DragReorderableLayoutView.ChildTransform.transform.getter(a2);
  lazy protocol witness table accessor for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace();
  AnyHashable.init<A>(_:)();
  ViewTransform.appendCoordinateSpace(name:)();
  return outlined destroy of AnyHashable(v3);
}

uint64_t DragReorderableLayoutView.MakeCore.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v33 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  *&v37 = v9;
  *(&v37 + 1) = v10;
  v38 = AssociatedTypeWitness;
  v39 = AssociatedConformanceWitness;
  v40 = v12;
  v41 = v13;
  v14 = type metadata accessor for DragReorderableLayoutAdaptor(0, &v37);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v34 = &v33 - v15;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  Value = AGGraphGetValue();
  v27 = *(v16 + 16);
  v27(v25, Value, a2);
  (*(a3 + 64))(a2, a3);
  v28 = *(v16 + 8);
  v28(v25, a2);
  AGGraphClearUpdate();
  closure #1 in DragReorderableLayoutView.MakeCore.value.getter(&v37);
  AGGraphSetUpdate();
  v33 = v37;
  v29 = AGGraphGetValue();
  v27(v22, v29, a2);
  (*(a3 + 72))(&v37, a2, a3);
  v28(v22, a2);
  v30 = AGGraphGetValue();
  v27(v19, v30, a2);
  v31 = v35;
  (*(a3 + 80))(a2, a3);
  v28(v19, a2);
  return DragReorderableLayoutCore.init(adaptor:coordinator:state:placeholder:)(v34, v33, &v37, v31, a2, a3, v36);
}

double closure #1 in DragReorderableLayoutView.MakeCore.value.getter@<D0>(void *a2@<X8>)
{
  type metadata accessor for DragReorderableLayoutCoordinator();
  *a2 = *AGGraphGetValue();

  return result;
}

uint64_t DragReorderableLayoutCore.init(adaptor:coordinator:state:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22[0] = swift_getAssociatedTypeWitness();
  v22[1] = swift_getAssociatedTypeWitness();
  v22[2] = swift_getAssociatedTypeWitness();
  v22[3] = swift_getAssociatedConformanceWitness();
  v22[4] = swift_getAssociatedConformanceWitness();
  v22[5] = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for DragReorderableLayoutAdaptor(0, v22);
  (*(*(v11 - 8) + 32))(a7, a1, v11);
  v13 = type metadata accessor for DragReorderableLayoutCore(0, a5, a6, v12);
  *(a7 + v13[9]) = a2;
  v14 = (a7 + v13[10]);
  v15 = a3[1];
  *v14 = *a3;
  v14[1] = v15;
  *(v14 + 25) = *(a3 + 25);
  v16 = v13[11];
  v17 = type metadata accessor for Optional();
  return (*(*(v17 - 8) + 32))(a7 + v16, a4, v17);
}

uint64_t DragReorderableLayoutCore.state.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = *(v2 + 2);
  v5 = *(v2 + 24);
  v6 = *(v2 + 4);
  LOBYTE(v2) = *(v2 + 40);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v2;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v8);
  return v8;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DragReorderableLayoutView<A>.MakeCore@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for DragReorderableLayoutCore(0, *(a1 + 16), *(a1 + 24), a3);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 1, 1, v4);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DragReorderableLayoutView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for DragReorderableLayoutView<A>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t DragReorderableLayoutCore.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v78 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>, MEMORY[0x1E697F960]);
  v75 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>();
  v73 = MEMORY[0x1E6981400];
  swift_getOpaqueTypeMetadata2();
  *&v70 = swift_getAssociatedTypeWitness();
  *&v69 = swift_getAssociatedConformanceWitness();
  v85 = v70;
  *&v86 = MEMORY[0x1E69E6530];
  *(&v86 + 1) = v69;
  *&v87 = MEMORY[0x1E69E6540];
  v3 = type metadata accessor for IDView();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for Optional();
  v91[0] = swift_getWitnessTable(MEMORY[0x1E6981810], v3);
  v91[1] = &protocol witness table for HiddenModifierAllowingViewResponders;
  v7 = MEMORY[0x1E697E858];
  v68 = MEMORY[0x1E697E858];
  v90[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v91);
  v90[1] = &protocol witness table for DragReorderableChildModifier;
  WitnessTable = swift_getWitnessTable(v7, v5, v90);
  v8 = swift_getWitnessTable(MEMORY[0x1E6982090], v6, &WitnessTable);
  type metadata accessor for DropPlaceholderListModifier(255, v6, v8, v9);
  v52 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v52);
  v58 = &v51 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v55 = swift_getAssociatedConformanceWitness();
  v61 = *(v55 + 8);
  v53 = *(v61 + 8);
  v15 = type metadata accessor for _VariadicView.Tree();
  v62 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = type metadata accessor for ModifiedContent();
  v63 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v51 - v19;
  v20 = type metadata accessor for ModifiedContent();
  v65 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v51 - v21;
  _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E69805E0]);
  v54 = type metadata accessor for ModifiedContent();
  v66 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v51 - v22;
  v23 = type metadata accessor for ModifiedContent();
  v67 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v64 = &v51 - v27;
  v28 = v77;
  (*(v12 + 16))(v14, v77, v11, v26);
  DragReorderableLayoutCore.children.getter(v78, v58);
  v29 = v52;
  _VariadicView.Tree.init(root:content:)();
  v30 = AssociatedTypeWitness;
  v85 = v11;
  *&v86 = AssociatedTypeWitness;
  *(&v86 + 1) = v70;
  *&v87 = v55;
  v31 = AssociatedConformanceWitness;
  *(&v87 + 1) = AssociatedConformanceWitness;
  v88 = v69;
  v32 = (v28 + *(type metadata accessor for DragReorderableLayoutAdaptor(0, &v85) + 72));
  v33 = v32[1];
  v70 = *v32;
  v69 = v33;
  LOBYTE(v85) = static Edge.Set.all.getter();
  v87 = v69;
  v86 = v70;
  LOBYTE(v88) = 0;
  v84[2] = v30;
  v84[3] = v75;
  v84[4] = v31;
  v84[5] = v74;
  v84[0] = swift_getOpaqueTypeConformance2();
  v84[1] = &protocol witness table for DropPlaceholderListModifier<A>;
  v34 = v68;
  v35 = swift_getWitnessTable(v68, v29, v84);
  v83[0] = v61;
  v83[1] = v35;
  v36 = swift_getWitnessTable(MEMORY[0x1E697E308], v15, v83);
  v37 = v57;
  MEMORY[0x18D00A570](&v85, v15, MEMORY[0x1E697E5E0], v36);
  (*(v62 + 8))(v17, v15);
  v82[0] = v36;
  v82[1] = MEMORY[0x1E697E5D8];
  v38 = swift_getWitnessTable(v34, v18, v82);
  v39 = v59;
  MEMORY[0x18D00A570](v38, v18, &unk_1EFFBF2F0, v38);
  (*(v63 + 8))(v37, v18);
  v85 = 1;
  v81[0] = v38;
  v81[1] = &protocol witness table for ReorderableLayout;
  v40 = swift_getWitnessTable(v34, v20, v81);
  lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  v41 = v56;
  View.contentShape<A>(_:_:eoFill:)();
  (*(v65 + 8))(v39, v20);
  v42 = *(v77 + *(v78 + 36));
  v43 = *(v42 + 24);
  *&v87 = type metadata accessor for DragReorderableLayoutCoordinator();
  *(&v87 + 1) = &protocol witness table for DragReorderableLayoutCoordinator;
  v85 = v42;
  v44 = lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>();
  v80[0] = v40;
  v80[1] = v44;

  v45 = v54;
  v46 = swift_getWitnessTable(v34, v54, v80);
  v47 = v60;
  View.onDrop(of:delegate:)(v43, &v85, v45, v46);

  (*(v66 + 8))(v41, v45);
  __swift_destroy_boxed_opaque_existential_1(&v85);
  v79[0] = v46;
  v79[1] = &protocol witness table for DropModifier;
  swift_getWitnessTable(v34, v23, v79);
  v48 = v64;
  static ViewBuilder.buildExpression<A>(_:)();
  v49 = *(v67 + 8);
  v49(v47, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v49)(v48, v23);
}

uint64_t DragReorderableLayoutCore.children.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = AssociatedTypeWitness;
  v65 = MEMORY[0x1E69E6530];
  v66 = AssociatedConformanceWitness;
  v67 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for IDView();
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for Optional();
  v62 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v45 - v10;
  v72[0] = swift_getWitnessTable(MEMORY[0x1E6981810], v5, v9);
  v72[1] = &protocol witness table for HiddenModifierAllowingViewResponders;
  v11 = MEMORY[0x1E697E858];
  v71[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v72);
  v71[1] = &protocol witness table for DragReorderableChildModifier;
  WitnessTable = swift_getWitnessTable(v11, v7, v71);
  v56 = v8;
  v12 = swift_getWitnessTable(MEMORY[0x1E6982090], v8, &WitnessTable);
  v55 = type metadata accessor for DropPlaceholderListModifier(0, v8, v12, v13);
  v59 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v45 - v14;
  v15 = *(a1 - 8);
  v50 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4;
  v20 = swift_getAssociatedTypeWitness();
  type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>, MEMORY[0x1E697F960]);
  v22 = v21;
  v48 = v21;
  v23 = swift_getAssociatedConformanceWitness();
  v49 = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>();
  v64 = v20;
  v65 = v22;
  v66 = v23;
  v67 = v49;
  v46 = v23;
  v51 = MEMORY[0x1E6981400];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v47 = &v45 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v64 = v25;
  v65 = v20;
  v45 = v20;
  v66 = AssociatedTypeWitness;
  v67 = v26;
  v68 = v23;
  v69 = AssociatedConformanceWitness;
  AssociatedTypeWitness = *(type metadata accessor for DragReorderableLayoutAdaptor(0, &v64) + 68);
  (*(v15 + 16))(v18, v60, a1);
  v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v3;
  *(v28 + 24) = v19;
  (*(v15 + 32))(v28 + v27, v18, a1);
  v29 = swift_checkMetadataState();
  v30 = v46;
  v31 = v49;
  View.map<A>(_:)();

  v32 = v61;
  DragReorderableLayoutCore.insertionPlaceholder.getter(a1, v61);
  v33 = DragReorderableLayoutCore.state.getter(a1);
  v35 = v34;
  LOBYTE(v23) = v36 & 1;
  LOBYTE(v64) = v37 & 1;
  LOBYTE(v3) = v37 & 1;
  v38 = v54;
  (*(v62 + 32))(v54, v32, v56);
  v39 = v55;
  v40 = &v38[*(v55 + 36)];
  *v40 = v33;
  v40[8] = v23;
  *(v40 + 2) = v35;
  v40[24] = v3 & 1;
  v64 = v45;
  v65 = v29;
  v66 = v30;
  v67 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = OpaqueTypeMetadata2;
  v43 = v47;
  MEMORY[0x18D00A570](v38, OpaqueTypeMetadata2, v39, OpaqueTypeConformance2);
  (*(v59 + 8))(v38, v39);
  return (*(v53 + 8))(v43, v42);
}

uint64_t closure #1 in DragReorderableLayoutCore.children.getter@<X0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t a5@<X1>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>(0, a5);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of MappedViewElement.view>>.0(0, v12);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 1);
  v19 = *(a1 + 2);
  v28 = *a1;
  v29 = v18;
  v30 = v19;
  MappedViewElement.view.getter();
  v27 = v19;
  v25 = 0;
  v26 = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v29 == 1)
  {
    (*(v15 + 32))(a4, v17, v14);
  }

  else
  {
    v21 = v28;
    v22 = type metadata accessor for DragReorderableLayoutCore(0, a2, a3, v20);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    DragReorderableLayoutCore.draggableView<A>(_:offset:)(v17, v21, v22, v14, OpaqueTypeConformance2, v11);
    (*(v15 + 8))(v17, v14);
    sub_18C0C5430(v11, a4);
  }

  type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>.Storage, MEMORY[0x1E697F948]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DragReorderableLayoutCore.draggableView<A>(_:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a4;
  v85 = a5;
  v75 = a1;
  v77 = a6;
  type metadata accessor for Binding<_DragReorderableView_DragState>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v74 = type metadata accessor for ModifiedContent();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v64 - v9;
  v86 = *(a3 - 8);
  v10 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v70 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = v64 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  v17 = *(v6 + *(a3 + 36));
  swift_beginAccess();
  outlined init with copy of _Benchmark(v17 + 48, &v88);
  v18 = v90;
  v19 = v91;
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  v71 = (*(v19 + 32))(a2, v18, v19);
  __swift_destroy_boxed_opaque_existential_1(&v88);
  outlined init with copy of _Benchmark(v17 + 48, &v88);
  v20 = v90;
  v21 = v91;
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  v22 = *(v21 + 40);
  v78 = a2;
  v72 = v22(a2, v20, v21);
  __swift_destroy_boxed_opaque_existential_1(&v88);
  v23 = v86;
  v24 = *(v86 + 16);
  v82 = v86 + 16;
  v83 = v24;
  v25 = v16;
  v66 = v6;
  v24(v16, v6, a3);
  v26 = v23;
  v27 = *(v23 + 80);
  v28 = (v27 + 48) & ~v27;
  v80 = v28;
  v81 = v27;
  v64[1] = v28 + v10;
  v29 = (v28 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = v29;
  v30 = swift_allocObject();
  v31 = *(a3 + 16);
  v32 = *(a3 + 24);
  v33 = a3;
  v35 = v84;
  v34 = v85;
  v30[2] = v31;
  v30[3] = v35;
  v30[4] = v32;
  v30[5] = v34;
  v79 = *(v26 + 32);
  v36 = v30 + v28;
  v37 = v30;
  v69 = v30;
  v38 = v25;
  v39 = v33;
  v79(v36, v38);
  v86 = v26 + 32;
  *(v37 + v29) = v78;
  v40 = v68;
  v65 = v39;
  v83(v68, v6, v39);
  v41 = swift_allocObject();
  v41[2] = v31;
  v41[3] = v35;
  v41[4] = v32;
  v41[5] = v34;
  (v79)(v41 + v80, v40, v39);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v88 = AssociatedTypeWitness;
  v89[0] = v43;
  v89[1] = v44;
  v90 = AssociatedConformanceWitness;
  v91 = v46;
  v92 = v47;
  v48 = type metadata accessor for DragReorderableLayoutAdaptor(0, &v88);
  v49 = v65;
  v50 = *(v66 + *(v48 + 88));
  v106 = &unk_1EFFBF198;
  v51 = v78;
  v104 = v50;
  v105 = v78;
  v52 = v70;
  (v83)(v70);
  v53 = v67;
  v54 = swift_allocObject();
  v55 = v84;
  v54[2] = v31;
  v54[3] = v55;
  v54[4] = v32;
  v56 = v85;
  v54[5] = v85;
  (v79)(v54 + v80, v52, v49);
  *(v54 + v53) = v51;
  v57 = swift_allocObject();
  *(v57 + 16) = partial apply for closure #3 in DragReorderableLayoutCore.draggableView<A>(_:offset:);
  *(v57 + 24) = v54;
  type metadata accessor for DragPayloadBox<Drag.Payload<ObjectIdentifier>>(0);
  v58 = swift_allocObject();
  *(v58 + 16) = partial apply for specialized thunk for @escaping @callee_guaranteed () -> (@owned [DraggingItem<A>]);
  *(v58 + 24) = v57;
  *(v58 + 32) = 1;
  *(v58 + 40) = 0;
  v95[0] = v71 & 1;
  v96 = 0;
  v97 = 0;
  v98 = partial apply for closure #1 in DragReorderableLayoutCore.draggableView<A>(_:offset:);
  v99 = v69;
  v100 = partial apply for closure #2 in DragReorderableLayoutCore.draggableView<A>(_:offset:);
  v101 = v41;
  v102 = 0;
  v103 = 0;
  v107 = xmmword_18CD7DD20;
  v108 = xmmword_18CD6A6D0;
  v109 = v58;
  swift_getKeyPath();
  LOBYTE(v88) = 1;
  v59 = v73;
  View.environment<A>(_:_:)();

  outlined init with copy of _DraggingModifier(v95, v89);
  LOBYTE(v88) = v72 & 1;
  v93 = v51;
  v94 = 0;
  v60 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v87[0] = v56;
  v87[1] = v60;
  v61 = v74;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v74, v87);
  MEMORY[0x18D00A570](&v88, v61, &type metadata for DragReorderableChildModifier, WitnessTable);
  outlined destroy of DragReorderableChildModifier(&v88);
  (*(v76 + 8))(v59, v61);
  return outlined destroy of _DraggingModifier(v95);
}

uint64_t DragReorderableLayoutCore.insertionPlaceholder.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = AssociatedTypeWitness;
  v65 = MEMORY[0x1E69E6530];
  v48 = AssociatedConformanceWitness;
  v66 = AssociatedConformanceWitness;
  v67 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for IDView();
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v45 - v6;
  v61 = v7;
  v8 = type metadata accessor for ModifiedContent();
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - v9;
  v60 = v10;
  v11 = type metadata accessor for ModifiedContent();
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v45 - v14;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v46 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v54 = &v45 - v23;
  v24 = type metadata accessor for Optional();
  v58 = *(v24 - 8);
  v59 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v55 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v57 = &v45 - v28;
  (*(v16 + 16))(v18, v63 + *(a1 + 44), v15, v27);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) != 1)
  {
    v45 = v19;
    v33 = v54;
    (*(v19 + 32))(v54, v18, AssociatedTypeWitness);
    (*(v19 + 16))(v46, v33, AssociatedTypeWitness);
    v34 = swift_getAssociatedTypeWitness();
    v35 = swift_getAssociatedTypeWitness();
    v36 = swift_getAssociatedConformanceWitness();
    v37 = swift_getAssociatedConformanceWitness();
    v64 = v34;
    v65 = v35;
    v66 = AssociatedTypeWitness;
    v67 = v36;
    v68 = v37;
    v69 = v48;
    v38 = type metadata accessor for DragReorderableLayoutAdaptor(0, &v64);
    v64 = *(v63 + *(v38 + 92));
    IDView.init(_:id:)();
    swift_getWitnessTable(MEMORY[0x1E6981810], v61);
    View.hiddenAllowingViewResponders()();
  }

  (*(v16 + 8))(v18, v15);
  v29 = v55;
  (*(v56 + 56))(v55, 1, 1, v11);
  v30 = v61;
  v74[0] = swift_getWitnessTable(MEMORY[0x1E6981810], v61);
  v74[1] = &protocol witness table for HiddenModifierAllowingViewResponders;
  v31 = MEMORY[0x1E697E858];
  v32 = v60;
  v73[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v60, v74);
  v73[1] = &protocol witness table for DragReorderableChildModifier;
  swift_getWitnessTable(v31, v11, v73);
  v39 = v57;
  static ToolbarContentBuilder.buildIf<A>(_:)(v29, v57);
  v40 = *(v58 + 8);
  v41 = v29;
  v42 = v59;
  v40(v41, v59);
  v72[0] = swift_getWitnessTable(MEMORY[0x1E6981810], v30);
  v72[1] = &protocol witness table for HiddenModifierAllowingViewResponders;
  v43 = MEMORY[0x1E697E858];
  v71[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v32, v72);
  v71[1] = &protocol witness table for DragReorderableChildModifier;
  WitnessTable = swift_getWitnessTable(v43, v11, v71);
  swift_getWitnessTable(MEMORY[0x1E6982090], v42, &WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v40)(v39, v42);
}

double DragReorderableLayoutCoordinator.dragBegan(at:)(uint64_t a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v11 = *(v1 + 104);
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v9);
  if ((v10 & 1) != 0 || v9 != a1)
  {
    *(v1 + 200) = 0u;
    *(v1 + 184) = 0u;
    *(v1 + 168) = 0u;
    *(v1 + 216) = 1;
  }

  *&v11 = static Transaction.current.getter();
  v7 = Transaction.disablesAnimations.setter();
  MEMORY[0x1EEE9AC00](v7);
  withTransaction<A>(_:_:)();

  return result;
}

uint64_t DragReorderableLayoutCoordinator.dragEnded()()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v16 = *(v0 + 104);
  v17 = v1;
  v18 = v2;
  LOBYTE(v19) = v3;
  v20 = v4;
  v21 = v5;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v7 = v6;

  MEMORY[0x18D00ACC0](&v22, v7);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v16 = *(v0 + 104);
  v17 = v8;
  v18 = v9;
  LOBYTE(v19) = v10;
  v20 = v11;
  v21 = v12;

  MEMORY[0x18D00ACC0](&v22, v7);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 1;
  swift_beginAccess();
  outlined init with copy of _Benchmark(v0 + 48, &v16);
  v13 = v19;
  v14 = v20;
  __swift_project_boxed_opaque_existential_1(&v16, v19);
  (*(v14 + 88))(v13, v14);
  return __swift_destroy_boxed_opaque_existential_1(&v16);
}

uint64_t closure #3 in DragReorderableLayoutCore.draggableView<A>(_:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ContiguousArrayStorage<DraggingItem<ObjectIdentifier>>(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD63400;
  v11 = *(a1 + *(type metadata accessor for DragReorderableLayoutCore(0, a3, a5, v10) + 36));
  swift_beginAccess();
  outlined init with copy of _Benchmark(v11 + 48, v16);
  v12 = v17;
  v13 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v14 = (*(v13 + 48))(a2, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  *(v9 + 32) = v14;
  *(v9 + 40) = v14;
  return v9;
}

uint64_t ConditionalDraggingModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  result = _s7SwiftUI17_DraggingModifierVSgWOcTm_0(v1, v13, &lazy cache variable for type metadata for _DraggingModifier?, &type metadata for _DraggingModifier, MEMORY[0x1E69E6720], type metadata accessor for Binding<_DragReorderableView_DragState>);
  v4 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v5 = v13[7];
    v6 = v14;
    v7 = v13[2];
    v8 = v13[3];
    v10 = v13[4];
    v9 = v13[5];
    v12 = v13[0];
    v11 = v13[1];
    *(a1 + 96) = v13[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v6;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
    *(a1 + 64) = v10;
    *(a1 + 80) = v9;
    *a1 = v12;
    *(a1 + 16) = v11;
  }

  else
  {
    result = outlined destroy of Path?(v13, &lazy cache variable for type metadata for _DraggingModifier?, &type metadata for _DraggingModifier);
  }

  *(a1 + 144) = v4 == 0;
  return result;
}

uint64_t static DragSourceProxyModifier._makeView(modifier:inputs:body:)(uint64_t a1, void *a2, uint64_t (*a3)(void *, uint64_t *), uint64_t a4)
{
  v5 = (a2 + 1);
  v6 = *a2;
  lazy protocol witness table accessor for type DragSourceProxyInput and conformance DragSourceProxyInput();
  v7 = PropertyList.subscript.getter();
  if (v12 == *MEMORY[0x1E698D3F8])
  {
    v12 = v6;
    v8 = *v5;
    v9 = v5[2];
    v10 = v5[3];
    v14 = v5[1];
    v15 = v9;
    *v16 = v10;
    *&v16[12] = *(v5 + 60);
    v13 = v8;
    return a3(v7, &v12);
  }

  else
  {
    lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier();
    return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ReorderableLayout(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = a2[3];
  v16[2] = a2[2];
  v16[3] = v12;
  v16[4] = a2[4];
  v17 = *(a2 + 20);
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  v18 = v11;
  v14 = lazy protocol witness table accessor for type ReorderableLayout and conformance ReorderableLayout();
  return (*(v14 + 80))(&v18, v16, a3, a4, a5, v14);
}

double static DragReorderableChildModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, _OWORD *a5@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v43 = a2[2];
  v44 = v6;
  v8 = a2[3];
  v45 = a2[4];
  v9 = a2[1];
  v41 = *a2;
  v42 = v9;
  v37 = v43;
  v38 = v8;
  v39 = a2[4];
  v10 = *a1;
  v46 = *(a2 + 20);
  v40 = *(a2 + 20);
  v35 = v41;
  v36 = v7;
  LODWORD(v47[0]) = v10;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v41, &v49);
  lazy protocol witness table accessor for type DragReorderableChildModifier.MakeDragSourceProxy and conformance DragReorderableChildModifier.MakeDragSourceProxy();
  LODWORD(v49) = Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type DragSourceProxyInput and conformance DragSourceProxyInput();
  PropertyList.subscript.setter();
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v11 = HIDWORD(v44);
  v54 = v46;
  v49 = v41;
  v50 = v42;
  *&v49 = __PAIR64__(_ViewInputs.animatedPosition()(), v11);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type DragReorderableChildModifier.ChildCoordinateSpace and conformance DragReorderableChildModifier.ChildCoordinateSpace();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.transform.setter();
  LODWORD(v49) = v10;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type DragReorderableChildModifier.MakeDragSource and conformance DragReorderableChildModifier.MakeDragSource();
  LODWORD(v27[0]) = Attribute.init<A>(body:value:flags:update:)();
  v47[2] = v37;
  v47[3] = v38;
  v47[4] = v39;
  v48 = v40;
  v47[0] = v35;
  v47[1] = v36;
  outlined init with copy of _ViewInputs(v47, &v49);
  lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  v51 = v37;
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v49 = v35;
  v50 = v36;
  outlined destroy of _ViewInputs(&v49);
  *&v29 = v44;
  DWORD2(v29) = DWORD2(v44);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v25[2] = v37;
    v25[3] = v38;
    v25[4] = v39;
    v26 = v40;
    v25[0] = v35;
    v25[1] = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    outlined init with copy of _ViewInputs(v25, v27);
    v12 = _ViewInputs.animatedPosition()();
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v28 = v34;
    v27[0] = v29;
    v27[1] = v30;
    outlined destroy of _ViewInputs(v27);
    v29 = v17;

    v13 = _ViewOutputs.viewResponders()();

    v31 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    type metadata accessor for DragReorderableChildResponder(0);
    v14 = swift_allocObject();
    *(v14 + 216) = 0;
    *(v14 + 224) = 1;
    *(v14 + 232) = 0;
    *(v14 + 240) = 0;
    *(v14 + 248) = 0;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v24 = v40;
    v19 = v35;
    v20 = v36;
    outlined init with copy of _ViewInputs(&v29, v18);
    v15 = DefaultLayoutViewResponder.init(inputs:)();
    *&v19 = __PAIR64__(v12, v10);
    DWORD2(v19) = v13;
    *&v20 = v15;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type DragReorderableChildModifier.ResponderFilter and conformance DragReorderableChildModifier.ResponderFilter();
    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v19) = 0;
    PreferencesOutputs.subscript.setter();
  }

  v31 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v29 = v35;
  v30 = v36;
  outlined destroy of _ViewInputs(&v29);
  *a5 = v17;
  return *(&v17 + 1);
}

uint64_t DragReorderableChildResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v1 = swift_allocObject();
  *(v1 + 216) = 0;
  *(v1 + 224) = 1;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  *(v1 + 248) = 0;
  return DefaultLayoutViewResponder.init(inputs:)();
}

_BYTE *protocol witness for Rule.value.getter in conformance DragReorderableChildModifier.MakeDragSource@<X0>(_OWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  if ((*result & 1) == 0)
  {
    Value = AGGraphGetValue();
    result = outlined init with copy of DragReorderableChildModifier(Value, v13);
    v3 = v14;
    v4 = v15;
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v11 = v22;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  return result;
}

_BYTE *protocol witness for Rule.value.getter in conformance DragReorderableChildModifier.MakeDragSourceProxy@<X0>(_OWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  if (*result == 1)
  {
    Value = AGGraphGetValue();
    result = outlined init with copy of DragReorderableChildModifier(Value, v13);
    v3 = v14;
    v4 = v15;
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v11 = v22;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  return result;
}

uint64_t DragReorderableChildModifier.ResponderFilter.updateValue()()
{
  v1 = *(v0 + 16);
  Value = AGGraphGetValue();
  v3 = *(Value + 160);
  *(v1 + 216) = *(Value + 152);
  *(v1 + 224) = v3;
  type metadata accessor for CGPoint(0);
  *(v1 + 232) = *AGGraphGetValue();
  *(v1 + 248) = *(AGGraphGetValue() + 161);
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v4)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD69590;
    *(v6 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t DragReorderableChildModifier.ChildCoordinateSpace.value.getter@<X0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  *a2 = *Value;
  *(a2 + 8) = v4;
  v5 = *(Value + 32);
  *(a2 + 16) = *(Value + 16);
  *(a2 + 32) = v5;
  type metadata accessor for CGPoint(0);

  v6 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v6);
  lazy protocol witness table accessor for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace();
  AnyHashable.init<A>(_:)();
  ViewTransform.appendCoordinateSpace(name:)();
  return outlined destroy of AnyHashable(v8);
}

uint64_t DragReorderableChildResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 216) = 0;
  *(v2 + 224) = 1;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0;
  *(v2 + 248) = 0;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

double DragReorderableChildResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t static DropPlaceholderListModifier._makeViewList(modifier:inputs:body:)@<X0>(int *a1@<X0>, void (*a3)(void *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28[9] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  a3(v28);
  v10 = _ViewListOutputs.makeAttribute(inputs:)();
  v25 = a4;
  v26 = a5;
  type metadata accessor for DropPlaceholderListModifier(255, a4, a5, v11);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  static View.makeDebuggableViewList(view:inputs:)();
  v12 = _ViewListOutputs.makeAttribute(inputs:)();
  v23 = a4;
  v24 = a5;
  v19 = v9;
  _GraphValue.subscript.getter();
  v18[0] = v10;
  v18[1] = v12;
  List = type metadata accessor for DropPlaceholderListModifier.MakeList(0, a4, a5, v13);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DropPlaceholderListModifier<A>.MakeList, List);
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for Attribute<ViewList>, type metadata accessor for ViewList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, closure #1 in Attribute.init<A>(_:)partial apply, v20, List, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  outlined destroy of _ViewListOutputs(v27);
  *a6 = v19;
  *(a6 + 8) = 0;
  *(a6 + 40) = 1;
  v16 = v28[6];
  result = outlined destroy of _ViewListOutputs(v28);
  *(a6 + 48) = v16;
  *(a6 + 56) = 0;
  *(a6 + 64) = 1;
  return result;
}

uint64_t closure #1 in static DragReorderableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = (a4)(0, a2, a3);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t closure #2 in static DropPlaceholderListModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DropPlaceholderListModifier(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v10, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t DropPlaceholderListModifier.MakeList.value.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v20);
  v9 = AGGraphGetValue();
  outlined init with copy of _Benchmark(v9, v19);
  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v21 = *(v10 + 24);
  v14 = v21;
  v16 = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList(0, a3, a4, v15);
  a5[3] = v16;
  a5[4] = swift_getWitnessTable(protocol conformance descriptor for DropPlaceholderListModifier<A>.DropPlaceholderList, v16);
  v17 = swift_allocObject();
  *a5 = v17;
  v21 = v14 & 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v20, v17 + 16);
  result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, v17 + 56);
  *(v17 + 96) = v11;
  *(v17 + 104) = v12;
  *(v17 + 112) = v13;
  *(v17 + 120) = v14 & 1;
  return result;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.viewIDs.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v1 + 40), v4);
  v6 = (*(v5 + 40))(v4, v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>(0);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
  }

  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v8);
  v10 = (*(v9 + 40))(v8, v9);
  if (v10)
  {
    v12 = v10;
    if (*(v1 + 104))
    {

      return v12;
    }

    else
    {
      v14 = *(v1 + 96);
      v15 = *(v2 + 88);
      v16 = *(v2 + 80);
      type metadata accessor for DropPlaceholderListModifier.PlaceholderViews(0, *(a1 + 16), *(a1 + 24), v11);
      swift_allocObject();
      v17 = specialized DropPlaceholderListModifier.PlaceholderViews.init(base:placeholder:sourceIndex:destinationIndex:)(v12, v7, v16, v15, v14);

      return v17;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.count(style:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v11 = v2;
  result = (*(v4 + 16))(&v11, v3, v4);
  if ((*(v1 + 104) & 1) == 0)
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 72);
    v8 = result;
    __swift_project_boxed_opaque_existential_1((v1 + 40), v6);
    v11 = v2;
    v9 = (*(v7 + 16))(&v11, v6, v7);
    v10 = __OFADD__(v8, v9);
    result = v8 + v9;
    if (v10)
    {
      __break(1u);
LABEL_7:
      __break(1u);
      return result;
    }
  }

  if ((*(v1 + 88) & 1) == 0)
  {
    v10 = __OFSUB__(result--, 1);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.estimatedCount(style:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v11 = v2;
  result = (*(v4 + 24))(&v11, v3, v4);
  if ((*(v1 + 104) & 1) == 0)
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 72);
    v8 = result;
    __swift_project_boxed_opaque_existential_1((v1 + 40), v6);
    v11 = v2;
    v9 = (*(v7 + 24))(&v11, v6, v7);
    v10 = __OFADD__(v8, v9);
    result = v8 + v9;
    if (v10)
    {
      __break(1u);
LABEL_7:
      __break(1u);
      return result;
    }
  }

  if ((*(v1 + 88) & 1) == 0)
  {
    v10 = __OFSUB__(result--, 1);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.applyNodes(from:style:list:transform:to:)(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = *a2;
  v10 = *a4;
  v11 = *(a4 + 8);
  DropPlaceholderListModifier.DropPlaceholderList.indexRanges(from:)(*a1, a7, a3, a4);
  v13 = v12;
  v15 = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(0, *(a7 + 16), *(a7 + 24), v14);
  if (MEMORY[0x18D00CDE0](v13, v15))
  {
    v16 = 0;
    v17 = (v13 + 49);
    v24 = a3 | ((HIDWORD(a3) & 1) << 32);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      result = Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_13;
      }

      v21 = *(v17 - 9);
      v22 = *(v17 - 1);
      v23 = *v17;
      *a1 = *(v17 - 17);
      if (v23)
      {
        v30 = v25;
        v28 = v10;
        v29 = v11;
        if ((DropPlaceholderListModifier.DropPlaceholderList.applyToPlaceholder(start:style:list:transform:body:)(a1, &v30, v24, &v28, a5, a6) & 1) == 0)
        {
LABEL_9:

          return 0;
        }
      }

      else
      {
        v30 = v25;
        v28 = v10;
        v29 = v11;
        if ((DropPlaceholderListModifier.DropPlaceholderList.applyToBase(start:end:style:list:transform:body:)(a1, v21, v22, &v30, v24, &v28) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      ++v16;
      v17 += 24;
      if (v20 == MEMORY[0x18D00CDE0](v13, v15))
      {
        goto LABEL_10;
      }
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:

    return 1;
  }

  return result;
}

void DropPlaceholderListModifier.DropPlaceholderList.indexRanges(from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 104);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v4 + 96);
  }

  if (*(v4 + 88))
  {
LABEL_5:
    if (v7 < result)
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

  v11 = *(v4 + 80);
  if (v11 == v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(v4 + 104);
  }

  if (v12 == 1)
  {
    if (v11 >= result)
    {
      v8 = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(255, *(a2 + 16), *(a2 + 24), a4);
      type metadata accessor for _ContiguousArrayStorage();
      swift_allocObject();
      v9 = static Array._adoptStorage(_:count:)();
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = 0;
      }

      else
      {
        v17 = v11;
      }

      *v16 = result;
      *(v16 + 8) = v17;
      *(v16 + 16) = v11 == 0x7FFFFFFFFFFFFFFFLL;
      *(v16 + 17) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      *(v16 + 40) = 257;
      if (!__OFADD__(v11, 1))
      {
        *(v16 + 48) = v11 + 1;
        *(v16 + 56) = 0;
LABEL_38:
        *(v16 + 64) = 1;
        goto LABEL_39;
      }

      __break(1u);
      goto LABEL_58;
    }

    if (*(v4 + 104))
    {
      goto LABEL_8;
    }
  }

  if (v11 < v7)
  {
    if (v11 >= result)
    {
      v8 = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(255, *(a2 + 16), *(a2 + 24), a4);
      type metadata accessor for _ContiguousArrayStorage();
      swift_allocObject();
      v9 = static Array._adoptStorage(_:count:)();
      *v19 = result;
      *(v19 + 8) = v11;
      *(v19 + 16) = 0;
      v20 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        if (v20 > v11)
        {
          if (v7 == 0x7FFFFFFFFFFFFFFELL)
          {
            v21 = 0;
          }

          else
          {
            v21 = v7 + 1;
          }

          *(v19 + 24) = v11 + 1;
          *(v19 + 32) = v21;
          *(v19 + 40) = v7 == 0x7FFFFFFFFFFFFFFELL;
          *(v19 + 41) = 0;
          *(v19 + 48) = 0;
          *(v19 + 56) = 0;
          *(v19 + 64) = 257;
          *(v19 + 72) = v20;
          *(v19 + 80) = 0;
          *(v19 + 88) = 1;
          goto LABEL_39;
        }

        goto LABEL_60;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v13 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      if (v13 >= result)
      {
        v8 = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(255, *(a2 + 16), *(a2 + 24), a4);
        type metadata accessor for _ContiguousArrayStorage();
        swift_allocObject();
        v9 = static Array._adoptStorage(_:count:)();
        if (v7 == 0x7FFFFFFFFFFFFFFELL)
        {
          v24 = 0;
        }

        else
        {
          v24 = v7 + 1;
        }

        *v16 = result;
        *(v16 + 8) = v24;
        *(v16 + 16) = v7 == 0x7FFFFFFFFFFFFFFELL;
        *(v16 + 17) = 0;
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        *(v16 + 40) = 257;
        *(v16 + 48) = v13;
        goto LABEL_37;
      }

      goto LABEL_19;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_19:
  if (v7 < v11)
  {
    if (v7 < result)
    {
      if (v11 < result)
      {
        goto LABEL_5;
      }

      v8 = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(255, *(a2 + 16), *(a2 + 24), a4);
      type metadata accessor for _ContiguousArrayStorage();
      swift_allocObject();
      v9 = static Array._adoptStorage(_:count:)();
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0;
      }

      else
      {
        v15 = v11;
      }

      *v14 = result;
      *(v14 + 8) = v15;
      *(v14 + 16) = v11 == 0x7FFFFFFFFFFFFFFFLL;
      *(v14 + 17) = 0;
      if (!__OFADD__(v11, 1))
      {
        *(v14 + 24) = v11 + 1;
        *(v14 + 32) = 0;
        *(v14 + 40) = 1;
        goto LABEL_39;
      }

LABEL_62:
      __break(1u);
      return;
    }

    v8 = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(255, *(a2 + 16), *(a2 + 24), a4);
    type metadata accessor for _ContiguousArrayStorage();
    swift_allocObject();
    v9 = static Array._adoptStorage(_:count:)();
    *v22 = result;
    *(v22 + 8) = v7;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 257;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0;
    }

    else
    {
      v23 = v11;
    }

    *(v22 + 48) = v7;
    *(v22 + 56) = v23;
    *(v22 + 64) = v11 == 0x7FFFFFFFFFFFFFFFLL;
    *(v22 + 65) = 0;
    if (!__OFADD__(v11, 1))
    {
      *(v22 + 72) = v11 + 1;
      *(v22 + 80) = 0;
      *(v22 + 88) = 1;
      goto LABEL_39;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v7 >= result)
  {
LABEL_33:
    v8 = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(255, *(a2 + 16), *(a2 + 24), a4);
    type metadata accessor for _ContiguousArrayStorage();
    swift_allocObject();
    v9 = static Array._adoptStorage(_:count:)();
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = 0;
    }

    else
    {
      v18 = v7;
    }

    *v16 = result;
    *(v16 + 8) = v18;
    *(v16 + 16) = v7 == 0x7FFFFFFFFFFFFFFFLL;
    *(v16 + 17) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 257;
    *(v16 + 48) = v7;
LABEL_37:
    *(v16 + 56) = 0;
    goto LABEL_38;
  }

LABEL_8:
  v8 = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange(255, *(a2 + 16), *(a2 + 24), a4);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v9 = static Array._adoptStorage(_:count:)();
  *v10 = result;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
LABEL_39:

  _finalizeUninitializedArray<A>(_:)(v9, v8);
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.applyToPlaceholder(start:style:list:transform:body:)(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = v6[8];
  v15 = v6[9];
  __swift_project_boxed_opaque_existential_1(v6 + 5, v14);
  v19 = v11;
  v17 = v12;
  v18 = v13;
  return (*(v15 + 64))(a1, &v19, a3 | ((HIDWORD(a3) & 1) << 32), &v17, a5, a6, v14, v15) & 1;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.applyToBase(start:end:style:list:transform:body:)(void *a1, uint64_t a2, char a3, uint64_t *a4, unint64_t a5, uint64_t *a6)
{
  v8 = 1;
  if ((a3 & 1) != 0 || *a1 < a2)
  {
    v9 = *(a6 + 8);
    v10 = *a6;
    v11 = *a4;
    v25 = *a1;
    v24 = 1;
    v12 = v6[3];
    v13 = v6[4];
    v18 = a1;
    v19 = v12;
    v14 = __swift_project_boxed_opaque_existential_1(v6, v12);
    v20 = &v17;
    v23 = v11;
    v21 = v10;
    v22 = v9;
    v15 = MEMORY[0x1EEE9AC00](v14);
    (*(v13 + 64))(v18, &v23, a5 | ((HIDWORD(a5) & 1) << 32), &v21, partial apply for closure #1 in DropPlaceholderListModifier.DropPlaceholderList.applyToBase(start:end:style:list:transform:body:), v15);
    return v24;
  }

  return v8;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.edit(forID:since:)(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v10[0] = *a1;
  v10[1] = v4;
  v9 = v5;
  return (*(v7 + 72))(v10, &v9, v6, v7);
}

void *DropPlaceholderListModifier.DropPlaceholderList.firstOffset<A>(forID:style:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a3;
  v10 = *a2;
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  __swift_project_boxed_opaque_existential_1(v5, v11);
  v39 = v10;
  v13 = (*(v12 + 80))(a1, &v39, a4, a5, v11, v12);
  v15 = v14;
  v16 = *(v5 + 64);
  v17 = *(v5 + 72);
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v39 = v10;
  result = (*(v17 + 80))(a1, &v39, a4, a5, v16, v17);
  if (*(v5 + 104))
  {
    return v13;
  }

  v20 = v19;
  v37 = result;
  v21 = *(v6 + 96);
  if (*(v6 + 88))
  {
    MEMORY[0x1EEE9AC00](result);
    v22 = *(v38 + 24);
    v29 = *(v38 + 16);
    v30 = a4;
    v31 = v22;
    v32 = a5;
    v33 = v21;
    v34 = v6;
    v35 = v10;
    v6 = 0;
    result = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSi_s5NeverOSiSgTg5(partial apply for closure #3 in DropPlaceholderListModifier.DropPlaceholderList.firstOffset<A>(forID:style:), v28, v13, v15 & 1);
    if ((v23 & 0x100) == 0)
    {
      return result;
    }

    if (v20)
    {
      return v37;
    }

    result = (v37 + v21);
    if (!__OFADD__(v37, v21))
    {
      return result;
    }

    __break(1u);
  }

  v24 = *(v6 + 80);
  MEMORY[0x1EEE9AC00](result);
  v25 = *(v38 + 24);
  v29 = *(v38 + 16);
  v30 = a4;
  v31 = v25;
  v32 = a5;
  v33 = v24;
  v34 = v21;
  v35 = v6;
  v36 = v10;
  result = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSi_s5NeverOSiSgTg5(partial apply for closure #1 in DropPlaceholderListModifier.DropPlaceholderList.firstOffset<A>(forID:style:), v28, v13, v15 & 1);
  if ((v26 & 0x100) == 0)
  {
    return result;
  }

  if (v20)
  {
    return v37;
  }

  v27 = v21 - (v24 < v21);
  result = (v37 + v27);
  if (__OFADD__(v37, v27))
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in DropPlaceholderListModifier.DropPlaceholderList.firstOffset<A>(forID:style:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *result;
  if (*result <= a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v7 <= a3 || (v10 = a4[8], v11 = a4[9], __swift_project_boxed_opaque_existential_1(a4 + 5, v10), v13 = a5, result = (*(v11 + 16))(&v13, v10, v11), v12 = __OFADD__(v8, result), v8 += result, !v12))
  {
    if (!__OFADD__(v7, v8))
    {
      *a6 = v7 + v8;
      *(a6 + 8) = 0;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in DropPlaceholderListModifier.DropPlaceholderList.firstOffset<A>(forID:style:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  if (*a1 >= a2)
  {
    result = 0;
  }

  else
  {
    v8 = a3[8];
    v9 = a3[9];
    __swift_project_boxed_opaque_existential_1(a3 + 5, v8);
    v11 = a4;
    result = (*(v9 + 16))(&v11, v8, v9);
  }

  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a5 = v6 + result;
    *(a5 + 8) = 0;
  }

  return result;
}

uint64_t closure #1 in DropPlaceholderListModifier.DropPlaceholderList.applyToBase(start:end:style:list:transform:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10)
{
  result = _ViewList_Node.applyNodes(from:style:transform:to:)();
  *a5 = result & 1;
  if (result & 1) == 0 || (a9)
  {
    return result & 1;
  }

  v13 = *a10 + 1;
  if (!__OFADD__(*a10, 1))
  {
    *a10 = v13;
    LOBYTE(result) = v13 < a8;
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DropPlaceholderListModifier<A>.DropPlaceholderList(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DropPlaceholderListModifier<A>.DropPlaceholderList, a1);

  return MEMORY[0x1EEDE5508](a1, WitnessTable);
}

uint64_t DropPlaceholderListModifier.PlaceholderViews.subscript.getter(uint64_t result)
{
  v2 = *(v1 + 64);
  if (v2 > result)
  {
    return dispatch thunk of _ViewList_ID_Views.subscript.getter();
  }

  v3 = *(v1 + 40);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < result)
  {
    v4 = __OFSUB__(result, v3);
    result -= v3;
    if (!v4)
    {
      return dispatch thunk of _ViewList_ID_Views.subscript.getter();
    }

    goto LABEL_10;
  }

  v4 = __OFSUB__(result, v3);
  v6 = result - v3;
  if (v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = v6 - 1;
  if (!__OFSUB__(v6, 1))
  {
    return dispatch thunk of _ViewList_ID_Views.subscript.getter();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t DropPlaceholderListModifier.PlaceholderViews.isEqual(to:)(uint64_t a1)
{
  v2 = swift_dynamicCastClass();
  if (!v2 || *(v1 + 72) != *(v2 + 72))
  {
    goto LABEL_12;
  }

  v3 = *(v2 + 56);
  if (*(v1 + 56))
  {
    if (!*(v2 + 56))
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(v1 + 48) != *(v2 + 48))
    {
      v3 = 1;
    }

    if (v3)
    {
      goto LABEL_12;
    }
  }

  if (*(v1 + 64) != *(v2 + 64))
  {
LABEL_12:
    v5 = 0;
    return v5 & 1;
  }

  v4 = dispatch thunk of _ViewList_ID_Views.isEqual(to:)();

  if (v4)
  {

    v5 = dispatch thunk of _ViewList_ID_Views.isEqual(to:)();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

double DropPlaceholderListModifier.PlaceholderViews.__ivar_destroyer()
{

  return result;
}

double DropPlaceholderListModifier.PlaceholderViews.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

void *one-time initialization function for coordinateSpace(double a1)
{
  lazy protocol witness table accessor for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace();
  result = AnyHashable.init<A>(_:)();
  byte_1EAA25790 = 0;
  return result;
}

uint64_t closure #1 in DragReorderableLayoutCoordinator.dragBegan(at:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  v19 = *(a1 + 104);
  v20 = v4;
  v21 = v5;
  LOBYTE(v22) = v6;
  v23 = v7;
  v24 = v8;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v10 = v9;

  MEMORY[0x18D00ACC0](&v25, v10);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  v15 = *(a1 + 144);
  v19 = *(a1 + 104);
  v20 = v11;
  v21 = v12;
  LOBYTE(v22) = v13;
  v23 = v14;
  v24 = v15;

  MEMORY[0x18D00ACC0](&v25, v10);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  swift_beginAccess();
  outlined init with copy of _Benchmark(a1 + 48, &v19);
  v16 = v22;
  v17 = v23;
  __swift_project_boxed_opaque_existential_1(&v19, v22);
  (*(v17 + 56))(a2, v16, v17);
  return __swift_destroy_boxed_opaque_existential_1(&v19);
}

uint64_t DragReorderableLayoutCoordinator.validateDrop(info:)(void *a1)
{
  DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(a1);
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();

      UIDropSession.itemProviders(for:)(v4);
      v6 = v5;
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    outlined init with copy of _Benchmark(v1 + 48, v11);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v7 = (*(v9 + 8))(v6, v8, v9);

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = DropInfoAdaptor.localDragContexts.getter();
  if (*(v2 + 16))
  {
    outlined init with copy of Any(v2 + 32, &v9);

    if ((swift_dynamicCast() & 1) != 0 && v8[0] == *(v1 + 16))
    {
      return v8[1];
    }
  }

  else
  {
  }

  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v9 = *(v1 + 104);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v8);
  return v8[0];
}

double DragReorderableLayoutCoordinator.dropEntered(info:)(void *a1)
{
  v3 = DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(a1);
  v5 = v4;
  DragReorderableLayoutCoordinator.destination(at:sourceIndex:)(a1, v3, v4 & 1);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(v1 + 136);
  v9 = *(v1 + 144);
  v16 = *(v1 + 104);
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v10 = MEMORY[0x18D00ACC0](&v14);
  v11 = v15;
  if (v5)
  {
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v3 != v14)
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_7:
    *(v1 + 200) = 0u;
    *(v1 + 184) = 0u;
    *(v1 + 168) = 0u;
    *(v1 + 216) = 1;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v10);
  *&v16 = 0;
  swift_allocObject();
  swift_weakInit();

  Transaction.addAnimationListener(allFinished:)();

  static Animation.default.getter();
  v12 = Transaction.animation.setter();
  ++*(v1 + 232);
  MEMORY[0x1EEE9AC00](v12);
  withTransaction<A>(_:_:)();

  return result;
}

void DragReorderableLayoutCoordinator.destination(at:sourceIndex:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI32DragReorderableLayoutCoordinator33_1B0CD5E46D60A3CA175732DDA089171CLLC10ChildFrameVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  if (*(v3 + 232))
  {
    swift_beginAccess();
    v8 = *(v3 + 224);
    v9 = *(v3 + 120);
    v10 = *(v3 + 128);
    v11 = *(v3 + 136);
    v12 = *(v3 + 144);
    v64 = *(v3 + 104);
    *&v65 = v9;
    BYTE8(v65) = v10;
    v66[0] = v11;
    LOBYTE(v66[1]) = v12;
    type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
    v14 = v13;

    MEMORY[0x18D00ACC0](v71, v14);
    if (BYTE8(v71[0]))
    {
      v15 = 0.0;
      v54 = *(v3 + 176);
      v55 = *(v3 + 168);
      v52 = *(v3 + 200);
      v53 = *(v3 + 184);
      v51 = *(v3 + 216);
      v68 = v51;
    }

    else
    {
      if (*(v8 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(*&v71[0]), (v18 & 1) != 0))
      {
        v19 = 0;
        v20 = *(v8 + 56) + 48 * v17;
        v54 = *(v20 + 8);
        v55 = *v20;
        v52 = *(v20 + 32);
        v53 = *(v20 + 16);
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v52 = 0u;
        v53 = 0u;
        v19 = 1;
      }

      v15 = 0.0;
      v51 = v19;
      v68 = v19;
    }

    v16 = 1;
  }

  else
  {
    DragReorderableLayoutCoordinator.childFrames()(&v64);
    v15 = *(&v64 + 1);
    v8 = v64;
    v16 = v65;
    v54 = v66[0];
    v55 = *(&v65 + 1);
    v52 = *&v66[3];
    v53 = *&v66[1];
    v51 = v67;
    v68 = v67;
    swift_beginAccess();
    *(v3 + 224) = v8;
  }

  static Update.ensure<A>(_:)();
  v21 = v64;
  v57 = v65;
  v60 = *v66;
  v63 = *(__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 11);
  if (one-time initialization token for coordinateSpace != -1)
  {
    swift_once();
  }

  v64 = v21;
  v65 = v57;
  *v66 = v60;
  type metadata accessor for CGPoint(0);
  ApplyViewTransform.convert(to:transform:)();
  if (*(v3 + 40))
  {
    static Spacing.defaultValue.getter();
    v23 = v22;
  }

  else
  {
    v23 = *(v3 + 32);
  }

  v24 = *(v3 + 152);
  if (*(v3 + 160))
  {
    v24 = v15;
  }

  v61 = *(v3 + 160) & v16;
  if (v61)
  {
    v25 = 0.0;
  }

  else
  {
    v15 = v24;
    v25 = v24;
  }

  v26 = *(v8 + 16);
  if (v26)
  {
    v49 = v15;
    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_7SwiftUI32DragReorderableLayoutCoordinator33_1B0CD5E46D60A3CA175732DDA089171CLLC10ChildFrameV5valuet_Tt1g5(v26, 0);
    v58 = specialized Sequence._copySequenceContents(initializing:)(&v64, (v27 + 4), v26, v8);
    v28 = v64;

    outlined consume of Set<UIPress>.Iterator._Variant(v28);
    if (v58 != v26)
    {
      __break(1u);
LABEL_46:
      __break(1u);

      __break(1u);
      return;
    }

    v15 = v49;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  *&v64 = v27;
  specialized MutableCollection<>.sort(by:)(&v64);

  v29 = *(v64 + 16);
  v30 = v64 - 24;
  v31 = v29 + 1;
  while (1)
  {
    v26 = --v31 == 0;
    if (!v31)
    {
      break;
    }

    v32 = (v30 + 56);
    v25 = v25 + v23 + *(v30 + 104);
    v30 += 56;
    if (*(&v63 + 1) < v25)
    {
      v33 = *v32;
LABEL_33:

      goto LABEL_34;
    }
  }

  if (!v29)
  {
    v33 = 0;
    goto LABEL_33;
  }

  v34 = v15;
  v35 = *(v64 + 56 * v29 - 24);

  v33 = v35 + 1;
  if (__OFADD__(v35, 1))
  {
    goto LABEL_46;
  }

  LODWORD(v26) = 0;
  v15 = v34;
LABEL_34:
  *(v4 + 152) = v15;
  *(v4 + 160) = v61;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DropInfoAdaptor.originContentPath.getter(v69);
  if (v70 == 255)
  {
    v41 = v54;
    v40 = v55;
    v43 = v52;
    v42 = v53;
  }

  else
  {
    v71[0] = v69[0];
    v71[1] = v69[1];
    v72 = v70;
    Path.boundingRect.getter();
    v50 = v36;
    v59 = v38;
    v62 = v37;
    v56 = v39;
    outlined destroy of Path?(v69, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
    v41 = v54;
    v40 = v55;
    v43 = v52;
    v42 = v53;
    if ((v51 & 1) == 0)
    {
      *&v42 = v62;
      *(&v42 + 1) = v50;
      *&v43 = v59;
      *(&v43 + 1) = v56;
    }
  }

  v44 = v68;
  *(v4 + 168) = v40;
  *(v4 + 176) = v41;
  *(v4 + 184) = v42;
  *(v4 + 200) = v43;
  *(v4 + 216) = v44;
  if (a3)
  {
    v45 = 0;
  }

  else
  {
    v45 = a2;
  }

  if (v26)
  {
    v46 = v45;
  }

  else
  {
    v46 = v33;
  }

  swift_beginAccess();
  outlined init with copy of _Benchmark(v4 + 48, &v64);
  v47 = *(&v65 + 1);
  v48 = v66[0];
  __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
  (*(v48 + 64))(a2, a3 & 1, v46, v47, v48);

  __swift_destroy_boxed_opaque_existential_1(&v64);
}

double DragReorderableLayoutCoordinator.withStateAnimation(_:)()
{
  swift_allocObject();
  swift_weakInit();

  Transaction.addAnimationListener(allFinished:)();

  static Animation.default.getter();
  Transaction.animation.setter();
  ++*(v0 + 232);
  withTransaction<A>(_:_:)();

  return result;
}

uint64_t DragReorderableLayoutCoordinator.dropUpdated(info:)@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v6 = DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(a1);
  v7 = v5 & 1;
  if (v5)
  {
    v8 = 1538;
  }

  else
  {
    v8 = 1539;
  }

  DragReorderableLayoutCoordinator.destination(at:sourceIndex:)(a1, v6, v5 & 1);
  v10 = v9;
  v15[0] = 0;
  swift_allocObject();
  swift_weakInit();

  Transaction.addAnimationListener(allFinished:)();

  static Animation.default.getter();
  Transaction.animation.setter();
  ++*(v2 + 232);
  withTransaction<A>(_:_:)();

  swift_beginAccess();
  outlined init with copy of _Benchmark(v2 + 48, v15);
  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v12 + 72))(v6, v7, v10, v11, v12, v13[11], v13[12]);
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  *a2 = v8;
  return result;
}

double closure #1 in DragReorderableLayoutCoordinator.dropEntered(info:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v5 = v4;

  MEMORY[0x18D00ACC0](&v7, v5);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  MEMORY[0x18D00ACC0](&v7, v5);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  return result;
}

double closure #1 in DragReorderableLayoutCoordinator.dropExited(info:)(uint64_t a1)
{
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v2 = v1;

  MEMORY[0x18D00ACC0](&v4, v2);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  return result;
}

uint64_t DragReorderableLayoutCoordinator.performDrop(info:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 232);
  *(v1 + 232) = 0;
  v5 = DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(a1);
  DragReorderableLayoutCoordinator.destination(at:sourceIndex:)(a1, v5, v6 & 1);
  v8 = v7;
  *(v1 + 232) = v4;
  if (v4)
  {
    v9 = *(v1 + 120);
    v10 = *(v1 + 128);
    v11 = *(v1 + 136);
    v12 = *(v1 + 144);
    v55 = *(v1 + 104);
    v56 = v9;
    LOBYTE(v57) = v10;
    v58 = v11;
    v59 = v12;
    type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
    v14 = v13;
    MEMORY[0x18D00ACC0](&v60);
    if ((v62 & 1) != 0 || v8 != v61)
    {
      v15 = *(v1 + 120);
      v16 = *(v1 + 128);
      v17 = *(v1 + 136);
      v18 = *(v1 + 144);
      v55 = *(v1 + 104);
      v56 = v15;
      LOBYTE(v57) = v16;
      v58 = v17;
      v59 = v18;
      MEMORY[0x18D00ACC0](&v60, v14);
      if ((v62 & 1) == 0)
      {
        v19 = v61;
        swift_beginAccess();
        v20 = *(v1 + 224);
        if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v22 & 1) != 0))
        {
          v23 = 0;
          v24 = *(v20 + 56) + 48 * v21;
          v53 = *(v24 + 16);
          v54 = *v24;
          v25 = *(v24 + 32);
          v26 = *(v24 + 40);
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v53 = 0u;
          v54 = 0u;
          v23 = 1;
        }

        swift_endAccess();
        *(v2 + 184) = v53;
        *(v2 + 168) = v54;
        *(v2 + 200) = v25;
        *(v2 + 208) = v26;
        *(v2 + 216) = v23;
      }
    }
  }

  v27 = DragReorderableLayoutCoordinator.sourceIndexForDrop(_:)(a1);
  if (v28)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();

      UIDropSession.itemProviders(for:)(v29);
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    outlined init with copy of _Benchmark(v2 + 48, &v55);
    v43 = v57;
    v44 = v58;
    __swift_project_boxed_opaque_existential_1(&v55, v57);
    v39 = (*(v44 + 16))(v8, v31, v43, v44);

    goto LABEL_18;
  }

  if (v27 != v8)
  {
    v40 = v27;
    swift_beginAccess();
    outlined init with copy of _Benchmark(v2 + 48, &v55);
    v41 = v57;
    v42 = v58;
    __swift_project_boxed_opaque_existential_1(&v55, v57);
    v39 = (*(v42 + 80))(v40, v8, v41, v42);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(&v55);
    v45 = *(v2 + 112);
    v46 = *(v2 + 120);
    v47 = *(v2 + 128);
    v48 = *(v2 + 136);
    v49 = *(v2 + 144);
    *&v55 = *(v2 + 104);
    *(&v55 + 1) = v45;
    v56 = v46;
    LOBYTE(v57) = v47;
    v58 = v48;
    v59 = v49;
    type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
    v51 = v50;

    MEMORY[0x18D00ACC0](&v60, v51);
    dispatch thunk of AnyLocation.set(_:transaction:)();

    return v39 & 1;
  }

  v32 = *(v2 + 112);
  v33 = *(v2 + 120);
  v34 = *(v2 + 128);
  v35 = *(v2 + 136);
  v36 = *(v2 + 144);
  *&v55 = *(v2 + 104);
  *(&v55 + 1) = v32;
  v56 = v33;
  LOBYTE(v57) = v34;
  v58 = v35;
  v59 = v36;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v38 = v37;

  MEMORY[0x18D00ACC0](&v60, v38);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  v39 = 0;
  return v39 & 1;
}

double closure #1 in DragReorderableLayoutCoordinator.withStateAnimation(_:)(uint64_t a1)
{

  static Update.enqueueAction(reason:_:)();

  return result;
}

double closure #1 in closure #1 in DragReorderableLayoutCoordinator.withStateAnimation(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    --*(Strong + 232);
  }

  return result;
}

uint64_t DragReorderableLayoutCoordinator.childFrames()@<X0>(uint64_t a1@<X8>)
{
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI32DragReorderableLayoutCoordinator33_1B0CD5E46D60A3CA175732DDA089171CLLC10ChildFrameVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  result = static Update.ensure<A>(_:)();
  if (!(v6 >> 62))
  {
    v2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:

    *a1 = v7;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 1;
    return result;
  }

  result = __CocoaSet.count.getter();
  v2 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18D00E9C0](v3);
      }

      else
      {
      }

      ++v3;
      MEMORY[0x1EEE9AC00](v4);
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    while (v2 != v3);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void closure #1 in DragReorderableLayoutCoordinator.childFrames()(uint64_t *a2@<X8>)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  if (AGGraphGetWeakValue())
  {
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v3;
}

void closure #2 in DragReorderableLayoutCoordinator.childFrames()(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, _BYTE *a6@<X8>)
{
  type metadata accessor for DragReorderableChildResponder(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v33 = 0u;
    v34 = 0u;
    v35 = 6;
    *&v28 = 1;
    lazy protocol witness table accessor for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace();

    AnyHashable.init<A>(_:)();
    LOBYTE(v40) = 0;
    MultiViewResponder.addContentPath(to:kind:in:observer:)();
    outlined destroy of CoordinateSpace(&v36);
    v13 = *(v12 + 232);
    v14 = *(v12 + 240);
    memset(v41, 0, sizeof(v41));
    v42 = 6;
    Path.boundingRect.getter();
    *&v36 = v13;
    *(&v36 + 1) = v14;
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v40 = v18;
    v19 = v14 + v16;
    if (!(*(a2 + 8) & 1 | (v14 + v16 < *a2)))
    {
      v19 = *a2;
    }

    *a2 = v19;
    *(a2 + 8) = 0;
    if (*(v12 + 248) == 1 && (*a3 = v13, *(a3 + 8) = v14, *(a3 + 16) = v15, *(a3 + 24) = v16, *(a3 + 32) = v17, *(a3 + 40) = v18, *(a3 + 48) = 0, v20 = *(a4 + 120), v21 = *(a4 + 128), v22 = *(a4 + 136), v23 = *(a4 + 144), v28 = *(a4 + 104), v29 = v20, v30 = v21, v31 = v22, v32 = v23, type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](&v26), (v27 & 1) == 0))
    {
      v24 = v26;
    }

    else
    {
      if (*(v12 + 224) == 1)
      {
        outlined destroy of Path(v41);

        goto LABEL_11;
      }

      v24 = *(v12 + 216);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v28 = *a5;
    *a5 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v36, v24, isUniquelyReferenced_nonNull_native);

    *a5 = v28;

    outlined destroy of Path(v41);
  }

LABEL_11:
  *a6 = 0;
}

void closure #1 in DragReorderableLayoutCoordinator.destination(at:sourceIndex:)(uint64_t a2@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *(WeakValue + 8);
    *a2 = *WeakValue;
    *(a2 + 8) = v4;
    v5 = *(WeakValue + 32);
    *(a2 + 16) = *(WeakValue + 16);
    *(a2 + 32) = v5;
  }

  else
  {
    __break(1u);
  }
}

double DragReorderableLayoutCoordinator.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata completion function for DragReorderableLayoutAdaptor(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DragReorderableLayoutAdaptor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((((((((((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    v19 = ((v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = ((v19 + 39) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v20 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    *(v24 + 8) = *(v25 + 8);
    *v24 = v26;
    v27 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
    v29 = *(v28 + 24);
    *(v27 + 24) = v29;
    *(v27 + 32) = *(v28 + 32);
    v30 = **(v29 - 8);

    v30(v27, v28, v29);
    v31 = ((v27 + 47) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v28 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    *((v31 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for DragReorderableLayoutAdaptor(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = ((((*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31;

  return __swift_destroy_boxed_opaque_existential_1((v9 & 0xFFFFFFFFFFFFFFF8));
}

uint64_t initializeWithCopy for DragReorderableLayoutAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  *v20 = *v21;
  *(v20 + 8) = v22;
  v23 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v24 + 24);
  *(v23 + 24) = v25;
  *(v23 + 32) = *(v24 + 32);
  v26 = **(v25 - 8);

  v26(v23, v24, v25);
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for DragReorderableLayoutAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *(v15 + 8) = v16[1];
  *(v15 + 16) = v16[2];
  *(v15 + 24) = v16[3];
  v15 += 39;
  v17 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v18 = (v15 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v15 & 0xFFFFFFFFFFFFFFF8) = *v17;
  v19 = (v15 & 0xFFFFFFFFFFFFFFF8) + 31;

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *v20 = v22;
  __swift_assign_boxed_opaque_existential_1((v19 & 0xFFFFFFFFFFFFFFF8), ((v17 + 31) & 0xFFFFFFFFFFFFFFF8));
  v23 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((((v17 + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for DragReorderableLayoutAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  *v20 = *v21;
  *(v20 + 8) = v22;
  v23 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v24;
  v25 = *(v24 + 16);
  *(v23 + 32) = *(v24 + 32);
  *v23 = v26;
  *(v23 + 16) = v25;
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DragReorderableLayoutAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *(v15 + 8) = v16[1];
  *(v15 + 16) = v16[2];
  *(v15 + 24) = v16[3];
  v15 += 39;
  v17 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v18 = v17;
  v19 = (v15 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v15 & 0xFFFFFFFFFFFFFFF8) = *v17;
  v20 = (v15 & 0xFFFFFFFFFFFFFFF8) + 31;

  v21 = v19 & 0xFFFFFFFFFFFFFFF8;
  v22 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v21 + 8) = *(v22 + 8);
  *v21 = v23;
  v24 = v20 & 0xFFFFFFFFFFFFFFF8;
  v25 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v20 & 0xFFFFFFFFFFFFFFF8));
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = (((v20 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v25 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  *((v28 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DragReorderableLayoutAdaptor(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
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

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1);
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_BYTE *storeEnumTagSinglePayload for DragReorderableLayoutAdaptor(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((((((v11 + 7 + v14) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&result[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v16] = 0;
      }

      else if (v20)
      {
        result[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = (&result[v13] & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v27 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v27 = a2 - 1;
          }

          *(((&result[v15] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) = v27;
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *&result[v16] = v22;
    }

    else
    {
      *&result[v16] = v22;
    }
  }

  else if (v20)
  {
    result[v16] = v22;
  }

  return result;
}

uint64_t protocol witness for DropDelegate.dropExited(info:) in conformance DragReorderableLayoutCoordinator()
{
  v1 = *v0;
  DragReorderableLayoutCoordinator.withStateAnimation(_:)();
  *(v1 + 152) = 0;
  *(v1 + 160) = 1;
  swift_beginAccess();
  outlined init with copy of _Benchmark(v1 + 48, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 24))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
    v5 = 0;
    v18 = *(v3 + 112);
    *(result + 6) = *(v3 + 96);
    *(result + 7) = v18;
    v19 = *(v3 + 144);
    *(result + 8) = *(v3 + 128);
    *(result + 9) = v19;
    v20 = *(v3 + 48);
    *(result + 2) = *(v3 + 32);
    *(result + 3) = v20;
    v21 = *(v3 + 80);
    *(result + 4) = *(v3 + 64);
    *(result + 5) = v21;
    v22 = *(v3 + 16);
    *result = *v3;
    *(result + 1) = v22;
    result[20] = 0;
    return v5;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_11:
    v13 = *(v3 + 112);
    *(v4 + 6) = *(v3 + 96);
    *(v4 + 7) = v13;
    v14 = *(v3 + 144);
    *(v4 + 8) = *(v3 + 128);
    *(v4 + 9) = v14;
    v15 = *(v3 + 48);
    *(v4 + 2) = *(v3 + 32);
    *(v4 + 3) = v15;
    v16 = *(v3 + 80);
    *(v4 + 4) = *(v3 + 64);
    *(v4 + 5) = v16;
    v17 = *(v3 + 16);
    *v4 = *v3;
    *(v4 + 1) = v17;
    v4[20] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 0;
    v8 = *(v3 + 64);
    v9 = *(v3 + 72);
    v10 = a3 - 1;
    while (1)
    {
      if (v8 == v7)
      {
        v23 = *(v3 + 112);
        *(v4 + 6) = *(v3 + 96);
        *(v4 + 7) = v23;
        v24 = *(v3 + 144);
        *(v4 + 8) = *(v3 + 128);
        *(v4 + 9) = v24;
        v25 = *(v3 + 48);
        *(v4 + 2) = *(v3 + 32);
        *(v4 + 3) = v25;
        v26 = *(v3 + 80);
        *(v4 + 4) = *(v3 + 64);
        *(v4 + 5) = v26;
        v27 = *(v3 + 16);
        *v4 = *v3;
        *(v4 + 1) = v27;
        v5 = v8;
        v4[20] = v8;
        return v5;
      }

      result = v9(&v28, v7);
      if (v7 >= v8)
      {
        break;
      }

      v11 = v29;
      v31 = v28;
      v32 = v29;
      v12 = v30;
      v33 = v30;
      *v6 = v28;
      *(v6 + 16) = v11;
      *(v6 + 32) = v12;
      if (v10 == v7)
      {
        goto LABEL_11;
      }

      v6 += 40;
      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      memmove(v11, (*(a4 + 56) + 80 * (v17 | (v12 << 6))), 0x49uLL);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 80;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v26 = type metadata accessor for PlatformItemList.Item(0);
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a5 & 1) == 0)
  {
    AGGraphGetWeakValue();
  }

  if (!a2)
  {
    a3 = 0;
    goto LABEL_26;
  }

  if (!a3)
  {
LABEL_26:
    *a1 = a4;
    *(a1 + 8) = a5 & 1;
    *(a1 + 16) = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = a3;
    a3 = 0;
    v17 = (v13 + 56);
    v23 = v16;
    v24 = a1;
    v25 = v16 - 1;
    if ((a5 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a3 != *(a4 + 16))
    {

      v18 = a4;
      while (a3 < *(v18 + 16))
      {
        v22 = *(v13 + 72);
        outlined init with copy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v22 * a3, v12, type metadata accessor for PlatformItemList.Item);

        if ((a5 & 1) == 0)
        {
          AGGraphGetWeakValue();
        }

        (*v17)(v12, 0, 1, v26);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v12, v15, type metadata accessor for PlatformItemList.Item);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v15, a2, type metadata accessor for PlatformItemList.Item);
        if (v25 == a3)
        {
          a3 = v23;
          goto LABEL_25;
        }

        a2 += v22;
        ++a3;
        if (a5)
        {
          goto LABEL_7;
        }

LABEL_9:
        WeakValue = AGGraphGetWeakValue();
        if (WeakValue)
        {
          if (a3 == *(*WeakValue + 16))
          {
            goto LABEL_23;
          }
        }

        else
        {
          v20 = *(MEMORY[0x1E69E7CC0] + 16);

          if (a3 == v20)
          {
            goto LABEL_23;
          }
        }

        v21 = AGGraphGetWeakValue();
        if (v21)
        {
          v18 = *v21;
        }

        else
        {
          v18 = MEMORY[0x1E69E7CC0];
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_23:
    (*v17)(v12, 1, 1, v26);
    outlined destroy of TableColumnCollection.Entry?(v12, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
LABEL_25:
    a1 = v24;
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
}

void specialized Sequence._copySequenceContents(initializing:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = type metadata accessor for TableColumnCollection.Visitor(0);
  MEMORY[0x1EEE9AC00](v42);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v46 = type metadata accessor for TableColumnCollection.Entry(0);
  v14 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[1];
  v52 = *v3;
  *v53 = v17;
  *&v53[9] = *(v3 + 25);
  v54 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v38 = a1;
      v45 = (v14 + 56);
      v40 = (v14 + 48);
      v18 = 1;
      v44 = a3;
      v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      while (1)
      {
        outlined init with copy of TableColumnCollection.Backing(&v52, v50);
        if (v51)
        {
          v19 = *(*&v50[0] + 16);
        }

        else
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v50, v47);
          v20 = v48;
          v21 = v49;
          __swift_project_boxed_opaque_existential_1(v47, v48);
          v19 = (*(v21 + 8))(v20, v21);
          __swift_destroy_boxed_opaque_existential_1(v47);
        }

        a1 = v18 - 1;
        if (v18 - 1 == v19)
        {
          (*v45)(v13, 1, 1, v46);
          outlined destroy of TableColumnCollection.Entry?(v13, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry);
LABEL_24:
          a1 = v38;
          goto LABEL_25;
        }

        outlined init with copy of TableColumnCollection.Backing(&v52, v50);
        if (v51)
        {
          if (a1 >= *(*&v50[0] + 16))
          {
            goto LABEL_27;
          }

          outlined init with copy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(*&v50[0] + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a1, v13, type metadata accessor for TableColumnCollection.Entry);
        }

        else
        {
          v43 = a2;
          v22 = v14;
          v23 = v13;
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v50, v47);
          v24 = v42;
          v25 = *(v42 + 20);
          v26 = v46;
          (*v45)(v8 + v25, 1, 1, v46);
          *v8 = a1;
          v27 = v48;
          v28 = v49;
          __swift_project_boxed_opaque_existential_1(v47, v48);
          TableColumnList.visitColumns<A>(applying:from:)(v8, v18 - 1, v27, v24, v28, &protocol witness table for TableColumnCollection.Visitor);
          v29 = v41;
          _s7SwiftUI17_DraggingModifierVSgWOcTm_0(v8 + v25, v41, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry, MEMORY[0x1E69E6720], _sSay7SwiftUI13ViewResponderCGMaTm_1);
          if ((*v40)(v29, 1, v26) == 1)
          {
            goto LABEL_29;
          }

          outlined destroy of DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>(v8, type metadata accessor for TableColumnCollection.Visitor);
          v30 = v29;
          v13 = v23;
          _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v30, v23, type metadata accessor for TableColumnCollection.Entry);
          __swift_destroy_boxed_opaque_existential_1(v47);
          a3 = v44;
          v14 = v22;
          a2 = v43;
          v16 = v39;
        }

        outlined init with copy of TableColumnCollection.Backing(&v52, v50);
        if (v51)
        {
          v31 = *(*&v50[0] + 16);
        }

        else
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v50, v47);
          v32 = v48;
          v33 = v49;
          __swift_project_boxed_opaque_existential_1(v47, v48);
          v34 = *(v33 + 8);
          v35 = v33;
          a3 = v44;
          v31 = v34(v32, v35);
          __swift_destroy_boxed_opaque_existential_1(v47);
        }

        if (a1 >= v31)
        {
          break;
        }

        v54 = v18;
        (*v45)(v13, 0, 1, v46);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v13, v16, type metadata accessor for TableColumnCollection.Entry);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v16, a2, type metadata accessor for TableColumnCollection.Entry);
        if (a3 == v18)
        {
          goto LABEL_24;
        }

        a2 += *(v14 + 72);
        if (__OFADD__(v18++, 1))
        {
          __break(1u);
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_25:
    v37 = *v53;
    *a1 = v52;
    *(a1 + 16) = v37;
    *(a1 + 32) = *&v53[16];
    *(a1 + 48) = v54;
  }
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for _ArchivedView?, type metadata accessor for _ArchivedView, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for _ArchivedView(0);
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v26 - v16;
  type metadata accessor for IndexingIterator<_ArchivedViewStates>(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v4, v20, type metadata accessor for _ArchivedViewStates);
  v36 = *(v18 + 44);
  *&v20[v36] = 0;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v20, v28, type metadata accessor for IndexingIterator<_ArchivedViewStates>);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = *&v20[*(type metadata accessor for _ArchivedViewStates(0) + 20) + 8];
    v22 = *(v35 + 16);
    if (v22)
    {
      v23 = 0;
      v33 = (v38 + 56);
      v29 = v38 + 48;
      v27 = a3;
      v32 = a3 - 1;
      v39 = xmmword_18CD77CA0;
      v24 = v30;
      v34 = v20;
      v31 = v22;
      while (1)
      {
        _ArchivedViewStates.state(at:)(v23, v9);
        (*v33)(v9, 0, 1, v10);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v9, v12, type metadata accessor for _ArchivedView);
        v20 = v34;
        result = _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v12, v24, type metadata accessor for _ArchivedView);
        if (v23 >= *(v35 + 16))
        {
          break;
        }

        v25 = v37;
        *&v20[v36] = v23 + 1;
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v24, v25, type metadata accessor for _ArchivedView);
        _s7SwiftUI16PlatformItemListV0D0VWObTm_1(v25, a2, type metadata accessor for _ArchivedView);
        if (v32 == v23)
        {
          a3 = v27;
          goto LABEL_12;
        }

        a2 += *(v38 + 72);
        ++v23;
        v22 = v31;
        if (v31 == v23)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v22;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}