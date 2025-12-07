BOOL AccessibilityProperties.merge(with:)(uint64_t a1)
{
  _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v80 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80 - v13;
  v15 = AccessibilityProperties.isEmpty.getter();
  if (v15)
  {
    return (v15 & 1) == 0;
  }

  v84 = v15;
  specialized Optional<A>.merge(with:)(*(a1 + 112), *(a1 + 120));
  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  if ((*(v1 + 56) & 1) == 0)
  {
    if (*(a1 + 56))
    {
      goto LABEL_8;
    }

    v18 = *(v1 + 48);
    v19 = v18 | ~v16;
    v16 |= v18;
    v17 = v19 & *(v1 + 40) | v17 & ~v18;
    goto LABEL_7;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
LABEL_7:
    *(v1 + 40) = v17;
    *(v1 + 48) = v16;
    *(v1 + 56) = 0;
  }

LABEL_8:
  if (!*(v1 + 24))
  {
    v30 = *(a1 + 32);
    *(v1 + 24) = *(a1 + 24);
    *(v1 + 32) = v30;

LABEL_13:
    v31 = *(v1 + 240);
    v92[6] = *(v1 + 224);
    v92[7] = v31;
    v92[8] = *(v1 + 256);
    LOBYTE(v92[9]) = *(v1 + 272);
    v32 = *(v1 + 176);
    v92[2] = *(v1 + 160);
    v92[3] = v32;
    v33 = *(v1 + 208);
    v92[4] = *(v1 + 192);
    v92[5] = v33;
    v34 = *(v1 + 144);
    v92[0] = *(v1 + 128);
    v92[1] = v34;
    if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v92) == 1)
    {
      v35 = *(a1 + 240);
      v90[6] = *(a1 + 224);
      v90[7] = v35;
      v90[8] = *(a1 + 256);
      LOBYTE(v90[9]) = *(a1 + 272);
      v36 = *(a1 + 176);
      v90[2] = *(a1 + 160);
      v90[3] = v36;
      v37 = *(a1 + 208);
      v90[4] = *(a1 + 192);
      v90[5] = v37;
      v38 = *(a1 + 144);
      v90[0] = *(a1 + 128);
      v90[1] = v38;
      v39 = *(v1 + 240);
      v91[6] = *(v1 + 224);
      v91[7] = v39;
      v91[8] = *(v1 + 256);
      LOBYTE(v91[9]) = *(v1 + 272);
      v40 = *(v1 + 176);
      v91[2] = *(v1 + 160);
      v91[3] = v40;
      v41 = *(v1 + 208);
      v91[4] = *(v1 + 192);
      v91[5] = v41;
      v42 = *(v1 + 144);
      v91[0] = *(v1 + 128);
      v91[1] = v42;
      v43 = MEMORY[0x1E6980B48];
      outlined init with copy of AccessibilityTextLayoutProperties?(v90, v89, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, MEMORY[0x1E6980B48], type metadata accessor for AnyAccessibilityValue?);
      _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v91, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, v43, type metadata accessor for AnyAccessibilityValue?);
      v44 = v90[7];
      *(v1 + 224) = v90[6];
      *(v1 + 240) = v44;
      *(v1 + 256) = v90[8];
      *(v1 + 272) = v90[9];
      v45 = v90[3];
      *(v1 + 160) = v90[2];
      *(v1 + 176) = v45;
      v46 = v90[5];
      *(v1 + 192) = v90[4];
      *(v1 + 208) = v46;
      v28 = v90[0];
      v29 = v90[1];
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v20 = *(a1 + 24);
  if (specialized Optional<A>.merge(with:)(v20, *(a1 + 32)))
  {
    _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v91);
    v21 = *(v1 + 240);
    v92[6] = *(v1 + 224);
    v92[7] = v21;
    v92[8] = *(v1 + 256);
    LOBYTE(v92[9]) = *(v1 + 272);
    v22 = *(v1 + 176);
    v92[2] = *(v1 + 160);
    v92[3] = v22;
    v23 = *(v1 + 208);
    v92[4] = *(v1 + 192);
    v92[5] = v23;
    v24 = *(v1 + 144);
    v92[0] = *(v1 + 128);
    v92[1] = v24;
    _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v92, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, MEMORY[0x1E6980B48], type metadata accessor for AnyAccessibilityValue?);
    v25 = v91[7];
    *(v1 + 224) = v91[6];
    *(v1 + 240) = v25;
    *(v1 + 256) = v91[8];
    *(v1 + 272) = v91[9];
    v26 = v91[3];
    *(v1 + 160) = v91[2];
    *(v1 + 176) = v26;
    v27 = v91[5];
    *(v1 + 192) = v91[4];
    *(v1 + 208) = v27;
    v28 = v91[0];
    v29 = v91[1];
LABEL_15:
    *(v1 + 128) = v28;
    *(v1 + 144) = v29;
    goto LABEL_16;
  }

  if (!v20)
  {
    goto LABEL_13;
  }

LABEL_16:
  specialized Optional<A>.merge(with:)(a1 + 64);
  v47 = *(AccessibilityProperties.hints.getter() + 16);

  if (!v47)
  {
    v48 = AccessibilityProperties.hints.getter();
    MEMORY[0x18D008650](v48);
  }

  specialized Optional<A>.merge(with:)(*a1, *(a1 + 8), *(a1 + 16));
  AccessibilityProperties.subscript.getter();
  v81 = v5;
  if (*(&v92[1] + 1))
  {
    outlined consume of Text?(*&v92[0], *(&v92[0] + 1), v92[1], *(&v92[1] + 1));
  }

  else
  {
    AccessibilityProperties.subscript.getter();
    if (*(&v92[1] + 1))
    {
      v91[0] = v92[0];
      v91[1] = v92[1];
      AccessibilityProperties.subscript.setter();
    }
  }

  AccessibilityProperties.activationPointStorage.getter();
  v93[0] = v92[0];
  v93[1] = v92[1];
  v94 = *&v92[2];
  v49 = AccessibilityProperties.activationPointStorage.modify();
  specialized Optional<A>.merge(with:)(v93);
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v93, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, MEMORY[0x1E6980BB8], type metadata accessor for AnyAccessibilityValue?);
  v49(v91, 0);
  AccessibilityProperties.subscript.getter();
  v82 = v14;
  v83 = v8;
  if (*&v92[0])
  {
  }

  else
  {
    AccessibilityProperties.subscript.getter();
    if (*&v92[0])
    {
      *&v91[0] = *&v92[0];
      AccessibilityProperties.subscript.setter();
    }
  }

  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  v50 = *&v92[0];
  AccessibilityProperties.subscript.getter();
  specialized Array.append<A>(contentsOf:)(v50);
  *&v91[0] = *&v92[0];
  AccessibilityProperties.subscript.setter();
  AccessibilityProperties.customAttributes.getter();
  v51 = *&v91[0];
  v52 = AccessibilityProperties.customAttributes.modify();
  specialized Optional<A>.merge(with:)(v51);

  v52(v92, 0);
  AccessibilityProperties.subscript.getter();
  if (BYTE8(v92[0]))
  {
    AccessibilityProperties.subscript.getter();
    if ((BYTE8(v92[0]) & 1) == 0)
    {
      *&v91[0] = *&v92[0];
      BYTE8(v91[0]) = 0;
      AccessibilityProperties.subscript.setter();
    }
  }

  AccessibilityProperties.subscript.getter();
  if (BYTE8(v92[0]))
  {
    AccessibilityProperties.subscript.getter();
    if ((BYTE8(v92[0]) & 1) == 0)
    {
      *&v91[0] = *&v92[0];
      BYTE8(v91[0]) = 0;
      AccessibilityProperties.subscript.setter();
    }
  }

  AccessibilityProperties.subscript.getter();
  memcpy(v92, v91, 0x138uLL);
  if (getEnumTag for AccessibilityActionCategory.Category(v92) == 1)
  {
    memcpy(v89, v91, sizeof(v89));
    _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v89, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], type metadata accessor for AnyAccessibilityValue?);
    AccessibilityProperties.subscript.getter();
    memcpy(v90, v88, 0x138uLL);
    if (getEnumTag for AccessibilityActionCategory.Category(v90) == 1)
    {
      memcpy(v87, v88, sizeof(v87));
      v53 = MEMORY[0x1E6980BD8];
      v54 = v87;
    }

    else
    {
      memcpy(v86, v88, sizeof(v86));
      memcpy(v85, v88, sizeof(v85));
      v55 = MEMORY[0x1E6980BD8];
      outlined init with copy of AccessibilityTextLayoutProperties?(v86, v87, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, MEMORY[0x1E6980BD8], type metadata accessor for AnyAccessibilityValue?);
      AccessibilityProperties.subscript.setter();
      memcpy(v87, v88, sizeof(v87));
      v54 = v87;
      v53 = v55;
    }
  }

  else
  {
    memcpy(v90, v91, 0x138uLL);
    v53 = MEMORY[0x1E6980BD8];
    v54 = v90;
  }

  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v54, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, v53, type metadata accessor for AnyAccessibilityValue?);
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableCollectionKey and conformance AccessibilityProperties.ScrollableCollectionKey();
  AccessibilityProperties.subscript.getter();
  v56 = *(&v91[1] + 1);
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v91, &lazy cache variable for type metadata for ScrollableCollection?, type metadata accessor for ScrollableCollection, _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
  if (!v56)
  {
    AccessibilityProperties.subscript.getter();
    outlined init with copy of AccessibilityTextLayoutProperties?(v91, v90, &lazy cache variable for type metadata for ScrollableCollection?, type metadata accessor for ScrollableCollection, _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
    if (*(&v90[1] + 1))
    {
      _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v90, &lazy cache variable for type metadata for ScrollableCollection?, type metadata accessor for ScrollableCollection, _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
      outlined init with copy of AccessibilityTextLayoutProperties?(v91, v90, &lazy cache variable for type metadata for ScrollableCollection?, type metadata accessor for ScrollableCollection, _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
      AccessibilityProperties.subscript.setter();
    }

    _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v91, &lazy cache variable for type metadata for ScrollableCollection?, type metadata accessor for ScrollableCollection, _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
  }

  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
  AccessibilityProperties.subscript.getter();
  v57 = BYTE6(v91[4]);
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v91, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
  if (v57 > 0xFE)
  {
    AccessibilityProperties.subscript.getter();
    outlined init with copy of AccessibilityTextLayoutProperties?(v91, v90, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
    if (BYTE6(v90[4]) == 255)
    {
      v58 = MEMORY[0x1E6980998];
    }

    else
    {
      v59 = MEMORY[0x1E6980998];
      _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v90, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
      outlined init with copy of AccessibilityTextLayoutProperties?(v91, v90, &lazy cache variable for type metadata for AccessibilityScrollableContext?, v59, type metadata accessor for AnyAccessibilityValue?);
      AccessibilityProperties.subscript.setter();
      v58 = v59;
    }

    _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v91, &lazy cache variable for type metadata for AccessibilityScrollableContext?, v58, type metadata accessor for AnyAccessibilityValue?);
  }

  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey();
  AccessibilityProperties.subscript.getter();
  if (*(&v91[1] + 1))
  {
    outlined consume of Text?(*&v91[0], *(&v91[0] + 1), v91[1], *(&v91[1] + 1));
  }

  else
  {
    AccessibilityProperties.subscript.getter();
    if (*(&v91[1] + 1))
    {
      v90[0] = v91[0];
      v90[1] = v91[1];
      AccessibilityProperties.subscript.setter();
    }
  }

  lazy protocol witness table accessor for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey();
  AccessibilityProperties.subscript.getter();
  if (LOBYTE(v91[0]) == 2)
  {
    AccessibilityProperties.subscript.getter();
    if (LOBYTE(v91[0]) != 2)
    {
      v90[0] = v91[0];
      AccessibilityProperties.subscript.setter();
    }
  }

  v60 = v11;
  lazy protocol witness table accessor for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey();
  AccessibilityProperties.subscript.getter();
  v61 = v91[0];
  v62 = v91[1];
  AccessibilityProperties.subscript.getter();
  v64 = *(&v91[0] + 1);
  v63 = *&v91[0];
  if (v91[1])
  {
    if (v62)
    {
      v65 = 1;
    }

    else
    {
      v65 = 0;
      v64 = *(&v61 + 1);
      v63 = v61;
    }
  }

  else
  {
    v65 = 0;
    if ((v62 & 1) == 0)
    {
      v64 = (*(&v91[0] + 1) | *(&v61 + 1)) & ~*&v91[0];
      v63 = (*&v91[0] | v61) & ~v64;
    }
  }

  v66 = v83;
  *&v91[0] = v63;
  *(&v91[0] + 1) = v64;
  LOBYTE(v91[1]) = v65;
  AccessibilityProperties.subscript.setter();
  lazy protocol witness table accessor for type AccessibilityProperties.UIKitBridgedInteractionKey and conformance AccessibilityProperties.UIKitBridgedInteractionKey();
  AccessibilityProperties.subscript.getter();
  v67 = v60;
  if (*&v91[0])
  {
  }

  else
  {
    AccessibilityProperties.subscript.getter();
    if (*&v91[0])
    {
      *&v90[0] = *&v91[0];
      AccessibilityProperties.subscript.setter();
    }
  }

  v68 = v82;
  AccessibilityProperties.subscript.getter();
  v69 = type metadata accessor for LinkDestination.Configuration();
  v70 = *(*(v69 - 8) + 48);
  v71 = v70(v68, 1, v69);
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v68, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810], _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
  if (v71 == 1)
  {
    AccessibilityProperties.subscript.getter();
    outlined init with copy of AccessibilityTextLayoutProperties?(v67, v66, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810], _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
    if (v70(v66, 1, v69) != 1)
    {
      v72 = MEMORY[0x1E697E810];
      _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v66, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810], _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
      outlined init with copy of AccessibilityTextLayoutProperties?(v67, v81, &lazy cache variable for type metadata for LinkDestination.Configuration?, v72, _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
      AccessibilityProperties.subscript.setter();
    }

    _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v67, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810], _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
  }

  v73 = AccessibilityProperties.customContentList.getter();
  v74 = AccessibilityProperties.customContentList.modify();
  specialized Array.append<A>(contentsOf:)(v73);
  v74(v91, 0);
  AccessibilityProperties.subscript.getter();
  if (LOBYTE(v91[0]) == 8)
  {
    AccessibilityProperties.subscript.getter();
    if (LOBYTE(v91[0]) != 8)
    {
      LOBYTE(v90[0]) = v91[0];
      AccessibilityProperties.subscript.setter();
    }
  }

  AccessibilityProperties.subscript.getter();
  if (LOBYTE(v91[0]) == 7)
  {
    AccessibilityProperties.subscript.getter();
    if (LOBYTE(v91[0]) != 7)
    {
      LOBYTE(v90[0]) = v91[0];
      AccessibilityProperties.subscript.setter();
    }
  }

  lazy protocol witness table accessor for type AccessibilityProperties.RotorInfoKey and conformance AccessibilityProperties.RotorInfoKey();
  AccessibilityProperties.subscript.getter();
  v75 = *&v91[0];
  AccessibilityProperties.subscript.getter();
  specialized Array.append<A>(contentsOf:)(v75);
  *&v90[0] = *&v91[0];
  AccessibilityProperties.subscript.setter();
  v76 = AccessibilityProperties.images.getter();
  v77 = AccessibilityProperties.images.modify();
  specialized Array.append<A>(contentsOf:)(v76);
  v77(v91, 0);
  AccessibilityProperties.subscript.getter();
  if (*&v91[0])
  {
  }

  else
  {
    AccessibilityProperties.subscript.getter();
    if (*&v91[0])
    {
      *&v90[0] = *&v91[0];
      AccessibilityProperties.subscript.setter();
    }
  }

  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
  AccessibilityProperties.subscript.getter();
  v78 = BYTE8(v91[2]);
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v91, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, type metadata accessor for AnyAccessibilityValue?);
  if (v78 == 255)
  {
    AccessibilityProperties.subscript.getter();
    outlined init with copy of AccessibilityTextLayoutProperties?(v91, v90, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, type metadata accessor for AnyAccessibilityValue?);
    if (BYTE8(v90[2]) != 255)
    {
      _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v90, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, type metadata accessor for AnyAccessibilityValue?);
      outlined init with copy of AccessibilityTextLayoutProperties?(v91, v90, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, type metadata accessor for AnyAccessibilityValue?);
      AccessibilityProperties.subscript.setter();
    }

    _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v91, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, type metadata accessor for AnyAccessibilityValue?);
  }

  lazy protocol witness table accessor for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey();
  AccessibilityProperties.subscript.getter();
  if (*&v91[0])
  {
  }

  else
  {
    AccessibilityProperties.subscript.getter();
    if (*&v91[0])
    {
      *&v90[0] = *&v91[0];
      AccessibilityProperties.subscript.setter();
    }
  }

  AccessibilityProperties.subscript.getter();
  if (LOBYTE(v91[0]) == 2)
  {
    AccessibilityProperties.subscript.getter();
    if (LOBYTE(v91[0]) != 2)
    {
      LOBYTE(v90[0]) = v91[0];
      AccessibilityProperties.subscript.setter();
    }
  }

  lazy protocol witness table accessor for type AccessibilityProperties.TemporalStateKey and conformance AccessibilityProperties.TemporalStateKey();
  AccessibilityProperties.subscript.getter();
  if (BYTE4(v91[1]))
  {
    AccessibilityProperties.subscript.getter();
    if ((BYTE4(v91[1]) & 1) == 0)
    {
      v90[0] = v91[0];
      LODWORD(v90[1]) = v91[1];
      BYTE4(v90[1]) = 0;
      AccessibilityProperties.subscript.setter();
    }
  }

  lazy protocol witness table accessor for type AccessibilityProperties.AutomationVisibilityKey and conformance AccessibilityProperties.AutomationVisibilityKey();
  AccessibilityProperties.subscript.getter();
  if (BYTE8(v91[0]))
  {
    AccessibilityProperties.subscript.getter();
    if ((BYTE8(v91[0]) & 1) == 0)
    {
      *&v90[0] = *&v91[0];
      BYTE8(v90[0]) = 0;
      AccessibilityProperties.subscript.setter();
    }
  }

  LOBYTE(v15) = v84;
  return (v15 & 1) == 0;
}

uint64_t specialized Optional<A>.merge(with:)(uint64_t a1, char a2)
{
  v4 = *v2;
  if (!*v2)
  {
    if (a1)
    {

      *v2 = a1;
      *(v2 + 8) = a2;
      v6 = 1;
      return v6 & 1;
    }

LABEL_6:
    v6 = 0;
    return v6 & 1;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 8);

  *v2 = 0;
  *(v2 + 8) = 0;

  v6 = AccessibilityLabelStorage.merge(with:)();

  *v2 = v4;
  *(v2 + 8) = v5;
  return v6 & 1;
}

BOOL specialized Optional<A>.merge(with:)(uint64_t a1, char a2)
{
  if (*(v2 + 8))
  {
    if (a2)
    {
      return 0;
    }

    v4 = 1;
  }

  else
  {
    if (a2)
    {
      return 0;
    }

    v5 = HIDWORD(*v2);
    v6 = v5 | HIDWORD(a1);
    v7 = a1 & ~v5;
    LODWORD(v5) = HIDWORD(a1) & ~v5;
    v8 = v5 == 0;
    v9 = *v2 & ~v5 | v7;
    v4 = v8 || v7 == 0;
    a1 = v9 | (v6 << 32);
  }

  *v2 = a1;
  *(v2 + 8) = 0;
  return v4;
}

uint64_t outlined init with copy of AccessibilityTextLayoutProperties?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of AccessibilityTextLayoutProperties?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t specialized Optional<A>.merge(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69804E0];
  outlined init with copy of AccessibilityTextLayoutProperties?(v2, &v13, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], type metadata accessor for AnyAccessibilityValue?);
  outlined init with copy of AccessibilityTextLayoutProperties?(a1, &v16, &lazy cache variable for type metadata for AccessibilityValueStorage?, v4, type metadata accessor for AnyAccessibilityValue?);
  if (*(&v14 + 1) != 1)
  {
    if (*(&v17 + 1) != 1)
    {
      v6 = MEMORY[0x1E69804E0];
      _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v2, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], type metadata accessor for AnyAccessibilityValue?);
      v10 = v13;
      v11 = v14;
      v12 = v15;
      v9[0] = v16;
      v9[1] = v17;
      v9[2] = v18;
      *v2 = 0;
      v2[1] = 0;
      v2[2] = 0;
      v2[3] = 1;
      v2[4] = 0;
      v2[5] = 0;
      _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v2, &lazy cache variable for type metadata for AccessibilityValueStorage?, v6, type metadata accessor for AnyAccessibilityValue?);
      v5 = AccessibilityValueStorage.merge(with:)();
      outlined destroy of AccessibilityValueStorage(v9);
      v7 = v11;
      *v2 = v10;
      *(v2 + 1) = v7;
      *(v2 + 2) = v12;
      return v5 & 1;
    }

    outlined destroy of AccessibilityValueStorage(&v13);
    goto LABEL_6;
  }

  if (*(&v17 + 1) == 1)
  {
LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v2, &lazy cache variable for type metadata for AccessibilityValueStorage?, v4, type metadata accessor for AnyAccessibilityValue?);
  outlined init with copy of AccessibilityTextLayoutProperties?(a1, v2, &lazy cache variable for type metadata for AccessibilityValueStorage?, v4, type metadata accessor for AnyAccessibilityValue?);
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(&v16, &lazy cache variable for type metadata for AccessibilityValueStorage?, v4, type metadata accessor for AnyAccessibilityValue?);
  v5 = 1;
  return v5 & 1;
}

{
  v2 = *v1;
  if (!*v1)
  {
    if (a1)
    {

      *v1 = a1;
      v3 = 1;
      return v3 & 1;
    }

LABEL_6:
    v3 = 0;
    return v3 & 1;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v6 = v2;
  *v1 = 0;

  v3 = AccessibilityCustomAttributes.merge(with:)();

  *v1 = v6;
  return v3 & 1;
}

uint64_t specialized Optional<A>.merge(with:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3[1];
  if (!v6)
  {
    if (a2)
    {

      *v3 = a1;
      v3[1] = a2;
      v9 = 1;
      *(v3 + 16) = a3;
      return v9 & 1;
    }

LABEL_6:
    v9 = 0;
    return v9 & 1;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v7 = *v3;
  v8 = *(v3 + 16);

  *v3 = 0;
  v3[1] = 0;
  *(v3 + 16) = 0;

  v9 = AccessibilityIdentifierStorage.merge(with:)();

  *v3 = v7;
  v3[1] = v6;
  *(v3 + 16) = v8;
  return v9 & 1;
}

uint64_t specialized Optional<A>.merge(with:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[3];
  v16 = a1[2];
  v11 = *v1;
  if (!v5)
  {
    outlined copy of AccessibilityActivationPointStorage?(v11, v4, v6, 0);
    if (v10)
    {
      outlined init with copy of AccessibilityTextLayoutProperties?(a1, &v17, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, MEMORY[0x1E6980BB8], type metadata accessor for AnyAccessibilityValue?);
      outlined consume of AccessibilityActivationPointStorage?(v3, v4, v6, 0);
      v14 = *(a1 + 1);
      *v1 = *a1;
      *(v1 + 1) = v14;
      v1[4] = a1[4];
      outlined init with copy of AccessibilityTextLayoutProperties?(a1, &v17, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, MEMORY[0x1E6980BB8], type metadata accessor for AnyAccessibilityValue?);
      outlined consume of AccessibilityActivationPointStorage?(v9, v8, v16, v10);
      v12 = 1;
      return v12 & 1;
    }

    outlined init with copy of AccessibilityTextLayoutProperties?(a1, &v17, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, MEMORY[0x1E6980BB8], type metadata accessor for AnyAccessibilityValue?);
LABEL_8:
    v12 = 0;
    return v12 & 1;
  }

  outlined copy of AccessibilityActivationPointStorage?(v11, v4, v6, v5);
  if (!v10)
  {
    outlined init with copy of AccessibilityTextLayoutProperties?(a1, &v17, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, MEMORY[0x1E6980BB8], type metadata accessor for AnyAccessibilityValue?);
    outlined consume of AccessibilityActivationPointStorage?(v3, v4, v6, v5);
    goto LABEL_8;
  }

  outlined init with copy of AccessibilityTextLayoutProperties?(a1, &v17, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, MEMORY[0x1E6980BB8], type metadata accessor for AnyAccessibilityValue?);
  outlined consume of AccessibilityActivationPointStorage?(v3, v4, v6, v5);
  *&v17 = v3;
  *(&v17 + 1) = v4;
  v18 = v6;
  *&v19 = v5;
  *(&v19 + 1) = v7;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v1[4] = 0;
  outlined consume of AccessibilityActivationPointStorage?(0, 0, 0, 0);
  v12 = AccessibilityActivationPointStorage.merge(with:)();

  v13 = v18;
  *v1 = v17;
  v1[2] = v13;
  *(v1 + 3) = v19;
  return v12 & 1;
}

double outlined copy of AccessibilityActivationPointStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.ScrollableCollectionKey and conformance AccessibilityProperties.ScrollableCollectionKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.ScrollableCollectionKey and conformance AccessibilityProperties.ScrollableCollectionKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.ScrollableCollectionKey and conformance AccessibilityProperties.ScrollableCollectionKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.ScrollableCollectionKey, &type metadata for AccessibilityProperties.ScrollableCollectionKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.ScrollableCollectionKey and conformance AccessibilityProperties.ScrollableCollectionKey);
  }

  return result;
}

unint64_t type metadata accessor for ScrollableCollection()
{
  result = lazy cache variable for type metadata for ScrollableCollection;
  if (!lazy cache variable for type metadata for ScrollableCollection)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ScrollableCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.ScrollableContextKey, &type metadata for AccessibilityProperties.ScrollableContextKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey);
  }

  return result;
}

double protocol witness for static AccessibilityPropertiesKey.defaultValue.getter in conformance AccessibilityProperties.ScrollableContextKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 68) = 0;
  *(a1 + 64) = 0;
  *(a1 + 70) = -1;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.ScrollableStatusKey, &type metadata for AccessibilityProperties.ScrollableStatusKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.TouchInfoKey, &type metadata for AccessibilityProperties.TouchInfoKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TopPaddingForBadgeModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double protocol witness for static AccessibilityPropertiesKey.defaultValue.getter in conformance AccessibilityProperties.TouchInfoKey@<D0>(_OWORD *a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_18CD79D60;
  return result;
}

uint64_t getEnumTagSinglePayload for TopPaddingForBadgeModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.UIKitBridgedInteractionKey and conformance AccessibilityProperties.UIKitBridgedInteractionKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.UIKitBridgedInteractionKey and conformance AccessibilityProperties.UIKitBridgedInteractionKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.UIKitBridgedInteractionKey and conformance AccessibilityProperties.UIKitBridgedInteractionKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.UIKitBridgedInteractionKey, &type metadata for AccessibilityProperties.UIKitBridgedInteractionKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.UIKitBridgedInteractionKey and conformance AccessibilityProperties.UIKitBridgedInteractionKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.RotorInfoKey and conformance AccessibilityProperties.RotorInfoKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.RotorInfoKey and conformance AccessibilityProperties.RotorInfoKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.RotorInfoKey and conformance AccessibilityProperties.RotorInfoKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.RotorInfoKey, &type metadata for AccessibilityProperties.RotorInfoKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.RotorInfoKey and conformance AccessibilityProperties.RotorInfoKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.TableContextKey, &type metadata for AccessibilityProperties.TableContextKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey);
  }

  return result;
}

double protocol witness for static AccessibilityPropertiesKey.defaultValue.getter in conformance AccessibilityProperties.TableContextKey@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = -1;
  return result;
}

uint64_t storeEnumTagSinglePayload for AccessibilityTableContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityTableContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.BridgedElementKey, &type metadata for AccessibilityProperties.BridgedElementKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.TemporalStateKey and conformance AccessibilityProperties.TemporalStateKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.TemporalStateKey and conformance AccessibilityProperties.TemporalStateKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.TemporalStateKey and conformance AccessibilityProperties.TemporalStateKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.TemporalStateKey, &type metadata for AccessibilityProperties.TemporalStateKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.TemporalStateKey and conformance AccessibilityProperties.TemporalStateKey);
  }

  return result;
}

void protocol witness for static AccessibilityPropertiesKey.defaultValue.getter in conformance AccessibilityProperties.TemporalStateKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.AutomationVisibilityKey and conformance AccessibilityProperties.AutomationVisibilityKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.AutomationVisibilityKey and conformance AccessibilityProperties.AutomationVisibilityKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.AutomationVisibilityKey and conformance AccessibilityProperties.AutomationVisibilityKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.AutomationVisibilityKey, &type metadata for AccessibilityProperties.AutomationVisibilityKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.AutomationVisibilityKey and conformance AccessibilityProperties.AutomationVisibilityKey);
  }

  return result;
}

BOOL DisplayListTransform.mergeAttachments(list:attachments:frame:)(uint64_t *a1, uint64_t a2, double a3, double a4, CGFloat a5, CGFloat a6)
{
  v10 = type metadata accessor for CodableAccessibilityAttachmentStorage();
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessibilityNodeAttachment.Storage();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessibilityNodeAttachment();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = *a1;
  if (*(*a1 + 16) != 1)
  {
    return 0;
  }

  v42 = a1;
  v43 = &v38 - v22;
  v44 = v21;
  v45 = a2;
  v24 = *(v23 + 48);
  v25 = *(v23 + 80);
  v48[2] = *(v23 + 64);
  v49[0] = v25;
  *(v49 + 12) = *(v23 + 92);
  v48[0] = *(v23 + 32);
  v48[1] = v24;
  DisplayList.Item.frame.getter();
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  v54.size.width = a5;
  v54.size.height = a6;
  result = CGRectEqualToRect(v53, v54);
  if (!result)
  {
    return result;
  }

  if (!*(v23 + 16))
  {
    __break(1u);
    return result;
  }

  v27 = *(v23 + 48);
  v51 = *(v23 + 64);
  *&v52[12] = *(v23 + 92);
  *v52 = *(v23 + 80);
  v50[0] = *(v23 + 32);
  v50[1] = v27;
  if ((*&v52[16] & 0xC0000000) != 0x40000000)
  {
    return 0;
  }

  v28 = *(&v51 + 1);
  v29 = *&v52[8];
  v30 = v52[4];
  LODWORD(v41) = *v52;
  if (v52[4] != 14)
  {
    outlined init with copy of DisplayList.Item(v50, v48);
    outlined consume of DisplayList.Effect(v28, v41, v30);
LABEL_12:

    return 0;
  }

  v40 = *&v52[16];
  v31 = *(*(&v51 + 1) + 16);
  outlined init with copy of DisplayList.Item(v50, v48);

  outlined consume of DisplayList.Effect(v28, v41, 14);
  if (*(*v45 + 16) != 1 || *(v31 + 16) != 1)
  {

    goto LABEL_12;
  }

  outlined init with copy of AccessibilityAttachment(*v45 + 32, v48);
  outlined init with copy of (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)(v31 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v19, MEMORY[0x1E6980770]);

  v32 = v43;
  outlined init with take of AccessibilityNodeAttachment(v19, v43, MEMORY[0x1E6980770]);
  if (*(v32 + *(v44 + 24)) == 1)
  {

    outlined destroy of PlatformItemList.Item(v32, MEMORY[0x1E6980770]);
    outlined destroy of AccessibilityAttachment(v48);
    return 0;
  }

  v41 = v29;
  v39 = HIDWORD(v40);

  v33 = v42;

  type metadata accessor for AccessibilityAttachment?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_18CD63400;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_18CD63410;
  outlined init with copy of (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)(v32, v15, MEMORY[0x1E6980768]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(v47, v15, sizeof(v47));
  }

  else
  {
    (*(v46 + 32))(v12, v15, v10);
    lazy protocol witness table accessor for type UIKitAccessibilityPropertyApplicator and conformance UIKitAccessibilityPropertyApplicator();
    AccessibilityAttachment.init<A>(_:applicator:)();
  }

  memcpy((v35 + 32), v47, 0x128uLL);
  outlined init with copy of AccessibilityAttachment(v48, v35 + 328);
  static AccessibilityAttachment.combine(_:)(v35, (v34 + 32));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of AccessibilityAttachment(v48);
  *v45 = v34;
  v36 = v40;
  *v33 = v41;
  *(v33 + 4) = v36;
  *(v33 + 3) = v39;
  v37 = *(v43 + *(v44 + 20));
  outlined destroy of PlatformItemList.Item(v43, MEMORY[0x1E6980770]);
  return v37;
}

uint64_t assignWithCopy for ResolvedPlaybackButton(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v65 = a3;
  v66 = a2;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for ClosedRange<Date>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v7, 1, v9);
  v14 = v12(v8, 1, v10);
  if (v13)
  {
    if (!v14)
    {
      v15 = type metadata accessor for Date();
      v16 = *(*(v15 - 8) + 16);
      v16(v7, v8, v15);
      v16(&v7[*(v10 + 36)], &v8[*(v10 + 36)], v15);
      (*(v11 + 56))(v7, 0, 1, v10);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v14)
  {
    outlined destroy of PlaybackButton.State(v7, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v7, v8, *(*(v17 - 8) + 64));
    goto LABEL_7;
  }

  v63 = type metadata accessor for Date();
  v64 = *(*(v63 - 8) + 24);
  v64(v7, v8, v63);
  v64(&v7[*(v10 + 36)], &v8[*(v10 + 36)], v63);
LABEL_7:
  v18 = type metadata accessor for PlaybackButton.Configuration(0);
  v19 = v18[5];
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(&v7[v19], 2, v20);
  v24 = v22(&v8[v19], 2, v20);
  if (!v23)
  {
    if (!v24)
    {
      (*(v21 + 24))(&v7[v19], &v8[v19], v20);
      goto LABEL_13;
    }

    (*(v21 + 8))(&v7[v19], v20);
    goto LABEL_12;
  }

  if (v24)
  {
LABEL_12:
    v25 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v7[v19], &v8[v19], *(*(v25 - 8) + 64));
    goto LABEL_13;
  }

  (*(v21 + 16))(&v7[v19], &v8[v19], v20);
  (*(v21 + 56))(&v7[v19], 0, 2, v20);
LABEL_13:
  v26 = v18[6];
  v27 = &v7[v26];
  v28 = &v8[v26];
  *v27 = *v28;
  *(v27 + 1) = *(v28 + 1);

  v7[v18[7]] = v8[v18[7]];
  v7[v18[8]] = v8[v18[8]];
  v29 = v18[9];
  v30 = &v7[v29];
  v31 = &v8[v29];
  *v30 = *v31;
  *(v30 + 1) = *(v31 + 1);
  v32 = v18[10];
  v33 = &v7[v32];
  v34 = &v8[v32];
  v35 = *&v8[v32];
  v36 = *(v34 + 1);
  v37 = v34[16];
  outlined copy of Environment<AppIntentExecutor?>.Content(v35, v36, v37, outlined copy of AppIntentExecutor?);
  v38 = *v33;
  v39 = *(v33 + 1);
  v40 = v33[16];
  *v33 = v35;
  *(v33 + 1) = v36;
  v33[16] = v37;
  outlined consume of Environment<AppIntentExecutor?>.Content(v38, v39, v40, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v41 = *(v34 + 3);
  v42 = *(v33 + 3);
  *(v33 + 3) = v41;
  v43 = v41;

  v44 = *(v34 + 5);
  *(v33 + 4) = *(v34 + 4);
  *(v33 + 5) = v44;

  v45 = v65[6];
  v46 = a1 + v45;
  v47 = (v66 + v45);
  v48 = *(v66 + v45);
  v49 = *(v66 + v45 + 8);
  v50 = *(v66 + v45 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(v48, v49, v50, outlined copy of AppIntentExecutor?);
  v51 = *v46;
  v52 = *(v46 + 8);
  v53 = *(v46 + 16);
  *v46 = v48;
  *(v46 + 8) = v49;
  *(v46 + 16) = v50;
  outlined consume of Environment<AppIntentExecutor?>.Content(v51, v52, v53, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v54 = v47[3];
  v55 = *(v46 + 24);
  *(v46 + 24) = v54;
  v56 = v54;

  v57 = v47[5];
  *(v46 + 32) = v47[4];
  *(v46 + 40) = v57;

  v58 = v65[7];
  v59 = a1 + v58;
  v60 = (v66 + v58);
  v61 = *v60;
  *(v59 + 16) = *(v60 + 16);
  *v59 = v61;
  *(a1 + v65[8]) = *(v66 + v65[8]);
  *(a1 + v65[9]) = *(v66 + v65[9]);
  return a1;
}

uint64_t assignWithCopy for ResolvedPlaybackButtonContent(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  v5 = *(a3 + 20);
  v6 = (a1 + v5);
  v7 = a2 + v5;
  type metadata accessor for ClosedRange<Date>(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v6, 1, v8);
  v13 = v11(v7, 1, v9);
  if (v12)
  {
    if (!v13)
    {
      v14 = type metadata accessor for Date();
      v15 = *(*(v14 - 8) + 16);
      v15(v6, v7, v14);
      v15(&v6[*(v9 + 36)], &v7[*(v9 + 36)], v14);
      (*(v10 + 56))(v6, 0, 1, v9);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    outlined destroy of PlaybackButton.State(v6, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v6, v7, *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  v45 = type metadata accessor for Date();
  v46 = *(*(v45 - 8) + 24);
  v46(v6, v7, v45);
  v46(&v6[*(v9 + 36)], &v7[*(v9 + 36)], v45);
LABEL_7:
  v17 = type metadata accessor for PlaybackButton.Configuration(0);
  v18 = v17[5];
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(&v6[v18], 2, v19);
  v23 = v21(&v7[v18], 2, v19);
  if (!v22)
  {
    if (!v23)
    {
      (*(v20 + 24))(&v6[v18], &v7[v18], v19);
      goto LABEL_13;
    }

    (*(v20 + 8))(&v6[v18], v19);
    goto LABEL_12;
  }

  if (v23)
  {
LABEL_12:
    v24 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v6[v18], &v7[v18], *(*(v24 - 8) + 64));
    goto LABEL_13;
  }

  (*(v20 + 16))(&v6[v18], &v7[v18], v19);
  (*(v20 + 56))(&v6[v18], 0, 2, v19);
LABEL_13:
  v25 = v17[6];
  v26 = &v6[v25];
  v27 = &v7[v25];
  *v26 = *v27;
  *(v26 + 1) = *(v27 + 1);

  v6[v17[7]] = v7[v17[7]];
  v6[v17[8]] = v7[v17[8]];
  v28 = v17[9];
  v29 = &v6[v28];
  v30 = &v7[v28];
  *v29 = *v30;
  *(v29 + 1) = *(v30 + 1);
  v31 = v17[10];
  v32 = &v6[v31];
  v33 = &v7[v31];
  v34 = *&v7[v31];
  v35 = *&v7[v31 + 8];
  v36 = v33[16];
  outlined copy of Environment<AppIntentExecutor?>.Content(v34, v35, v36, outlined copy of AppIntentExecutor?);
  v37 = *v32;
  v38 = *(v32 + 1);
  v39 = v32[16];
  *v32 = v34;
  *(v32 + 1) = v35;
  v32[16] = v36;
  outlined consume of Environment<AppIntentExecutor?>.Content(v37, v38, v39, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v40 = *(v33 + 3);
  v41 = *(v32 + 3);
  *(v32 + 3) = v40;
  v42 = v40;

  v43 = *(v33 + 5);
  *(v32 + 4) = *(v33 + 4);
  *(v32 + 5) = v43;

  return a1;
}

uint64_t specialized AccessibilityNode.updateAttachment(_:isInPlatformItemList:token:merge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *(a2 + 8);
  v30 = *a2;
  v31 = v8;
  AccessibilityNode.attachmentIndex(of:)(&v30);
  if (v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v13 = *&v3[v12];
  if (v11 >= *(v13 + 16))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = 320 * v11;
  outlined init with copy of AccessibilityAttachmentStorage(v13 + 320 * v11 + 32, &v30);
  if ((static AccessibilityAttachment.== infix(_:_:)() & 1) == 0)
  {
    outlined init with copy of AccessibilityProperties(&v30, v26);
    outlined init with copy of AccessibilityProperties(a1, v29);
    lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
    AccessibilityProperties.subscript.getter();
    v15 = *(v28[0] + 16);

    AccessibilityProperties.subscript.getter();
    v3 = *(v28[0] + 16);

    if (v15 == v3)
    {
      AccessibilityProperties.subscript.getter();
      v16 = *(v28[0] + 16);

      if (v16 || (AccessibilityProperties.subscript.getter(), v3 = *(v28[0] + 16), , v3))
      {
        v17 = MEMORY[0x1E69E7CC0];
        v28[0] = MEMORY[0x1E69E7CC0];
        AccessibilityProperties.subscript.setter();
        v28[0] = v17;
        v3 = v29;
        AccessibilityProperties.subscript.setter();
        if (MEMORY[0x18D008630](v26, v29))
        {
          if ((a3 & 1) == 0)
          {
            swift_beginAccess();
            v3 = *&v5[v12];
            result = swift_isUniquelyReferenced_nonNull_native();
            *&v5[v12] = v3;
            if (result)
            {
LABEL_31:
              if (v11 >= *(v3 + 2))
              {
                __break(1u);
                return result;
              }

              outlined assign with copy of AccessibilityAttachment(a1, &v3[v4 + 32]);
              *&v5[v12] = v3;
              swift_endAccess();
              goto LABEL_36;
            }

LABEL_46:
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v3 = result;
            *&v5[v12] = result;
            goto LABEL_31;
          }

          swift_beginAccess();
          a3 = *&v5[v12];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v5[v12] = a3;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_14:
            if (v11 < *(a3 + 16))
            {
              AccessibilityProperties.merge(with:)(a1);
              v19 = AccessibilityAttachment.platformElement.getter();
              if (v19)
              {
              }

              else if (AccessibilityAttachment.platformElement.getter())
              {
                AccessibilityAttachment.platformElement.setter();
              }

              *&v5[v12] = a3;
              swift_endAccess();
LABEL_36:
              outlined destroy of AccessibilityProperties(v29);
              outlined destroy of AccessibilityProperties(v26);
              memset(v28, 0, sizeof(v28));
              v25 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
              swift_beginAccess();
              outlined assign with copy of AccessibilityAttachment?(v28, &v5[v25]);
              swift_endAccess();
              outlined destroy of AnyAccessibilityValue?(v28, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
              v5[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
              goto LABEL_5;
            }

            __break(1u);
            goto LABEL_46;
          }

LABEL_44:
          a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
          *&v5[v12] = a3;
          goto LABEL_14;
        }
      }
    }

    outlined destroy of AccessibilityProperties(v29);
    outlined destroy of AccessibilityProperties(v26);
    v20 = *&v5[v12];
    if (v11 < *(v20 + 16))
    {
      outlined init with copy of AccessibilityAttachment(v20 + v4 + 32, v28);
      outlined init with copy of AccessibilityAttachment(a1, v26);
      v3 = v5;
      AccessibilityNode.scheduleNotifyForAttachmentChange(from:to:)(v28, v26);
      outlined destroy of AnyAccessibilityValue?(v26, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
      if ((a3 & 1) == 0)
      {
        swift_beginAccess();
        v3 = *&v5[v12];
        v23 = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v12] = v3;
        if (v23)
        {
LABEL_24:
          if (v11 >= *(v3 + 2))
          {
            __break(1u);
            goto LABEL_44;
          }

          outlined assign with copy of AccessibilityAttachment(a1, &v3[v4 + 32]);
          *&v5[v12] = v3;
          swift_endAccess();
LABEL_29:
          outlined destroy of AccessibilityAttachment(v28);
          outlined destroy of AccessibilityAttachmentStorage(&v30);
          v27 = 0;
          memset(v26, 0, sizeof(v26));
          v24 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
          swift_beginAccess();
          outlined assign with copy of AccessibilityAttachment?(v26, &v5[v24]);
          swift_endAccess();
          outlined destroy of AnyAccessibilityValue?(v26, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
          result = 1;
          v5[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
          return result;
        }

LABEL_42:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        *&v5[v12] = v3;
        goto LABEL_24;
      }

      swift_beginAccess();
      a3 = *&v5[v12];
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *&v5[v12] = a3;
      if (v21)
      {
LABEL_20:
        if (v11 < *(a3 + 16))
        {
          AccessibilityProperties.merge(with:)(a1);
          v22 = AccessibilityAttachment.platformElement.getter();
          if (v22)
          {
          }

          else if (AccessibilityAttachment.platformElement.getter())
          {
            AccessibilityAttachment.platformElement.setter();
          }

          *&v5[v12] = a3;
          swift_endAccess();
          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
      *&v5[v12] = a3;
      goto LABEL_20;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_5:
  outlined destroy of AccessibilityAttachmentStorage(&v30);
  return 0;
}

uint64_t AccessibilityNode.scheduleNotifyForAttachmentChange(from:to:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = AccessibilityNode.notifications(from:to:)(a1, a2);
  if (v12[2])
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    aBlock[4] = partial apply for closure #1 in AccessibilityNode.scheduleNotifyForAttachmentChange(from:to:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_55;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x18D00DA20](0, v11, v7, v15);
    _Block_release(v15);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
  }
}

uint64_t sub_18C09305C()
{

  return swift_deallocObject();
}

void *AccessibilityNode.notifications(from:to:)(uint64_t a1, uint64_t a2)
{
  AccessibilityNode.representedElement.getter();
  v5 = v4;
  v6 = [v4 knownRepresentedElement];

  LOBYTE(v37) = 4;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v37, &v46);
  if (v46 == 3)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_50;
  }

  outlined init with copy of AnyAccessibilityValue?(a1 + 64, v54, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  outlined init with copy of AnyAccessibilityValue?(a2, &v46, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (v52)
  {
    outlined init with copy of AccessibilityProperties(&v46, &v37);
    outlined destroy of AccessibilityAttachment(&v46);
    outlined init with copy of AnyAccessibilityValue?(v44, v53, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
    outlined destroy of AccessibilityProperties(&v37);
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v46, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    memset(v53, 0, 24);
    v53[3] = 1;
    v53[4] = 0;
    v53[5] = 0;
  }

  v9 = MEMORY[0x1E69804E0];
  outlined init with copy of AnyAccessibilityValue?(v54, &v46, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  outlined init with copy of AnyAccessibilityValue?(v53, &v49, &lazy cache variable for type metadata for AccessibilityValueStorage?, v9);
  if (v47 == 1)
  {
    outlined destroy of AnyAccessibilityValue?(v53, &lazy cache variable for type metadata for AccessibilityValueStorage?, v9);
    outlined destroy of AnyAccessibilityValue?(v54, &lazy cache variable for type metadata for AccessibilityValueStorage?, v9);
    if (*(&v50 + 1) == 1)
    {
      outlined destroy of AnyAccessibilityValue?(&v46, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
LABEL_16:
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  outlined init with copy of AnyAccessibilityValue?(&v46, &v37, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  if (*(&v50 + 1) == 1)
  {
    outlined destroy of AnyAccessibilityValue?(v53, &lazy cache variable for type metadata for AccessibilityValueStorage?, v9);
    outlined destroy of AnyAccessibilityValue?(v54, &lazy cache variable for type metadata for AccessibilityValueStorage?, v9);
    outlined destroy of AccessibilityValueStorage(&v37);
LABEL_11:
    outlined destroy of (AccessibilityValueStorage?, AccessibilityValueStorage?)(&v46, type metadata accessor for (AccessibilityValueStorage?, AccessibilityValueStorage?));
    goto LABEL_12;
  }

  v36[0] = v49;
  v36[1] = v50;
  v36[2] = v51;
  v13 = MEMORY[0x18D008BD0](&v37, v36);
  outlined destroy of AccessibilityValueStorage(v36);
  v14 = MEMORY[0x1E69804E0];
  outlined destroy of AnyAccessibilityValue?(v53, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  outlined destroy of AnyAccessibilityValue?(v54, &lazy cache variable for type metadata for AccessibilityValueStorage?, v14);
  outlined destroy of AccessibilityValueStorage(&v37);
  outlined destroy of AnyAccessibilityValue?(&v46, &lazy cache variable for type metadata for AccessibilityValueStorage?, v14);
  if (v13)
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = v6;
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v8[2];
  v11 = v8[3];
  if (v12 >= v11 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v8);
  }

  v47 = &type metadata for AccessibilityCore.Notification.ValueChanged;
  v48 = &protocol witness table for AccessibilityCore.Notification.ValueChanged;
  *&v46 = v10;
  v8[2] = v12 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v46, &v8[5 * v12 + 4]);
LABEL_17:
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  outlined init with copy of AnyAccessibilityValue?(a2, &v46, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (!v52)
  {
    outlined destroy of AnyAccessibilityValue?(&v46, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    if (v15)
    {
      goto LABEL_24;
    }

LABEL_45:

    if (*(a1 + 56))
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  outlined init with copy of AccessibilityProperties(&v46, &v37);
  outlined destroy of AccessibilityAttachment(&v46);
  v17 = v39;
  v18 = v40;

  outlined destroy of AccessibilityProperties(&v37);
  if (!v15)
  {
    if (v17)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  *&v46 = v15;
  BYTE8(v46) = v16;
  if (!v17)
  {
LABEL_24:

LABEL_26:

LABEL_27:
    v21 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    }

    v23 = v8[2];
    v22 = v8[3];
    if (v23 >= v22 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v8);
    }

    v47 = &type metadata for AccessibilityCore.Notification.LabelChanged;
    v48 = &protocol witness table for AccessibilityCore.Notification.LabelChanged;
    *&v46 = v21;
    v8[2] = v23 + 1;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v46, &v8[5 * v23 + 4]);
    if (*(a1 + 56))
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v37 = v17;
  v38 = v18;
  swift_bridgeObjectRetain_n();
  v19 = static AccessibilityLabelStorage.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (*(a1 + 56))
  {
LABEL_22:
    v20 = 2;
    goto LABEL_35;
  }

LABEL_32:
  if ((*(a1 + 41) & 0x40) != 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = ~(*(a1 + 48) >> 13) & 2;
  }

LABEL_35:
  outlined init with copy of AnyAccessibilityValue?(a2, &v46, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (!v52)
  {
    outlined destroy of AnyAccessibilityValue?(&v46, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    if (v20 != 2)
    {
LABEL_44:
      v7 = 1;
      goto LABEL_50;
    }

    v24 = 2;
    goto LABEL_48;
  }

  outlined init with copy of AccessibilityProperties(&v46, &v37);
  outlined destroy of AccessibilityAttachment(&v46);
  if (v43)
  {
    v24 = 2;
    goto LABEL_42;
  }

  if ((v41 & 0x40) == 0)
  {
    v24 = ~(v42 >> 13) & 2;
LABEL_42:
    outlined destroy of AccessibilityProperties(&v37);
    if (v20 != 2)
    {
      if (v24 == 2)
      {
        goto LABEL_44;
      }

      goto LABEL_49;
    }

LABEL_48:
    v7 = v24 != 2;
    goto LABEL_50;
  }

  outlined destroy of AccessibilityProperties(&v37);
  v24 = 1;
  if (v20 == 2)
  {
    goto LABEL_48;
  }

LABEL_49:
  v7 = v20 ^ v24;
LABEL_50:
  v25 = 2;
  if ((*(a1 + 120) & 1) == 0)
  {
    v26 = *(a1 + 112);
    if ((v26 & 4) != 0)
    {
      v25 = 1;
    }

    else
    {
      v25 = ~(v26 >> 33) & 2;
    }
  }

  outlined init with copy of AnyAccessibilityValue?(a2, &v46, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (v52)
  {
    outlined init with copy of AccessibilityProperties(&v46, &v37);
    outlined destroy of AccessibilityAttachment(&v46);
    v27 = v44[6];
    v28 = v45;
    outlined destroy of AccessibilityProperties(&v37);
    v29 = ~(v27 >> 33) & 2;
    if ((v27 & 4) != 0)
    {
      v29 = 1;
    }

    if (v28)
    {
      v30 = 2;
    }

    else
    {
      v30 = v29;
    }

    if (v25 == 2)
    {
LABEL_61:
      if (!((v30 != 2) | v7 & 1))
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v46, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    v30 = 2;
    if (v25 == 2)
    {
      goto LABEL_61;
    }
  }

  if (!((v30 == 2) | (v25 ^ v30 | v7) & 1))
  {
LABEL_71:

    return v8;
  }

LABEL_65:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_71;
  }

  v32 = Strong;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
  }

  v34 = v8[2];
  v33 = v8[3];
  if (v34 >= v33 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v8);
  }

  v47 = &type metadata for AccessibilityCore.Notification.LayoutChanged;
  v48 = &protocol witness table for AccessibilityCore.Notification.LayoutChanged;
  *&v46 = 0;
  v8[2] = v34 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v46, &v8[5 * v34 + 4]);
  return v8;
}

void AccessibilityNode.representedElement.getter()
{
  v0 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v1 = *&v6[v0];
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = v1 + 320 * v2 - 288;
    while (v2 <= *(v1 + 16))
    {
      outlined init with copy of AccessibilityAttachment(v3, v7);
      v4 = AccessibilityAttachment.platformElement.getter();
      outlined destroy of AccessibilityAttachment(v7);
      if (v4)
      {

        return;
      }

      v3 -= 320;
      if (!--v2)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v5 = v6;
  }
}

void *assignWithCopy for AccessibilityNodeList(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17AccessibilityNodeC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for AccessibilityNode();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x18D00E9C0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x18D00E9C0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = __CocoaSet.count.getter();
  }

  result = __CocoaSet.count.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityNodeList(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17AccessibilityNodeC_Tt1g5(*a1, *a2) & (v2 == v3);
}

uint64_t ArchivableFactory.makeView()(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return AnyView.init<A>(_:)();
}

double static _ArchivableView._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[1];
  v51 = *a2;
  v52 = v9;
  v10 = a2[3];
  *v53 = a2[2];
  *&v53[16] = v10;
  *&v53[32] = a2[4];
  *&v53[48] = *(a2 + 20);
  v11 = *&v53[4];
  PropertyList.subscript.getter();
  v30 = v8;
  if (v48)
  {
    _ViewOutputs.init()();
    v33 = v48;
    *&v48 = *&v53[16];
    DWORD2(v48) = *&v53[24];
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      _DisplayList_Identity.init()();
      LODWORD(v46[0]) = v48;
      _ViewInputs.pushIdentity(_:)();
      LODWORD(v44[0]) = v8;
      type metadata accessor for _GraphValue();
      v28 = _GraphValue.value.getter();
      v29 = 0;
      v12 = _ViewInputs.animatedPosition()();
      swift_beginAccess();
      v13 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      *v50 = *v53;
      *&v50[16] = *&v53[16];
      *&v50[32] = *&v53[32];
      *&v50[48] = *&v53[48];
      v49 = v52;
      v14 = _ViewInputs.containerPosition.getter();
      v27 = &v27;
      *(&v48 + 4) = __PAIR64__(v12, v28);
      HIDWORD(v48) = v13;
      LODWORD(v49) = v14;
      WORD2(v49) = 0;
      MEMORY[0x1EEE9AC00](v14);
      v25 = type metadata accessor for ArchivableDisplayList(0, a3, a4, v15);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ArchivableDisplayList<A>, v25);
      type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<DisplayList>, MEMORY[0x1E697DCB0]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v48, closure #1 in Attribute.init<A>(_:)partial apply, v24, v25, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
      LOBYTE(v48) = 0;
      PreferencesOutputs.subscript.setter();
    }
  }

  else
  {
    v41 = v51;
    v42 = v52;
    v43 = *v53;
    v39 = *&v53[8];
    v40[0] = *&v53[24];
    *(v40 + 12) = *&v53[36];
    v31 = v8;
    v44[0] = v51;
    v44[1] = v52;
    *v45 = *v53 & 0xFFFFFFFDFFFFFFFFLL;
    *&v45[36] = *&v53[36];
    *&v45[24] = *&v53[24];
    *&v45[8] = *&v53[8];
    v35 = *v45;
    v36 = *&v45[16];
    v37 = *&v45[32];
    v38 = *&v53[48];
    v33 = v51;
    v34 = v52;
    outlined init with copy of _ViewInputs(&v51, &v48);
    outlined init with copy of _ViewInputs(v44, &v48);
    static View.makeView(view:inputs:)();
    v46[2] = v35;
    v46[3] = v36;
    v46[4] = v37;
    v47 = v38;
    v46[0] = v33;
    v46[1] = v34;
    outlined destroy of _ViewInputs(v46);
    v48 = v41;
    v49 = v42;
    *v50 = v43;
    *&v50[4] = v11 & 0xFFFFFFFD;
    *&v50[8] = v39;
    *&v50[24] = v40[0];
    *&v50[36] = *(v40 + 12);
    outlined destroy of _ViewInputs(&v48);
    v33 = v32;
  }

  if ((v11 & 2) != 0)
  {
    LODWORD(v48) = v30;
    type metadata accessor for _GraphValue();
    v18 = _GraphValue.value.getter();
    LODWORD(v48) = v18;
    MEMORY[0x1EEE9AC00](v18);
    v20 = type metadata accessor for ArchivableLayoutComputer(0, a3, a4, v19);
    *&v24[-16] = v20;
    *&v24[-8] = swift_getWitnessTable(protocol conformance descriptor for ArchivableLayoutComputer<A>, v20);
    type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, MEMORY[0x1E697E3B8]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v48, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_21, &v24[-32], v20, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
    LOBYTE(v48) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  *a5 = v33;
  result = *(&v33 + 1);
  a5[1] = *(&v33 + 1);
  return result;
}

void *static AccessibilityAttachment.combine(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = v3 - 1;
  if (v3 == 1)
  {
    v6 = a1 + 32;

    return outlined init with copy of AccessibilityAttachment(v6, a2);
  }

  else if (v3)
  {
    v8 = a1 + 296 * v3;
    outlined init with copy of AccessibilityAttachment(v8 - 264, __src);

    v9 = v3 - 2;
    v10 = v8 - 560;
    while (v9 < v4)
    {
      outlined init with copy of AccessibilityAttachment(v10, v12);
      AccessibilityProperties.merge(with:)(v12);
      v11 = AccessibilityAttachment.platformElement.getter();
      if (v11)
      {
      }

      else if (AccessibilityAttachment.platformElement.getter())
      {
        AccessibilityAttachment.platformElement.setter();
      }

      outlined destroy of AccessibilityAttachment(v12);
      --v9;
      v10 -= 296;
      if (v9 == -1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:

    return memcpy(a2, __src, 0x128uLL);
  }

  else
  {

    return AccessibilityAttachment.init()();
  }
}

void *AccessibilityNode.attachment.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
  swift_beginAccess();
  outlined init with copy of AnyAccessibilityValue?(v1 + v3, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (__src[35])
  {
    return memcpy(a1, __src, 0x128uLL);
  }

  outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  v5 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v14 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v14;
    v9 = v6 + 32;
    do
    {
      outlined init with copy of AccessibilityAttachmentStorage(v9, __src);
      outlined init with copy of AccessibilityAttachment(__src, v13);
      outlined destroy of AccessibilityAttachmentStorage(__src);
      v14 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      memcpy((v8 + 296 * v11 + 32), v13, 0x128uLL);
      v9 += 320;
      --v7;
    }

    while (v7);
  }

  static AccessibilityAttachment.combine(_:)(v8, a1);

  outlined init with copy of AccessibilityAttachment(a1, __src);
  swift_beginAccess();
  outlined assign with copy of AccessibilityAttachment?(__src, v1 + v3);
  swift_endAccess();
  result = outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty) = 1;
  return result;
}

void AccessibilityNode.updateSize(_:token:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v13 = *a2;
  v14 = v4;
  AccessibilityNode.attachmentIndex(of:)(&v13);
  if (v6)
  {
    return;
  }

  v7 = v5;
  v8 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v9 = *(v2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v8) = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v7 >= *(v9 + 2))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = &v9[320 * v7];
  v12 = *(v11 + 41);
  if (!v12)
  {
    type metadata accessor for AccessibilityGeometryStorage();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 1;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = -1;
    *(v12 + 92) = 0;
    *(v12 + 100) = 1;
    *(v12 + 104) = 0;
    *(v12 + 112) = 1;
    *(v12 + 120) = 0;
    *(v11 + 41) = v12;
  }

  swift_beginAccess();
  *(v12 + 92) = a1;
  *(v12 + 100) = 0;
  *(v2 + v8) = v9;
  swift_endAccess();
}

void AccessibilityGeometryUpdater.updateAccessibilityNodes(list:listChanged:source:)(unint64_t *a1, uint64_t a2, char *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = *(v3 + 12);
  v9 = *a1;
  v10 = *MEMORY[0x1E698D3F8];

  if (v8 != v10)
  {
    v10 = MEMORY[0x1E697ECF0];
    AGGraphGetValue();
    if ((*AGGraphGetValue() & 0x40) == 0 && (*AGGraphGetValue() & 1) == 0)
    {

      return;
    }
  }

  if (v9 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 == 1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x18D00E9C0](0, v9);
      if ((a2 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_34;
      }

      v12 = *(v9 + 32);
      if ((a2 & 1) == 0)
      {
LABEL_14:

        return;
      }
    }

    v11 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id;
    if (*&v12[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id] == *(v3 + 32))
    {
      goto LABEL_14;
    }

    v13 = *(v3 + 24);
    v10 = v3;
    v26 = v12;
    if (v13 == 255)
    {
      v14 = &v28;
      AccessibilityAttachmentToken.init(_:)();
      LOBYTE(v13) = v29;
    }

    else
    {
      v14 = (v3 + 16);
    }

    v4 = *v14;
    v5 = v13 & 1;
    v28 = *v14;
    LOBYTE(v29) = v13 & 1;
    AccessibilityNode.hasAttachment(token:)(&v28);
    if (v15)
    {
LABEL_25:
      if (*(v10 + 48) == 1)
      {
        v20 = *(v10 + 56);
        AGGraphClearUpdate();
        v21 = AGSubgraphGetCurrent();
        AGSubgraphSetCurrent();
        v22 = *(v10 + 8);
        v28 = *v10;
        v29 = v22;
        v30 = 0;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityGeometryUpdater.Size and conformance AccessibilityGeometryUpdater.Size();
        Attribute.init<A>(body:value:flags:update:)();
        v23 = AGCreateWeakAttribute();
        AGSubgraphSetCurrent();

        AGGraphSetUpdate();
        v24 = v23;
        *(v10 + 40) = v23;
        *(v10 + 48) = 0;
      }

      else
      {
        v24 = *(v10 + 40);
      }

      v28 = v4;
      LOBYTE(v29) = v5;
      AccessibilityNode.updateSize(_:token:)(v24, &v28);
      v25 = *&v26[v11];

      *(v10 + 32) = v25;
      return;
    }

    AccessibilityProperties.init()();
    static AccessibilityAttachment.properties(_:)();
    outlined destroy of AccessibilityProperties(&v28);
    AccessibilityNode.scheduleNotifyForAttachmentAddition(of:)(v35);
    outlined init with copy of AccessibilityAttachment(v35, &v28);
    v31 = 0;
    v33 = v4;
    v34 = v5;
    v32 = 0;
    outlined init with copy of AccessibilityAttachmentStorage(&v28, __src);
    a2 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    a3 = *&v26[a2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26[a2] = a3;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_22:
      v18 = *(a3 + 2);
      v17 = *(a3 + 3);
      if (v18 >= v17 >> 1)
      {
        a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, a3);
      }

      *(a3 + 2) = v18 + 1;
      memcpy(&a3[320 * v18 + 32], __src, 0x13DuLL);
      *&v26[a2] = a3;
      swift_endAccess();
      outlined destroy of AccessibilityAttachmentStorage(&v28);
      outlined destroy of AccessibilityAttachment(v35);
      memset(__src, 0, 296);
      v19 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
      swift_beginAccess();
      outlined assign with copy of AccessibilityAttachment?(__src, &v26[v19]);
      swift_endAccess();
      outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
      v26[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
      goto LABEL_25;
    }

LABEL_34:
    a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 2) + 1, 1, a3);
    *&v26[a2] = a3;
    goto LABEL_22;
  }
}

void static AccessibilityChildBehavior.defaultCombine(childProperties:createsCustomActions:)(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {

    AccessibilityProperties.init()();
    return;
  }

  if (v4 == 1)
  {
    v57 = a3;
    outlined init with copy of AccessibilityProperties(a1 + 32, __dst);
  }

  else
  {
    v6 = a3;
    v7 = a1 + 288 * v4;
    outlined init with copy of AccessibilityProperties(v7 - 256, __src);

    v8 = (v4 - 2);
    v9 = v7 - 544;
    do
    {
      if (v8 >= (v4 - 1))
      {
        __break(1u);
        goto LABEL_87;
      }

      AccessibilityProperties.merge(with:)(v9);
      --v8;
      v9 -= 288;
    }

    while (v8 != -1);
    v57 = v6;

    memcpy(__dst, __src, 0x120uLL);
  }

  v10 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v75 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
  v11 = a1 + 32;
  v12 = 1;
  v6 = MEMORY[0x1E69E7CC0];
  v55 = a1;
  v56 = a1 + 32;
  do
  {
    v58 = v12;
    v13 = v11 + 288 * v10;
    while (1)
    {
      if (v10 >= v4)
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
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
        goto LABEL_112;
      }

      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_103;
      }

      outlined init with copy of AccessibilityProperties(v13, __src);
      if (((BYTE8(__src[3]) & 1) != 0 || ((BYTE8(__src[2]) & 0x20) == 0 || !*(&__src[1] + 1) || LOBYTE(__src[2]) != 3) && ((BYTE8(__src[2]) & 1) == 0 || (a2 & 1) == 0)) && *(&__src[1] + 1))
      {

        specialized Array.append<A>(contentsOf:)(v16);
      }

      _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_2(&__src[4], &v64, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
      if (*(&v65 + 1) != 1)
      {
        v62 = v65;
        v63 = v66;
        v61 = v64;
        v17 = AccessibilityValueStorage.Description.text.getter();
        specialized Array.append<A>(contentsOf:)(v17);
        outlined destroy of AccessibilityValueStorage(&v61);
      }

      v18 = AccessibilityProperties.hints.getter();
      v19 = *(v18 + 16);
      v20 = *(v6 + 2);
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        goto LABEL_104;
      }

      v22 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v21 <= *(v6 + 3) >> 1)
      {
        if (*(v22 + 16))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v20 <= v21)
        {
          v27 = v20 + v19;
        }

        else
        {
          v27 = v20;
        }

        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v27, 1, v6);
        if (*(v22 + 16))
        {
LABEL_35:
          if ((*(v6 + 3) >> 1) - *(v6 + 2) < v19)
          {
            goto LABEL_106;
          }

          swift_arrayInitWithCopy();

          if (v19)
          {
            v24 = *(v6 + 2);
            v25 = __OFADD__(v24, v19);
            v26 = v24 + v19;
            if (v25)
            {
              goto LABEL_107;
            }

            *(v6 + 2) = v26;
          }

          goto LABEL_44;
        }
      }

      if (v19)
      {
        goto LABEL_105;
      }

LABEL_44:
      v28 = AccessibilityProperties.inputLabels.getter();
      if (v28)
      {
        specialized Array.append<A>(contentsOf:)(v28);
      }

      v29 = *(&__src[0] + 1);
      if (*(&__src[0] + 1) && LOBYTE(__src[1]) - 1 >= 2)
      {
        v30 = *&__src[0];
        v31 = HIBYTE(*(&__src[0] + 1)) & 0xFLL;
        if ((*(&__src[0] + 1) & 0x2000000000000000) == 0)
        {
          v31 = *&__src[0] & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v33 = *(v8 + 2);
          v32 = *(v8 + 3);
          if (v33 >= v32 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v8);
          }

          *(v8 + 2) = v33 + 1;
          v34 = &v8[16 * v33];
          *(v34 + 4) = v30;
          *(v34 + 5) = v29;
        }
      }

      v35 = BYTE8(__src[3]);
      v36 = WORD4(__src[2]);
      outlined destroy of AccessibilityProperties(__src);
      if ((v35 & 1) != 0 || (v36 & 0x100) == 0)
      {
        v14 = (v36 & 0x20) != 0 ? v35 : 1;
        if (v14 == 1)
        {
          break;
        }
      }

      ++v10;
      v13 += 288;
      if (v15 == v4)
      {
        v37 = v58;
        goto LABEL_62;
      }
    }

    v12 = 0;
    v37 = 0;
    ++v10;
    v11 = v56;
  }

  while (v15 != v4);
LABEL_62:
  v38 = v76;
  if (*(v76 + 16))
  {
    goto LABEL_81;
  }

  v59 = v37;
  v39 = (v55 + 56);
  while (2)
  {
    v40 = *v39;
    if (*v39)
    {
      v41 = *(v40 + 16);
      v42 = *(v38 + 2);
      v43 = v42 + v41;
      if (__OFADD__(v42, v41))
      {
        goto LABEL_108;
      }

      v44 = swift_isUniquelyReferenced_nonNull_native();
      if (v44 && v43 <= *(v38 + 3) >> 1)
      {
        if (!*(v40 + 16))
        {
LABEL_64:

          if (v41)
          {
            goto LABEL_109;
          }

          goto LABEL_65;
        }
      }

      else
      {
        if (v42 <= v43)
        {
          v45 = v42 + v41;
        }

        else
        {
          v45 = v42;
        }

        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44, v45, 1, v38);
        if (!*(v40 + 16))
        {
          goto LABEL_64;
        }
      }

      if ((*(v38 + 3) >> 1) - *(v38 + 2) < v41)
      {
        goto LABEL_110;
      }

      swift_arrayInitWithCopy();

      if (v41)
      {
        v46 = *(v38 + 2);
        v25 = __OFADD__(v46, v41);
        v47 = v46 + v41;
        if (v25)
        {
          goto LABEL_111;
        }

        *(v38 + 2) = v47;
      }
    }

LABEL_65:
    v39 += 36;
    if (--v4)
    {
      continue;
    }

    break;
  }

  v37 = v59;
  if (*(v38 + 2))
  {
LABEL_81:

    *(&__dst[1] + 1) = v38;
    LOBYTE(__dst[2]) = 2;
  }

  v4 = v75;
  if (!*(v75 + 16))
  {

    goto LABEL_90;
  }

  v3 = v37;
  v48 = MEMORY[0x1E69804E0];
  _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_2(&__dst[4], __src, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  v49 = *(&__src[1] + 1);
  _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(__src, &lazy cache variable for type metadata for AccessibilityValueStorage?, v48);
  if (v49 == 1)
  {

    memset(__src, 0, 40);

    _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(__src, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
    memset(__src, 0, 40);
    *(&__src[2] + 1) = v4;
    outlined assign with take of AccessibilityValueStorage?(__src, &__dst[4]);
    goto LABEL_89;
  }

LABEL_87:
  if (*(&__dst[5] + 1) == 1)
  {
LABEL_112:
    __break(1u);
    return;
  }

  *(&__dst[6] + 1) = v4;

LABEL_89:
  v37 = v3;
LABEL_90:
  MEMORY[0x18D008650](v6);
  *&__src[0] = v8;
  type metadata accessor for AccessibilityValueStorage?(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v50 = BidirectionalCollection<>.joined(separator:)();
  v52 = v51;

  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

    v50 = 0;
    v52 = 0;
  }

  *&__dst[0] = v50;
  *(&__dst[0] + 1) = v52;
  LOBYTE(__dst[1]) = 0;
  if (*(v74 + 16))
  {
  }

  AccessibilityProperties.inputLabels.setter();
  if ((v37 & 1) == 0)
  {
    LOBYTE(__src[0]) = 8;
    AccessibilityProperties.subscript.setter();
  }

  LOBYTE(__src[0]) = 5;
  AccessibilityProperties.subscript.setter();
  if (a2)
  {
    lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
    AccessibilityProperties.subscript.getter();
    v54 = *(*&__src[0] + 16);

    if (v54)
    {
      LOBYTE(__src[0]) = 0;
      AccessibilityProperties.subscript.setter();
      LOBYTE(__src[0]) = 3;
      AccessibilityProperties.subscript.setter();
    }
  }

  memset(__src, 0, 40);
  AccessibilityProperties.activationPointStorage.setter();
  LOBYTE(__src[0]) = 19;
  AccessibilityProperties.subscript.setter();
  *&__src[0] = 0;
  BYTE8(__src[0]) = 1;
  lazy protocol witness table accessor for type AccessibilityProperties.AutomationVisibilityKey and conformance AccessibilityProperties.AutomationVisibilityKey();
  AccessibilityProperties.subscript.setter();
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(&v64);
  __src[6] = __dst[14];
  __src[7] = __dst[15];
  __src[8] = __dst[16];
  LOBYTE(__src[9]) = __dst[17];
  __src[2] = __dst[10];
  __src[3] = __dst[11];
  __src[4] = __dst[12];
  __src[5] = __dst[13];
  __src[0] = __dst[8];
  __src[1] = __dst[9];
  _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(__src, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, MEMORY[0x1E6980B48]);
  __dst[14] = v70;
  __dst[15] = v71;
  __dst[16] = v72;
  LOBYTE(__dst[17]) = v73;
  __dst[10] = v66;
  __dst[11] = v67;
  __dst[12] = v68;
  __dst[13] = v69;
  __dst[8] = v64;
  __dst[9] = v65;
  *&v61 = 0;
  lazy protocol witness table accessor for type AccessibilityProperties.UIKitBridgedInteractionKey and conformance AccessibilityProperties.UIKitBridgedInteractionKey();
  AccessibilityProperties.subscript.setter();
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableStatusKey and conformance AccessibilityProperties.ScrollableStatusKey();
  v61 = 0u;
  v62 = 0u;
  AccessibilityProperties.subscript.setter();
  memcpy(v57, __dst, 0x120uLL);
}

uint64_t specialized Collection<>.filterVisible(_:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v15 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x18D00E9C0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      AccessibilityNode.visibility.getter(v17);
      if ((v17[0] & 4) != 0 || (v17[0] & 8) != 0 && (v17[0] & 0x400000000) == 0)
      {
        goto LABEL_4;
      }

      v10 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedIsPlaceholderOrIgnored;
      v11 = v8[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedIsPlaceholderOrIgnored];
      if (v11 == 2)
      {
        AccessibilityNode.traits.getter(v17);
        v12 = v17[0];
        AccessibilityNode.traits.getter(v17);
        if ((v17[0] & 0x20) != 0 || (v12 & 0x100) != 0)
        {
          v13 = *&v8[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
          v17[0] = *&v8[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
          v17[1] = v13;

          EnvironmentValues.redactionReasons.getter();

          a1 = v15;
          v8[v10] = v16 & 1;
          if (v16)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v8[v10] = 0;
          a1 = v15;
        }
      }

      else if (v11)
      {
        goto LABEL_4;
      }

      if (!a1 || (a1(v8) & 1) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_5;
      }

LABEL_4:

LABEL_5:
      ++v6;
      if (v9 == i)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined init with copy of (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, a2, a3, a4);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + 8 * (v16 | (v9 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v19);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v5 = v4;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v5 = v8;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1, a4, a5, a6);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      specialized _NativeSet.copy()(a4, a5, a6);
      a2 = v10;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1, a4, a5, a6);
  }

  v11 = *v6;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](result);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v11 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = result;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<UniqueID>, lazy protocol witness table accessor for type UniqueID and conformance UniqueID, MEMORY[0x1E6981D00]);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<Namespace.ID>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID, MEMORY[0x1E6981EA0]);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<CommandFlag>, lazy protocol witness table accessor for type CommandFlag and conformance CommandFlag, &type metadata for CommandFlag);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<TextEditorModification>, lazy protocol witness table accessor for type TextEditorModification and conformance TextEditorModification, &type metadata for TextEditorModification);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a2);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_1(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 25;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 3);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 8 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, a6, a7, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void type metadata accessor for _ContiguousArrayStorage<[AnyAccessibilityAction]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<[AnyAccessibilityAction]>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for [AnyAccessibilityAction], &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<[AnyAccessibilityAction]>);
    }
  }
}

uint64_t closure #1 in static AccessibilityChildBehavior.Combine.combine(children:options:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v91 = a8;
  *(&v101 + 1) = a4;
  v102 = a5;
  *&v101 = a3;
  v99 = a2;
  v11 = MEMORY[0x1E69E7CC0];
  v114 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  v12 = *(v110[0] + 16);

  v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0, v11);
  v100 = a1;
  AccessibilityProperties.subscript.getter();
  v13 = *(v110[0] + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v89 = 0;
  v90 = v110[0];
  v14 = v110[0] + 32;
  v92 = xmmword_18CD63400;
  v97 = a7;
  v98 = a6;
  while (1)
  {
    outlined init with copy of AnyAccessibilityAction(v14, v110);
    v109[0] = v101;
    *&v109[1] = v102;
    *(&v109[1] + 1) = a6;
    v15 = v111;
    v16 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v17 = *(v16 + 80);
    v18 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();
    if ((v17(v109, &type metadata for AccessibilityVoidAction, v18, v15, v16) & 1) == 0)
    {
      if (v113 == 1)
      {
        outlined init with copy of AnyAccessibilityAction(v110, v109);
      }

      else
      {
        v22 = v111;
        v23 = v112;
        __swift_project_boxed_opaque_existential_1(v110, v111);
        (*(v23 + 56))(v109, v99, v22, v23);
      }

      v25 = *(v103 + 2);
      v24 = *(v103 + 3);
      if (v25 >= v24 >> 1)
      {
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v103);
      }

      v26 = v103;
      *(v103 + 2) = v25 + 1;
      v27 = &v26[48 * v25];
      v28 = v109[0];
      v29 = v109[1];
      *(v27 + 57) = *(&v109[1] + 9);
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      goto LABEL_4;
    }

    v19 = *a7;
    if (v19 == 1)
    {
      v20 = *(v100 + 24);
    }

    else
    {
      if (v113 == 1)
      {
        v21 = outlined init with copy of AnyAccessibilityAction(v110, v109);
      }

      else
      {
        v52 = v111;
        v53 = v112;
        __swift_project_boxed_opaque_existential_1(v110, v111);
        v21 = (*(v53 + 56))(v109, v99, v52, v53);
      }

      v55 = *(v103 + 2);
      v54 = *(v103 + 3);
      v56 = v100;
      if (v55 >= v54 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v103);
        v103 = v21;
        v56 = v100;
      }

      v57 = v103;
      *(v103 + 2) = v55 + 1;
      v58 = &v57[48 * v55];
      v59 = v109[0];
      v60 = v109[1];
      *(v58 + 57) = *(&v109[1] + 9);
      *(v58 + 2) = v59;
      *(v58 + 3) = v60;
      *a7 = 1;
      if ((*(v56 + 56) & 1) != 0 || (*(v56 + 40) & 1) == 0)
      {
        outlined destroy of AnyAccessibilityAction(v110);
        a6 = v98;
        goto LABEL_5;
      }

      v20 = *(v56 + 24);
      if (v20)
      {
        if (*(v20 + 16))
        {
          v65 = *(v91 + 24);
          if (v65)
          {
            v96 = &v88;
            v66 = *(v20 + 56);
            v67 = *(v20 + 48);
            v68 = *(v20 + 40);
            *&v109[0] = *(v20 + 32);
            v69 = *&v109[0];
            *(&v109[0] + 1) = v68;
            LOBYTE(v109[1]) = v67;
            LODWORD(v95) = v67;
            *(&v109[1] + 1) = v66;
            MEMORY[0x1EEE9AC00](v21);
            *(&v88 - 2) = v109;
            outlined copy of Text.Storage(v69, v68, v70);

            v71 = v89;
            LODWORD(v94) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v88 - 4), v65);
            v89 = v71;

            outlined consume of Text.Storage(v69, v68, v95);

            if (v94)
            {
              outlined destroy of AnyAccessibilityAction(v110);
              a7 = v97;
              a6 = v98;
              goto LABEL_5;
            }

            a7 = v97;
          }
        }
      }
    }

    memset(v109, 0, 41);
    if (v20 && *(v20 + 16))
    {

      if (v19)
      {
        goto LABEL_23;
      }

LABEL_24:
      v42 = *(v20 + 32);
      v43 = *(v20 + 40);
      v44 = *(v20 + 48);
      v45 = *(v20 + 56);
      outlined copy of Text.Storage(v42, v43, *(v20 + 48));

      v46 = v111;
      v47 = v112;
      __swift_project_boxed_opaque_existential_1(v110, v111);
      (*(v47 + 72))(v108, v42, v43, v44, v45, v100, v99, v46, v47);
      if (*&v108[24])
      {
        outlined consume of Text.Storage(v42, v43, v44);

        _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
        v106 = *&v108[8];
        v48 = *v108;
        v50 = *&v108[24];
        v49 = *&v108[32];
        v51 = v108[40];
      }

      else
      {
        _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v108, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
        v61 = v111;
        v62 = v112;
        v94 = v112;
        __swift_project_boxed_opaque_existential_1(v110, v111);
        v63 = *(v62 + 16);
        v95 = v45;
        v96 = v63;
        outlined copy of AccessibilityActionKind.ActionKind(v42, v43, v44, v45);
        v96 = (v96)(v61, v94);
        if (!v96)
        {
          v64 = AccessibilityProperties.images.getter();
          if (*(v64 + 16))
          {
            v96 = *(v64 + 32);
          }

          else
          {

            v96 = 0;
          }
        }

        outlined init with copy of AnyAccessibilityAction(v110, v108);
        v72 = swift_allocObject();
        v73 = *&v108[16];
        *(v72 + 16) = *v108;
        *(v72 + 32) = v73;
        *(v72 + 41) = *&v108[25];
        v74 = v99;
        *(v72 + 64) = v99;
        v75 = swift_allocObject();
        *(v75 + 16) = partial apply for closure #1 in AnyAccessibilityAction.asCombinedAction(name:properties:child:);
        *(v75 + 24) = v72;
        v93 = AccessibilityActionHandlerSeed;
        LODWORD(v94) = v113;
        ++AccessibilityActionHandlerSeed;
        type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(0);
        v50 = v76;
        v48 = swift_allocObject();
        v77 = v74;
        outlined consume of Text.Storage(v42, v43, v44);
        v78 = v95;

        *(v48 + 16) = v42;
        *(v48 + 24) = v43;
        *(v48 + 32) = v44;
        *(v48 + 40) = v78;
        *(v48 + 48) = 0;
        *(v48 + 56) = 0;
        *(v48 + 64) = 0;
        *(v48 + 72) = 2;
        *(v48 + 80) = 0u;
        *(v48 + 96) = 0u;
        *(v48 + 112) = v96;
        *(v48 + 120) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult);
        *(v48 + 128) = v75;
        *(v48 + 136) = v93;
        _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
        v51 = v94;
        v49 = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
      }

      *(v109 + 8) = v106;
      *&v109[0] = v48;
      *(&v109[1] + 1) = v50;
      *&v109[2] = v49;
      BYTE8(v109[2]) = v51;
      a7 = v97;
      goto LABEL_43;
    }

    v30 = v111;
    v31 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v32 = (*(v31 + 8))(v30, v31);
    if (v35)
    {
      break;
    }

LABEL_43:
    _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_2(v109, v108, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    v79 = *&v108[24];
    _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v108, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    a6 = v98;
    if (!v79)
    {
      if (v113 == 1)
      {
        _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
        outlined init with copy of AnyAccessibilityAction(v110, v108);
      }

      else
      {
        v80 = v111;
        v81 = v112;
        __swift_project_boxed_opaque_existential_1(v110, v111);
        (*(v81 + 56))(v108, v99, v80, v81);
        _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
      }

      v109[0] = *v108;
      v109[1] = *&v108[16];
      *(&v109[1] + 9) = *&v108[25];
    }

    _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_2(v109, v108, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    if (*&v108[24])
    {
      v106 = *v108;
      v107[0] = *&v108[16];
      *(v107 + 9) = *&v108[25];
      outlined init with copy of AnyAccessibilityAction(&v106, &v104);
      v83 = *(v103 + 2);
      v82 = *(v103 + 3);
      if (v83 >= v82 >> 1)
      {
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v103);
      }

      outlined destroy of AnyAccessibilityAction(&v106);
      _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
      v84 = v103;
      *(v103 + 2) = v83 + 1;
      v85 = &v84[48 * v83];
      v86 = *(v105 + 9);
      v87 = v105[0];
      *(v85 + 2) = v104;
      *(v85 + 3) = v87;
      *(v85 + 57) = v86;
    }

    else
    {
      _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v109, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    }

LABEL_4:
    outlined destroy of AnyAccessibilityAction(v110);
LABEL_5:
    v14 += 48;
    if (!--v13)
    {

      return v114;
    }
  }

  v36 = v32;
  v37 = v33;
  v38 = v34;
  v39 = v35;
  type metadata accessor for AccessibilityValueStorage?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = v92;
  *(v20 + 32) = v36;
  *(v20 + 40) = v37;
  *(v20 + 48) = v38 & 1;
  *(v20 + 56) = v39;
  if ((v19 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_23:

  result = specialized Array.append<A>(contentsOf:)(v40);
  if (*(v20 + 16))
  {
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_18C096AA8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C096AE8()
{

  return swift_deallocObject();
}

uint64_t sub_18C096B20()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SwiftUI23AccessibilityPropertiesVGSayAH0H4NodeCGG_SayAH4TextVG_SayAH03AnyH6ActionVGts5NeverOTg503_s7f4UI23hi6VAA0C4j7CSayAA4k9VGSayAA03l2C6m23VGIgngoo_AC_AEtAH_AKts5N11OIegnrzr_TRAjmrUIgngoo_Tf1cn_nTf4ng_n(uint64_t a1, unint64_t a2, uint64_t (*a3)(_BYTE *, id))
{
  v3 = a2;
  v4 = a1;
  v5 = *(a1 + 16);
  v36 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (i >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = i;
    }

    v42 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
LABEL_44:
      result = outlined destroy of AccessibilityProperties(__src);
      goto LABEL_45;
    }

    v31 = i;
    v9 = v42;
    v33 = v5;
    v34 = v3;
    v30 = v4;
    if (v7)
    {
      break;
    }

LABEL_22:
    if (v5 <= v31)
    {
      return v9;
    }

    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    v38 = v3 & 0xC000000000000001;
    v21 = v30 + 288 * v7 + 32;
    while (v7 < v5)
    {
      outlined init with copy of AccessibilityProperties(v21, __src);
      if (v36)
      {
        if (v7 == __CocoaSet.count.getter())
        {
LABEL_37:
          outlined destroy of AccessibilityProperties(__src);
          return v9;
        }
      }

      else if (v7 == *(v4 + 16))
      {
        goto LABEL_37;
      }

      if (v38)
      {
        v22 = MEMORY[0x18D00E9C0](v7, v3);
      }

      else
      {
        if (v7 >= *(v4 + 16))
        {
          goto LABEL_41;
        }

        v22 = *(v3 + 8 * v7 + 32);
      }

      v23 = v22;
      memcpy(__dst, __src, sizeof(__dst));
      v41 = v23;
      v24 = a3(__dst, v23);
      v26 = v25;
      outlined destroy of (AnyToken?, Range<AttributedString.Index>)(__dst, type metadata accessor for (AccessibilityProperties, AccessibilityNode));
      v42 = v9;
      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v9 = v42;
      }

      ++v7;
      *(v9 + 16) = v28 + 1;
      v29 = v9 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v21 += 288;
      v5 = v33;
      v3 = v34;
      if (v33 == v7)
      {
        return v9;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v10 = 0;
  v11 = v4 + 32;
  v37 = v3 & 0xFFFFFFFFFFFFFF8;
  v32 = v3 & 0xC000000000000001;
  while (v5 != v10)
  {
    outlined init with copy of AccessibilityProperties(v11, __src);
    if (v36)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *(v37 + 16);
    }

    if (v10 == v12)
    {
      goto LABEL_44;
    }

    if (v32)
    {
      v13 = MEMORY[0x18D00E9C0](v10, v3);
    }

    else
    {
      if (v10 >= *(v37 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v13 = *(v3 + 8 * v10 + 32);
    }

    v14 = v13;
    memcpy(__dst, __src, sizeof(__dst));
    v41 = v14;
    v15 = a3(__dst, v14);
    v17 = v16;
    result = outlined destroy of (AnyToken?, Range<AttributedString.Index>)(__dst, type metadata accessor for (AccessibilityProperties, AccessibilityNode));
    v42 = v9;
    v19 = *(v9 + 16);
    v18 = *(v9 + 24);
    v4 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v9 = v42;
    }

    ++v10;
    *(v9 + 16) = v4;
    v20 = v9 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    v11 += 288;
    v5 = v33;
    v3 = v34;
    if (v7 == v10)
    {
      goto LABEL_22;
    }
  }

LABEL_45:
  __break(1u);
  return result;
}

void type metadata accessor for ([Text], [AnyAccessibilityAction])(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ([Text], [AnyAccessibilityAction]))
  {
    v1 = MEMORY[0x1E69E62F8];
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for [Text], MEMORY[0x1E6981148], MEMORY[0x1E69E62F8]);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for [AnyAccessibilityAction], &type metadata for AnyAccessibilityAction, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ([Text], [AnyAccessibilityAction]));
    }
  }
}

uint64_t outlined destroy of AccessibilityValueStorage?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _sSaySSGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AccessibilityValueStorage?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    type metadata accessor for [String](255, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6310], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

void type metadata accessor for AccessibilityValueStorage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with copy of AccessibilityValueStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Gauge?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _sSaySSGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_2(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AccessibilityValueStorage?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v8 = a2;
  NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0(NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0);
    *a1 = NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0;
  }

  v12 = *(NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 + 16);
  v27 = NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 + 32;
  v32[0] = NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 + 32;
  v32[1] = v12;
  v13 = _minimumMergeRunLength(_:)(v12);
  if (v13 >= v12)
  {
    if (v12 >= 2)
    {
      v16 = -1;
      v17 = 1;
      v18 = NewAByxGyF7SwiftUI36PlatformAccessibilityElementProtocol_So8NSObjectCXc_Tg5_0 + 32;
      v26 = v12;
      do
      {
        v29 = v17;
        v30 = v16;
        v19 = *(v27 + 8 * v17);
        v28 = v18;
        do
        {
          v20 = *v18;
          LOBYTE(v31[0]) = v8;
          v33[0] = v6;
          v21 = v19;
          v22 = v20;
          LOBYTE(v20) = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v21, v22, v31, a3 & 1, v33, a5);

          if ((v20 & 1) == 0)
          {
            break;
          }

          v23 = *v18;
          v19 = *(v18 + 8);
          *v18 = v19;
          *(v18 + 8) = v23;
          v18 -= 8;
        }

        while (!__CFADD__(v16++, 1));
        v17 = v29 + 1;
        v18 = v28 + 8;
        v16 = v30 - 1;
      }

      while (v29 + 1 != v26);
    }
  }

  else
  {
    v14 = v13;
    if (v12 >= 2)
    {
      type metadata accessor for AccessibilityNode();
      v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12 >> 1;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v31[0] = ((v15 & 0xFFFFFFFFFFFFFF8) + 32);
    v31[1] = (v12 >> 1);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v31, v33, v32, v14, v8, a3 & 1, v6, a5);
    *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t protocol witness for AccessibilityViewModifier.willCreateNode(for:) in conformance AccessibilityContainerModifier(uint64_t a1)
{
  v3 = *(**v1 + 80);

  LOBYTE(a1) = v3(a1);

  return a1 & 1;
}

uint64_t outlined destroy of (AnyToken?, Range<AttributedString.Index>)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (AccessibilityProperties, AccessibilityNode)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AccessibilityProperties, AccessibilityNode))
  {
    type metadata accessor for AccessibilityNode();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityProperties, AccessibilityNode));
    }
  }
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, a2, a3, a4);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + 8 * (v17 | (v9 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v20);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
}

double protocol witness for AccessibilityViewModifier.initialAttachment(for:) in conformance AccessibilityContainerModifier(uint64_t a1)
{
  v3 = *(**v1 + 88);

  v3(a1);

  return result;
}

unint64_t specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ObjectIdentifier, AccessibilitySortCache>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v16 = *(a1 + 72);
  v17 = *(a1 + 88);
  *v18 = *(a1 + 104);
  *&v18[9] = *(a1 + 113);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v8 = (v3[7] + 96 * result);
    *v8 = v14;
    v8[1] = v15;
    *(v8 + 73) = *&v18[9];
    v8[3] = v17;
    v8[4] = *v18;
    v8[2] = v16;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v12 = (v7 + 104);
    v4 = *(v7 - 1);
    v16 = v7[2];
    v17 = v7[3];
    *v18 = v7[4];
    *&v18[9] = *(v7 + 73);
    v14 = *v7;
    v15 = v7[1];
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityGeometryUpdater.Size and conformance AccessibilityGeometryUpdater.Size()
{
  result = lazy protocol witness table cache variable for type AccessibilityGeometryUpdater.Size and conformance AccessibilityGeometryUpdater.Size;
  if (!lazy protocol witness table cache variable for type AccessibilityGeometryUpdater.Size and conformance AccessibilityGeometryUpdater.Size)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityGeometryUpdater.Size, &unk_1EFF9EC08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityGeometryUpdater.Size and conformance AccessibilityGeometryUpdater.Size);
  }

  return result;
}

uint64_t TupleWidgetConfiguration.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for TupleWidgetConfiguration(255, *(a2 + 16), a3, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  v8 = *(v4 + 24);
  v34[0] = *(v4 + 8);
  v34[1] = v8;
  v35[0] = *(v4 + 40);
  v9 = v35[0];
  *(v35 + 12) = *(v4 + 52);
  v31 = v34[0];
  v32 = v8;
  v33[0] = v9;
  *(v33 + 12) = *(v35 + 12);
  outlined init with copy of _WidgetInputs(v34, &v38);
  static DynamicPropertyCache.fields(of:)();
  v10 = v38;
  v11 = v39;
  v12 = DWORD1(v39);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  _GraphValue.init(_:)();
  v38 = v10;
  LOBYTE(v39) = v11;
  DWORD1(v39) = v12;
  v14 = type metadata accessor for WidgetBodyAccessor(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for WidgetBodyAccessor<A>, v14);
  BodyAccessor.makeBody(container:inputs:fields:)();
  outlined consume of DynamicPropertyCache.Fields.Layout(v10, *(&v10 + 1), v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36[0] = v31;
  v36[1] = v32;
  v37[0] = v33[0];
  *(v37 + 12) = *(v33 + 12);
  v25 = v31;
  v26 = v32;
  *v27 = v33[0];
  *&v27[12] = *(v33 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _WidgetInputs(v36, &v38);
  v17(&v29, v28, &v25, AssociatedTypeWitness, AssociatedConformanceWitness);
  v38 = v25;
  v39 = v26;
  v40[0] = *v27;
  *(v40 + 12) = *&v27[12];
  outlined destroy of _WidgetInputs(&v38);
  v18 = v29;
  v19 = v30;
  v20 = *(v4 + 80);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
  }

  v25 = v31;
  v26 = v32;
  *v27 = v33[0];
  *&v27[12] = *(v33 + 12);
  result = outlined destroy of _WidgetInputs(&v25);
  *(v20 + 2) = v22 + 1;
  v24 = &v20[16 * v22];
  *(v24 + 4) = v18;
  *(v24 + 10) = v19;
  *(v5 + 80) = v20;
  return result;
}

uint64_t get_witness_table_7SwiftUI19WidgetConfigurationRzAA13PreferenceKeyRd__r__lAA15ModifiedContentVyxAA01_E15WritingModifierVyqd__GGAaBHpxAaBHD1__AhA0cdJ0HpyHCHCTm(void *a1, double (*a2)(uint64_t, void, void), uint64_t a3)
{
  v4 = a1[2];
  a2(255, a1[1], a1[3]);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t closure #1 in ControlWidgetTemplateGraph.instantiateOutputs()(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 88);
  v11[0] = *(a1 + 72);
  v11[1] = v2;
  v12 = *(a1 + 104);
  v8 = v11[0];
  v9 = v2;
  *v10 = v12;
  outlined init with copy of _GraphInputs(v11, v17);
  PreferencesInputs.init(hostKeys:)();
  *&v10[16] = *&v17[0];
  *&v10[24] = DWORD2(v17[0]);
  PreferenceKeys.add(_:)();
  v3 = *(a1 + 176);
  v13[0] = v8;
  v13[1] = v9;
  v14[0] = *v10;
  *(v14 + 12) = *&v10[12];
  v5 = v8;
  v6 = v9;
  v7[0] = *v10;
  *(v7 + 12) = *&v10[12];

  outlined init with copy of _WidgetInputs(v13, v17);
  v3(&v5);

  v15[0] = v5;
  v15[1] = v6;
  v16[0] = v7[0];
  *(v16 + 12) = *(v7 + 12);
  outlined destroy of _WidgetInputs(v15);
  v17[0] = v8;
  v17[1] = v9;
  v18[0] = *v10;
  *(v18 + 12) = *&v10[12];
  return outlined destroy of _WidgetInputs(v17);
}

uint64_t static _PreferenceWritingModifier._makeWidgetConfiguration(modifier:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v15[0] = *a2;
  v15[1] = v7;
  v9 = *a2;
  v8 = a2[1];
  *v16 = a2[2];
  *&v16[12] = *(a2 + 44);
  v12 = v9;
  v13 = v8;
  *v14 = a2[2];
  *&v14[12] = *(a2 + 44);
  outlined init with copy of _WidgetInputs(v15, &v21);
  PreferencesInputs.remove<A>(_:)();
  v17[0] = v12;
  v17[1] = v13;
  v18[0] = *v14;
  *(v18 + 12) = *&v14[12];
  v21 = v12;
  v22 = v13;
  v23[0] = *v14;
  *(v23 + 12) = *&v14[12];
  v10 = outlined init with copy of _WidgetInputs(v17, v19);
  a3(v10, &v21);
  v19[0] = v21;
  v19[1] = v22;
  v20[0] = v23[0];
  *(v20 + 12) = *(v23 + 12);
  outlined destroy of _WidgetInputs(v19);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v21 = v12;
  v22 = v13;
  v23[0] = *v14;
  *(v23 + 12) = *&v14[12];
  return outlined destroy of _WidgetInputs(&v21);
}

uint64_t static WidgetConfiguration._makeWidgetConfiguration(widget:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a2[1];
  v37 = *a2;
  v38 = v8;
  v39[0] = a2[2];
  *(v39 + 12) = *(a2 + 44);
  static DynamicPropertyCache.fields(of:)();
  v9 = v44;
  v34 = v37;
  v35 = v38;
  v36[0] = v39[0];
  *(v36 + 12) = *(v39 + 12);
  v20 = DWORD1(v44);
  v21 = v7;
  LODWORD(v31) = v7;
  v22 = *(&v43 + 1);
  v23 = v43;
  v40 = v43;
  LOBYTE(v41) = v44;
  DWORD1(v41) = DWORD1(v44);
  outlined init with copy of _WidgetInputs(&v37, &v43);
  static WidgetConfiguration.makeBody(widget:inputs:fields:)(v30, &v43, &v31, &v34, &v40, a3, a4);
  v10 = *(&v43 + 1);
  v19 = v43;
  LOBYTE(v7) = v44;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = v34;
  v41 = v35;
  v42[0] = v36[0];
  *(v42 + 12) = *(v36 + 12);
  v31 = v34;
  v32 = v35;
  v33[0] = v36[0];
  *(v33 + 12) = *(v36 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _WidgetInputs(&v40, &v43);
  v13(&v25, v30, &v31, AssociatedTypeWitness, AssociatedConformanceWitness);
  v43 = v31;
  v44 = v32;
  v45[0] = v33[0];
  *(v45 + 12) = *(v33 + 12);
  outlined destroy of _WidgetInputs(&v43);
  v14 = v25;
  v15 = v26;
  if (v7)
  {
    v31 = v34;
    v32 = v35;
    v33[0] = v36[0];
    *(v33 + 12) = *(v36 + 12);
    outlined destroy of _WidgetInputs(&v31);
    v17 = v22;
    v16 = v23;
  }

  else
  {
    v30[0] = v19;
    v30[1] = v10;
    v29 = v21;
    v25 = v23;
    v26 = v22;
    v27 = v9;
    v28 = v20;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    v31 = v34;
    v32 = v35;
    v33[0] = v36[0];
    *(v33 + 12) = *(v36 + 12);
    outlined destroy of _WidgetInputs(&v31);
    v16 = v23;
    v17 = v22;
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout(v16, v17, v9);
  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t closure #1 in WidgetHost.readPreference<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a1;
  v21 = a4;
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for PreferenceValues.Value();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  swift_beginAccess();
  v12 = *(v11 + 80);
  v30[3] = *(v11 + 64);
  v30[4] = v12;
  v30[5] = *(v11 + 96);
  v31 = *(v11 + 112);
  v13 = *(v11 + 32);
  v30[0] = *(v11 + 16);
  v30[1] = v13;
  v30[2] = *(v11 + 48);
  v14 = *(v11 + 96);
  v27 = *(v11 + 80);
  v28 = v14;
  v29 = *(v11 + 112);
  v15 = *(v11 + 32);
  v23 = *(v11 + 16);
  v24 = v15;
  v16 = *(v11 + 64);
  v25 = *(v11 + 48);
  v26 = v16;
  outlined init with copy of GraphHost.Data(v30, v22);
  v17 = GraphHost.Data.hostPreferenceKeys.modify();
  PreferenceKeys.add(_:)();
  v17(v22, 0);
  outlined destroy of GraphHost.Data(v30);
  GraphHost.preferenceValues()();
  v22[0] = v23;
  PreferenceValues.subscript.getter();

  PreferenceValues.Value.value.getter();
  (*(v8 + 8))(v10, v7);
  return $defer #1 <A><A1>() in closure #1 in WidgetHost.readPreference<A>(_:)(v20, a2, a3);
}

uint64_t closure #2 in static ModifiedContent<>._makeWidgetConfiguration(widget:inputs:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v14[0] = a2[2];
  *(v14 + 12) = *(a2 + 44);
  v12 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a6 + 32))(v11, v13, a4, a6);
}

uint64_t static _PreferenceTransformModifier._makeWidgetConfiguration(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t closure #1 in WidgetGraph.init<A>(rootBundle:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v29[0] = a1[2];
  *(v29 + 12) = *(a1 + 44);
  static DynamicPropertyCache.fields(of:)();
  v8 = v34;
  v9 = v35;
  v10 = DWORD1(v35);
  v24 = v27;
  v25 = v28;
  v26[0] = v29[0];
  *(v26 + 12) = *(v29 + 12);
  v19[2] = a3;
  outlined init with copy of _WidgetInputs(&v27, &v34);
  v11 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, closure #1 in Attribute.init(value:)partial apply, v19, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  _GraphValue.init(_:)();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v34 = v8;
  LOBYTE(v35) = v9;
  DWORD1(v35) = v10;
  v14 = type metadata accessor for WidgetBundleBodyAccessor(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for WidgetBundleBodyAccessor<A>, v14);
  BodyAccessor.makeBody(container:inputs:fields:)();
  outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30[0] = v24;
  v30[1] = v25;
  v31[0] = v26[0];
  *(v31 + 12) = *(v26 + 12);
  v20 = v24;
  v21 = v25;
  v22[0] = v26[0];
  *(v22 + 12) = *(v26 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _WidgetInputs(v30, &v34);
  v17(v23, &v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  v32[0] = v20;
  v32[1] = v21;
  v33[0] = v22[0];
  *(v33 + 12) = *(v22 + 12);
  outlined destroy of _WidgetInputs(v32);
  v34 = v24;
  v35 = v25;
  v36[0] = v26[0];
  *(v36 + 12) = *(v26 + 12);
  return outlined destroy of _WidgetInputs(&v34);
}

Swift::Void __swiftcall ControlWidgetTemplateGraph.instantiateOutputs()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  AGGraphClearUpdate();
  v3 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in ControlWidgetTemplateGraph.instantiateOutputs()(v1);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  PreferencesOutputs.subscript.getter();

  swift_beginAccess();
  *(v1 + 132) = AGCreateWeakAttribute();
  swift_endAccess();
}

uint64_t implicit closure #1 in static _PreferenceTransformModifier._makeWidgetConfiguration(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = a1;
  type metadata accessor for _PreferenceTransformModifier();
  type metadata accessor for _GraphValue();
  v5 = _GraphValue.value.getter();
  v20 = a2;
  v21 = a3;
  KeyPath = swift_getKeyPath();
  v7 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v8)
  {
    v17 = v5;
    v18 = partial apply for closure #1 in Attribute.subscript.getter;
    v19 = KeyPath;
    MEMORY[0x1EEE9AC00](v7);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13[2] = swift_getFunctionTypeMetadata();
    v14 = type metadata accessor for Map();
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E698D3A8], v14);
    v9 = type metadata accessor for Attribute();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v13, v14, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

    return AssociatedTypeWitness;
  }

  else
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

    return OffsetAttribute2;
  }
}

__n128 sub_18C0995A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t static WidgetConfiguration.makeBody(widget:inputs:fields:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (AGTypeID.isValueType.getter())
  {
    v10 = type metadata accessor for WidgetConfigurationBodyAccessor(0, a6, a7, v9);
    swift_getWitnessTable(protocol conformance descriptor for WidgetConfigurationBodyAccessor<A>, v10);
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v12 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t AccessibilityNode.modifiedAttachment(attachment:token:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_18:
    memset(__dst, 0, 317);
    if ((AccessibilityAttachment.isEmpty.getter() & 1) == 0)
    {
      LOBYTE(v12) = 0;
LABEL_20:
      AccessibilityNode.traits.getter(__src);
      v16 = __src[0];
      v17 = __src[1];
      if ((AccessibilityNullableOptionSet<>.subscript.getter() & 1) == 0)
      {
        __src[0] = v16;
        __src[1] = v17;
        if (AccessibilityNullableOptionSet<>.subscript.getter())
        {
          goto LABEL_30;
        }

        if (!*(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_relationshipScope))
        {
          goto LABEL_32;
        }

        v22 = AccessibilityRelationshipScope.nodes(for:of:returning:)(0, v4, 1);
        if (v22 >> 62)
        {
LABEL_36:
          v23 = __CocoaSet.count.getter();
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v23)
        {
LABEL_30:
          LOBYTE(__src[0]) = 19;
          v24 = AccessibilityProperties.subscript.getter();
          result = outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?, &type metadata for AccessibilityAttachmentStorage);
          if (v24)
          {
            v21 = 0uLL;
            *(a3 + 256) = 0u;
            *(a3 + 272) = 0u;
            *(a3 + 224) = 0u;
            *(a3 + 240) = 0u;
            *(a3 + 192) = 0u;
            *(a3 + 208) = 0u;
            *(a3 + 160) = 0u;
            *(a3 + 176) = 0u;
            *(a3 + 128) = 0u;
            *(a3 + 144) = 0u;
            *(a3 + 96) = 0u;
            *(a3 + 112) = 0u;
            *(a3 + 64) = 0u;
            *(a3 + 80) = 0u;
            *(a3 + 32) = 0u;
            *(a3 + 48) = 0u;
            *a3 = 0u;
            *(a3 + 16) = 0u;
            goto LABEL_24;
          }
        }

        else
        {
LABEL_32:
          outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?, &type metadata for AccessibilityAttachmentStorage);
        }

        result = outlined init with copy of AccessibilityAttachment(a1, a3);
        *(a3 + 296) = v12;
        *(a3 + 297) = 0;
        return result;
      }

      if (*(a1 + 8))
      {
        AccessibilityAttachment.init()();
        outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?, &type metadata for AccessibilityAttachmentStorage);
        v19 = *a1;
        v18 = *(a1 + 8);
        v20 = *(a1 + 16);

        __src[0] = v19;
        __src[1] = v18;
        LOBYTE(__src[2]) = v20;
        result = memcpy(a3, __src, 0x128uLL);
        *(a3 + 296) = v12;
        *(a3 + 297) = 1;
        return result;
      }
    }

    result = outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?, &type metadata for AccessibilityAttachmentStorage);
    v21 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
LABEL_24:
    *(a3 + 282) = v21;
    return result;
  }

  v12 = v10 + 32;

  v13 = 0;
  while (1)
  {
    if (v13 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    outlined init with copy of AccessibilityAttachmentStorage(v12, __src);
    if (BYTE4(__src[39]) == 255)
    {
      if (v8 == 255)
      {
        goto LABEL_14;
      }

      goto LABEL_4;
    }

    if (v8 == 255)
    {
      goto LABEL_4;
    }

    if ((__src[39] & 0x100000000) == 0)
    {
      break;
    }

    if ((v8 & 1) != 0 && HIDWORD(__src[38]) == v7)
    {
      goto LABEL_14;
    }

LABEL_4:
    ++v13;
    outlined destroy of AccessibilityAttachmentStorage(__src);
    v12 += 320;
    if (v11 == v13)
    {

      goto LABEL_18;
    }
  }

  if ((v8 & 1) != 0 || *(&__src[38] + 4) != v7)
  {
    goto LABEL_4;
  }

LABEL_14:

  memcpy(__dst, __src, 0x13DuLL);
  AccessibilityAttachment.isEmpty.getter();
  result = outlined init with copy of AnyAccessibilityValue?(__dst, __src, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?, &type metadata for AccessibilityAttachmentStorage);
  if (__src[35])
  {
    v15 = __src[38];
    outlined destroy of AccessibilityAttachmentStorage(__src);
    LOBYTE(v12) = 1;
    if (v15)
    {
      goto LABEL_20;
    }

    outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?, &type metadata for AccessibilityAttachmentStorage);
    result = outlined init with copy of AccessibilityAttachment(a1, a3);
    *(a3 + 296) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double static ModifiedContent<>._makeWidgetConfiguration(widget:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a2[1];
  v16[0] = *a2;
  v16[1] = v11;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = v10;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 48) = v10;
  (*(a6 + 32))(v14, v16, partial apply for closure #2 in static ModifiedContent<>._makeWidgetConfiguration(widget:inputs:), v12, a4, a6);

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityAttachmentStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 317))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void type metadata accessor for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)()
{
  if (!lazy cache variable for type metadata for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool));
    }
  }
}

uint64_t WidgetBundleBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v4 = type metadata accessor for WidgetBundleBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable(protocol conformance descriptor for WidgetBundleBodyAccessor<A>, v4);
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t closure #1 in WidgetBundleBodyAccessor.updateBody(of:changed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(a3 + 32))(a2, a3, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t WidgetConfiguration.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, a2, v10);
  (*(v6 + 16))(v8, a1, a3);
  return ModifiedContent.init(content:modifier:)();
}

double WidgetConfiguration.transformPreference<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();

  v11[0] = _PreferenceTransformModifier.init(key:transform:)();
  v11[1] = v8;
  v9 = type metadata accessor for _PreferenceTransformModifier();
  WidgetConfiguration.modifier<A>(_:)(v11, a4, v9);

  return result;
}

double static ContainerBackground.CustomSpecifiedPreferenceModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a6@<X8>)
{
  v8 = *(a1 + 48);
  v9 = *(a1 + 16);
  v31 = *(a1 + 32);
  v32 = v8;
  v10 = *(a1 + 48);
  v33 = *(a1 + 64);
  v11 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v11;
  v26 = v31;
  v27 = v10;
  v28 = *(a1 + 64);
  v34 = *(a1 + 80);
  v29 = *(a1 + 80);
  v24 = v30[0];
  v25 = v9;
  outlined init with copy of _ViewInputs(v30, v37);
  PreferencesInputs.remove<A>(_:)();
  PreferenceKeys.add(_:)();
  v35[2] = v26;
  v35[3] = v27;
  v35[4] = v28;
  v36 = v29;
  v35[0] = v24;
  v35[1] = v25;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v16 = v24;
  v17 = v25;
  v12 = outlined init with copy of _ViewInputs(v35, v37);
  a2(&v22, v12, &v16);
  v37[2] = v18;
  v37[3] = v19;
  v37[4] = v20;
  v38 = v21;
  v37[0] = v16;
  v37[1] = v17;
  outlined destroy of _ViewInputs(v37);
  *&v16 = v32;
  DWORD2(v16) = DWORD2(v32);

  v13 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();

  if (v13)
  {
    *&v16 = v22;
    DWORD2(v16) = LODWORD(v23);

    PreferencesOutputs.subscript.getter();

    MEMORY[0x1EEE9AC00](v14);

    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v16 = v24;
  v17 = v25;
  outlined destroy of _ViewInputs(&v16);
  *a6 = v22;
  result = v23;
  a6[1] = v23;
  return result;
}

uint64_t base witness table accessor for _AttributeBody in ArchivableDisplayList<A>(uint64_t a1)
{
  return swift_getWitnessTable(protocol conformance descriptor for ArchivableDisplayList<A>, a1);
}

{
  return swift_getWitnessTable(protocol conformance descriptor for ArchivableDisplayList<A>, a1);
}

void specialized Set._Variant.remove(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v12 = v13;
    }

    *a2 = *(*(v12 + 48) + 8 * v8);
    specialized _NativeSet._delete(at:)(v8);
    v10 = 0;
    *v2 = v13;
  }

  else
  {
LABEL_5:
    *a2 = 0;
    v10 = 1;
  }

  *(a2 + 8) = v10;
}

void type metadata accessor for Attribute<DisplayList>()
{
  if (!lazy cache variable for type metadata for Attribute<DisplayList>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<DisplayList>);
    }
  }
}

void specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x18D00F6F0](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        outlined init with copy of AccessibilityRelationshipScope.Key(*(v3 + 48) + 48 * v6, v20);
        Hasher.init(_seed:)();
        AnyHashable.hash(into:)();
        MEMORY[0x18D00F6F0](v20[5]);
        v12 = Hasher._finalize()();
        outlined destroy of AccessibilityRelationshipScope.Key(v20);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 48 * v2);
          v16 = (v14 + 48 * v6);
          if (v2 != v6 || v15 >= v16 + 3)
          {
            v10 = *v16;
            v11 = v16[2];
            v15[1] = v16[1];
            v15[2] = v11;
            *v15 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        outlined init with copy of SceneRequestCache.Item(*(v3 + 48) + 56 * v6, &v21);
        Hasher.init(_seed:)();
        String.hash(into:)();
        AnyHashable.hash(into:)();
        v13 = Hasher._finalize()();
        outlined destroy of SceneRequestCache.Item(&v21);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = v15 + 56 * v2;
          v17 = (v15 + 56 * v6);
          if (v2 != v6 || v16 >= v17 + 56)
          {
            v10 = *v17;
            v11 = v17[1];
            v12 = v17[2];
            *(v16 + 48) = *(v17 + 6);
            *(v16 + 16) = v11;
            *(v16 + 32) = v12;
            *v16 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        MEMORY[0x18D00F6F0](v11);
        MEMORY[0x18D00F6F0](v12);
        v13 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 16 * v2);
          v16 = (v14 + 16 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityAttachmentStorage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 316) = 0;
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 317) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 317) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ContainerBackgroundKeys.CustomKey@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI23ContainerBackgroundKeysO12AnyCustomKeyV_AC0H4ViewVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI23ContainerBackgroundKeysO12AnyCustomKeyV_AC0H4ViewVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<ContainerBackgroundKeys.AnyCustomKey, AnyView>, lazy protocol witness table accessor for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey, &type metadata for ContainerBackgroundKeys.AnyCustomKey, MEMORY[0x1E6981910]);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for DropDelegate?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for DropDelegate(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI12DropDelegate_pSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    type metadata accessor for DropDelegate?(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_0(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for DropDelegate(0, a6, a7, 1);
    swift_arrayInitWithCopy();
  }

  return v15;
}

{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    type metadata accessor for _ContiguousArrayStorage<UIKitProxyFocusItem>(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_0(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 17;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 4);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[2 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 16 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for DropDelegate(0, a6, a7, 0);
    swift_arrayInitWithCopy();
  }

  return v15;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    v3 = type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable(MEMORY[0x1E69E7F70], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

void type metadata accessor for [DispatchWorkItemFlags](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t WidgetConfigurationBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v4 = type metadata accessor for WidgetConfigurationBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable(protocol conformance descriptor for WidgetConfigurationBodyAccessor<A>, v4);
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t WidgetConfiguration.preference<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v18 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  v11 = type metadata accessor for _PreferenceWritingModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a2, AssociatedTypeWitness, v13);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  _PreferenceWritingModifier.init(key:value:)();
  WidgetConfiguration.modifier<A>(_:)(v15, v18, v11);
  return (*(v12 + 8))(v15, v11);
}

uint64_t WidgetBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v4 = type metadata accessor for WidgetBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable(protocol conformance descriptor for WidgetBodyAccessor<A>, v4);
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t TupleWidget.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for TupleWidgetConfiguration(0, *(a1 + 16), a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t $defer #1 <A><A1>() in closure #1 in WidgetHost.readPreference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 80);
  v19[3] = *(v3 + 64);
  v19[4] = v4;
  v19[5] = *(v3 + 96);
  v20 = *(v3 + 112);
  v5 = *(v3 + 32);
  v19[0] = *(v3 + 16);
  v19[1] = v5;
  v19[2] = *(v3 + 48);
  v6 = *(v3 + 96);
  v16 = *(v3 + 80);
  v17 = v6;
  v18 = *(v3 + 112);
  v7 = *(v3 + 32);
  v12 = *(v3 + 16);
  v13 = v7;
  v8 = *(v3 + 64);
  v14 = *(v3 + 48);
  v15 = v8;
  outlined init with copy of GraphHost.Data(v19, v11);
  v9 = GraphHost.Data.hostPreferenceKeys.modify();
  PreferenceKeys.remove(_:)();
  v9(v11, 0);
  return outlined destroy of GraphHost.Data(v19);
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.isSymbol.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v1, v7, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v7, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    return 0;
  }

  else
  {
    outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(v7, v4, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
    v8 = v4[*(v2 + 28)];
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v4, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  }

  return v8;
}

char *assignWithCopy for WidgetAuxiliaryViewMetadata.Graphic(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value?(a1, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      v6 = v5;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
      v8 = v7[5];
      v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(&a1[v8], &a2[v8], *(*(v9 - 8) + 64));
      }

      else
      {
        v10 = type metadata accessor for URL();
        (*(*(v10 - 8) + 16))(&a1[v8], &a2[v8], v10);
        swift_storeEnumTagMultiPayload();
      }

      v11 = v7[6];
      v12 = &a1[v11];
      v13 = &a2[v11];
      v14 = *v13;
      v12[4] = v13[4];
      *v12 = v14;
      a1[v7[7]] = a2[v7[7]];
      *&a1[v7[8]] = *&a2[v7[8]];
      v15 = v7[9];
      v16 = &a1[v15];
      v17 = &a2[v15];
      v18 = *v17;
      v16[16] = v17[16];
      *v16 = v18;
      a1[v7[10]] = a2[v7[10]];
      *&a1[v7[11]] = *&a2[v7[11]];
      v19 = v7[12];
      v20 = &a1[v19];
      v21 = &a2[v19];
      v22 = *&a2[v19];
      v23 = v21[12];
      v24 = *(v21 + 2);
      v25 = v21[13];

      outlined copy of ContentTransition.Storage(v22, v24 | (v23 << 32), v25);
      *v20 = v22;
      v20[12] = v23;
      *(v20 + 2) = v24;
      v20[13] = v25;
      v20[14] = v21[14];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *_SymbolEffectsModifier.EffectsEnvironment.value.getter@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  v29 = *Value;
  v30 = v7;

  result = AGGraphGetValue();
  v9 = *result;
  v10 = *(*result + 16);
  if (v10)
  {
    v21 = a3;

    result = EnvironmentValues.symbolEffects.getter();
    v11 = result;
    v12 = 0;
    v13 = 32;
    while (v12 < *(v9 + 16))
    {
      v14 = *(v9 + v13);
      v15 = *(v9 + v13 + 16);
      *&v24[13] = *(v9 + v13 + 29);
      v23 = v14;
      *v24 = v15;
      memmove(&__dst, (v9 + v13), 0x2DuLL);
      v27 = __dst;
      v28[0] = v26[0];
      *(v28 + 13) = *(v26 + 13);
      outlined init with copy of SymbolEffect(&v23, v22);
      outlined init with copy of SymbolEffect(&__dst, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v11);
      }

      result = outlined destroy of SymbolEffect(&__dst);
      *(v11 + 2) = v17 + 1;
      v18 = &v11[64 * v17];
      *(v18 + 4) = a2;
      *(v18 + 5) = v12;
      v20 = v27;
      v19 = v28[0];
      *(v18 + 77) = *(v28 + 13);
      *(v18 + 3) = v20;
      *(v18 + 4) = v19;
      v13 += 48;
      if (v10 == ++v12)
      {

        result = EnvironmentValues.symbolEffects.setter();
        v6 = v29;
        v7 = v30;
        a3 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *a3 = v6;
    a3[1] = v7;
  }

  return result;
}

void storeEnumTagSinglePayload for FocusState.Binding(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t getEnumTagSinglePayload for FocusState.Binding(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void @objc UIHostingController.viewWillDisappear(_:)(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  UIHostingController.viewDidAppear(_:)(a3, &selRef_viewWillDisappear_, specialized UIHostingController._viewWillDisappear(_:), v4);
}

double specialized UIHostingController._viewWillDisappear(_:)()
{
  v1 = v0;
  v2 = specialized UIHostingController.host.getter();
  specialized _UIHostingView.viewControllerWillDisappear(transitionCoordinator:animated:)([v1 transitionCoordinator]);

  swift_unknownObjectRelease();
  v3 = specialized UIHostingController.toolbarBridge.getter();
  if (v3)
  {
    v4 = v3;
    ToolbarBridge.willDisappear<A>(hostingController:)(v1);
  }

  v5 = specialized UIHostingController.navigationBridge.getter();
  if (v5)
  {
    v6 = v5;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = v6[3];
      ObjectType = swift_getObjectType();
      v9 = v6[24];
      v11[0] = v6[23];
      v11[1] = v9;

      outlined copy of EnvironmentValues?(v11[0], v9);
      ViewGraphDelegate.environmentOverride.setter(v11, ObjectType, *(*(v7 + 16) + 8));
      swift_unknownObjectRelease();
    }
  }

  if (specialized UIHostingController.alwaysOnBridge.getter())
  {

    AlwaysOnBridge.hostingControllerWillDisappear()();
  }

  return result;
}

Swift::Void __swiftcall FocusBridge.hostingControllerWillDisappear()()
{
  if (FocusBridge.canAcceptFocus.getter())
  {
    v0 = FocusBridge.host.getter();
    if (v0)
    {
      v1 = v0;
      FocusBridge.canAcceptFocus.setter(0);
      FocusBridge.focusedItem.getter(v4);
      if (v4[5] || v4[6] != 1)
      {
        outlined init with take of FocusItem(v4, v5);
        v2 = FocusItem.platformResponder.getter();
        if (!v2)
        {
          v2 = v1;
        }

        v3 = v2;
        [v2 resignFirstResponder];

        outlined destroy of FocusItem(v5);
      }

      else
      {

        outlined destroy of FocusItem?(v4);
      }
    }
  }
}

uint64_t ToolbarBridge.navigationItemWillDisappear<A>(hostingController:)(uint64_t result)
{
  if (*(*(v1 + direct field offset for ToolbarBridge.navigationAdaptor) + 16))
  {
    MEMORY[0x1EEE9AC00](result);

    static Update.ensure<A>(_:)();
  }

  return result;
}

Swift::Void __swiftcall AlwaysOnBridge.hostingControllerWillDisappear()()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = *v0;
    v0[4] = 0;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v7 = specialized UIHostingController.host.getter();

      v6 = type metadata accessor for _UIHostingView(0, *(v2 + 104), *(v2 + 112), v5);
      swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v6);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }

    else
    {
      __break(1u);
    }
  }
}

void FocusInteractions.resolve(in:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v5 = *v2;
  if (*v2)
  {
    if (v5)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey>, &unk_1F0012178, &protocol witness table for EnvironmentValues.AllControlsNavigableKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>();
      if (v4)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      v6 = 34;
      if (!v10)
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    if ((v5 & 2) != 0)
    {
      v6 = 35;
    }

    if ((~v6 & 0x22) == 0 || (v5 & 4) == 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 | 0x22;
    }
  }

  else
  {
    v7 = 32;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v11)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 | 4;
  }

  *a2 = v9;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double UpdateViewFocusItem.updateValue()()
{
  v30 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = v1;
  outlined init with copy of _FocusableModifier(Value, v29);
  v29[64] = v2 & 1;
  v3 = AGGraphGetValue();
  v5 = v4;
  v6 = *v3;
  LODWORD(v27) = *AGGraphGetValue();
  v7 = ViewIdentity.Tracker.update(for:)();
  v8 = v20;
  v9 = AGGraphGetValue();
  v11 = v10;
  v12 = v9[1];
  v27 = *v9;
  v28 = v12;
  if (AGGraphGetOutputValue())
  {
    if ((v11 & 1) == 0)
    {

      if (v7)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if ((PropertyList.Tracker.hasDifferentUsedValues(_:)() & 1) == 0)
    {
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_10:
      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  PropertyList.Tracker.reset()();

  EnvironmentValues.init(_:tracker:)();

  v27 = v20;
  v28 = v21;
  if (v7)
  {
    goto LABEL_16;
  }

  v13 = v11 & 1;
LABEL_11:
  outlined init with copy of (value: _FocusableModifier, changed: Bool)(v29, &v20);
  v14 = v26;
  outlined destroy of OnCommandModifier(&v20);
  if ((v14 & 1) == 0 && (v5 & 1) == 0 && (v13 & 1) == 0 && AGGraphGetOutputValue())
  {
    outlined destroy of (value: _FocusableModifier, changed: Bool)(v29);
    goto LABEL_20;
  }

LABEL_16:
  outlined init with copy of (value: _FocusableModifier, changed: Bool)(v29, &v20);
  v15 = v20;
  outlined destroy of OnCommandModifier(&v20);
  if (v15 == 1)
  {
    v16 = EnvironmentValues.isEnabled.getter();
  }

  else
  {
    v16 = 0;
  }

  outlined init with copy of (value: _FocusableModifier, changed: Bool)(v29, &v20);
  v18 = v24;
  v17 = v25;

  outlined destroy of OnCommandModifier(&v20);
  LODWORD(v20) = v8;
  BYTE4(v20) = v16 & 1;
  v21 = v6;
  v22 = v18;
  v23 = v17;
  AGGraphSetOutputValue();
  outlined destroy of (value: _FocusableModifier, changed: Bool)(v29);

LABEL_20:

  return result;
}

uint64_t outlined init with copy of (value: _FocusableModifier, changed: Bool)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (value: _FocusableModifier, changed: Bool)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (value: _FocusableModifier, changed: Bool)()
{
  if (!lazy cache variable for type metadata for (value: _FocusableModifier, changed: Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: _FocusableModifier, changed: Bool));
    }
  }
}

uint64_t outlined destroy of OnCommandModifier(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));

  return a1;
}

uint64_t outlined destroy of (value: _FocusableModifier, changed: Bool)(uint64_t a1)
{
  type metadata accessor for (value: _FocusableModifier, changed: Bool)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double IsFocusedEnvironmentChild.value.getter@<D0>(_OWORD *a3@<X8>)
{
  Value = AGGraphGetValue();
  v5 = Value[1];
  *&v7 = *Value;
  *(&v7 + 1) = v5;

  if ((*(AGGraphGetValue() + 8) & 8) == 0)
  {
    AGGraphGetValue();
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  result = *&v7;
  *a3 = v7;
  return result;
}

uint64_t specialized RangeReplaceableCollection.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 32;
    v4 = *v1;
    do
    {
      v5 = v4[2];
      outlined init with copy of FocusStoreList.Item(v3, v8);
      outlined init with copy of CollectionOfOne<FocusStoreList.Item>(v8, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v5 >= v4[3] >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5 + 1, 1, v4);
      }

      swift_arrayDestroy();
      if ((v4[2] - v5) > 1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      else
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      ++v4[2];
      outlined init with copy of FocusStoreList.Item(v7, &v4[9 * v5 + 4]);
      outlined destroy of CollectionOfOne<FocusStoreList.Item>(v7);
      result = outlined destroy of CollectionOfOne<FocusStoreList.Item>(v8);
      v3 += 72;
      --v2;
    }

    while (v2);
    *v1 = v4;
  }

  return result;
}

uint64_t outlined destroy of CollectionOfOne<FocusStoreList.Item>(uint64_t a1)
{
  type metadata accessor for CollectionOfOne<FocusStoreList.Item>(0, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, MEMORY[0x1E69E6BC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of CollectionOfOne<FocusStoreList.Item>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CollectionOfOne<FocusStoreList.Item>(0, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, MEMORY[0x1E69E6BC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance FocusStoreList.Key(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v3);
  specialized RangeReplaceableCollection.append<A>(contentsOf:)(v3);
}

void type metadata accessor for CollectionOfOne<FocusStoreList.Item>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for FocusStoreList.Item);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void KeyboardShortcutBridge.flushKeyCommands(_:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_shortcutMap;
  swift_beginAccess();
  v24 = v2;
  v25 = v1;
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v26 = v3;
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      *(v25 + v24) = MEMORY[0x1E69E7CC8];

      v21 = v25 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_currentBindings;
      v22 = MEMORY[0x1E69E7CC0];
      *v21 = MEMORY[0x1E69E7CC0];
      *(v21 + 8) = -1;

      v23 = v25 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_updatedBindings;
      *v23 = v22;
      *(v23 + 8) = -1;

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = *(v3 + 56) + 24 * (v11 | (v10 << 6));
        v14 = *v12;
        v13 = *(v12 + 8);
        v15 = *(v12 + 16);
        outlined init with copy of KeyboardShortcutSource?(a1, v29);
        v16 = v30;
        if (v30)
        {
          v17 = v31;
          v18 = v13;
          v19 = (v31 + 16);
          __swift_project_boxed_opaque_existential_1(v29, v30);
          v28 = *v19;
          v20 = v14;

          v28(v20, v18, v15, v16, v17);
          v3 = v26;

          __swift_destroy_boxed_opaque_existential_1(v29);
          v9 = v10;
          if (!v7)
          {
            goto LABEL_6;
          }
        }

        else
        {
          outlined destroy of KeyboardShortcutSource?(v29);
          v9 = v10;
          if (!v7)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v10 = v9;
      }
    }
  }

  __break(1u);
}

void type metadata accessor for KeyboardShortcutSource?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyboardShortcutSource?)
  {
    type metadata accessor for KeyboardShortcutSource();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyboardShortcutSource?);
    }
  }
}

void type metadata accessor for [AccessibilityNode](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void UIKitHostedFocusItemLifecycle.remove()()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[9];
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = v0[12];
    if (*(v4 + 16) && *(v4 + 32) == 1)
    {
      swift_unknownObjectRetain();

      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>, &type metadata for UIKitHostedFocusItemLifecycle.Event, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_18CD63400;
      *(v5 + 32) = 2;
      *(v5 + 40) = partial apply for closure #1 in UIKitHostedFocusItemLifecycle.remove();
      *(v5 + 48) = v3;
      swift_unknownObjectRetain();
    }

    v0[12] = v5;
  }
}

double protocol witness for static _AttributeBody._destroySelf(_:) in conformance UIKitHostedFocusItemLifecycle(uint64_t a1)
{
  UIKitHostedFocusItemLifecycle.remove()();
  v2 = *(a1 + 96);
  *(a1 + 96) = MEMORY[0x1E69E7CC0];
  *(swift_allocObject() + 16) = v2;
  static Update.enqueueAction(reason:_:)();

  return result;
}

double destroy for ArchivableAppIntentToggle.Box(uint64_t a1)
{

  return result;
}

double destroy for UpdateViewFocusItem(uint64_t a1)
{
  swift_weakDestroy();

  return result;
}

uint64_t FocusStateBindingResponder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void partial apply for closure #1 in UIKitHostedFocusItemLifecycle.remove()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  AnyUIKitHostedFocusItem.move(toParent:)(0, ObjectType, v1);
}

double @objc UIKitContainerFocusResponderItem.__ivar_destroyer(uint64_t a1)
{
  swift_weakDestroy();
  MEMORY[0x18D011290](a1 + direct field offset for UIKitContainerFocusResponderItem.host);

  swift_unknownObjectRelease();
  return result;
}

void protocol witness for static _AttributeBody._destroySelf(_:) in conformance UpdateFocusRingFrame(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = &Strong[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector];
    *v2 = 0;
    v2[4] = 1;
  }
}

uint64_t FocusStoreLocation.__deallocating_deinit()
{
  FocusStoreLocation.deinit();

  return swift_deallocClassInstance();
}

char *FocusStoreLocation.deinit()
{
  v1 = *v0;
  v2 = AnyLocation.deinit();

  swift_weakDestroy();
  v3 = *(v1 + class metadata base offset for FocusStoreLocation);
  (*(*(v3 - 8) + 8))(&v2[*(*v2 + class metadata base offset for FocusStoreLocation + 32)], v3);
  v4 = *(*v2 + class metadata base offset for FocusStoreLocation + 48);
  swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(&v2[v4], v5);
  v6 = *(*v2 + class metadata base offset for FocusStoreLocation + 56);
  type metadata accessor for FocusStore.Entry(255, v3, *(v1 + class metadata base offset for FocusStoreLocation + 8), v7);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(&v2[v6], v8);
  return v2;
}

uint64_t DefaultFocusSectionResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();

  v1 = *(v0 + 304);

  return swift_deallocClassInstance();
}

void closure #1 in UIKitHostedFocusItemLifecycle.flushQueue()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 48;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 24;
      --v1;
    }

    while (v1);
  }
}

void AnyUIKitHostedFocusItem.move(toParent:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  _s2os6LoggerVSgMaTm_3(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v63 - v13;
  v15 = *(a3 + 8);
  v16 = v15(a2, a3, v12);
  if (v16)
  {
    v17 = v16;

    if (v17 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v18 = (v15)(a2, a3);
  if (v18)
  {
    v19 = v18;
    static Log.focus.getter();
    v20 = type metadata accessor for Logger();
    v70 = *(v20 - 8);
    if ((*(v70 + 48))(v14, 1, v20) == 1)
    {
      _s7SwiftUI9FocusItemVSgWOhTm_2(v14, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
    }

    else
    {
      v68 = v20;
      swift_unknownObjectRetain();
      v67 = v19;
      v21 = v19;
      v69 = v4;
      v22 = v21;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v65 = v22;

      v66 = v24;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v72 = v64;
        *v25 = 136315394;
        v26 = specialized UIKitFocusItemDescription.init(_:)(v69);
        v63 = v23;
        v27 = v26;
        v71 = v10;
        v29 = v28;
        swift_unknownObjectRelease();
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v72);

        *(v25 + 4) = v30;
        *(v25 + 12) = 2080;
        v31 = v65;
        v32 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo6UIViewC_Tt0g5Tf4g_nTm(v31);
        v34 = v33;

        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v72);
        v10 = v71;

        *(v25 + 14) = v35;
        v36 = v63;
        _os_log_impl(&dword_18BD4A000, v63, v66, "unparenting: %s from %s", v25, 0x16u);
        v37 = v64;
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v37, -1, -1);
        MEMORY[0x18D0110E0](v25, -1, -1);

        v4 = v69;
      }

      else
      {
        v4 = v69;
        swift_unknownObjectRelease();
      }

      (*(v70 + 8))(v14, v68);
      v19 = v67;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem, 0x1E69DCA38);
    v38 = v19;
    v39 = static UIFocusSystem.focusSystem(for:)();

    if (v39)
    {
      [v39 _focusEnvironmentWillDisappear_];
    }
  }

  v40 = *(a3 + 16);
  v41 = a1;
  v40(a1, a2, a3);
  v42 = (v15)(a2, a3);
  if (v42)
  {
    v43 = v42;
    static Log.focus.getter();
    v44 = type metadata accessor for Logger();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v10, 1, v44) == 1)
    {
      _s7SwiftUI9FocusItemVSgWOhTm_2(v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
    }

    else
    {
      swift_unknownObjectRetain();
      v46 = v10;
      v47 = v43;
      v71 = v46;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v72 = v70;
        *v50 = 136315394;
        v51 = specialized UIKitFocusItemDescription.init(_:)(v4);
        v53 = v52;
        swift_unknownObjectRelease();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v72);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        v55 = v47;
        v56 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo6UIViewC_Tt0g5Tf4g_nTm(v55);
        v58 = v57;

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v72);

        *(v50 + 14) = v59;
        _os_log_impl(&dword_18BD4A000, v48, v49, "parenting: %s to: %s", v50, 0x16u);
        v60 = v70;
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v60, -1, -1);
        MEMORY[0x18D0110E0](v50, -1, -1);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*(v45 + 8))(v71, v44);
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem, 0x1E69DCA38);
    v61 = v43;
    v62 = static UIFocusSystem.focusSystem(for:)();

    if (v62)
    {
      [v62 _focusEnvironmentDidAppear_];
    }
  }
}

double outlined consume of FocusItem.ViewItem?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double closure #1 in _UIHostingView.safeAreaInsets.getter(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  GraphHost.environment.getter();

  EnvironmentValues.layoutDirection.getter();

  return result;
}

void closure #1 in UIHostingController.sizingOptionsDidChange(from:)(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    UIHostingController.idealSizeDidChange(from:to:)(__PAIR128__(v4, v3), __PAIR128__(v6, v5));
  }
}

uint64_t View.defaultFocus<A>(_:_:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a6;
  v32 = a8;
  v33 = a4;
  v30 = a1;
  v31 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v14;
  v17 = type metadata accessor for FocusState.Binding(0, v16, v14, v15);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  v22 = type metadata accessor for DefaultFocusStateModifier(0, a5, a7, v21);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v29 - v25;
  v27 = *a3;
  (*(v18 + 16))(v20, v30, v17, v24);
  (*(v11 + 16))(v13, v31, a5);
  v35 = v27;
  DefaultFocusStateModifier.init(binding:value:priority:)(v20, v13, &v35, a5, v29, v26);
  MEMORY[0x18D00A570](v26, v33, v22, v34);
  return (*(v23 + 8))(v26, v22);
}

uint64_t DefaultFocusStateModifier.init(binding:value:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = type metadata accessor for FocusState.Binding(0, a4, a5, a4);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14 = type metadata accessor for DefaultFocusStateModifier(0, a4, a5, v13);
  result = (*(*(a4 - 8) + 32))(a6 + *(v14 + 36), a2, a4);
  *(a6 + *(v14 + 40)) = v11;
  return result;
}

uint64_t *initializeWithCopy for DefaultFocusStateModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = v5 + v10 + 8;
  v12 = v6 + v10 + 8;

  v8(v11 & ~v10, v12 & ~v10, v7);
  v13 = *(v9 + 48);
  v14 = ((v10 + 16) & ~v10) + v13 + v10;
  v15 = (a1 + v14) & ~v10;
  v16 = (a2 + v14) & ~v10;
  v8(v15, v16, v7);
  *((v13 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t View.focused(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v7 = 1;
  return View.focused<A>(_:equals:)(v8, &v7, a4, MEMORY[0x1E69E6370], a5, MEMORY[0x1E69E6380], a6);
}

Swift::Void __swiftcall _UIHostingView.setNeedsUpdate()()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase._setNeedsUpdate()();
}

void specialized UIKitFocusableViewResponderItem.didUpdateFocus(in:with:)(void *a1)
{
  v2 = v1;
  _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  static Log.focus.getter();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s7SwiftUI9FocusItemVSgWOhTm_1(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _sSay7SwiftUI13ViewResponderCGMaTm_6);
  }

  else
  {
    v9 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = a1;
      v13 = v12;
      v24 = swift_slowAlloc();
      v26 = v24;
      *v13 = 136315138;
      v14 = v9;
      v15 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCAA0c22FocusableViewResponderE033_B6A2D4E72E5722B5103497ADB7778B5FLLC_Tt0g5Tf4g_n(v14);
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v26);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_18BD4A000, v10, v11, "focus changed for: %s", v13, 0xCu);
      v19 = v24;
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x18D0110E0](v19, -1, -1);
      v20 = v13;
      a1 = v25;
      MEMORY[0x18D0110E0](v20, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + 248);
    if (!v22)
    {
      __break(1u);
      return;
    }

    if ([a1 nextFocusedItem])
    {
      swift_unknownObjectRelease();
    }

    v22();
  }

  UIKitFocusableViewResponderItem.updateFocusedState()();
  type metadata accessor for UIKitFocusableViewResponderItem();
  if (UIFocusItem.isFocused.getter())
  {
    UIKitFocusableViewResponderItem.startTrackingFrameChanges()();
  }

  else
  {
    UIKitFocusableViewResponderItem.stopTrackingFrameChanges()();
  }
}

void UIKitFocusableViewResponderItem.startTrackingFrameChanges()()
{
  v13 = *MEMORY[0x1E69E9840];
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    v2 = Attribute;
    v3 = AGGraphGetAttributeSubgraph();
    IsValid = AGSubgraphIsValid();

    if (IsValid)
    {
      v5 = MEMORY[0x18D00ABE0]();
      v6 = v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector;
      if (*(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector + 4))
      {
        v7 = AGGraphGetAttributeSubgraph();
        AGGraphClearUpdate();
        v8 = AGSubgraphGetCurrent();
        AGSubgraphSetCurrent();
        swift_unknownObjectWeakInit();
        v12 = v2;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type UpdateFocusRingFrame and conformance UpdateFocusRingFrame();
        v9 = Attribute.init<A>(body:value:flags:update:)();
        outlined destroy of weak FallbackResponderProvider?(v11);
        *v6 = v9;
        *(v6 + 4) = 0;
        AGGraphGetFlags();
        AGGraphSetFlags();
        AGSubgraphSetCurrent();

        AGGraphSetUpdate();
      }

      else
      {
        MEMORY[0x1EEE9AC00](v5);
        MEMORY[0x1EEE9AC00](v10);
        AGGraphMutateAttribute();
        AGGraphGetFlags();
        AGGraphSetFlags();
      }

      static Update.end()();
    }
  }
}

unint64_t lazy protocol witness table accessor for type UpdateFocusRingFrame and conformance UpdateFocusRingFrame()
{
  result = lazy protocol witness table cache variable for type UpdateFocusRingFrame and conformance UpdateFocusRingFrame;
  if (!lazy protocol witness table cache variable for type UpdateFocusRingFrame and conformance UpdateFocusRingFrame)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateFocusRingFrame, &unk_1F00121F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateFocusRingFrame and conformance UpdateFocusRingFrame);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateFocusRingFrame(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

void @objc _UIHostingView.didUpdateFocus(in:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  specialized _UIHostingView.didUpdateFocus(in:with:)(v6);
}

double specialized _UIHostingView.didUpdateFocus(in:with:)(void *a1)
{

  specialized FocusBridge.didUpdateFocus(in:with:)(a1);

  return result;
}

void *specialized FocusBridge.didUpdateFocus(in:with:)(void *a1)
{
  result = FocusBridge.host.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    v6 = [a1 nextFocusedItem];
    swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = v4;
    static FocusBridge.focusItem(_:in:)(v6, v8, v7, v26);
    swift_unknownObjectRelease();

    FocusBridge.focusedItem.getter(v18);
    if (v21 || v22 != 1)
    {
      outlined init with take of FocusItem(v18, v23);
      if ((v23[33] & 1) != 0 || v27 || v28 != 1 || (v10 = FocusItem.platformResponder.getter()) == 0)
      {
        outlined destroy of FocusItem(v23);
      }

      else
      {
        v11 = v10;
        v12 = [v10 isFirstResponder];

        outlined destroy of FocusItem(v23);
        if (v12)
        {
LABEL_28:

          return _s7SwiftUI9FocusItemVSgWOhTm_2(v26, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
        }
      }
    }

    else
    {
      _s7SwiftUI9FocusItemVSgWOhTm_2(v18, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
    }

    FocusBridge.focusedItem.getter(v23);
    v9 = specialized static FocusItem.isFocusChange(from:to:)(v23, v26);
    _s7SwiftUI9FocusItemVSgWOhTm_2(v23, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
    if (v9)
    {
      FocusBridge.focusedItem.getter(v23);
      if (v24 || v25 != 1)
      {
        outlined init with copy of FocusItem(v23, v18);
        _s7SwiftUI9FocusItemVSgWOhTm_2(v23, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
        outlined init with copy of FocusItem.Base(v18, v15);
        if (v17)
        {
          outlined destroy of FocusItem(v18);
          outlined destroy of FocusItem.Base(v15);
        }

        else
        {
          v13 = v16;

          v13(0);

          outlined destroy of FocusItem(v18);
        }
      }

      else
      {
        _s7SwiftUI9FocusItemVSgWOhTm_2(v23, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
      }

      outlined init with copy of FocusItem?(v26, v23);
      if (v24 || v25 != 1)
      {
        outlined init with copy of FocusItem.Base(v23, v18);
        if (v20)
        {
          outlined destroy of FocusItem.Base(v18);
        }

        else
        {
          v14 = v19;

          v14(1);
        }

        outlined destroy of FocusItem(v23);
      }

      else
      {
        _s7SwiftUI9FocusItemVSgWOhTm_2(v23, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
      }

      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }

    outlined init with copy of FocusItem?(v26, v23);
    FocusBridge.focusedItem.setter(v23);
    goto LABEL_28;
  }

  return result;
}

void static FocusBridge.focusItem(_:in:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = UIFocusEnvironment.nearestRenderer()();
  if (!v7)
  {
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    *a4 = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    a4[3] = xmmword_18CD6A6D0;
    return;
  }

  v8 = v7;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v11 = dynamic_cast_existential_1_superclass_conditional(v8, ObjectType, v10, MEMORY[0x1E697EB90]);
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  memset(v21, 0, 48);
  v21[3] = xmmword_18CD6A6D0;
  if (v11 == a2 || [v11 isDescendantOfView_])
  {
    v12 = UIFocusEnvironment.nearestResponder(in:)(a2, a3);
    swift_unknownObjectRelease();
    _s7SwiftUI9FocusItemVSgWOhTm_2(v21, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
    if (v12)
    {
      v13 = swift_conformsToProtocol2();
      if (!v13)
      {
      }
    }

    else
    {
      v13 = 0;
    }

    swift_weakInit();
    v20 = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v18[32] = 1;
    v19 = v13;
    swift_weakAssign();

    v18[33] = 0;
  }

  else
  {
    if ((UIFocusEnvironment.contains(_:)() & 1) == 0 || (type metadata accessor for ListTableViewCell(0), (v14 = swift_dynamicCastClass()) == 0) || (v15 = *(v14 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host)) == 0 || v15 != a2)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    v16 = v15;
    UIHostingViewBase.viewGraph.getter();

    v17 = MEMORY[0x1E69E6720];
    type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    static Update.dispatchImmediately<A>(reason:_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    _s7SwiftUI9FocusItemVSgWOhTm_2(v21, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, v17, type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>);
  }

  outlined init with take of FocusItem?(v18, v21);
LABEL_21:
  outlined init with take of FocusItem?(v21, a4);
}

id UIFocusEnvironment.nearestRenderer()()
{
  swift_unknownObjectRetain_n();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v0)
  {
LABEL_3:
    swift_unknownObjectRelease();
  }

  else
  {
    while (1)
    {
      swift_unknownObjectRelease();
      v0 = [v0 parentFocusEnvironment];
      swift_unknownObjectRelease();
      if (!v0)
      {
        break;
      }

      swift_unknownObjectRetain();
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        goto LABEL_3;
      }
    }
  }

  return v0;
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

_BYTE *initializeWithTake for Button(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 1;
  v10 = &a1[v9] & ~(v8 | 7);
  v11 = (&a2[v9] & ~(v8 | 7));
  v12 = *(v7 + 64);
  v13 = v12 + ((v8 + 75) & ~v8);
  if ((v13 + 1) > 0x30)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 48;
  }

  v15 = v11[v14];
  v16 = v15 - 3;
  if (v15 < 3)
  {
    goto LABEL_18;
  }

  if (v14 <= 3)
  {
    v17 = v14;
  }

  else
  {
    v17 = 4;
  }

  if (v17 <= 1)
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    v18 = *v11;
  }

  else if (v17 == 2)
  {
    v18 = *v11;
  }

  else if (v17 == 3)
  {
    v18 = *v11 | (v11[2] << 16);
  }

  else
  {
    v18 = *v11;
  }

  v19 = (v18 | (v16 << (8 * v14))) + 3;
  v15 = v18 + 3;
  if (v14 < 4)
  {
    v15 = v19;
  }

LABEL_18:
  if (v15 == 2)
  {
    v31 = *v11;
    v32 = *(v11 + 2);
    *(v10 + 16) = *(v11 + 1);
    *(v10 + 32) = v32;
    *v10 = v31;
    v30 = 2;
  }

  else if (v15 == 1)
  {
    v20 = ~v8;
    v21 = *v11;
    v22 = *(v11 + 1);
    *(v10 + 31) = *(v11 + 31);
    *v10 = v21;
    *(v10 + 16) = v22;
    v23 = (v10 + 42) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v24;
    v26 = *(v24 + 16);
    *(v23 + 31) = *(v24 + 31);
    *v23 = v25;
    *(v23 + 16) = v26;
    v27 = v8 + 35;
    v28 = (v27 + v23) & v20;
    v29 = (v27 + v24) & v20;
    (*(v7 + 32))(v28, v29, v6);
    *(v28 + v12) = *(v29 + v12);
    v30 = 1;
  }

  else
  {
    v30 = 0;
    *v10 = *v11;
  }

  *(v10 + v14) = v30;
  v33 = *(*(a3 + 16) - 8);
  (*(v33 + 32))((v14 + *(v33 + 80) + 1 + v10) & ~*(v33 + 80), &v11[v14 + 1 + *(v33 + 80)] & ~*(v33 + 80));
  return a1;
}

void partial apply for closure #1 in UIKitHostedFocusItemLifecycle.insert()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  ObjectType = swift_getObjectType();
  (*(v1 + 40))(v2, ObjectType, v1);
  AnyUIKitHostedFocusItem.move(toParent:)(v3, ObjectType, v1);
}

void protocol witness for AnyUIKitHostedFocusItem.host.setter in conformance UIKitContainerFocusResponderItem<A>(void *a1)
{
  specialized UIKitContainerFocusResponderItem.host.setter(a1);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void FocusViewGraph.update(graph:)(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(a1 + 208);
      ObjectType = swift_getObjectType();
      v5 = type metadata accessor for FocusHost();
      (*(v3 + 16))(&v10, v5, v5, ObjectType, v3);
      swift_unknownObjectRelease();
      if (v10)
      {
        v6 = v11;
        v7 = swift_getObjectType();
        (*(v6 + 56))(v7, v6);
        swift_unknownObjectRelease();
      }
    }
  }

  if (*(v1 + 18) == 1 && *(v1 + 12) != *MEMORY[0x1E698D3F8])
  {
    *(v1 + 18) = 0;
    v8 = AGCreateWeakAttribute();
    v9 = *(v1 + 17);
    v10 = v8;
    LOBYTE(v11) = v9;
    v12 = 1;
    lazy protocol witness table accessor for type FocusViewGraph.IsFocusSystemEnabledMutation and conformance FocusViewGraph.IsFocusSystemEnabledMutation();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
  }
}

unint64_t lazy protocol witness table accessor for type FocusViewGraph.IsFocusSystemEnabledMutation and conformance FocusViewGraph.IsFocusSystemEnabledMutation()
{
  result = lazy protocol witness table cache variable for type FocusViewGraph.IsFocusSystemEnabledMutation and conformance FocusViewGraph.IsFocusSystemEnabledMutation;
  if (!lazy protocol witness table cache variable for type FocusViewGraph.IsFocusSystemEnabledMutation and conformance FocusViewGraph.IsFocusSystemEnabledMutation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusViewGraph.IsFocusSystemEnabledMutation, &unk_1EFFB2F10, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusViewGraph.IsFocusSystemEnabledMutation and conformance FocusViewGraph.IsFocusSystemEnabledMutation);
  }

  return result;
}

uint64_t protocol witness for GraphMutation.apply() in conformance FocusViewGraph.IsFocusSystemEnabledMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    return AGGraphSetValue();
  }

  return result;
}

void @objc UIHostingController.viewDidDisappear(_:)(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  UIHostingController.viewDidAppear(_:)(a3, &selRef_viewDidDisappear_, specialized UIHostingController._viewDidDisappear(_:), v4);
}

void UpdateFocusRingFrame.updateValue()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    type metadata accessor for UIKitFocusableViewResponderItem();
    if ((UIFocusItem.isFocused.getter() & 1) != 0 && (v1 = swift_unknownObjectWeakLoadStrong()) != 0 && (v2 = v1, v3 = [v1 window], v2, v3) && (v4 = objc_msgSend(v3, sel_windowScene), v3, v4) && (v5 = objc_msgSend(v4, sel__focusSystemSceneComponent), v4, v5))
    {
      AGGraphRegisterDependency();
      v6 = &v13[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath];
      v7 = *&v13[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath];
      v8 = *&v13[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 8];
      v9 = *&v13[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 16];
      v10 = *&v13[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 24];
      *v6 = 0u;
      *(v6 + 1) = 0u;
      v11 = v6[32];
      v6[32] = -1;
      [v5 _requestFocusEffectUpdateToEnvironment_];

      v12 = v5;
    }

    else
    {
      v12 = v13;
    }
  }
}

double outlined consume of Path?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined consume of Path.Storage(a1, a2, a3, a4, a5);
  }

  return result;
}

Swift::Void __swiftcall UIHostingController.idealSizeDidChange(from:to:)(CGSize from, CGSize to)
{
  v3 = v2;
  height = from.height;
  width = from.width;
  v6 = [v2 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6;
  [v6 effectiveUserInterfaceLayoutDirection];

  v8 = *&v3[direct field offset for UIHostingController.host];
  _UIHostingView.viewGraph.getter(v8);

  GraphHost.environment.getter();

  EnvironmentValues.pixelLength.getter();
  v10 = v9;

  v11 = [v3 view];
  if (!v11)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 safeAreaInsets];

  CGSize.inset(by:)();
  v14 = v10 * ceil(v13 / v10);
  v16 = v10 * ceil(v15 / v10);
  v17 = ceil(v13);
  v18 = ceil(v15);
  if (v10 == 1.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  if (v10 == 1.0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v14;
  }

  v21 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  if (!*&v3[v21])
  {
    goto LABEL_23;
  }

  if (v20 != width || v19 != height)
  {
    v23 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    if (v3[v23])
    {
      v24 = *&v3[direct field offset for UIHostingController.host];
      _UIHostingView.renderingPhase.getter(&v28);

      if (v28 == 1)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = v3;
        *(v25 + 24) = v20;
        *(v25 + 32) = v19;
        v26 = v3;
        onNextMainRunLoop(do:)();
      }

      else
      {
        [v3 setPreferredContentSize_];
      }
    }

    v27 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    if ((v3[v27] & 2) != 0)
    {
      [*&v3[direct field offset for UIHostingController.host] invalidateIntrinsicContentSize];
    }
  }
}

uint64_t sub_18C09FE64()
{

  return swift_deallocObject();
}

void _UIHostingView.renderingPhase.getter(_BYTE *a2@<X8>)
{
  v3 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  v4 = *(v3 + 114);

  *a2 = v4;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier(&lazy protocol witness table cache variable for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier, type metadata accessor for UIKitSystemButtonConfigurationModifier, protocol conformance descriptor for UIKitSystemButtonConfigurationModifier);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedUIKitButtonBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

double UpdateFocusableViewResponder.updateValue()()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 4);
  v5 = *(Value + 1);
  v6 = *(Value + 2);
  v7 = *(Value + 3);
  v8 = v4 == 0;
  v9 = 0x100000000;
  if (v8)
  {
    v9 = 0;
  }

  v10 = *(v1 + 232);
  v11 = *(v1 + 240);
  v12 = *(v1 + 248);
  v13 = *(v1 + 256);
  *(v1 + 232) = v9 | v3;
  *(v1 + 240) = v5;
  *(v1 + 248) = v6;
  *(v1 + 256) = v7;

  outlined copy of FocusItem.ViewItem?(v10, v11, v12, v13);
  outlined consume of FocusItem.ViewItem?(v10, v11, v12, v13);
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  FocusableViewResponder.baseItem.didset(&v23);
  outlined consume of FocusItem.ViewItem?(v10, v11, v12, v13);
  _sSay7SwiftUI13ViewResponderCGMaTm_6(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v14)
  {

    MultiViewResponder.children.setter();
  }

  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = v15[1];
  v27 = *v15;
  v28 = v18;
  if (!AGGraphGetOutputValue())
  {

    goto LABEL_11;
  }

  if ((v17 & 1) == 0)
  {

    goto LABEL_21;
  }

  if (PropertyList.Tracker.hasDifferentUsedValues(_:)())
  {
LABEL_11:
    PropertyList.Tracker.reset()();

    EnvironmentValues.init(_:tracker:)();
    v19 = v23;
    v20 = v24;

    v27 = v19;
    v28 = v20;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>();
    if (v20)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    *(v1 + 224) = v23;

    *(v1 + 268) = EnvironmentValues.isEnabled.getter() & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled>, &type metadata for EnvironmentValues.IsPlatformFocusSystemEnabled, &protocol witness table for EnvironmentValues.IsPlatformFocusSystemEnabled);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>();
    if (v20)
    {

      PropertyList.Tracker.value<A>(_:for:)();

      *(v1 + 305) = v23;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>, &type metadata for EnvironmentValues.__Key_focusGroupID, &protocol witness table for EnvironmentValues.__Key_focusGroupID);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
      *(v1 + 305) = v23;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>, &type metadata for EnvironmentValues.__Key_focusGroupID, &protocol witness table for EnvironmentValues.__Key_focusGroupID);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    swift_beginAccess();
    outlined assign with take of FocusGroupIdentifier?(&v23, v1 + 312);
    swift_endAccess();
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority>, &type metadata for EnvironmentValues.__Key_focusGroupPriority, &protocol witness table for EnvironmentValues.__Key_focusGroupPriority);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupPriority> and conformance EnvironmentPropertyKey<A>();
    if (v20)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    *(v1 + 352) = v23;
  }

LABEL_21:
  if (!AGGraphGetOutputValue())
  {
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_18CD69590;
    *(v21 + 32) = v1;
    v23 = v21;

    AGGraphSetOutputValue();
  }

  return result;
}

double outlined copy of FocusItem.ViewItem?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for FocusItem.ViewItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return a1;
}

unint64_t lazy protocol witness table accessor for type FocusItemFrame and conformance FocusItemFrame()
{
  result = lazy protocol witness table cache variable for type FocusItemFrame and conformance FocusItemFrame;
  if (!lazy protocol witness table cache variable for type FocusItemFrame and conformance FocusItemFrame)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusItemFrame, &unk_1F0018E90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusItemFrame and conformance FocusItemFrame);
  }

  return result;
}

uint64_t UIKitHostedFocusItemLifecycle.insert()()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = v0[8];
    if (v3)
    {
      v4 = v0[9];
      swift_unknownObjectRetain();
      UIKitHostedFocusItemLifecycle.frame.getter();
      v5 = AGCreateWeakAttribute();
      v6 = v5;
      v7 = HIDWORD(v5);
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v4;
      *(v8 + 32) = v6;
      *(v8 + 36) = v7;
      *(v8 + 40) = v2;
      v9 = v0[12];
      swift_unknownObjectRetain();
      v10 = v2;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
      }

      swift_unknownObjectRelease();

      *(v9 + 2) = v12 + 1;
      v13 = &v9[24 * v12];
      result = 1;
      v13[32] = 1;
      *(v13 + 5) = partial apply for closure #1 in UIKitHostedFocusItemLifecycle.insert();
      *(v13 + 6) = v8;
      v0[12] = v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t UIKitHostedFocusItemLifecycle.frame.getter()
{
  if (*(v0 + 60) != 1)
  {
    return *(v0 + 56);
  }

  v1 = *(v0 + 48);
  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type FocusItemFrame and conformance FocusItemFrame();
  v3 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  result = v3;
  *(v0 + 56) = v3;
  *(v0 + 60) = 0;
  return result;
}

double static DefaultFocusStateModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v50 = *(a2 + 32);
  v51 = v9;
  v11 = *(a2 + 48);
  v52 = *(a2 + 64);
  v12 = *(a2 + 16);
  v48 = *a2;
  v49 = v12;
  v13 = *(a2 + 64);
  v45 = v11;
  v46 = v13;
  v42 = v48;
  v14 = *a1;
  v53 = *(a2 + 80);
  v47 = *(a2 + 80);
  v43 = v10;
  v44 = v50;
  a3(&v39);
  *&v42 = v51;
  DWORD2(v42) = DWORD2(v51);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    type metadata accessor for DefaultFocusSectionResponder(0);
    v15 = swift_allocObject();
    outlined init with copy of _ViewInputs(&v48, &v42);
    ViewTransform.init()();
    v16 = v50;
    v45 = v51;
    v46 = v52;
    v17 = v49;
    v42 = v48;
    *(v15 + 264) = 0;
    *(v15 + 272) = 0;
    *(v15 + 280) = 1;
    *(v15 + 304) = 0;
    *(v15 + 292) = 0;
    *(v15 + 284) = 0;
    v47 = v53;
    v43 = v17;
    v44 = v16;
    v18 = DefaultLayoutViewResponder.init(inputs:)();
    LODWORD(v40[0]) = v14;
    type metadata accessor for DefaultFocusStateModifier(255, a4, a5, v19);
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    closure #1 in static DefaultFocusStateModifier._makeView(modifier:inputs:body:)(1, a4, a5, v20);
    AGGraphCreateOffsetAttribute2();
    swift_beginAccess();
    *(v18 + 284) = AGCreateWeakAttribute();
    swift_endAccess();
    LODWORD(v42) = v14;
    _GraphValue.value.getter();
    if (*(*(type metadata accessor for FocusState.Binding(0, a4, a5, v21) - 8) + 64))
    {
      closure #2 in static DefaultFocusStateModifier._makeView(modifier:inputs:body:)(1, a4, a5, v22);
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    LODWORD(v40[0]) = v14;
    _GraphValue.value.getter();
    if (*(*(a4 - 8) + 64))
    {
      closure #3 in static DefaultFocusStateModifier._makeView(modifier:inputs:body:)(1, a4, a5, v24);
    }

    v25 = AGGraphCreateOffsetAttribute2();
    *&v42 = __PAIR64__(v25, OffsetAttribute2);
    MEMORY[0x1EEE9AC00](v25);
    DefaultFocusResponder = type metadata accessor for QueryDefaultFocusResponder(0, a4, a5, v26);
    WitnessTable = swift_getWitnessTable("\tA\ab(R\a", DefaultFocusResponder);
    type metadata accessor for BaseFocusResponder?(0, &lazy cache variable for type metadata for Attribute<BaseFocusResponder?>, type metadata accessor for BaseFocusResponder?, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v42, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_41, &v36, DefaultFocusResponder, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
    swift_beginAccess();
    *(v18 + 292) = AGCreateWeakAttribute();
    swift_endAccess();
    v45 = v51;
    v46 = v52;
    v29 = HIDWORD(v51);
    v47 = v53;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v30 = _ViewInputs.animatedPosition()();
    v45 = v51;
    v46 = v52;
    v47 = v53;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    swift_beginAccess();
    v31 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v42 = v39;

    v32 = _ViewOutputs.viewResponders()();

    v45 = v51;
    v46 = v52;
    v47 = v53;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v33 = _ViewInputs.isEnabled.getter();
    *&v42 = __PAIR64__(v30, v29);
    *(&v42 + 1) = __PAIR64__(v32, v31);
    LODWORD(v43) = v33;
    *(&v43 + 1) = v18;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for BaseFocusResponder?(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type DefaultFocusSectionResponderFilter and conformance DefaultFocusSectionResponderFilter();

    v34 = Attribute.init<A>(body:value:flags:update:)();

    v40[2] = v50;
    v40[3] = v51;
    v40[4] = v52;
    v41 = v53;
    v40[0] = v48;
    v40[1] = v49;
    outlined init with copy of _ViewInputs(&v48, &v42);
    UIKitHostedFocusItemLifecycle.init(inputs:responders:)(v40, v34, &v42);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of UIKitHostedFocusItemLifecycle(&v42);
    AGGraphSetFlags();
    LOBYTE(v42) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a6 = v39;
  result = *(&v39 + 1);
  a6[1] = *(&v39 + 1);
  return result;
}

uint64_t _UIHostingView._preferredFocusEnvironments.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  specialized _UIHostingView.focusBridge.getter();

  v3 = FocusBridge.requestedFocusEnvironments.getter();

  v5 = type metadata accessor for _UIHostingView(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v4);
  if (UIKitContainerFocusItem.defaultFocusItemsContainer()(v5, &protocol witness table for _UIHostingView<A>))
  {
    v6 = swift_unknownObjectRetain();
    MEMORY[0x18D00CC30](v6);
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_unknownObjectRelease();
  }

  else
  {
    specialized _UIHostingView.focusBridge.getter();

    v7 = FocusBridge.preferredFocusEnvironments.getter();

    specialized Array.append<A>(contentsOf:)(v7);
  }

  return v3;
}

uint64_t FocusBridge.requestedFocusEnvironments.getter()
{
  v1 = *(v0 + 160);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  *(v0 + 160) = 0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [objc_opt_self() viewControllerForView_]) == 0)
  {
    swift_unknownObjectRetain();
    v3 = v1;
  }

  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 64);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD69590;
  *(v9 + 32) = v3;
  swift_unknownObjectRelease();
  return v9;
}

Class @objc _UIHostingView._childContainers.getter(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void *a5)
{
  v8 = a1;
  a3();

  type metadata accessor for _UISceneBSActionHandler(0, a4, a5);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

uint64_t outlined init with copy of WeakBox<UIView>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_2(0, &lazy cache variable for type metadata for WeakBox<UIView>, &lazy cache variable for type metadata for UIView, 0x1E69DD250, type metadata accessor for NSObject);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WeakBox<UIFocusItem>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<UIFocusItem>(0, &lazy cache variable for type metadata for WeakBox<UIFocusItem>, 255, type metadata accessor for UIFocusItem, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for WeakBox<UIFocusItem>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WeakBox<UIFocusItem>)
  {
    type metadata accessor for UIFocusItem();
    v1 = type metadata accessor for WeakBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WeakBox<UIFocusItem>);
    }
  }
}

void closure #1 in static FocusBridge.defaultFocusItemsContainer(responderNode:host:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  type metadata accessor for _SemanticFeature<Semantics_v6>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && ((*(a2 + 48))(*a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = (*(a2 + 8))(*a1, a2);
  if (v10)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = swift_conformsToProtocol2();
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = v13;
    if (((*(v13 + 24))(ObjectType, v13) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v15 = 0;
      goto LABEL_12;
    }

    if (*a3)
    {
LABEL_7:
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    AnyUIKitHostedFocusItem.addToHostIfNeeded(_:)(a4, ObjectType, *(v14 + 8));
    *a3 = v11;
    a3[1] = v14;
    swift_unknownObjectRelease();
LABEL_11:
    v15 = 1;
    goto LABEL_12;
  }

LABEL_8:
  *a3 = 0;
  a3[1] = 0;
  swift_unknownObjectRelease();
  v15 = 2;
LABEL_12:
  *a5 = v15;
}

char *UIFocusEnvironment.nearestResponder(in:)(id a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(a2 + 24))(ObjectType, a2);

  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7 || !v2)
  {
    goto LABEL_6;
  }

  v8 = v7;
  v9 = swift_getObjectType();
  swift_unknownObjectRetain();
  v10 = UIFocusEnvironment.nearestRenderer()();
  if (!v10 || (v11 = v10, swift_unknownObjectRelease(), v11 != a1))
  {
    swift_unknownObjectRelease();
LABEL_6:
    swift_unknownObjectRetain_n();
    while (1)
    {
      swift_getObjectType();
      v12 = swift_conformsToProtocol2();
      if (v12 && v3 && (v13 = v12, v14 = swift_getObjectType(), (v15 = (*(v13 + 8))(v14, v13)) != 0))
      {
        v16 = v15;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectRelease();
        if (Strong)
        {
          swift_unknownObjectRelease();
          if (Strong == a1)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v16 = [v3 parentFocusEnvironment];
      swift_unknownObjectRelease();
      if (!v16)
      {
        return v16;
      }

      swift_unknownObjectRetain();
      v3 = v16;
    }
  }

  v16 = (*(v8 + 56))(v9, v8);
LABEL_17:
  swift_unknownObjectRelease();
  return v16;
}

Swift::Void __swiftcall AnyUIKitHostedFocusItem.ensureHost()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 8))();
  if (v4)
  {

    return;
  }

  v5 = *(v2 + 56);
  if (!v5(v3, v2))
  {
    goto LABEL_11;
  }

  type metadata accessor for UIViewResponder(0);
  while (!swift_dynamicCastClass())
  {
    v6 = dispatch thunk of ResponderNode.nextResponder.getter();

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    v8 = v5(v3, v2);
    if (!v8 || (v9 = v8, swift_beginAccess(), v10 = swift_unknownObjectWeakLoadStrong(), v11 = *(v9 + 24), , !v10) || (ObjectType = swift_getObjectType(), Strong = ViewGraphDelegate.uiView.getter(ObjectType, v11), swift_unknownObjectRelease(), !Strong))
    {
LABEL_47:

      return;
    }
  }

  type metadata accessor for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD69590;
  *(inited + 32) = Strong;
  v21 = Strong;
  while (1)
  {
    v14 = inited >> 62;
    if (!(inited >> 62))
    {
      break;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_53;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_54;
    }

LABEL_17:
    if ((inited & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x18D00E9C0](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v15 = *(inited + 32);
    }

    v16 = v15;
    if (v14)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_51;
      }

      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_52;
      }

      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    v18 = v17 - 1;
    if (__OFSUB__(v17, 1))
    {
      goto LABEL_50;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v14)
      {
LABEL_32:
        __CocoaSet.count.getter();
      }

LABEL_33:
      inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_34;
    }

    if (v14)
    {
      goto LABEL_32;
    }

    if (v18 > *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_33;
    }

LABEL_34:
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    v22 = inited;
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v16)
    {

      AnyUIKitHostedFocusItem.addToHostIfNeeded(_:)(v16, v3, v2);

      goto LABEL_46;
    }

    v19 = [v16 subviews];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v20);
    inited = v22;
    if (v22 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_44:

LABEL_46:

        goto LABEL_47;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

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
}

uint64_t UIKitFocusableViewResponderItem.FocusedStateCommitMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v10[4];
    v8 = v11;
    v9 = v12;
    if (static WeakAttribute.== infix(_:_:)())
    {
      *v2 = v7;
      result = 1;
      *(v2 + 4) = v8;
      *(v2 + 8) = v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double UIKitFocusableViewResponderItem.updateFocusedState()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 304);

    if ((v2 & 1) == 0 && AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
    {
      v3 = AGGraphGetAttributeGraph();
      AGGraphRef.viewGraph()();

      type metadata accessor for UIKitFocusableViewResponderItem();
      UIFocusItem.isFocused.getter();
      lazy protocol witness table accessor for type UIKitFocusableViewResponderItem.FocusedStateCommitMutation and conformance UIKitFocusableViewResponderItem.FocusedStateCommitMutation();
      default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
      GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    }
  }

  return result;
}

void AnyUIKitHostedFocusItem.addToHostIfNeeded(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  _s2os6LoggerVSgMaTm_3(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = (*(a3 + 8))(a2, a3, v9);
  if (v12)
  {
  }

  else
  {
    static Log.focus.getter();
    v13 = type metadata accessor for Logger();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      _s7SwiftUI9FocusItemVSgWOhTm_2(v11, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_3);
    }

    else
    {
      swift_unknownObjectRetain();
      v15 = a1;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v38 = v14;
        v19 = v18;
        v37 = swift_slowAlloc();
        v39 = v37;
        *v19 = 136315394;
        v20 = specialized UIKitFocusItemDescription.init(_:)(v4);
        v35 = v17;
        v21 = v20;
        v36 = v16;
        v23 = v22;
        swift_unknownObjectRelease();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v39);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2080;
        v25 = v15;
        v26 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo6UIViewC_Tt0g5Tf4g_nTm(v25);
        v28 = v27;

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v39);

        *(v19 + 14) = v29;
        v16 = v36;
        _os_log_impl(&dword_18BD4A000, v36, v35, "adding unmanaged: %s to: %s", v19, 0x16u);
        v30 = v37;
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v30, -1, -1);
        v31 = v19;
        v14 = v38;
        MEMORY[0x18D0110E0](v31, -1, -1);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*(v14 + 8))(v11, v13);
    }

    v32 = *(a3 + 16);
    v33 = a1;
    v32(a1, a2, a3);
  }
}