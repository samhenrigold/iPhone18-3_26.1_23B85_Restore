uint64_t specialized closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, void (*a5)(__int128 *, void *), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v13 = outlined init with copy of _LazyLayout_Subviews.Node(a2, &v27);
  if (v36 != 1)
  {
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v18 = v27;
    v19 = v28;
    MEMORY[0x1EEE9AC00](v13);
    v16[2] = a4;
    v17 = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(a1, &v17, a6, v16);
    v14 = outlined destroy of _LazyLayout_Subviews(&v18);
    if ((*a3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = 1;
    goto LABEL_6;
  }

  v20 = v29;
  v21 = v30;
  *&v22 = v31;
  v18 = v27;
  v19 = v28;
  a5(&v18, a1);
  v14 = outlined destroy of _LazyLayout_Section(&v18);
  if (*a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = a7(v14);
LABEL_6:
  *a3 = result & 1;
  return result;
}

uint64_t specialized StackPlacement.placeSection(_:from:)(__int128 *a1, uint64_t *a2, __n128 a3)
{
  outlined destroy of GlassEntryView?(v3 + 152, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 248) = 0u;
  specialized StackPlacement.flushMinorGroup()(0);
  result = specialized StackPlacement.shouldStop()();
  if (result)
  {
    return result;
  }

  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  v32 = *(a1 + 8);
  v33 = 0;
  v8 = a1[1];
  v28 = *a1;
  v29 = v8;
  v9 = _LazyLayout_Section.header.getter(v27);
  MEMORY[0x1EEE9AC00](v9);
  v23 = v3;
  v24 = a2;
  v26 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v33, &v26, partial apply for specialized closure #1 in StackPlacement.placeSection(_:from:), v22);
  outlined destroy of _LazyLayout_Subviews(v27);
  result = specialized StackPlacement.shouldStop()();
  if (result)
  {
    return result;
  }

  v10 = a1[3];
  v30 = a1[2];
  v31 = v10;
  v32 = *(a1 + 8);
  v11 = a1[1];
  v28 = *a1;
  v29 = v11;
  _LazyLayout_Section.content.getter(v27);
  MEMORY[0x1EEE9AC00](v12);
  v23 = v3;
  v26 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(a2, &v26, partial apply for specialized closure #2 in StackPlacement.placeSection(_:from:), v22);
  result = outlined destroy of _LazyLayout_Subviews(v27);
  v14 = *a2;
  if (*a2)
  {
    v15 = *(v3 + 32) & 0x7FFFFFFFFFFFFFFFLL;
    if (v15 != 1)
    {
      if (v15)
      {
        v16 = v14 % v15;
        v17 = __OFSUB__(v14, v16);
        v18 = v14 - v16;
        if (!v17)
        {
          *a2 = v18;
          goto LABEL_8;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

LABEL_8:
  specialized StackPlacement.flushMinorGroup()(v13);
  result = specialized StackPlacement.shouldStop()();
  if ((result & 1) == 0 || *(v3 + 56) < *(v3 + 112) && (*(v3 + 72) & 2) != 0)
  {
    v26 = 0;
    v19 = a1[3];
    v30 = a1[2];
    v31 = v19;
    v32 = *(a1 + 8);
    v20 = a1[1];
    v28 = *a1;
    v29 = v20;
    _LazyLayout_Section.footer.getter(v27);
    MEMORY[0x1EEE9AC00](v21);
    v23 = v3;
    v24 = a2;
    v25 = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(&v26, &v25, partial apply for specialized closure #3 in StackPlacement.placeSection(_:from:), v22);
    return outlined destroy of _LazyLayout_Subviews(v27);
  }

  return result;
}

{
  outlined destroy of GlassEntryView?(v3 + 152, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 248) = 0u;
  specialized StackPlacement.flushMinorGroup()(0);
  result = specialized StackPlacement.shouldStop()();
  if (result)
  {
    return result;
  }

  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  v32 = *(a1 + 8);
  v33 = 0;
  v8 = a1[1];
  v28 = *a1;
  v29 = v8;
  v9 = _LazyLayout_Section.header.getter(v27);
  MEMORY[0x1EEE9AC00](v9);
  v23 = v3;
  v24 = a2;
  v26 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v33, &v26, partial apply for specialized closure #1 in StackPlacement.placeSection(_:from:), v22);
  outlined destroy of _LazyLayout_Subviews(v27);
  result = specialized StackPlacement.shouldStop()();
  if (result)
  {
    return result;
  }

  v10 = a1[3];
  v30 = a1[2];
  v31 = v10;
  v32 = *(a1 + 8);
  v11 = a1[1];
  v28 = *a1;
  v29 = v11;
  _LazyLayout_Section.content.getter(v27);
  MEMORY[0x1EEE9AC00](v12);
  v23 = v3;
  v26 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(a2, &v26, partial apply for specialized closure #2 in StackPlacement.placeSection(_:from:), v22);
  result = outlined destroy of _LazyLayout_Subviews(v27);
  v14 = *a2;
  if (*a2)
  {
    v15 = *(v3 + 32) & 0x7FFFFFFFFFFFFFFFLL;
    if (v15 != 1)
    {
      if (v15)
      {
        v16 = v14 % v15;
        v17 = __OFSUB__(v14, v16);
        v18 = v14 - v16;
        if (!v17)
        {
          *a2 = v18;
          goto LABEL_8;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

LABEL_8:
  specialized StackPlacement.flushMinorGroup()(v13);
  result = specialized StackPlacement.shouldStop()();
  if ((result & 1) == 0 || *(v3 + 56) < *(v3 + 112) && (*(v3 + 72) & 2) != 0)
  {
    v26 = 0;
    v19 = a1[3];
    v30 = a1[2];
    v31 = v19;
    v32 = *(a1 + 8);
    v20 = a1[1];
    v28 = *a1;
    v29 = v20;
    _LazyLayout_Section.footer.getter(v27);
    MEMORY[0x1EEE9AC00](v21);
    v23 = v3;
    v24 = a2;
    v25 = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(&v26, &v25, partial apply for specialized closure #3 in StackPlacement.placeSection(_:from:), v22);
    return outlined destroy of _LazyLayout_Subviews(v27);
  }

  return result;
}

uint64_t specialized StackPlacement.placeBody(subview:)(uint64_t a1, uint64_t (*a2)(void))
{
  outlined init with copy of _LazyLayout_Subview(a1, v15);
  v4 = *(v2 + 136);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v8;
  v9 = (v4 + 112 * v7);
  v10 = v15[0];
  v11 = v15[2];
  v9[3] = v15[1];
  v9[4] = v11;
  v9[2] = v10;
  v12 = v15[3];
  v13 = v15[4];
  v14 = v15[6];
  v9[7] = v15[5];
  v9[8] = v14;
  v9[5] = v12;
  v9[6] = v13;
  *(v2 + 136) = v4;
  if (v8 == *(v2 + 32))
  {
    return a2();
  }

  return result;
}

BOOL specialized StackPlacement.shouldStop()()
{
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - v3;
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    if (one-time initialization token for lazyLayoutPrefetch != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v2, static Log.lazyLayoutPrefetch);
    outlined init with copy of ObservationTracking._AccessList?(v6, v4, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    v7 = type metadata accessor for Logger();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      outlined destroy of ObservationTracking._AccessList?(v4, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    }

    else
    {
      v9 = v0;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v16 = v8;
        v13 = v12;
        v14 = swift_slowAlloc();
        v17 = v14;
        *v13 = 136446210;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000047, 0x800000018DD75AD0, &v17);
        _os_log_impl(&dword_18D018000, v10, v11, "%{public}s: Stopping placement because deadline passed", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x193AC4820](v14, -1, -1);
        v15 = v13;
        v8 = v16;
        MEMORY[0x193AC4820](v15, -1, -1);
      }

      v0 = v9;
      (*(v8 + 8))(v4, v7);
    }

    result = 1;
    *(v0 + 320) = 1;
  }

  else if (*(v0 + 128))
  {
    return *(v0 + 64) <= *(v0 + 112);
  }

  else
  {
    return *(v0 + 120) < *(v0 + 96);
  }

  return result;
}

{
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - v3;
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    if (one-time initialization token for lazyLayoutPrefetch != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v2, static Log.lazyLayoutPrefetch);
    outlined init with copy of ObservationTracking._AccessList?(v6, v4, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    v7 = type metadata accessor for Logger();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      outlined destroy of ObservationTracking._AccessList?(v4, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    }

    else
    {
      v9 = v0;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v16 = v8;
        v13 = v12;
        v14 = swift_slowAlloc();
        v17 = v14;
        *v13 = 136446210;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000047, 0x800000018DD75980, &v17);
        _os_log_impl(&dword_18D018000, v10, v11, "%{public}s: Stopping placement because deadline passed", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x193AC4820](v14, -1, -1);
        v15 = v13;
        v8 = v16;
        MEMORY[0x193AC4820](v15, -1, -1);
      }

      v0 = v9;
      (*(v8 + 8))(v4, v7);
    }

    result = 1;
    *(v0 + 320) = 1;
  }

  else if (*(v0 + 128))
  {
    return *(v0 + 64) <= *(v0 + 112);
  }

  else
  {
    return *(v0 + 120) < *(v0 + 96);
  }

  return result;
}

void specialized StackPlacement.flushMinorGroup()(__n128 a1)
{
  v4 = (v1 + 136);
  v3 = *(v1 + 136);
  if (!*(v3 + 16))
  {
    return;
  }

  v5 = v1;
  if (*(v1 + 104))
  {
    *(v1 + 104) = 0;
    goto LABEL_28;
  }

  v6 = *(v1 + 144);
  v2 = v5 + 144;
  v7 = *(v5 + 48);
  LOBYTE(v42[0]) = *(v5 + 16);
  specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:)(v3, v6, v7);
  v10 = v9;
  v11 = v8;
  v12 = v6 == 0;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *&v8;
  }

  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  EstimationCache.add(length:spacing:count:)(v13, v12, 1, v10);
  v14 = *(v5 + 96);
  type metadata accessor for EstimationCache(0);
  if (v10 == 0.0)
  {
    IndexSet.insert(_:)(v14);
  }

  else if (IndexSet.contains(_:)(v14))
  {
    IndexSet.remove(_:)(v14);
  }

  if (AGGraphHasDeadlinePassed())
  {
    goto LABEL_34;
  }

  v15 = v11 + *(v5 + 112);
  *(v5 + 112) = v15;
  if (specialized StackPlacement.isVisible(length:)(v10))
  {
    v16 = v5;
    specialized StackPlacement.addVisibleSubview(length:spacing:)(v10, v11);
    specialized StackPlacement.flushPendingHeader()();
    if (*(*(v5 + 136) + 16))
    {
      v17 = *(v5 + 48);
      v18 = *v5;

      AlignmentKey.fraction.getter(v18);
      v15 = *(v5 + 112);
      v20 = 0.0;
      if (*(v5 + 24))
      {
        v21 = v15 + 0.0;
      }

      else
      {
        v21 = 0.0;
      }

      if (!*(v5 + 24))
      {
        v20 = v15 + 0.0;
      }

      v22 = v10 * 0.5 + v20;
      v23 = *(v5 + 32) == 1;
      if (*(v5 + 32) == 1)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v10;
      }

      LOBYTE(v42[0]) = *(v5 + 32) == 1;
      *&v35 = v24;
      BYTE8(v35) = v23;
      v36 = v17;
      v37 = 0;
      v38 = 0x3FE0000000000000;
      v39 = v19;
      v40 = v22;
      v41 = v17 * v19 + v21;
      _LazyLayout_Subview.place(at:)(&v35, v42);
      v16 = *(v5 + 264);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
LABEL_24:
    v2 = *(v16 + 2);
    v25 = *(v16 + 3);
    if (v2 >= v25 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v2 + 1, 1, v16);
    }

    *(v16 + 2) = v2 + 1;
    v26 = &v16[80 * v2];
    *(v26 + 2) = v42[0];
    v27 = v42[1];
    v28 = v42[2];
    v29 = v42[4];
    *(v26 + 5) = v42[3];
    *(v26 + 6) = v29;
    *(v26 + 3) = v27;
    *(v26 + 4) = v28;

    *(v5 + 264) = v16;
  }

  *(v5 + 112) = v10 + v15;
LABEL_28:
  v30 = *(v5 + 32);
  v31 = *(v5 + 96);
  v32 = __OFADD__(v31, v30);
  v33 = v31 + v30;
  if (v32)
  {
    __break(1u);
LABEL_34:
    AGGraphCancelUpdate();
    *(v5 + 320) = 1;
    v34 = v2;
    goto LABEL_30;
  }

  *(v5 + 96) = v33;
  v34 = (v5 + 144);
LABEL_30:

  swapSubviews(_:_:)(v34, v4);
}

{
  v4 = (v1 + 136);
  v3 = *(v1 + 136);
  if (!*(v3 + 16))
  {
    return;
  }

  v5 = v1;
  if (*(v1 + 104))
  {
    *(v1 + 104) = 0;
    goto LABEL_28;
  }

  v6 = *(v1 + 144);
  v2 = v5 + 144;
  v7 = *(v5 + 48);
  LOBYTE(v42[0]) = *(v5 + 16);
  specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:)(v3, v6, v7);
  v10 = v9;
  v11 = v8;
  v12 = v6 == 0;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *&v8;
  }

  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  EstimationCache.add(length:spacing:count:)(v13, v12, 1, v10);
  v14 = *(v5 + 96);
  type metadata accessor for EstimationCache(0);
  if (v10 == 0.0)
  {
    IndexSet.insert(_:)(v14);
  }

  else if (IndexSet.contains(_:)(v14))
  {
    IndexSet.remove(_:)(v14);
  }

  if (AGGraphHasDeadlinePassed())
  {
    goto LABEL_34;
  }

  v15 = v11 + *(v5 + 112);
  *(v5 + 112) = v15;
  if (specialized StackPlacement.isVisible(length:)(v10))
  {
    v16 = v5;
    specialized StackPlacement.addVisibleSubview(length:spacing:)(v10, v11);
    specialized StackPlacement.flushPendingHeader()();
    if (*(*(v5 + 136) + 16))
    {
      v17 = *(v5 + 48);
      v18 = *v5;

      AlignmentKey.fraction.getter(v18);
      v15 = *(v5 + 112);
      v20 = 0.0;
      if (*(v5 + 24))
      {
        v21 = v15 + 0.0;
      }

      else
      {
        v21 = 0.0;
      }

      if (!*(v5 + 24))
      {
        v20 = v15 + 0.0;
      }

      v22 = v17 * v19 + v20;
      v23 = *(v5 + 32) == 1;
      LOBYTE(v42[0]) = 0;
      *&v35 = v17;
      if (v23)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v10;
      }

      BYTE8(v35) = 0;
      v36 = v24;
      v37 = v23;
      v38 = v19;
      v39 = 0x3FE0000000000000;
      v40 = v22;
      v41 = v10 * 0.5 + v21;
      _LazyLayout_Subview.place(at:)(&v35, v42);
      v16 = *(v5 + 264);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
LABEL_24:
    v2 = *(v16 + 2);
    v25 = *(v16 + 3);
    if (v2 >= v25 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v2 + 1, 1, v16);
    }

    *(v16 + 2) = v2 + 1;
    v26 = &v16[80 * v2];
    *(v26 + 2) = v42[0];
    v27 = v42[1];
    v28 = v42[2];
    v29 = v42[4];
    *(v26 + 5) = v42[3];
    *(v26 + 6) = v29;
    *(v26 + 3) = v27;
    *(v26 + 4) = v28;

    *(v5 + 264) = v16;
  }

  *(v5 + 112) = v10 + v15;
LABEL_28:
  v30 = *(v5 + 32);
  v31 = *(v5 + 96);
  v32 = __OFADD__(v31, v30);
  v33 = v31 + v30;
  if (v32)
  {
    __break(1u);
LABEL_34:
    AGGraphCancelUpdate();
    *(v5 + 320) = 1;
    v34 = v2;
    goto LABEL_30;
  }

  *(v5 + 96) = v33;
  v34 = (v5 + 144);
LABEL_30:

  swapSubviews(_:_:)(v34, v4);
}

void specialized StackPlacement.addVisibleSubview(length:spacing:)(double a1, double a2)
{
  v3 = *(v2 + 96);
  v4 = *(v2 + 280);
  if (v3 >= *(v2 + 272))
  {
    v5 = *(v2 + 272);
  }

  else
  {
    v5 = *(v2 + 96);
  }

  v6 = *(v2 + 32);
  v7 = __OFADD__(v3, v6);
  v8 = v3 + v6;
  v9 = v7;
  if (v8 - 1 > v4)
  {
    v4 = v8 - 1;
  }

  v10 = *(v2 + 112);
  v11 = v10 - a2;
  v12 = *(v2 + 296);
  if (v11 >= *(v2 + 288))
  {
    v11 = *(v2 + 288);
  }

  *(v2 + 272) = v5;
  *(v2 + 280) = v4;
  v13 = v10 + a1;
  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  *(v2 + 288) = v11;
  *(v2 + 296) = v14;
  if ((*(v2 + 88) & 1) == 0)
  {
    if (v9)
    {
      __break(1u);
    }

    else if (v8 >= v3)
    {
      v15 = *(v2 + 80);
      if (v15 >= v3 && v15 < v8)
      {
        v16 = *(v2 + 304);
        if (v10 < v16)
        {
          v16 = v10;
        }

        if (*(v2 + 312) > v13)
        {
          v13 = *(v2 + 312);
        }

        *(v2 + 304) = v16;
        *(v2 + 312) = v13;
      }

      return;
    }

    __break(1u);
  }
}

void specialized StackPlacement.placeHeaderOrFooter(start:subview:kind:)(uint64_t *a1, uint64_t a2, unsigned __int8 a3, __n128 a4)
{
  v8 = v4;
  v10 = a3;
  v11 = *a1;
  if (!*a1)
  {
    v5 = &v71;
    if (v4[104])
    {
      v4[104] = 0;
      if (a3 == 1)
      {
        outlined destroy of GlassEntryView?((v4 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
        outlined init with copy of _LazyLayout_Subview(a2, (v4 + 152));
      }

      goto LABEL_68;
    }

    v17 = v4[24];
    if (v17)
    {
      v18 = *(v4 + 5);
    }

    else
    {
      v18 = 0;
    }

    if (v4[24])
    {
      v19 = 0.0;
    }

    else
    {
      v19 = *(v4 + 5);
    }

    v20 = *(v4 + 18);
    v60 = v18;
    if (v20)
    {
      if (!*(v20 + 16))
      {
        goto LABEL_86;
      }

      outlined init with copy of _LazyLayout_Subview(v20 + 32, &v71);
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
    }

    v21 = *(a2 + 8);
    v22 = *(LazyLayoutViewCache.item(data:)((a2 + 16)) + 44);

    v23 = *MEMORY[0x1E698D3F8];
    v68 = v21;
    v69 = v22;
    v70 = v23;
    *&v61 = v60;
    BYTE8(v61) = v17 ^ 1;
    v62 = v19;
    v63 = v17;
    LayoutProxy.lengthThatFits(_:in:)(&v61, v17);
    v6 = v24;
    MEMORY[0x1EEE9AC00](v25);
    v26 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply));
    v28 = v27;
    outlined destroy of GlassEntryView?(&v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    if (v28)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v26;
    }

    v30 = v20 == 0;
    if (v20)
    {
      v31 = *&v29;
    }

    else
    {
      v31 = 0;
    }

    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
    EstimationCache.add(length:spacing:count:)(v31, v30, 1, v6);
    v32 = *(v8 + 12);
    type metadata accessor for EstimationCache(0);
    if (v6 == 0.0)
    {
      IndexSet.insert(_:)(v32);
    }

    else if (IndexSet.contains(_:)(v32))
    {
      IndexSet.remove(_:)(v32);
    }

    v7 = v29 + *(v8 + 14);
    *(v8 + 14) = v7;
    v4 = v8;
    if (specialized StackPlacement.isVisible(length:)(v6))
    {
      specialized StackPlacement.addVisibleSubview(length:spacing:)(v6, v29);
      specialized StackPlacement.flushPendingHeader()();
      v7 = *(v8 + 14);
      if (v8[24])
      {
        v33 = 0.0;
      }

      else
      {
        v33 = *(v8 + 14);
      }

      if (v8[24])
      {
        v34 = *(v8 + 14);
      }

      else
      {
        v34 = 0.0;
      }

      if (v8[24])
      {
        v35 = *(v8 + 5);
      }

      else
      {
        v35 = v6;
      }

      if (v8[24])
      {
        v36 = v6;
      }

      else
      {
        v36 = *(v8 + 5);
      }

      v37 = 0.5;
      if ((v10 - 1) > 1)
      {
LABEL_60:
        v38 = *(v8 + 4) == 1;
        if (*(v8 + 4) == 1)
        {
          v39 = 0.0;
        }

        else
        {
          v39 = v35;
        }

        LOBYTE(v71) = *(v8 + 4) == 1;
        *&v61 = v39;
        BYTE8(v61) = v38;
        v62 = v36;
        v63 = 0;
        v64 = 0x3FE0000000000000;
        v65 = v37;
        v66 = v33 + v35 * 0.5;
        v67 = v34 + v37 * v36;
        _LazyLayout_Subview.place(at:)(&v61, &v71);
        v4 = *(v8 + 33);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_64;
        }

        goto LABEL_87;
      }
    }

    else
    {
      if ((v8[72] & 2) == 0 || v10 != 2)
      {
        if (v10 == 1)
        {
          v4 = &lazy cache variable for type metadata for _LazyLayout_Subview?;
          v58 = MEMORY[0x1E69E6720];
          outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>((v8 + 152), &v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
          v59 = v71;
          outlined destroy of GlassEntryView?(&v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v58);
          if (!v59)
          {
            outlined destroy of GlassEntryView?((v8 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
            outlined init with copy of _LazyLayout_Subview(a2, (v8 + 152));
          }
        }

        goto LABEL_67;
      }

      if (*(v8 + 35) < *(v8 + 34))
      {
        goto LABEL_67;
      }

      specialized StackPlacement.flushPendingHeader()();
      v7 = *(v8 + 14);
      if (v8[24])
      {
        v33 = 0.0;
      }

      else
      {
        v33 = *(v8 + 14);
      }

      if (v8[24])
      {
        v34 = *(v8 + 14);
      }

      else
      {
        v34 = 0.0;
      }

      if (v8[24])
      {
        v35 = *(v8 + 5);
      }

      else
      {
        v35 = v6;
      }

      if (v8[24])
      {
        v36 = v6;
      }

      else
      {
        v36 = *(v8 + 5);
      }
    }

    AlignmentKey.fraction.getter(*v8);
    goto LABEL_60;
  }

  v12 = *(v4 + 4);
  v13 = __OFSUB__(v11, v12);
  v14 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    do
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
LABEL_64:
      v41 = *(v4 + 2);
      v40 = *(v4 + 3);
      if (v41 >= v40 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v4);
      }

      *(v4 + 2) = v41 + 1;
      v42 = &v4[80 * v41];
      *(v42 + 2) = v71;
      v43 = v72;
      v44 = v73;
      v45 = v5[4];
      *(v42 + 5) = v5[3];
      *(v42 + 6) = v45;
      *(v42 + 3) = v43;
      *(v42 + 4) = v44;
      *(v8 + 33) = v4;
LABEL_67:
      *(v8 + 14) = v6 + v7;
LABEL_68:
      v46 = *(v8 + 4);
      v47 = *(v8 + 12);
      v13 = __OFADD__(v47, v46);
      v48 = v47 + v46;
      if (v13)
      {
        goto LABEL_84;
      }

      *(v8 + 12) = v48;
    }

    while (v46 < 0);
    if (v46)
    {
      v49 = *(v8 + 17);
      do
      {
        outlined init with copy of _LazyLayout_Subview(a2, &v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        v52 = &v49[112 * v51];
        v53 = v71;
        v54 = v73;
        *(v52 + 3) = v72;
        *(v52 + 4) = v54;
        *(v52 + 2) = v53;
        v55 = v5[3];
        v56 = v5[4];
        v57 = v5[6];
        *(v52 + 7) = v5[5];
        *(v52 + 8) = v57;
        *(v52 + 5) = v55;
        *(v52 + 6) = v56;
        --v46;
      }

      while (v46);
      *(v8 + 17) = v49;
    }

    swapSubviews(_:_:)(v8 + 18, v8 + 17);
  }

  else
  {
    *a1 = v14;
    if (a3 == 1)
    {
      v15 = MEMORY[0x1E69E6720];
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>((v4 + 152), &v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      v16 = v71;
      outlined destroy of GlassEntryView?(&v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v15);
      if (!v16)
      {
        outlined destroy of GlassEntryView?((v4 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
        outlined init with copy of _LazyLayout_Subview(a2, (v4 + 152));
      }
    }
  }
}

{
  v8 = v4;
  v10 = a3;
  v11 = *a1;
  if (!*a1)
  {
    v5 = &v71;
    if (v4[104])
    {
      v4[104] = 0;
      if (a3 == 1)
      {
        outlined destroy of GlassEntryView?((v4 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
        outlined init with copy of _LazyLayout_Subview(a2, (v4 + 152));
      }

      goto LABEL_68;
    }

    v17 = v4[24];
    if (v17)
    {
      v18 = *(v4 + 5);
    }

    else
    {
      v18 = 0;
    }

    if (v4[24])
    {
      v19 = 0.0;
    }

    else
    {
      v19 = *(v4 + 5);
    }

    v20 = *(v4 + 18);
    v60 = v18;
    if (v20)
    {
      if (!*(v20 + 16))
      {
        goto LABEL_86;
      }

      outlined init with copy of _LazyLayout_Subview(v20 + 32, &v71);
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
    }

    v21 = *(a2 + 8);
    v22 = *(LazyLayoutViewCache.item(data:)((a2 + 16)) + 44);

    v23 = *MEMORY[0x1E698D3F8];
    v68 = v21;
    v69 = v22;
    v70 = v23;
    *&v61 = v60;
    BYTE8(v61) = v17 ^ 1;
    v62 = v19;
    v63 = v17;
    LayoutProxy.lengthThatFits(_:in:)(&v61, v17);
    v6 = v24;
    MEMORY[0x1EEE9AC00](v25);
    v26 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply));
    v28 = v27;
    outlined destroy of GlassEntryView?(&v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    if (v28)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v26;
    }

    v30 = v20 == 0;
    if (v20)
    {
      v31 = *&v29;
    }

    else
    {
      v31 = 0;
    }

    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
    EstimationCache.add(length:spacing:count:)(v31, v30, 1, v6);
    v32 = *(v8 + 12);
    type metadata accessor for EstimationCache(0);
    if (v6 == 0.0)
    {
      IndexSet.insert(_:)(v32);
    }

    else if (IndexSet.contains(_:)(v32))
    {
      IndexSet.remove(_:)(v32);
    }

    v7 = v29 + *(v8 + 14);
    *(v8 + 14) = v7;
    v4 = v8;
    if (specialized StackPlacement.isVisible(length:)(v6))
    {
      specialized StackPlacement.addVisibleSubview(length:spacing:)(v6, v29);
      specialized StackPlacement.flushPendingHeader()();
      v7 = *(v8 + 14);
      if (v8[24])
      {
        v33 = 0.0;
      }

      else
      {
        v33 = *(v8 + 14);
      }

      if (v8[24])
      {
        v34 = *(v8 + 14);
      }

      else
      {
        v34 = 0.0;
      }

      if (v8[24])
      {
        v35 = *(v8 + 5);
      }

      else
      {
        v35 = v6;
      }

      if (v8[24])
      {
        v36 = v6;
      }

      else
      {
        v36 = *(v8 + 5);
      }

      v37 = 0.5;
      if ((v10 - 1) > 1)
      {
LABEL_60:
        v38 = *(v8 + 4) == 1;
        LOBYTE(v71) = 0;
        *&v61 = v35;
        BYTE8(v61) = 0;
        if (v38)
        {
          v39 = 0.0;
        }

        else
        {
          v39 = v36;
        }

        v62 = v39;
        v63 = v38;
        v64 = v37;
        v65 = 0x3FE0000000000000;
        v66 = v33 + v37 * v35;
        v67 = v34 + v36 * 0.5;
        _LazyLayout_Subview.place(at:)(&v61, &v71);
        v4 = *(v8 + 33);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_64;
        }

        goto LABEL_87;
      }
    }

    else
    {
      if ((v8[72] & 2) == 0 || v10 != 2)
      {
        if (v10 == 1)
        {
          v4 = &lazy cache variable for type metadata for _LazyLayout_Subview?;
          v58 = MEMORY[0x1E69E6720];
          outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>((v8 + 152), &v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
          v59 = v71;
          outlined destroy of GlassEntryView?(&v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v58);
          if (!v59)
          {
            outlined destroy of GlassEntryView?((v8 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
            outlined init with copy of _LazyLayout_Subview(a2, (v8 + 152));
          }
        }

        goto LABEL_67;
      }

      if (*(v8 + 35) < *(v8 + 34))
      {
        goto LABEL_67;
      }

      specialized StackPlacement.flushPendingHeader()();
      v7 = *(v8 + 14);
      if (v8[24])
      {
        v33 = 0.0;
      }

      else
      {
        v33 = *(v8 + 14);
      }

      if (v8[24])
      {
        v34 = *(v8 + 14);
      }

      else
      {
        v34 = 0.0;
      }

      if (v8[24])
      {
        v35 = *(v8 + 5);
      }

      else
      {
        v35 = v6;
      }

      if (v8[24])
      {
        v36 = v6;
      }

      else
      {
        v36 = *(v8 + 5);
      }
    }

    AlignmentKey.fraction.getter(*v8);
    goto LABEL_60;
  }

  v12 = *(v4 + 4);
  v13 = __OFSUB__(v11, v12);
  v14 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    do
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
LABEL_64:
      v41 = *(v4 + 2);
      v40 = *(v4 + 3);
      if (v41 >= v40 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v4);
      }

      *(v4 + 2) = v41 + 1;
      v42 = &v4[80 * v41];
      *(v42 + 2) = v71;
      v43 = v72;
      v44 = v73;
      v45 = v5[4];
      *(v42 + 5) = v5[3];
      *(v42 + 6) = v45;
      *(v42 + 3) = v43;
      *(v42 + 4) = v44;
      *(v8 + 33) = v4;
LABEL_67:
      *(v8 + 14) = v6 + v7;
LABEL_68:
      v46 = *(v8 + 4);
      v47 = *(v8 + 12);
      v13 = __OFADD__(v47, v46);
      v48 = v47 + v46;
      if (v13)
      {
        goto LABEL_84;
      }

      *(v8 + 12) = v48;
    }

    while (v46 < 0);
    if (v46)
    {
      v49 = *(v8 + 17);
      do
      {
        outlined init with copy of _LazyLayout_Subview(a2, &v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        v52 = &v49[112 * v51];
        v53 = v71;
        v54 = v73;
        *(v52 + 3) = v72;
        *(v52 + 4) = v54;
        *(v52 + 2) = v53;
        v55 = v5[3];
        v56 = v5[4];
        v57 = v5[6];
        *(v52 + 7) = v5[5];
        *(v52 + 8) = v57;
        *(v52 + 5) = v55;
        *(v52 + 6) = v56;
        --v46;
      }

      while (v46);
      *(v8 + 17) = v49;
    }

    swapSubviews(_:_:)(v8 + 18, v8 + 17);
  }

  else
  {
    *a1 = v14;
    if (a3 == 1)
    {
      v15 = MEMORY[0x1E69E6720];
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>((v4 + 152), &v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      v16 = v71;
      outlined destroy of GlassEntryView?(&v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v15);
      if (!v16)
      {
        outlined destroy of GlassEntryView?((v4 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
        outlined init with copy of _LazyLayout_Subview(a2, (v4 + 152));
      }
    }
  }
}

uint64_t specialized StackPlacement.isVisible(length:)(double a1)
{
  if (*(v1 + 128) == 1)
  {
    v2 = *(v1 + 112);
    v3 = *(v1 + 56);
    if (v3 <= v2)
    {
      v3 = *(v1 + 112);
    }

    v4 = v2 + a1;
    if (v4 >= *(v1 + 64))
    {
      v4 = *(v1 + 64);
    }

    v5 = a1 == 0.0;
    if (v3 != v4)
    {
      v5 = 0;
    }

    return v3 < v4 || v5;
  }

  else
  {
    v7 = *(v1 + 96);
    v8 = *(v1 + 32) + v7;
    if (v8 < v7)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v1 + 120);
      return v9 >= v7 && v9 < v8;
    }
  }

  return result;
}

uint64_t specialized StackPlacement.flushPendingHeader()()
{
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v0 + 152, &v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  if (!v35)
  {
    return outlined destroy of GlassEntryView?(&v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  }

  v43[3] = v39;
  v43[4] = v40;
  v43[5] = v41;
  v42 = v35;
  v43[0] = v36;
  v43[1] = v37;
  v43[2] = v38;
  if ((*(v0 + 72) & 1) == 0 || (*(v0 + 128) & 1) == 0)
  {
    return outlined destroy of _LazyLayout_Subview(&v42);
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (*(v0 + 24))
  {
    v3 = *(v0 + 40);
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 24))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v0 + 40);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v5 = DWORD2(v42);
  v6 = v0;
  v7 = *(LazyLayoutViewCache.item(data:)(v43) + 44);

  v8 = *MEMORY[0x1E698D3F8];
  v32 = v5;
  v33 = v7;
  v34 = v8;
  *&v25 = v3;
  BYTE8(v25) = v1 ^ 1;
  v26 = v4;
  v27 = v1;
  LayoutProxy.lengthThatFits(_:in:)(&v25, v1);
  if (v1)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (v1)
  {
    v2 = v10;
    v12 = 0.0;
  }

  else
  {
    v12 = -v10;
  }

  if (v1)
  {
    v13 = -v10;
  }

  else
  {
    v13 = 0.0;
  }

  MEMORY[0x1EEE9AC00](v9);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
  outlined destroy of GlassEntryView?(&v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  AlignmentKey.fraction.getter(*v6);
  v15 = *(v6 + 32) == 1;
  if (*(v6 + 32) == 1)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v11;
  }

  LOBYTE(v35) = *(v6 + 32) == 1;
  *&v25 = v16;
  BYTE8(v25) = v15;
  v26 = v2;
  v27 = 0;
  v28 = 0x3FE0000000000000;
  v29 = v14;
  v30 = v12 + v11 * 0.5;
  v31 = v13 + v14 * v2;
  _LazyLayout_Subview.place(at:)(&v25, &v35);
  v17 = *(v6 + 264);
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
  v20 = &v17[80 * v19];
  *(v20 + 2) = v35;
  v21 = v36;
  v22 = v37;
  v23 = v39;
  *(v20 + 5) = v38;
  *(v20 + 6) = v23;
  *(v20 + 3) = v21;
  *(v20 + 4) = v22;
  *(v6 + 264) = v17;
  outlined destroy of _LazyLayout_Subview(&v42);
  result = outlined destroy of GlassEntryView?(v6 + 152, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  return result;
}

{
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v0 + 152, &v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  if (!v35)
  {
    return outlined destroy of GlassEntryView?(&v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  }

  v43[3] = v39;
  v43[4] = v40;
  v43[5] = v41;
  v42 = v35;
  v43[0] = v36;
  v43[1] = v37;
  v43[2] = v38;
  if ((*(v0 + 72) & 1) == 0 || (*(v0 + 128) & 1) == 0)
  {
    return outlined destroy of _LazyLayout_Subview(&v42);
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (*(v0 + 24))
  {
    v3 = *(v0 + 40);
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 24))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v0 + 40);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v5 = DWORD2(v42);
  v6 = v0;
  v7 = *(LazyLayoutViewCache.item(data:)(v43) + 44);

  v8 = *MEMORY[0x1E698D3F8];
  v32 = v5;
  v33 = v7;
  v34 = v8;
  *&v25 = v3;
  BYTE8(v25) = v1 ^ 1;
  v26 = v4;
  v27 = v1;
  LayoutProxy.lengthThatFits(_:in:)(&v25, v1);
  if (v1)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (v1)
  {
    v2 = v10;
    v12 = 0.0;
  }

  else
  {
    v12 = -v10;
  }

  if (v1)
  {
    v13 = -v10;
  }

  else
  {
    v13 = 0.0;
  }

  MEMORY[0x1EEE9AC00](v9);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
  outlined destroy of GlassEntryView?(&v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  AlignmentKey.fraction.getter(*v6);
  v15 = *(v6 + 32) == 1;
  LOBYTE(v35) = 0;
  *&v25 = v11;
  if (v15)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v2;
  }

  BYTE8(v25) = 0;
  v26 = v16;
  v27 = v15;
  v28 = v14;
  v29 = 0x3FE0000000000000;
  v30 = v12 + v14 * v11;
  v31 = v13 + v2 * 0.5;
  _LazyLayout_Subview.place(at:)(&v25, &v35);
  v17 = *(v6 + 264);
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
  v20 = &v17[80 * v19];
  *(v20 + 2) = v35;
  v21 = v36;
  v22 = v37;
  v23 = v39;
  *(v20 + 5) = v38;
  *(v20 + 6) = v23;
  *(v20 + 3) = v21;
  *(v20 + 4) = v22;
  *(v6 + 264) = v17;
  outlined destroy of _LazyLayout_Subview(&v42);
  result = outlined destroy of GlassEntryView?(v6 + 152, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  return result;
}

double specialized ShapeStyleResolver.updateValue()(uint64_t a1, void (*a2)(__int128 *, __n128))
{
  v4 = v2;
  v71 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D3F8];
  if (*v2 == *MEMORY[0x1E698D3F8])
  {
    v6 = 0;
    v7 = 0;
    v45 = 0u;
    v46 = 0u;
  }

  else
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v45 = *(Value + 24);
    v46 = *(Value + 8);
    v6 = v9 & 1;
  }

  if (v2[1] == v5)
  {
    v10 = 0;
    v49 = 0;
    v47 = 1;
    v48 = 0;
  }

  else
  {
    v11 = AGGraphGetValue();
    v10 = v12;
    v47 = *(v11 + 8);
    v48 = *v11;
    v49 = *(v11 + 10);
    v13 = *v11;
  }

  v14 = v4[2];
  v16 = *AGGraphGetValue();
  v51 = MEMORY[0x1E69E7CC0];
  if ((v6 | v10))
  {
    v17 = 1;
    v52 = 1;
  }

  else
  {
    v18 = v15;
    OutputValue = AGGraphGetOutputValue();
    v52 = OutputValue == 0;
    if (OutputValue)
    {
      if ((v18 & 1) == 0)
      {
        v20 = (v4 + 4);
        v21 = *(v4 + 6);

        if (v21)
        {
LABEL_17:
          v42 = a2;
          v43 = v20;
          v44 = v14;
          v41 = 0;
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      v22 = swift_retain_n();
      v17 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v22);

      v52 = v17 & 1;
    }

    else
    {

      v17 = 1;
    }
  }

  v20 = (v4 + 4);
  v21 = *(v4 + 6);
  if (!v21)
  {
    if (v17)
    {
      v21 = 0;
      goto LABEL_23;
    }

LABEL_20:
    if (v4[14] == *AGGraphGetValue() >> 1)
    {

      goto LABEL_59;
    }

    *(v4 + 6) = 0;

    *(v4 + 4) = 0;
    *(v4 + 40) = 0;
    v21 = 0;
    v4[14] = *AGGraphGetValue() >> 1;
    v52 = 1;
    goto LABEL_23;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  v42 = a2;
  v43 = v20;
  v44 = v14;
  PropertyList.Tracker.reset()();
  v41 = 1;
LABEL_24:
  if (v49)
  {
    v23 = v47;
  }

  else
  {
    v23 = v47 != 0;
  }

  v24 = *(v4 + 8);
  if (v16)
  {
    v25 = *(v16 + 64);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v24 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v26 + 16));
  *(v26 + 24) = v25;
  os_unfair_lock_unlock((v26 + 16));

  v27 = *(v4 + 6);
  v70[27] = 0;
  v65 = 0uLL;
  *&v66 = v23;
  BYTE8(v66) = 1;
  *&v67 = 0;
  BYTE8(v67) = 5;
  *&v68 = v16;
  *(&v68 + 1) = v24;
  v69 = 0u;
  memset(v70, 0, 24);
  v70[24] = 1;
  *&v70[25] = v27;
  if (v23)
  {
    if (v7)
    {
      v53 = v7;
      v54 = v46;
      v55 = v45;

      (v42)(&v65);

      v28 = v49;
      if (v49)
      {
        goto LABEL_43;
      }
    }

    else
    {
      specialized ForegroundStyle._apply(to:)(&v65);
      v28 = v49;
      if (v49)
      {
        goto LABEL_43;
      }
    }

    v56[0] = 0;
    v57 = v68;
    v29 = BYTE8(v67);
    if (BYTE8(v67) == 1)
    {
      v30 = v67;

      outlined copy of _ShapeStyle_Shape.Result(v30, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
      v31 = 0;
      v29 = 5;
    }

    else
    {

      v31 = v67;

      v30 = MEMORY[0x1E69E7CC0];
    }

    *&v64[0] = v30;
    _ShapeStyle_Pack.createOpacities(count:name:environment:)(v47, v56, &v57);

    v32 = *&v64[0];

    outlined consume of _ShapeStyle_Shape.Result(v31, v29);
    *&v67 = v32;
    BYTE8(v67) = 1;
  }

  else
  {
    v28 = v49;
    if (v41)
    {
      if (v21)
      {
        specialized AnimatorState.removeListeners()();
      }

      *(v4 + 6) = 0;

      *(v4 + 4) = 0;
      *(v4 + 40) = 0;
      v4[14] = *AGGraphGetValue() >> 1;
    }
  }

LABEL_43:
  if ((v28 & 2) != 0)
  {
    v65 = xmmword_18DD85500;
    *&v66 = 1;
    BYTE8(v66) = 1;
    v70[25] = 0;
    BackgroundStyle._apply(to:)(&v65);
  }

  if ((v28 & 4) != 0)
  {
    v57 = v68;
    v34 = v48;

    ResolvedMulticolorStyle.init(in:bundle:)(&v57, v48, v64, v35);
    v57 = v64[0];
    v58 = v64[1];
    v62[5] = 6;
    *&v62[8] = 1065353216;
    *&v62[16] = 0;
    v62[24] = -1;
    v63 = MEMORY[0x1E69E7CC0];
    v50 = 2;
    v36 = BYTE8(v67);
    if (BYTE8(v67) == 1)
    {
      v37 = v67;
      outlined init with copy of ResolvedMulticolorStyle(v64, v56);
      outlined copy of _ShapeStyle_Shape.Result(v37, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v37, 1u);
      v38 = 0;
      v36 = 5;
    }

    else
    {
      outlined init with copy of ResolvedMulticolorStyle(v64, v56);
      v37 = MEMORY[0x1E69E7CC0];
      v38 = v67;
    }

    *v56 = v37;
    _ShapeStyle_Pack.subscript.setter(&v57, &v50, 0);
    outlined destroy of ResolvedMulticolorStyle(v64);
    v39 = *v56;

    outlined consume of _ShapeStyle_Shape.Result(v38, v36);
    *&v67 = v39;
    BYTE8(v67) = 1;

    goto LABEL_52;
  }

  if (BYTE8(v67) == 1)
  {
LABEL_52:
    v33 = v67;

    goto LABEL_53;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_53:

  v51 = v33;
  if ((*(v4 + 14) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v51, 0, v44, v43);
  }

  if (v52 == 1)
  {
    *&v57 = v51;
    AGGraphSetOutputValue();
  }

  else
  {
  }

  v60 = v68;
  v61 = v69;
  *v62 = *v70;
  *&v62[12] = *&v70[12];
  v57 = v65;
  v58 = v66;
  v59 = v67;
  outlined destroy of _ShapeStyle_Shape(&v57);
LABEL_59:

  return result;
}

double specialized ShapeStyleResolver.updateValue()()
{
  v1 = v0;
  v88 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v7 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v9 = *(Value + 42);
    v11 = Value[1];
    v10 = Value[2];
    v66 = *Value;
    v67 = v11;
    *v68 = v10;
    *&v68[10] = v9;
    v5 = *(&v66 + 1);
    v4 = v66;
    v6 = v11;
    v59 = v10;
    v60 = *(&v11 + 1);
    v57 = v9 >> 48;
    v58 = *&v68[8];
    v7 = v12 & 1;
    LOWORD(v56) = HIWORD(v9);
    outlined init with copy of MeshGradient(&v66, &v79);
    BYTE4(v56) = v7;
  }

  if (v1[1] == v3)
  {
    v13 = 0;
    v55 = 0;
    v61 = 0;
    v53 = 1;
  }

  else
  {
    v14 = AGGraphGetValue();
    v13 = v15;
    v53 = *(v14 + 8);
    v61 = *(v14 + 10);
    v55 = *v14;
    v16 = *v14;
  }

  v17 = v1[2];
  v19 = *AGGraphGetValue();
  v63 = MEMORY[0x1E69E7CC0];
  v54 = v6;
  if ((v7 | v13))
  {
    v20 = 1;
    v64 = 1;

    v21 = v19;
  }

  else
  {
    v22 = v18;
    v23 = v19;
    OutputValue = AGGraphGetOutputValue();
    v64 = OutputValue == 0;
    if (OutputValue)
    {
      if ((v22 & 1) == 0)
      {
        v52 = (v1 + 4);
        v25 = *(v1 + 6);
        v21 = v23;

        if (v25)
        {
          v51 = v17;
LABEL_17:
          v27 = v5;
          v50 = 0;
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      v21 = v19;
      v26 = swift_retain_n();
      v20 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v26);

      v64 = v20 & 1;
    }

    else
    {

      v21 = v19;

      v20 = 1;
    }
  }

  v52 = (v1 + 4);
  v25 = *(v1 + 6);
  if (!v25)
  {
    if (v20)
    {
      v51 = v17;
      v25 = 0;
      goto LABEL_23;
    }

LABEL_20:
    if (v1[14] == *AGGraphGetValue() >> 1)
    {
      *&v66 = v4;
      *(&v66 + 1) = v5;
      *&v67 = v6;
      *(&v67 + 1) = v60;
      *v68 = v59;
      *&v68[8] = v58;
      *&v68[16] = v57;
      *&v68[24] = v56;
      v68[26] = BYTE4(v56);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v66, type metadata accessor for (value: MeshGradient?, changed: Bool));

      goto LABEL_59;
    }

    v51 = v17;
    *(v1 + 6) = 0;

    *(v1 + 4) = 0;
    *(v1 + 40) = 0;
    v25 = 0;
    v1[14] = *AGGraphGetValue() >> 1;
    v64 = 1;
    goto LABEL_23;
  }

  v51 = v17;
  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  v27 = v5;
  PropertyList.Tracker.reset()();
  v50 = 1;
LABEL_24:
  v28 = v4;
  if (v61)
  {
    v29 = v53;
  }

  else
  {
    v29 = v53 != 0;
  }

  v30 = *(v1 + 8);
  if (v21)
  {
    v31 = *(v21 + 64);
  }

  else
  {
    v31 = 0;
  }

  v32 = v21;
  v33 = *(v30 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v33 + 16));
  *(v33 + 24) = v31;
  os_unfair_lock_unlock((v33 + 16));

  v34 = *(v1 + 6);
  v84[27] = 0;
  v79 = 0uLL;
  *&v80 = v29;
  BYTE8(v80) = 1;
  *&v81 = 0;
  BYTE8(v81) = 5;
  *&v82 = v32;
  *(&v82 + 1) = v30;
  v83 = 0u;
  memset(v84, 0, 24);
  v84[24] = 1;
  *&v84[25] = v34;
  if (v29)
  {
    v35 = v28;
    *&v66 = v28;
    *(&v66 + 1) = v27;
    v36 = v27;
    v37 = v54;
    *&v67 = v54;
    *(&v67 + 1) = v60;
    *v68 = v59;
    *&v68[8] = v58;
    *&v68[16] = v57;
    *&v68[24] = v56;
    v68[26] = BYTE4(v56);
    if (v57)
    {
      v85 = v66;
      v86 = v67;
      v87[0] = *v68;
      *(v87 + 10) = *&v68[10];
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v66, &v72, type metadata accessor for (value: MeshGradient?, changed: Bool));
      specialized Paint._apply(to:)(&v79);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v66, type metadata accessor for (value: MeshGradient?, changed: Bool));
      if (v61)
      {
        goto LABEL_43;
      }
    }

    else
    {
      specialized ForegroundStyle._apply(to:)(&v79);
      if (v61)
      {
        goto LABEL_43;
      }
    }

    v62 = 0;
    v72 = v82;
    v38 = BYTE8(v81);
    if (BYTE8(v81) == 1)
    {
      v39 = v81;

      outlined copy of _ShapeStyle_Shape.Result(v39, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v39, 1u);
      v40 = 0;
      v38 = 5;
    }

    else
    {

      v40 = v81;

      v39 = MEMORY[0x1E69E7CC0];
    }

    v65[0] = v39;
    _ShapeStyle_Pack.createOpacities(count:name:environment:)(v53, &v62, &v72);

    v41 = v65[0];

    outlined consume of _ShapeStyle_Shape.Result(v40, v38);
    *&v81 = v41;
    BYTE8(v81) = 1;

    v37 = v54;
  }

  else
  {
    v35 = v28;
    v36 = v27;
    v37 = v54;
    if (v50)
    {
      if (v25)
      {
        specialized AnimatorState.removeListeners()();
      }

      *(v1 + 6) = 0;

      *(v1 + 4) = 0;
      *(v1 + 40) = 0;
      v1[14] = *AGGraphGetValue() >> 1;
    }
  }

LABEL_43:
  if ((v61 & 2) != 0)
  {
    v79 = xmmword_18DD85500;
    *&v80 = 1;
    BYTE8(v80) = 1;
    v84[25] = 0;
    BackgroundStyle._apply(to:)(&v79);
  }

  if ((v61 & 4) != 0)
  {
    v66 = v82;
    v43 = v55;

    ResolvedMulticolorStyle.init(in:bundle:)(&v66, v55, &v72, v44);
    v66 = v72;
    v67 = v73;
    v70[5] = 6;
    *&v70[8] = 1065353216;
    *&v70[16] = 0;
    v70[24] = -1;
    v71 = MEMORY[0x1E69E7CC0];
    v62 = 2;
    v45 = BYTE8(v81);
    if (BYTE8(v81) == 1)
    {
      v46 = v81;
      outlined init with copy of ResolvedMulticolorStyle(&v72, v65);
      outlined copy of _ShapeStyle_Shape.Result(v46, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v46, 1u);
      v47 = 0;
      v45 = 5;
    }

    else
    {
      outlined init with copy of ResolvedMulticolorStyle(&v72, v65);
      v46 = MEMORY[0x1E69E7CC0];
      v47 = v81;
    }

    v65[0] = v46;
    _ShapeStyle_Pack.subscript.setter(&v66, &v62, 0);
    outlined destroy of ResolvedMulticolorStyle(&v72);
    v48 = v65[0];

    outlined consume of _ShapeStyle_Shape.Result(v47, v45);
    *&v81 = v48;
    BYTE8(v81) = 1;

    goto LABEL_52;
  }

  if (BYTE8(v81) == 1)
  {
LABEL_52:
    v42 = v81;

    goto LABEL_53;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_53:

  v63 = v42;
  if ((*(v1 + 14) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v63, 0, v51, v52);
  }

  if (v64 == 1)
  {
    *&v66 = v63;
    AGGraphSetOutputValue();

    *&v72 = v35;
    *(&v72 + 1) = v36;
    *&v73 = v37;
    *(&v73 + 1) = v60;
    v74 = v59;
    v75 = v58;
    v76 = v57;
    v77 = v56;
    v78 = BYTE4(v56);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v72, type metadata accessor for (value: MeshGradient?, changed: Bool));
  }

  else
  {
    *&v72 = v35;
    *(&v72 + 1) = v36;
    *&v73 = v37;
    *(&v73 + 1) = v60;
    v74 = v59;
    v75 = v58;
    v76 = v57;
    v77 = v56;
    v78 = BYTE4(v56);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v72, type metadata accessor for (value: MeshGradient?, changed: Bool));
  }

  *v70 = *v84;
  *&v70[12] = *&v84[12];
  v66 = v79;
  v67 = v80;
  *&v68[16] = v82;
  v69 = v83;
  *v68 = v81;
  outlined destroy of _ShapeStyle_Shape(&v66);
LABEL_59:

  return result;
}

double specialized StaticBody.updateValue()(void *a1, void (*a2)(double, double), void (*a3)(uint64_t, _BYTE *))
{
  v55 = *MEMORY[0x1E69E9840];
  v51 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v51 - 1);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45[-v11];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45[-v17];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v19 = static ObservationCenter._current;
  swift_beginAccess();
  v20 = pthread_getspecific(v19[2]);
  if (!v20)
  {
    v21 = swift_slowAlloc();
    pthread_setspecific(v19[2], v21);
    v54 = type metadata accessor for ObservationCenter();
    *&v53 = v19[3];
    outlined init with take of Any(&v53, v21);

    v20 = v21;
  }

  outlined init with copy of Any(v20, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v22 = v52;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(v22 + 24) = a1;
    goto LABEL_9;
  }

  v46 = CurrentAttribute;
  v47 = a3;
  swift_beginAccess();
  v49 = *(v22 + 24);
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  v24 = a2;
  v25 = v51;
  (*(v6 + 56))(v18, 1, 1, v51);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  Value = AGGraphGetValue();
  v24(*Value, Value[1]);
  *(StatusReg + 848) = v27;
  v29 = v25;
  outlined init with copy of ObservationTracking._AccessList?(v18, v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v6 + 48))(v15, 1, v25) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v18, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v18 = v15;
    goto LABEL_12;
  }

  a2 = *(v6 + 32);
  (a2)(v12, v15, v29);
  (*(v6 + 16))(v50, v12, v29);
  a1 = *(v22 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 24) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = a1[2];
  v31 = a1[3];
  if (v32 >= v31 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, a1);
  }

  a1[2] = v32 + 1;
  v33 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32;
  v29 = v51;
  (a2)(v33, v50, v51);
  *(v22 + 24) = a1;
  (*(v6 + 8))(v12, v29);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v18, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v22 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v37 = *(v6 + 16);
    v36 = v6 + 16;
    v50 = *(v22 + 24);
    v51 = v37;
    v38 = v34 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v39 = v48;
    v40 = *(v36 + 56);
    v41 = (v36 - 8);

    v42 = v47;
    v43 = v46;
    do
    {
      (v51)(v39, v38, v29);
      v42(v43, v39);
      (*v41)(v39, v29);
      v38 += v40;
      --v35;
    }

    while (v35);
  }

  *(v22 + 24) = v49;

  return result;
}

double specialized StaticBody.updateValue()(void *a1, void (*a2)(void), void (*a3)(uint64_t, _BYTE *))
{
  v57 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v53 - 1);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v47[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47[-v11];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47[-v17];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v19 = static ObservationCenter._current;
  swift_beginAccess();
  v20 = pthread_getspecific(v19[2]);
  if (!v20)
  {
    v21 = swift_slowAlloc();
    pthread_setspecific(v19[2], v21);
    v56 = type metadata accessor for ObservationCenter();
    *&v55 = v19[3];
    outlined init with take of Any(&v55, v21);

    v20 = v21;
  }

  outlined init with copy of Any(v20, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v22 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v45 = a1[2];

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, a1);
    *(v22 + 24) = v46;

    a1 = v46;
    goto LABEL_9;
  }

  v48 = CurrentAttribute;
  v49 = a3;
  swift_beginAccess();
  v51 = *(v22 + 24);
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  v24 = a2;
  v25 = v53;
  (*(v6 + 56))(v18, 1, 1, v53);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  Value = AGGraphGetValue();
  v24(*Value);
  *(StatusReg + 848) = v27;
  v29 = v25;
  outlined init with copy of ObservationTracking._AccessList?(v18, v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v6 + 48))(v15, 1, v25) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v18, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v18 = v15;
    goto LABEL_12;
  }

  a2 = *(v6 + 32);
  (a2)(v12, v15, v29);
  (*(v6 + 16))(v52, v12, v29);
  swift_beginAccess();
  a1 = *(v22 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 24) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = a1[2];
  v31 = a1[3];
  if (v32 >= v31 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, a1);
  }

  a1[2] = v32 + 1;
  v33 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32;
  v29 = v53;
  (a2)(v33, v52, v53);
  *(v22 + 24) = a1;
  swift_endAccess();
  (*(v6 + 8))(v12, v29);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v18, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v22 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v37 = *(v6 + 16);
    v36 = v6 + 16;
    v52 = *(v22 + 24);
    v53 = v37;
    v38 = v34 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v39 = v50;
    v40 = *(v36 + 56);
    v41 = (v36 - 8);

    v42 = v49;
    v43 = v48;
    do
    {
      (v53)(v39, v38, v29);
      v42(v43, v39);
      (*v41)(v39, v29);
      v38 += v40;
      --v35;
    }

    while (v35);
  }

  *(v22 + 24) = v51;

  return result;
}

double specialized StaticBody.updateValue()(void *a1, unint64_t *a2, void (*a3)(void), void (*a4)(char *, char *))
{
  v50 = a2;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for ObservationTracking._AccessList();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v46 - v13;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(v20[2]);
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(v20[2], v22);
    *&v57 = type metadata accessor for ObservationCenter();
    v55 = v20[3];
    outlined init with take of Any(&v55, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v44 = a1[2];

    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, a1);
    *(v23 + 24) = v45;

    a1 = v45;
    goto LABEL_9;
  }

  v47 = v9;
  v9 = CurrentAttribute;
  v48 = a4;
  swift_beginAccess();
  v49 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  (*(v7 + 56))(v19, 1, 1, v6);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = v6;
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v19;
  Value = AGGraphGetValue();
  v55 = *Value;
  v29 = *(Value + 24);
  v56 = *(Value + 8);
  v57 = v29;

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v55, a1, v50, v51);

  *(StatusReg + 848) = v27;
  v6 = v26;
  outlined init with copy of ObservationTracking._AccessList?(v19, v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v7 + 48))(v16, 1, v26) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v19, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v19 = v16;
    goto LABEL_12;
  }

  a4 = *(v7 + 32);
  v30 = v53;
  (a4)(v53, v16, v6);
  (*(v7 + 16))(v52, v30, v6);
  swift_beginAccess();
  a1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v33 = a1[2];
  v32 = a1[3];
  if (v33 >= v32 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, a1);
  }

  a1[2] = v33 + 1;
  (a4)(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v33, v52, v6);
  *(v23 + 24) = a1;
  swift_endAccess();
  (*(v7 + 8))(v53, v6);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v19, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v23 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v37 = *(v7 + 16);
    v36 = v7 + 16;
    v52 = *(v23 + 24);
    v53 = v37;
    v38 = v34 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v39 = *(v36 + 56);
    v40 = (v36 - 8);

    v41 = v48;
    v42 = v47;
    do
    {
      (v53)(v42, v38, v6);
      v41(v9, v42);
      (*v40)(v42, v6);
      v38 += v39;
      --v35;
    }

    while (v35);
  }

  *(v23 + 24) = v49;

  return result;
}

void specialized DynamicBody.updateValue()()
{
  v1 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v53 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v56 = v10;
  if (v21 != v20 >> 1)
  {
    v53 = v13;
    v54 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v60[0] = v28;
        (*(v27 + 112))(v60);
        --v25;
      }

      while (v26);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v13 = v53;
    v3 = v54;
  }

  Value = AGGraphGetValue();
  v30 = Value[1];
  v60[0] = *Value;
  v60[1] = v30;
  v59 = v31 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v32 = static ObservationCenter._current;
  swift_beginAccess();
  v33 = pthread_getspecific(*(v32 + 2));
  if (!v33)
  {
    v34 = swift_slowAlloc();
    pthread_setspecific(*(v32 + 2), v34);
    v62 = type metadata accessor for ObservationCenter();
    v19 = *(v32 + 3);
    *&v61 = v19;
    outlined init with take of Any(&v61, v34);

    v33 = v34;
  }

  outlined init with copy of Any(v33, &v61);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v35 = v58;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v37 = v13;
  swift_beginAccess();
  v54 = *(v35 + 24);
  *(v35 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v39 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(v60, v1, &v59);
  *(StatusReg + 848) = v39;
  v40 = v57;
  outlined init with take of ObservationTracking._AccessList?(v16, v57);
  outlined init with copy of ObservationTracking._AccessList?(v40, v37, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v37, 1, v2) != 1)
  {
    v32 = *(v3 + 32);
    v43 = v56;
    v32(v56, v37, v2);
    (*(v3 + 16))(v55, v43, v2);
    v1 = *(v35 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v35 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v46 = v1[2];
      v45 = v1[3];
      if (v46 >= v45 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v1);
      }

      v1[2] = v46 + 1;
      v32(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v46, v55, v2);
      *(v35 + 24) = v1;
      v41 = v3;
      (*(v3 + 8))(v56, v2);
      v42 = v57;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v35 + 24) = v1;
    goto LABEL_18;
  }

  v41 = v3;
  outlined destroy of ObservationTracking._AccessList?(v40, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v42 = v37;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v42, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v47 = *(v35 + 24);
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = v41 + 16;
    v50 = *(v41 + 16);
    v51 = v47 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v52 = *(v49 + 56);
    v57 = *(v35 + 24);

    do
    {
      v50(v5, v51, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v49 - 8))(v5, v2);
      v51 += v52;
      --v48;
    }

    while (v48);
  }

  *(v35 + 24) = v54;
}

{
  v1 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v52 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v56 = v10;
  if (v21 != v20 >> 1)
  {
    v53 = v13;
    v54 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v61 = v28;
        (*(v27 + 112))(&v61);
        --v25;
      }

      while (v26);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v13 = v53;
    v3 = v54;
  }

  v60 = *AGGraphGetValue();
  v59 = v29 & 1;
  v30 = one-time initialization token for _current;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = static ObservationCenter._current;
  swift_beginAccess();
  v32 = pthread_getspecific(*(v31 + 2));
  if (!v32)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(*(v31 + 2), v33);
    v62 = type metadata accessor for ObservationCenter();
    v19 = *(v31 + 3);
    *&v61 = v19;
    outlined init with take of Any(&v61, v33);

    v32 = v33;
  }

  outlined init with copy of Any(v32, &v61);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v58;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v36 = v13;
  swift_beginAccess();
  v54 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v38 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(&v60, v1, &v59);
  *(StatusReg + 848) = v38;
  v39 = v57;
  outlined init with take of ObservationTracking._AccessList?(v16, v57);
  outlined init with copy of ObservationTracking._AccessList?(v39, v36, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v36, 1, v2) != 1)
  {
    v31 = *(v3 + 32);
    v42 = v56;
    v31(v56, v36, v2);
    (*(v3 + 16))(v55, v42, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v45 = v1[2];
      v44 = v1[3];
      if (v45 >= v44 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v1);
      }

      v1[2] = v45 + 1;
      v31(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v45, v55, v2);
      *(v34 + 24) = v1;
      v40 = v3;
      (*(v3 + 8))(v56, v2);
      v41 = v57;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  v40 = v3;
  outlined destroy of ObservationTracking._AccessList?(v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v36;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v40 + 16;
    v49 = *(v40 + 16);
    v50 = v46 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v51 = *(v48 + 56);
    v57 = *(v34 + 24);

    do
    {
      v49(v5, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v48 - 8))(v5, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v54;
}

{
  v1 = v0;
  v73 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v57 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v57 - v18;
  v19 = *AGGraphGetValue();
  v20 = *(v0 + 24);
  v61 = v10;
  if (v20 != v19 >> 1)
  {
    v58 = v13;
    v59 = v3;
    v21 = *(v0 + 20);
    if (v21)
    {
      v22 = *(v0 + 8);
      if (!v22)
      {
        __break(1u);
        outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return;
      }

      v23 = 0;
      v24 = v21 - 1;
      do
      {
        v27 = (v22 + v23);
        if (v24)
        {
          v23 += *(v27 + 2);
        }

        else
        {
          v23 = 0;
        }

        v25 = v24 | v23;
        v26 = *v27;
        *&v67 = v27;
        (*(v26 + 112))(&v67);
        --v24;
      }

      while (v25);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v59;
    v13 = v58;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
  Value = AGGraphGetValue();
  v29 = *(Value + 16);
  v31 = *(Value + 24);
  v30 = *(Value + 32);
  v32 = *(Value + 40);
  v33 = *(Value + 48);
  v67 = *Value;
  v68 = v29;
  v69 = v31;
  v70 = v30;
  v71 = v32;
  v72 = v33;
  v64 = v34 & 1;
  v35 = one-time initialization token for _current;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = static ObservationCenter._current;
  swift_beginAccess();
  v37 = pthread_getspecific(*(v36 + 2));
  if (!v37)
  {
    v38 = swift_slowAlloc();
    pthread_setspecific(*(v36 + 2), v38);
    v66 = type metadata accessor for ObservationCenter();
    v33 = *(v36 + 3);
    *&v65 = v33;
    outlined init with take of Any(&v65, v38);

    v37 = v38;
  }

  outlined init with copy of Any(v37, &v65);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v39 = v63;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v33 = CurrentAttribute;
  v41 = v13;
  swift_beginAccess();
  v59 = *(v39 + 24);
  *(v39 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v43 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(&v67, v1, &v64);
  *(StatusReg + 848) = v43;
  v44 = v62;
  outlined init with take of ObservationTracking._AccessList?(v16, v62);
  outlined init with copy of ObservationTracking._AccessList?(v44, v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v41, 1, v2) != 1)
  {
    v36 = *(v3 + 32);
    v47 = v61;
    v36(v61, v41, v2);
    (*(v3 + 16))(v60, v47, v2);
    v1 = *(v39 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v50 = v1[2];
      v49 = v1[3];
      if (v50 >= v49 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v1);
      }

      v1[2] = v50 + 1;
      v36(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v50, v60, v2);
      *(v39 + 24) = v1;
      v45 = v3;
      (*(v3 + 8))(v61, v2);
      v46 = v62;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v39 + 24) = v1;
    goto LABEL_18;
  }

  v45 = v3;
  outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = v41;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v46, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v51 = *(v39 + 24);
  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = v45 + 16;
    v54 = *(v45 + 16);
    v55 = v51 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v56 = *(v53 + 56);
    v62 = *(v39 + 24);

    do
    {
      v54(v5, v55, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v33, v5);
      (*(v53 - 8))(v5, v2);
      v55 += v56;
      --v52;
    }

    while (v52);
  }

  *(v39 + 24) = v59;
}

{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v51 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v51 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v54 = v10;
  if (v21 != v20 >> 1)
  {
    v51 = v13;
    v52 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v59 = v28;
        (*(v27 + 112))(&v59);
        --v25;
      }

      while (v26);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v13 = v51;
    v3 = v52;
  }

  v58 = *AGGraphGetValue();
  v57 = v29 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(*(v30 + 2));
  if (!v31)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(*(v30 + 2), v32);
    v60 = type metadata accessor for ObservationCenter();
    v19 = *(v30 + 3);
    *&v59 = v19;
    outlined init with take of Any(&v59, v32);

    v31 = v32;
  }

  outlined init with copy of Any(v31, &v59);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v35 = v13;
  swift_beginAccess();
  v52 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(&v58, v1, &v57, type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>, specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:));
  *(StatusReg + 848) = v37;
  v38 = v55;
  outlined init with take of ObservationTracking._AccessList?(v16, v55);
  outlined init with copy of ObservationTracking._AccessList?(v38, v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v35, 1, v2) != 1)
  {
    v30 = *(v3 + 32);
    v41 = v54;
    v30(v54, v35, v2);
    (*(v3 + 16))(v53, v41, v2);
    v1 = *(v33 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = v1[2];
      v43 = v1[3];
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v1);
      }

      v1[2] = v44 + 1;
      v30(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v44, v53, v2);
      *(v33 + 24) = v1;
      v39 = v3;
      (*(v3 + 8))(v54, v2);
      v40 = v55;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v33 + 24) = v1;
    goto LABEL_18;
  }

  v39 = v3;
  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = v35;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v40, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v45 = *(v33 + 24);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v39 + 16;
    v48 = *(v39 + 16);
    v49 = v45 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v50 = *(v47 + 56);
    v55 = *(v33 + 24);

    do
    {
      v48(v5, v49, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v47 - 8))(v5, v2);
      v49 += v50;
      --v46;
    }

    while (v46);
  }

  *(v33 + 24) = v52;
}

{
  v1 = v0;
  v65 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v54 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v54 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v57 = v10;
  if (v21 != v20 >> 1)
  {
    v54 = v13;
    v55 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v61[0] = v28;
        (*(v27 + 112))(v61);
        --v25;
      }

      while (v26);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v13 = v54;
    v3 = v55;
  }

  Value = AGGraphGetValue();
  v30 = *(Value + 32);
  v31 = *(Value + 16);
  v61[0] = *Value;
  v61[1] = v31;
  v62 = v30;
  v60 = v32 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v33 = static ObservationCenter._current;
  swift_beginAccess();
  v34 = pthread_getspecific(*(v33 + 2));
  if (!v34)
  {
    v35 = swift_slowAlloc();
    pthread_setspecific(*(v33 + 2), v35);
    v64 = type metadata accessor for ObservationCenter();
    v19 = *(v33 + 3);
    *&v63 = v19;
    outlined init with take of Any(&v63, v35);

    v34 = v35;
  }

  outlined init with copy of Any(v34, &v63);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v36 = v59;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v38 = v13;
  swift_beginAccess();
  v55 = *(v36 + 24);
  *(v36 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v40 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(v61, v1, &v60);
  *(StatusReg + 848) = v40;
  v41 = v58;
  outlined init with take of ObservationTracking._AccessList?(v16, v58);
  outlined init with copy of ObservationTracking._AccessList?(v41, v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v38, 1, v2) != 1)
  {
    v33 = *(v3 + 32);
    v44 = v57;
    v33(v57, v38, v2);
    (*(v3 + 16))(v56, v44, v2);
    v1 = *(v36 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v47 = v1[2];
      v46 = v1[3];
      if (v47 >= v46 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v1);
      }

      v1[2] = v47 + 1;
      v33(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v47, v56, v2);
      *(v36 + 24) = v1;
      v42 = v3;
      (*(v3 + 8))(v57, v2);
      v43 = v58;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v36 + 24) = v1;
    goto LABEL_18;
  }

  v42 = v3;
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v43 = v38;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v43, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v48 = *(v36 + 24);
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v42 + 16;
    v51 = *(v42 + 16);
    v52 = v48 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v53 = *(v50 + 56);
    v58 = *(v36 + 24);

    do
    {
      v51(v5, v52, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v50 - 8))(v5, v2);
      v52 += v53;
      --v49;
    }

    while (v49);
  }

  *(v36 + 24) = v55;
}

{
  v1 = v0;
  v66 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v55 - v18;
  v19 = *(v0 + 24);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 48);
  v58 = v10;
  if (v21 != v20 >> 1)
  {
    v55 = v13;
    v56 = v3;
    v22 = *(v0 + 44);
    if (v22)
    {
      v23 = *(v0 + 32);
      if (!v23)
      {
        __break(1u);
        outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v64 = v28;
        (*(v27 + 112))(&v64);
        --v25;
      }

      while (v26);
    }

    *(v1 + 12) = *AGGraphGetValue() >> 1;
    v13 = v55;
    v3 = v56;
  }

  Value = AGGraphGetValue();
  v30 = *(Value + 8);
  v31 = *(Value + 16);
  v62[0] = *Value;
  v62[1] = v30;
  v63 = v31;
  v61 = v32 & 1;
  v33 = one-time initialization token for _current;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = static ObservationCenter._current;
  swift_beginAccess();
  v35 = pthread_getspecific(*(v34 + 2));
  if (!v35)
  {
    v36 = swift_slowAlloc();
    pthread_setspecific(*(v34 + 2), v36);
    v65 = type metadata accessor for ObservationCenter();
    v19 = *(v34 + 3);
    *&v64 = v19;
    outlined init with take of Any(&v64, v36);

    v35 = v36;
  }

  outlined init with copy of Any(v35, &v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v37 = v60;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v39 = v13;
  swift_beginAccess();
  v56 = *(v37 + 24);
  *(v37 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v41 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(v62, v1, &v61);
  *(StatusReg + 848) = v41;
  v42 = v59;
  outlined init with take of ObservationTracking._AccessList?(v16, v59);
  outlined init with copy of ObservationTracking._AccessList?(v42, v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v39, 1, v2) != 1)
  {
    v34 = *(v3 + 32);
    v45 = v58;
    v34(v58, v39, v2);
    (*(v3 + 16))(v57, v45, v2);
    v1 = *(v37 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v48 = v1[2];
      v47 = v1[3];
      if (v48 >= v47 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v1);
      }

      v1[2] = v48 + 1;
      v34(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v48, v57, v2);
      *(v37 + 24) = v1;
      v43 = v3;
      (*(v3 + 8))(v58, v2);
      v44 = v59;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v37 + 24) = v1;
    goto LABEL_18;
  }

  v43 = v3;
  outlined destroy of ObservationTracking._AccessList?(v42, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v44 = v39;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v49 = *(v37 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v43 + 16;
    v52 = *(v43 + 16);
    v53 = v49 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v54 = *(v51 + 56);
    v59 = *(v37 + 24);

    do
    {
      v52(v5, v53, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v51 - 8))(v5, v2);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v37 + 24) = v56;
}

{
  v1 = v0;
  v65 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v55 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v58 = v10;
  if (v21 != v20 >> 1)
  {
    v55 = v13;
    v56 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v63 = v28;
        (*(v27 + 112))(&v63);
        --v25;
      }

      while (v26);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v13 = v55;
    v3 = v56;
  }

  Value = AGGraphGetValue();
  v30 = *Value;
  v31 = Value[1];
  v62[0] = v30;
  v62[1] = v31;
  v61 = v32 & 1;
  v33 = one-time initialization token for _current;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = static ObservationCenter._current;
  swift_beginAccess();
  v35 = pthread_getspecific(*(v34 + 2));
  if (!v35)
  {
    v36 = swift_slowAlloc();
    pthread_setspecific(*(v34 + 2), v36);
    v64 = type metadata accessor for ObservationCenter();
    v19 = *(v34 + 3);
    *&v63 = v19;
    outlined init with take of Any(&v63, v36);

    v35 = v36;
  }

  outlined init with copy of Any(v35, &v63);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v37 = v60;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v39 = v13;
  swift_beginAccess();
  v56 = *(v37 + 24);
  *(v37 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v41 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(v62, v1, &v61);
  *(StatusReg + 848) = v41;
  v42 = v59;
  outlined init with take of ObservationTracking._AccessList?(v16, v59);
  outlined init with copy of ObservationTracking._AccessList?(v42, v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v39, 1, v2) != 1)
  {
    v34 = *(v3 + 32);
    v45 = v58;
    v34(v58, v39, v2);
    (*(v3 + 16))(v57, v45, v2);
    v1 = *(v37 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v48 = v1[2];
      v47 = v1[3];
      if (v48 >= v47 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v1);
      }

      v1[2] = v48 + 1;
      v34(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v48, v57, v2);
      *(v37 + 24) = v1;
      v43 = v3;
      (*(v3 + 8))(v58, v2);
      v44 = v59;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v37 + 24) = v1;
    goto LABEL_18;
  }

  v43 = v3;
  outlined destroy of ObservationTracking._AccessList?(v42, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v44 = v39;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v49 = *(v37 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v43 + 16;
    v52 = *(v43 + 16);
    v53 = v49 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v54 = *(v51 + 56);
    v59 = *(v37 + 24);

    do
    {
      v52(v5, v53, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v51 - 8))(v5, v2);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v37 + 24) = v56;
}

{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v51 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v51 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v54 = v10;
  if (v21 != v20 >> 1)
  {
    v51 = v13;
    v52 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v59 = v28;
        (*(v27 + 112))(&v59);
        --v25;
      }

      while (v26);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v13 = v51;
    v3 = v52;
  }

  v58 = *AGGraphGetValue();
  v57 = v29 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(*(v30 + 2));
  if (!v31)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(*(v30 + 2), v32);
    v60 = type metadata accessor for ObservationCenter();
    v19 = *(v30 + 3);
    *&v59 = v19;
    outlined init with take of Any(&v59, v32);

    v31 = v32;
  }

  outlined init with copy of Any(v31, &v59);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v35 = v13;
  swift_beginAccess();
  v52 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(&v58, v1, &v57, type metadata accessor for ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>>, specialized closure #1 in GestureBodyAccessor.updateBody(of:changed:));
  *(StatusReg + 848) = v37;
  v38 = v55;
  outlined init with take of ObservationTracking._AccessList?(v16, v55);
  outlined init with copy of ObservationTracking._AccessList?(v38, v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v35, 1, v2) != 1)
  {
    v30 = *(v3 + 32);
    v41 = v54;
    v30(v54, v35, v2);
    (*(v3 + 16))(v53, v41, v2);
    v1 = *(v33 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = v1[2];
      v43 = v1[3];
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v1);
      }

      v1[2] = v44 + 1;
      v30(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v44, v53, v2);
      *(v33 + 24) = v1;
      v39 = v3;
      (*(v3 + 8))(v54, v2);
      v40 = v55;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v33 + 24) = v1;
    goto LABEL_18;
  }

  v39 = v3;
  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = v35;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v40, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v45 = *(v33 + 24);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v39 + 16;
    v48 = *(v39 + 16);
    v49 = v45 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v50 = *(v47 + 56);
    v55 = *(v33 + 24);

    do
    {
      v48(v5, v49, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v47 - 8))(v5, v2);
      v49 += v50;
      --v46;
    }

    while (v46);
  }

  *(v33 + 24) = v52;
}

{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v52 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v55 = v10;
  if (v21 != v20 >> 1)
  {
    v52 = v13;
    v53 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v59 = v28;
        (*(v27 + 112))(&v59);
        --v25;
      }

      while (v26);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v13 = v52;
    v3 = v53;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for SingleTapGesture);
  AGGraphGetValue();
  v58 = v29 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(*(v30 + 2));
  if (!v31)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(*(v30 + 2), v32);
    v60 = type metadata accessor for ObservationCenter();
    v19 = *(v30 + 3);
    *&v59 = v19;
    outlined init with take of Any(&v59, v32);

    v31 = v32;
  }

  outlined init with copy of Any(v31, &v59);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v57;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v35 = v13;
  swift_beginAccess();
  v53 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  v36 = (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v38 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(v36, v1, &v58);
  *(StatusReg + 848) = v38;
  v39 = v56;
  outlined init with take of ObservationTracking._AccessList?(v16, v56);
  outlined init with copy of ObservationTracking._AccessList?(v39, v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v35, 1, v2) != 1)
  {
    v30 = *(v3 + 32);
    v42 = v55;
    v30(v55, v35, v2);
    (*(v3 + 16))(v54, v42, v2);
    v1 = *(v33 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v45 = v1[2];
      v44 = v1[3];
      if (v45 >= v44 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v1);
      }

      v1[2] = v45 + 1;
      v30(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v45, v54, v2);
      *(v33 + 24) = v1;
      v40 = v3;
      (*(v3 + 8))(v55, v2);
      v41 = v56;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v33 + 24) = v1;
    goto LABEL_18;
  }

  v40 = v3;
  outlined destroy of ObservationTracking._AccessList?(v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v35;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v33 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v40 + 16;
    v49 = *(v40 + 16);
    v50 = v46 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v51 = *(v48 + 56);
    v56 = *(v33 + 24);

    do
    {
      v49(v5, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v48 - 8))(v5, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v33 + 24) = v53;
}

{
  v1 = v0;
  v64 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v52 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v52 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v62 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v21 = *(Value + 16);
  v58[0] = *Value;
  v59 = v20;
  v60 = v21;
  v57 = v22 & 1;
  v23 = one-time initialization token for _current;
  v24 = v20;
  v25 = v21;
  if (v23 != -1)
  {
    swift_once();
  }

  v26 = static ObservationCenter._current;
  swift_beginAccess();
  v27 = pthread_getspecific(*(v26 + 2));
  if (!v27)
  {
    v28 = swift_slowAlloc();
    pthread_setspecific(*(v26 + 2), v28);
    v63 = type metadata accessor for ObservationCenter();
    v18 = *(v26 + 3);
    *&v62 = v18;
    outlined init with take of Any(&v62, v28);

    v27 = v28;
  }

  outlined init with copy of Any(v27, &v62);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v29 = v61;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v50 = v1[2];

    v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50 + 1, 1, v1);
    *(v29 + 24) = v51;

    v1 = v51;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v53 = *(v29 + 24);
  *(v29 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v32 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v58, v1, &v57);
  *(StatusReg + 848) = v32;
  v33 = v56;
  outlined init with take of ObservationTracking._AccessList?(v15, v56);
  outlined init with copy of ObservationTracking._AccessList?(v33, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v34 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v35 = v12;
    goto LABEL_14;
  }

  v26 = *(v3 + 32);
  v36 = v55;
  v26(v55, v12, v2);
  (*(v3 + 16))(v54, v36, v2);
  swift_beginAccess();
  v1 = *(v29 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v29 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v39 = v1[2];
  v38 = v1[3];
  if (v39 >= v38 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v1);
  }

  v1[2] = v39 + 1;
  v40 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39;
  v34 = v3;
  v26(v40, v54, v2);
  *(v29 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v55, v2);
  v35 = v56;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = *(v29 + 24);
  v42 = *(v41 + 16);
  if (v42)
  {
    v45 = *(v34 + 16);
    v43 = v34 + 16;
    v44 = v45;
    v46 = v41 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v47 = *(v43 + 56);
    v48 = (v43 - 8);
    v56 = *(v29 + 24);

    do
    {
      v44(v5, v46, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v48)(v5, v2);
      v46 += v47;
      --v42;
    }

    while (v42);
  }

  *(v29 + 24) = v53;

  v49 = v59;
}

double specialized DynamicBody.updateValue()()
{
  v1 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v46 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v54 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  v52 = *AGGraphGetValue();
  v51 = v19 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(*(v20 + 2));
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(*(v20 + 2), v22);
    v55 = type metadata accessor for ObservationCenter();
    v18 = *(v20 + 3);
    *&v54 = v18;
    outlined init with take of Any(&v54, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v44 = v1[2];

    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, v1);
    *(v23 + 24) = v45;

    v1 = v45;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v52, v1, &v51);
  *(StatusReg + 848) = v26;
  v27 = v50;
  outlined init with take of ObservationTracking._AccessList?(v15, v50);
  outlined init with copy of ObservationTracking._AccessList?(v27, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v28 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v29 = v12;
    goto LABEL_14;
  }

  v20 = *(v3 + 32);
  v30 = v49;
  v20(v49, v12, v2);
  (*(v3 + 16))(v48, v30, v2);
  swift_beginAccess();
  v1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v33 = v1[2];
  v32 = v1[3];
  if (v33 >= v32 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v1);
  }

  v1[2] = v33 + 1;
  v34 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33;
  v28 = v3;
  v20(v34, v48, v2);
  *(v23 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v49, v2);
  v29 = v50;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v23 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v28 + 16);
    v37 = v28 + 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    v42 = (v37 - 8);
    v50 = *(v23 + 24);

    do
    {
      v38(v5, v40, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v42)(v5, v2);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v23 + 24) = v47;

  return result;
}

{
  v1 = v0;
  v60 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v55 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v21 = *(Value + 9);
  v57 = *Value;
  v58 = v20;
  v59 = v21;
  v53 = v22 & 1;
  outlined copy of Environment<ButtonSizing>.Content(v57, v20);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v57, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;

  return outlined consume of Environment<ButtonSizing>.Content(v57, v58);
}

{
  v1 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v48 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v48 - v17;
  v18 = *(v0 + 24);
  if (*(v0 + 48) != *AGGraphGetValue() >> 1)
  {
    v57 = *(v0 + 32);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v54 = *Value;
  v55 = *(Value + 8);
  v53 = v20 & 1;
  v21 = one-time initialization token for _current;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = static ObservationCenter._current;
  swift_beginAccess();
  v23 = pthread_getspecific(*(v22 + 2));
  if (!v23)
  {
    v24 = swift_slowAlloc();
    pthread_setspecific(*(v22 + 2), v24);
    v58 = type metadata accessor for ObservationCenter();
    v18 = *(v22 + 3);
    *&v57 = v18;
    outlined init with take of Any(&v57, v24);

    v23 = v24;
  }

  outlined init with copy of Any(v23, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v25 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v46 = *(v1 + 2);

    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46 + 1, 1, v1);
    *(v25 + 24) = v47;

    v1 = v47;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v25 + 24);
  *(v25 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v54, v1, &v53);
  *(StatusReg + 848) = v28;
  v29 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v29, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v30 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v31 = v12;
    goto LABEL_14;
  }

  v22 = *(v3 + 32);
  v32 = v51;
  v22(v51, v12, v2);
  (*(v3 + 16))(v50, v32, v2);
  swift_beginAccess();
  v1 = *(v25 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v35 = *(v1 + 2);
  v34 = *(v1 + 3);
  if (v35 >= v34 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v1);
  }

  *(v1 + 2) = v35 + 1;
  v36 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v35;
  v30 = v3;
  v22(v36, v50, v2);
  *(v25 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v31 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v37 = *(v25 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v41 = *(v30 + 16);
    v39 = v30 + 16;
    v40 = v41;
    v42 = v37 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v43 = *(v39 + 56);
    v44 = (v39 - 8);
    v52 = *(v25 + 24);

    do
    {
      v40(v5, v42, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v44)(v5, v2);
      v42 += v43;
      --v38;
    }

    while (v38);
  }

  *(v25 + 24) = v49;

  return result;
}

{
  v1 = v0;
  v57 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 24);
  if (*(v0 + 48) != *AGGraphGetValue() >> 1)
  {
    v55 = *(v0 + 32);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v54[0] = *Value;
  v54[1] = v20;
  v53 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54[2];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = *(v1 + 2);

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(*&v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(*&v26 + 24);
  *(*&v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v54, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(*&v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(*&v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = *(v1 + 2);
  v35 = *(v1 + 3);
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  *(v1 + 2) = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(*&v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(*&v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(*&v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(*&v26 + 24) = v49;

  return result;
}

{
  v1 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v47 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v47 - v17;
  v18 = *(v0 + 24);
  if (*(v0 + 48) != *AGGraphGetValue() >> 1)
  {
    v53 = *(v0 + 32);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  v52[0] = *AGGraphGetValue();
  v51 = v19 & 1;
  v20 = one-time initialization token for _current;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(*(v21 + 2));
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(*(v21 + 2), v23);
    v54 = type metadata accessor for ObservationCenter();
    v18 = *(v21 + 3);
    *&v53 = v18;
    outlined init with take of Any(&v53, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v52[1];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v45 = *(v1 + 2);

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v1);
    *(v24 + 24) = v46;

    v1 = v46;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v52, v1, &v51);
  *(StatusReg + 848) = v27;
  v28 = v50;
  outlined init with take of ObservationTracking._AccessList?(v15, v50);
  outlined init with copy of ObservationTracking._AccessList?(v28, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v29 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v12;
    goto LABEL_14;
  }

  v21 = *(v3 + 32);
  v31 = v49;
  v21(v49, v12, v2);
  (*(v3 + 16))(v48, v31, v2);
  swift_beginAccess();
  v1 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v34 = *(v1 + 2);
  v33 = *(v1 + 3);
  if (v34 >= v33 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v1);
  }

  *(v1 + 2) = v34 + 1;
  v35 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34;
  v29 = v3;
  v21(v35, v48, v2);
  *(v24 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v49, v2);
  v30 = v50;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v24 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v40 = *(v29 + 16);
    v38 = v29 + 16;
    v39 = v40;
    v41 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    v43 = (v38 - 8);
    v50 = *(v24 + 24);

    do
    {
      v39(v5, v41, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v43)(v5, v2);
      v41 += v42;
      --v37;
    }

    while (v37);
  }

  *(v24 + 24) = v47;

  return result;
}

{
  v1 = v0;
  v60 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v57 = *(v0 + 8);
    v58 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v57 = *Value;
  v58 = v20;
  v59 = *(Value + 16);
  v53 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v57, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;

  return result;
}

{
  v1 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v47 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v47 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v53 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  v52[0] = *AGGraphGetValue();
  v51 = v19 & 1;
  v20 = one-time initialization token for _current;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(*(v21 + 2));
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(*(v21 + 2), v23);
    v54 = type metadata accessor for ObservationCenter();
    v18 = *(v21 + 3);
    *&v53 = v18;
    outlined init with take of Any(&v53, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v52[1];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v45 = v1[2];

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v1);
    *(v24 + 24) = v46;

    v1 = v46;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v52, v1, &v51);
  *(StatusReg + 848) = v27;
  v28 = v50;
  outlined init with take of ObservationTracking._AccessList?(v15, v50);
  outlined init with copy of ObservationTracking._AccessList?(v28, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v29 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v12;
    goto LABEL_14;
  }

  v21 = *(v3 + 32);
  v31 = v49;
  v21(v49, v12, v2);
  (*(v3 + 16))(v48, v31, v2);
  swift_beginAccess();
  v1 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v34 = v1[2];
  v33 = v1[3];
  if (v34 >= v33 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v1);
  }

  v1[2] = v34 + 1;
  v35 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34;
  v29 = v3;
  v21(v35, v48, v2);
  *(v24 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v49, v2);
  v30 = v50;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v24 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v40 = *(v29 + 16);
    v38 = v29 + 16;
    v39 = v40;
    v41 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    v43 = (v38 - 8);
    v50 = *(v24 + 24);

    do
    {
      v39(v5, v41, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v43)(v5, v2);
      v41 += v42;
      --v37;
    }

    while (v37);
  }

  *(v24 + 24) = v47;

  return result;
}

{
  v1 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v46 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v54 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  v52 = *AGGraphGetValue();
  v51 = v19 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(*(v20 + 2));
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(*(v20 + 2), v22);
    v55 = type metadata accessor for ObservationCenter();
    v18 = *(v20 + 3);
    *&v54 = v18;
    outlined init with take of Any(&v54, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v44 = v1[2];

    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, v1);
    *(v23 + 24) = v45;

    v1 = v45;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v52, v1, &v51, type metadata accessor for _ShapeView<Capsule, ForegroundStyle>, specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:));
  *(StatusReg + 848) = v26;
  v27 = v50;
  outlined init with take of ObservationTracking._AccessList?(v15, v50);
  outlined init with copy of ObservationTracking._AccessList?(v27, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v28 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v29 = v12;
    goto LABEL_14;
  }

  v20 = *(v3 + 32);
  v30 = v49;
  v20(v49, v12, v2);
  (*(v3 + 16))(v48, v30, v2);
  swift_beginAccess();
  v1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v33 = v1[2];
  v32 = v1[3];
  if (v33 >= v32 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v1);
  }

  v1[2] = v33 + 1;
  v34 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33;
  v28 = v3;
  v20(v34, v48, v2);
  *(v23 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v49, v2);
  v29 = v50;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v23 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v28 + 16);
    v37 = v28 + 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    v42 = (v37 - 8);
    v50 = *(v23 + 24);

    do
    {
      v38(v5, v40, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v42)(v5, v2);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v23 + 24) = v47;

  return result;
}

{
  v1 = v0;
  v64 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v50 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v50 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v50 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v59 = *(v0 + 8);
    v60 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v21 = *(Value + 16);
  v22 = *(Value + 24);
  v59 = *Value;
  v60 = v20;
  v61 = v21;
  v62 = v22;
  v63 = *(Value + 32);
  v55 = v23 & 1;
  outlined copy of Path.Storage(v59, v20, v21, v22, v63);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v24 = static ObservationCenter._current;
  swift_beginAccess();
  v25 = pthread_getspecific(*(v24 + 2));
  if (!v25)
  {
    v26 = swift_slowAlloc();
    pthread_setspecific(*(v24 + 2), v26);
    v58 = type metadata accessor for ObservationCenter();
    v18 = *(v24 + 3);
    *&v57 = v18;
    outlined init with take of Any(&v57, v26);

    v25 = v26;
  }

  outlined init with copy of Any(v25, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v27 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v48 = v1[2];

    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48 + 1, 1, v1);
    *(v27 + 24) = v49;

    v1 = v49;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v51 = *(v27 + 24);
  *(v27 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v30 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v59, v1, &v55);
  *(StatusReg + 848) = v30;
  v31 = v54;
  outlined init with take of ObservationTracking._AccessList?(v15, v54);
  outlined init with copy of ObservationTracking._AccessList?(v31, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v32 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v33 = v12;
    goto LABEL_14;
  }

  v24 = *(v3 + 32);
  v34 = v53;
  v24(v53, v12, v2);
  (*(v3 + 16))(v52, v34, v2);
  swift_beginAccess();
  v1 = *(v27 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v37 = v1[2];
  v36 = v1[3];
  if (v37 >= v36 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v1);
  }

  v1[2] = v37 + 1;
  v38 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v37;
  v32 = v3;
  v24(v38, v52, v2);
  *(v27 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v53, v2);
  v33 = v54;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v39 = *(v27 + 24);
  v40 = *(v39 + 16);
  if (v40)
  {
    v43 = *(v32 + 16);
    v41 = v32 + 16;
    v42 = v43;
    v44 = v39 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v45 = *(v41 + 56);
    v46 = (v41 - 8);
    v54 = *(v27 + 24);

    do
    {
      v42(v5, v44, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v46)(v5, v2);
      v44 += v45;
      --v40;
    }

    while (v40);
  }

  *(v27 + 24) = v51;

  return outlined consume of Path.Storage(v59, v60, v61, v62, v63);
}

{
  v1 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v52 - v16);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v62[0] = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v19 = Value[13];
  v62[12] = Value[12];
  v62[13] = v19;
  v62[14] = Value[14];
  v20 = Value[9];
  v62[8] = Value[8];
  v62[9] = v20;
  v21 = Value[11];
  v62[10] = Value[10];
  v62[11] = v21;
  v22 = Value[5];
  v62[4] = Value[4];
  v62[5] = v22;
  v23 = Value[7];
  v62[6] = Value[6];
  v62[7] = v23;
  v24 = Value[1];
  v62[0] = *Value;
  v62[1] = v24;
  v25 = Value[3];
  v62[2] = Value[2];
  v62[3] = v25;
  v58 = v26 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v27 = static ObservationCenter._current;
  swift_beginAccess();
  v28 = pthread_getspecific(v27[2]);
  v29 = v17;
  if (!v28)
  {
    v30 = swift_slowAlloc();
    pthread_setspecific(v27[2], v30);
    v61 = type metadata accessor for ObservationCenter();
    *&v60 = v27[3];
    outlined init with take of Any(&v60, v30);
    v29 = v17;

    v28 = v30;
  }

  outlined init with copy of Any(v28, &v60);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v31 = v59;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v50 = v1[2];

    v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50 + 1, 1, v1);
    *(v31 + 24) = v51;

    v1 = v51;
    goto LABEL_11;
  }

  v53 = CurrentAttribute;
  swift_beginAccess();
  v54 = *(v31 + 24);
  *(v31 + 24) = MEMORY[0x1E69E7CC0];
  v3[7](v14, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = v3;
  v34 = *(StatusReg + 848);
  *(StatusReg + 848) = v14;
  specialized closure #1 in DynamicBody.updateValue()(v62, v1, &v58);
  *(StatusReg + 848) = v34;
  v52 = v5;
  outlined init with take of ObservationTracking._AccessList?(v14, v29);
  v35 = v55;
  outlined init with copy of ObservationTracking._AccessList?(v29, v55, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((v17[6])(v35, 1, v2) == 1)
  {
    v5 = v2;
    outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v29 = v35;
    goto LABEL_14;
  }

  v36 = v57;
  v55 = v17[4];
  (v55)(v57, v35, v2);
  v5 = v2;
  (v17[2])(v56, v36, v2);
  swift_beginAccess();
  v1 = *(v31 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v39 = v1[2];
  v38 = v1[3];
  if (v39 >= v38 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v1);
  }

  v1[2] = v39 + 1;
  (v55)(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v17[9] * v39, v56, v5);
  *(v31 + 24) = v1;
  swift_endAccess();
  (v17[1])(v57, v5);
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = *(v31 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v43 = v17[2];
    v42 = (v17 + 2);
    v56 = *(v31 + 24);
    v57 = v43;
    v44 = v40 + ((v42[64] + 32) & ~v42[64]);
    v45 = *(v42 + 7);
    v46 = v42 - 8;

    v47 = v53;
    v48 = v52;
    do
    {
      (v57)(v48, v44, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v47, v48);
      (*v46)(v48, v5);
      v44 += v45;
      --v41;
    }

    while (v41);
  }

  *(v31 + 24) = v54;

  return result;
}

{
  v1 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v46 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v54 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  v52 = *AGGraphGetValue();
  v51 = v19 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(*(v20 + 2));
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(*(v20 + 2), v22);
    v55 = type metadata accessor for ObservationCenter();
    v18 = *(v20 + 3);
    *&v54 = v18;
    outlined init with take of Any(&v54, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v44 = v1[2];

    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, v1);
    *(v23 + 24) = v45;

    v1 = v45;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v52, v1, &v51, type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>, specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:));
  *(StatusReg + 848) = v26;
  v27 = v50;
  outlined init with take of ObservationTracking._AccessList?(v15, v50);
  outlined init with copy of ObservationTracking._AccessList?(v27, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v28 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v29 = v12;
    goto LABEL_14;
  }

  v20 = *(v3 + 32);
  v30 = v49;
  v20(v49, v12, v2);
  (*(v3 + 16))(v48, v30, v2);
  swift_beginAccess();
  v1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v33 = v1[2];
  v32 = v1[3];
  if (v33 >= v32 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v1);
  }

  v1[2] = v33 + 1;
  v34 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33;
  v28 = v3;
  v20(v34, v48, v2);
  *(v23 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v49, v2);
  v29 = v50;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v23 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v28 + 16);
    v37 = v28 + 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    v42 = (v37 - 8);
    v50 = *(v23 + 24);

    do
    {
      v38(v5, v40, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v42)(v5, v2);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v23 + 24) = v47;

  return result;
}

{
  v1 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v57[0] = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 32);
  v21 = *(Value + 16);
  v57[0] = *Value;
  v57[1] = v21;
  v58 = v20;
  v53 = v22 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v57, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;

  return result;
}

{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v50 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v50 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v50 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v58[0] = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 32);
  v21 = *(Value + 40);
  v22 = *(Value + 16);
  v58[0] = *Value;
  v58[1] = v22;
  v59 = v20;
  v60 = v21;
  v54 = v23 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v24 = static ObservationCenter._current;
  swift_beginAccess();
  v25 = pthread_getspecific(*(v24 + 2));
  if (!v25)
  {
    v26 = swift_slowAlloc();
    pthread_setspecific(*(v24 + 2), v26);
    v57 = type metadata accessor for ObservationCenter();
    v18 = *(v24 + 3);
    *&v56 = v18;
    outlined init with take of Any(&v56, v26);

    v25 = v26;
  }

  outlined init with copy of Any(v25, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v27 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v48 = v1[2];

    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48 + 1, 1, v1);
    *(v27 + 24) = v49;

    v1 = v49;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v27 + 24);
  *(v27 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v30 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v58, v1, &v54);
  *(StatusReg + 848) = v30;
  v31 = v53;
  outlined init with take of ObservationTracking._AccessList?(v15, v53);
  outlined init with copy of ObservationTracking._AccessList?(v31, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v32 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v33 = v12;
    goto LABEL_14;
  }

  v24 = *(v3 + 32);
  v34 = v52;
  v24(v52, v12, v2);
  (*(v3 + 16))(v51, v34, v2);
  swift_beginAccess();
  v1 = *(v27 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v37 = v1[2];
  v36 = v1[3];
  if (v37 >= v36 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v1);
  }

  v1[2] = v37 + 1;
  v38 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v37;
  v32 = v3;
  v24(v38, v51, v2);
  *(v27 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v52, v2);
  v33 = v53;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v39 = *(v27 + 24);
  v40 = *(v39 + 16);
  if (v40)
  {
    v43 = *(v32 + 16);
    v41 = v32 + 16;
    v42 = v43;
    v44 = v39 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v45 = *(v41 + 56);
    v46 = (v41 - 8);
    v53 = *(v27 + 24);

    do
    {
      v42(v5, v44, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v46)(v5, v2);
      v44 += v45;
      --v40;
    }

    while (v40);
  }

  *(v27 + 24) = v50;

  return result;
}

{
  v1 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v47 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v47 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v54 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  AGGraphGetValue();
  v52 = v19 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(*(v20 + 2));
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(*(v20 + 2), v22);
    v55 = type metadata accessor for ObservationCenter();
    v18 = *(v20 + 3);
    *&v54 = v18;
    outlined init with take of Any(&v54, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v45 = v1[2];

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v1);
    *(v23 + 24) = v46;

    v1 = v46;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  v25 = (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v25, v1, &v52);
  *(StatusReg + 848) = v27;
  v28 = v51;
  outlined init with take of ObservationTracking._AccessList?(v15, v51);
  outlined init with copy of ObservationTracking._AccessList?(v28, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v29 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v12;
    goto LABEL_14;
  }

  v20 = *(v3 + 32);
  v31 = v50;
  v20(v50, v12, v2);
  (*(v3 + 16))(v49, v31, v2);
  swift_beginAccess();
  v1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v34 = v1[2];
  v33 = v1[3];
  if (v34 >= v33 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v1);
  }

  v1[2] = v34 + 1;
  v35 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34;
  v29 = v3;
  v20(v35, v49, v2);
  *(v23 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v50, v2);
  v30 = v51;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v23 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v40 = *(v29 + 16);
    v38 = v29 + 16;
    v39 = v40;
    v41 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    v43 = (v38 - 8);
    v51 = *(v23 + 24);

    do
    {
      v39(v5, v41, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v43)(v5, v2);
      v41 += v42;
      --v37;
    }

    while (v37);
  }

  *(v23 + 24) = v48;

  return result;
}

{
  v1 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v51 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v51 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v51 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v59 = *(v0 + 8);
    v60 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v21 = *(Value + 16);
  v22 = *(Value + 24);
  v59 = *Value;
  v60 = v20;
  v61 = v21;
  v62 = v22;
  v55 = v23 & 1;
  outlined copy of Text.Storage(v59, v20, v21);
  v24 = one-time initialization token for _current;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = static ObservationCenter._current;
  swift_beginAccess();
  v26 = pthread_getspecific(*(v25 + 2));
  if (!v26)
  {
    v27 = swift_slowAlloc();
    pthread_setspecific(*(v25 + 2), v27);
    v58 = type metadata accessor for ObservationCenter();
    v18 = *(v25 + 3);
    *&v57 = v18;
    outlined init with take of Any(&v57, v27);

    v26 = v27;
  }

  outlined init with copy of Any(v26, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v49 = v1[2];

    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49 + 1, 1, v1);
    *(v28 + 24) = v50;

    v1 = v50;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v51 = *(v28 + 24);
  *(v28 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v31 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v59, v1, &v55);
  *(StatusReg + 848) = v31;
  v32 = v54;
  outlined init with take of ObservationTracking._AccessList?(v15, v54);
  outlined init with copy of ObservationTracking._AccessList?(v32, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v33 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v34 = v12;
    goto LABEL_14;
  }

  v25 = *(v3 + 32);
  v35 = v53;
  v25(v53, v12, v2);
  (*(v3 + 16))(v52, v35, v2);
  swift_beginAccess();
  v1 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v38 = v1[2];
  v37 = v1[3];
  if (v38 >= v37 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v1);
  }

  v1[2] = v38 + 1;
  v39 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v38;
  v33 = v3;
  v25(v39, v52, v2);
  *(v28 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v53, v2);
  v34 = v54;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v34, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = *(v28 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v44 = *(v33 + 16);
    v42 = v33 + 16;
    v43 = v44;
    v45 = v40 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v42 + 56);
    v47 = (v42 - 8);
    v54 = *(v28 + 24);

    do
    {
      v43(v5, v45, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v47)(v5, v2);
      v45 += v46;
      --v41;
    }

    while (v41);
  }

  *(v28 + 24) = v51;

  outlined consume of Text.Storage(v59, v60, v61);

  return result;
}

{
  v1 = v0;
  v59[48] = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for ObservationTracking._AccessList();
  v2 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v49 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v8;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v49 - v16);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v59[0] = *(v0 + 8);
    v59[1] = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = v19;
  memcpy(v59, Value, 0x180uLL);
  v55 = v20 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(v21[2]);
  v23 = v17;
  if (!v22)
  {
    v24 = swift_slowAlloc();
    pthread_setspecific(v21[2], v24);
    v58 = type metadata accessor for ObservationCenter();
    *&v57 = v21[3];
    outlined init with take of Any(&v57, v24);
    v23 = v17;

    v22 = v24;
  }

  outlined init with copy of Any(v22, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v25 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v25 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v49 = v4;
  v50 = CurrentAttribute;
  swift_beginAccess();
  v51 = *(v25 + 24);
  *(v25 + 24) = MEMORY[0x1E69E7CC0];
  v27 = v53;
  v2[7](v14, 1, 1, v53);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = v2;
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v14;
  specialized closure #1 in DynamicBody.updateValue()(v59, v1, &v55);
  *(StatusReg + 848) = v29;
  outlined init with take of ObservationTracking._AccessList?(v14, v23);
  v30 = v11;
  outlined init with copy of ObservationTracking._AccessList?(v23, v11, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((v17[6])(v11, 1, v27) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v23, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v23 = v11;
    goto LABEL_14;
  }

  v11 = v17[4];
  v31 = v54;
  (v11)(v54, v30, v27);
  (v17[2])(v52, v31, v27);
  swift_beginAccess();
  v1 = *(v25 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v34 = v1[2];
  v33 = v1[3];
  if (v34 >= v33 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v1);
  }

  v1[2] = v34 + 1;
  v35 = v53;
  (v11)(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v17[9] * v34, v52, v53);
  *(v25 + 24) = v1;
  swift_endAccess();
  (v17[1])(v54, v35);
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v23, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v25 + 24);
  v37 = *(v36 + 2);
  if (v37)
  {
    v39 = v17[2];
    v38 = (v17 + 2);
    v54 = v39;
    v40 = &v36[(v38[64] + 32) & ~v38[64]];
    v41 = *(v38 + 7);
    v42 = v38 - 8;
    v52 = v36;

    v43 = v50;
    v44 = v53;
    v45 = v49;
    do
    {
      (v54)(v45, v40, v44);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v43, v45);
      (*v42)(v45, v44);
      v40 += v41;
      --v37;
    }

    while (v37);
  }

  *(v25 + 24) = v51;

  return result;
}

{
  v1 = v0;
  v58 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v48 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v48 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v56 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 16);
  v53 = *Value;
  v54 = v20;
  v52 = v21 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v22 = static ObservationCenter._current;
  swift_beginAccess();
  v23 = pthread_getspecific(*(v22 + 2));
  if (!v23)
  {
    v24 = swift_slowAlloc();
    pthread_setspecific(*(v22 + 2), v24);
    v57 = type metadata accessor for ObservationCenter();
    v18 = *(v22 + 3);
    *&v56 = v18;
    outlined init with take of Any(&v56, v24);

    v23 = v24;
  }

  outlined init with copy of Any(v23, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v25 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v46 = v1[2];

    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46 + 1, 1, v1);
    *(v25 + 24) = v47;

    v1 = v47;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v25 + 24);
  *(v25 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v53, v1, &v52);
  *(StatusReg + 848) = v28;
  v29 = v51;
  outlined init with take of ObservationTracking._AccessList?(v15, v51);
  outlined init with copy of ObservationTracking._AccessList?(v29, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v30 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v31 = v12;
    goto LABEL_14;
  }

  v22 = *(v3 + 32);
  v32 = v50;
  v22(v50, v12, v2);
  (*(v3 + 16))(v49, v32, v2);
  swift_beginAccess();
  v1 = *(v25 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v35 = v1[2];
  v34 = v1[3];
  if (v35 >= v34 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v1);
  }

  v1[2] = v35 + 1;
  v36 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v35;
  v30 = v3;
  v22(v36, v49, v2);
  *(v25 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v50, v2);
  v31 = v51;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v37 = *(v25 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v41 = *(v30 + 16);
    v39 = v30 + 16;
    v40 = v41;
    v42 = v37 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v43 = *(v39 + 56);
    v44 = (v39 - 8);
    v51 = *(v25 + 24);

    do
    {
      v40(v5, v42, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v44)(v5, v2);
      v42 += v43;
      --v38;
    }

    while (v38);
  }

  *(v25 + 24) = v48;

  return result;
}

{
  v1 = v0;
  v60 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v57 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 16);
  v21 = *(Value + 24);
  v57 = *Value;
  v58 = v20;
  v59 = v21;
  v53 = v22 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v57, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;

  return result;
}

{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v58 = *(v0 + 8);
    *&v59 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v58 = *Value;
  v20 = *(Value + 24);
  v59 = *(Value + 8);
  v60 = v20;
  v54 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v57 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v56 = v18;
    outlined init with take of Any(&v56, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v58, v1, &v54);
  *(StatusReg + 848) = v29;
  v30 = v53;
  outlined init with take of ObservationTracking._AccessList?(v15, v53);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v52;
  v23(v52, v12, v2);
  (*(v3 + 16))(v51, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v51, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v52, v2);
  v32 = v53;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v53 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v50;

  return result;
}

{
  v1 = v0;
  v60 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 24);
  if (*(v0 + 48) != *AGGraphGetValue() >> 1)
  {
    v57 = *(v0 + 32);
    *&v58 = *(v0 + 40);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 24);
  v57 = *Value;
  v58 = *(Value + 8);
  v59 = v20;
  v53 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = *(v1 + 2);

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v57, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = *(v1 + 2);
  v35 = *(v1 + 3);
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  *(v1 + 2) = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;

  return result;
}

double specialized DynamicBody.updateValue()(void (*a1)(char *, char *, char *), uint64_t (*a2)(void), void (*a3)(void), void (*a4)(char *, char *))
{
  v60 = a2;
  v61 = a3;
  v7 = v4;
  v69 = *MEMORY[0x1E69E9840];
  v64 = type metadata accessor for ObservationTracking._AccessList();
  v8 = *(v64 - 1);
  MEMORY[0x1EEE9AC00](v64);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v55 - v14;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v55 - v22;
  if (*(v4 + 24) != *AGGraphGetValue() >> 1)
  {
    v67 = *(v4 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v4 + 24) = *AGGraphGetValue() >> 1;
  }

  v23 = a1;
  AGGraphGetValue();
  v65 = v24 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v25 = static ObservationCenter._current;
  swift_beginAccess();
  v26 = pthread_getspecific(v25[2]);
  v27 = v64;
  if (!v26)
  {
    v28 = swift_slowAlloc();
    pthread_setspecific(v25[2], v28);
    v68 = type metadata accessor for ObservationCenter();
    *&v67 = v25[3];
    outlined init with take of Any(&v67, v28);
    v27 = v64;

    v26 = v28;
  }

  outlined init with copy of Any(v26, &v67);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v29 = v66;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v53 = *(v7 + 2);

    v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53 + 1, 1, v7);
    *(v29 + 24) = v54;

    v7 = v54;
    goto LABEL_11;
  }

  v57 = v10;
  v58 = a4;
  v10 = CurrentAttribute;
  swift_beginAccess();
  v59 = *(v29 + 24);
  *(v29 + 24) = MEMORY[0x1E69E7CC0];
  v31 = (*(v8 + 56))(v20, 1, 1, v27);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v33 = v8;
  v34 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  specialized closure #1 in DynamicBody.updateValue()(v31, v7, &v65, v60, v23, v61);
  *(StatusReg + 848) = v34;
  v35 = v63;
  outlined init with take of ObservationTracking._AccessList?(v20, v63);
  outlined init with copy of ObservationTracking._AccessList?(v35, v17, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v8 = v33;
  if ((*(v33 + 48))(v17, 1, v27) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v36 = v17;
    goto LABEL_14;
  }

  v23 = *(v33 + 32);
  v37 = v62;
  v23(v62, v17, v27);
  v38 = v27;
  v27 = v56;
  (*(v33 + 16))(v56, v37, v38);
  swift_beginAccess();
  v7 = *(v29 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v29 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v41 = *(v7 + 2);
  v40 = *(v7 + 3);
  if (v41 >= v40 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v7);
  }

  *(v7 + 2) = v41 + 1;
  v42 = v27;
  v27 = v64;
  v23(&v7[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v41], v42, v64);
  *(v29 + 24) = v7;
  swift_endAccess();
  (*(v8 + 8))(v62, v27);
  v36 = v63;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v36, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v43 = *(v29 + 24);
  v44 = *(v43 + 16);
  if (v44)
  {
    v46 = *(v8 + 16);
    v45 = v8 + 16;
    v63 = *(v29 + 24);
    v64 = v46;
    v47 = v43 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
    v48 = *(v45 + 56);
    v49 = (v45 - 8);

    v51 = v57;
    v50 = v58;
    do
    {
      (v64)(v51, v47, v27);
      v50(v10, v51);
      (*v49)(v51, v27);
      v47 += v48;
      --v44;
    }

    while (v44);
  }

  *(v29 + 24) = v59;

  return result;
}

double specialized DynamicBody.updateValue()(void (*a1)(char *, char *, char *), uint64_t (*a2)(void), double *a3, void (*a4)(char *, char *))
{
  v58 = a2;
  v59 = a3;
  v7 = v4;
  v67 = *MEMORY[0x1E69E9840];
  v62 = type metadata accessor for ObservationTracking._AccessList();
  v8 = *(v62 - 1);
  MEMORY[0x1EEE9AC00](v62);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v54 - v14;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v54 - v22;
  if (*(v4 + 24) != *AGGraphGetValue() >> 1)
  {
    v65 = *(v4 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v4 + 24) = *AGGraphGetValue() >> 1;
  }

  v23 = a1;
  v64[0] = *AGGraphGetValue();
  v63 = v24 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v25 = static ObservationCenter._current;
  swift_beginAccess();
  v26 = pthread_getspecific(v25[2]);
  v27 = v62;
  if (!v26)
  {
    v28 = swift_slowAlloc();
    pthread_setspecific(v25[2], v28);
    v66 = type metadata accessor for ObservationCenter();
    *&v65 = v25[3];
    outlined init with take of Any(&v65, v28);
    v27 = v62;

    v26 = v28;
  }

  outlined init with copy of Any(v26, &v65);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v29 = v64[1];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v52 = *(v7 + 2);

    v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52 + 1, 1, v7);
    *(*&v29 + 24) = v53;

    v7 = v53;
    goto LABEL_11;
  }

  v55 = v10;
  v10 = CurrentAttribute;
  v56 = a4;
  swift_beginAccess();
  v57 = *(*&v29 + 24);
  *(*&v29 + 24) = MEMORY[0x1E69E7CC0];
  (*(v8 + 56))(v20, 1, 1, v27);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v32 = v8;
  v33 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  specialized closure #1 in DynamicBody.updateValue()(v64, v7, &v63, v58, v23, v59);
  *(StatusReg + 848) = v33;
  v34 = v61;
  outlined init with take of ObservationTracking._AccessList?(v20, v61);
  outlined init with copy of ObservationTracking._AccessList?(v34, v17, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v8 = v32;
  if ((*(v32 + 48))(v17, 1, v27) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v34, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v35 = v17;
    goto LABEL_14;
  }

  v23 = *(v32 + 32);
  v36 = v60;
  v23(v60, v17, v27);
  v37 = v27;
  v27 = v54;
  (*(v32 + 16))(v54, v36, v37);
  swift_beginAccess();
  v7 = *(*&v29 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(*&v29 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v40 = *(v7 + 2);
  v39 = *(v7 + 3);
  if (v40 >= v39 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v7);
  }

  *(v7 + 2) = v40 + 1;
  v41 = v27;
  v27 = v62;
  v23(&v7[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v40], v41, v62);
  *(*&v29 + 24) = v7;
  swift_endAccess();
  (*(v8 + 8))(v60, v27);
  v35 = v61;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v42 = *(*&v29 + 24);
  v43 = *(v42 + 16);
  if (v43)
  {
    v45 = *(v8 + 16);
    v44 = v8 + 16;
    v61 = *(*&v29 + 24);
    v62 = v45;
    v46 = v42 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
    v47 = *(v44 + 56);
    v48 = (v44 - 8);

    v49 = v56;
    v50 = v55;
    do
    {
      (v62)(v50, v46, v27);
      v49(v10, v50);
      (*v48)(v50, v27);
      v46 += v47;
      --v43;
    }

    while (v43);
  }

  *(*&v29 + 24) = v57;

  return result;
}

void specialized closure #1 in DynamicBody.updateValue()(double *a1, uint64_t a2, char *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v28 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v28) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v26 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_39;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1)
        {
          if (static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v29 = v15;
            v30 = v16;
            v31 = OutputValue != 0;
            v32 = v13;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }
        }

LABEL_28:
        if ((*a3 & 1) == 0)
        {
          return;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }

  v27 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v26) = OutputValue != 0;
  v25 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v25, v10, v8, v9 | (v10 << 32), SBYTE4(v26), v27, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v25, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v25, -1, -1);
  if (*a3)
  {
LABEL_29:
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*a1, a1[1], a1[2], a1[3]);
  }
}

{
  v35 = *MEMORY[0x1E69E9840];
  v31 = *(a2 + 8);
  v32 = *(a2 + 16);
  v30 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v30) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>, &type metadata for Image), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>, &type metadata for Image);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v25 = v12;
    swift_once();
    v12 = v25;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_39;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1)
        {
          if (static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v31 = v15;
            v32 = v16;
            v33 = OutputValue != 0;
            v34 = v13;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }
        }

LABEL_28:
        if ((*a3 & 1) == 0)
        {
          return;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }

  v29 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v29;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v28) = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v9 | (v10 << 32), SBYTE4(v28), v29, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
  if (*a3)
  {
LABEL_29:
    v23 = *a1;

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v24, v23);
  }
}

void *specialized closure #1 in DynamicBody.updateValue()(const void *a1, uint64_t a2, char *a3)
{
  v5 = v3;
  v34[70] = *MEMORY[0x1E69E9840];
  v34[0] = *(a2 + 8);
  v34[1] = *(a2 + 16);
  v33[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v30 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v34[0] = v18;
            v34[1] = v19;
            LOBYTE(v34[2]) = v5 != 0;
            BYTE1(v34[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v31 = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = v31;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v12, v10, v11 | (v12 << 32), v5 != 0, v31, 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  result = memcpy(v33, a1, sizeof(v33));
  if (*a3)
  {
    memcpy(v34, a1, 0x230uLL);
    outlined init with copy of GlassEntryContainerView(v33, &v32);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v34);
    return outlined destroy of GlassEntryContainerView(v33);
  }

  return result;
}

{
  v5 = v3;
  v35[48] = *MEMORY[0x1E69E9840];
  v35[0] = *(a2 + 8);
  v35[1] = *(a2 + 16);
  v34[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v34) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>(0), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>(0);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v31 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v35[0] = v18;
            v35[1] = v19;
            LOBYTE(v35[2]) = v5 != 0;
            BYTE1(v35[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v32 = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = v32;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v12, v10, v11 | (v12 << 32), v5 != 0, v32, 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  memcpy(v34, a1, sizeof(v34));
  v27 = *a3;
  result = memcpy(v35, a1, 0x180uLL);
  if (v27)
  {
    outlined init with copy of GlassTransitionStateModifier(v34, &v33);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v35);
    return outlined destroy of GlassTransitionStateModifier(v34);
  }

  return result;
}

{
  v5 = v3;
  v34[43] = *MEMORY[0x1E69E9840];
  v34[0] = *(a2 + 8);
  v34[1] = *(a2 + 16);
  v33[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>(0), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>(0);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v31 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v34[0] = v18;
            v34[1] = v19;
            LOBYTE(v34[2]) = v5 != 0;
            BYTE1(v34[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  HIDWORD(v31) = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = HIDWORD(v31);
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v30 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v30, v12, v10, v11 | (v12 << 32), v5 != 0, SBYTE4(v31), 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v30, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v30, -1, -1);
LABEL_28:
  memcpy(v33, a1, 0x154uLL);
  v27 = *a3;
  result = memcpy(v34, a1, 0x154uLL);
  if (v27)
  {
    outlined init with copy of GlassEffectShapeModifier(v33, &v32);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v34);
    return outlined destroy of GlassEffectShapeModifier(v33);
  }

  return result;
}

{
  v5 = v3;
  v34[36] = *MEMORY[0x1E69E9840];
  v34[0] = *(a2 + 8);
  v34[1] = *(a2 + 16);
  v33[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v30 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v34[0] = v18;
            v34[1] = v19;
            LOBYTE(v34[2]) = v5 != 0;
            BYTE1(v34[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v31 = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = v31;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v12, v10, v11 | (v12 << 32), v5 != 0, v31, 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  result = memcpy(v33, a1, 0x11CuLL);
  if (*a3)
  {
    memcpy(v34, a1, 0x11CuLL);
    outlined init with copy of GlassEffectView(v33, &v32);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v34);
    return outlined destroy of GlassEffectView(v33);
  }

  return result;
}

{
  v5 = v3;
  v33[85] = *MEMORY[0x1E69E9840];
  v33[0] = *(a2 + 8);
  v33[1] = *(a2 + 16);
  v32[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v32) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>(0), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>(0);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v30 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v33[0] = v18;
            v33[1] = v19;
            LOBYTE(v33[2]) = v5 != 0;
            BYTE1(v33[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  HIDWORD(v30) = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = HIDWORD(v30);
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v12, v10, v11 | (v12 << 32), v5 != 0, SBYTE4(v30), 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  result = memcpy(v32, a1, sizeof(v32));
  if (*a3)
  {
    memcpy(v33, a1, 0x2A8uLL);
    outlined init with copy of GlassEntryView(v32, &v31);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v33);
    return outlined destroy of GlassEntryView(v32);
  }

  return result;
}

{
  v5 = v3;
  v33[129] = *MEMORY[0x1E69E9840];
  v33[0] = *(a2 + 8);
  v33[1] = *(a2 + 16);
  v32[0] = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v32) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v30 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v33[0] = v18;
            v33[1] = v19;
            LOBYTE(v33[2]) = v5 != 0;
            BYTE1(v33[2]) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  HIDWORD(v30) = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = HIDWORD(v30);
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v12, v10, v11 | (v12 << 32), v5 != 0, SBYTE4(v30), 7);
  if (v4)
  {

    result = MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return result;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  result = memcpy(v32, a1, sizeof(v32));
  if (*a3)
  {
    memcpy(v33, a1, 0x408uLL);
    outlined init with copy of GlassItemView(v32, &v31);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v33);
    return outlined destroy of GlassItemView(v32);
  }

  return result;
}

void specialized closure #1 in DynamicBody.updateValue()(void *a1, uint64_t a2, char *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = *(a2 + 8);
  v31 = *(a2 + 16);
  v29 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v29) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v24 = v12;
    swift_once();
    v12 = v24;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v27 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_39;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1)
        {
          if (static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v30 = v15;
            v31 = v16;
            v32 = OutputValue != 0;
            v33 = v13;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }
        }

LABEL_28:
        if ((*a3 & 1) == 0)
        {
          return;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }

  v28 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v28;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v27) = OutputValue != 0;
  v26 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v26, v10, v8, v9 | (v10 << 32), SBYTE4(v27), v28, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v26, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v26, -1, -1);
  if (*a3)
  {
LABEL_29:

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v23);
  }
}

{
  v34 = *MEMORY[0x1E69E9840];
  v30 = *(a2 + 8);
  v31 = *(a2 + 16);
  v29 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v29) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v24 = v12;
    swift_once();
    v12 = v24;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v27 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          v30 = v15;
          v31 = v18;
          v32 = OutputValue != 0;
          v33 = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v28 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v28;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v27) = OutputValue != 0;
  v26 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v26, v10, v8, v9 | (v10 << 32), SBYTE4(v27), v28, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v26, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v26, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v23);
  }
}

void specialized closure #1 in DynamicBody.updateValue()(__int128 *a1, uint64_t a2, char *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = *(a2 + 8);
  v34 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v34) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v29 = v12;
    swift_once();
    v12 = v29;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v32 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v35 = v15;
          *(&v35 + 1) = v16;
          LOBYTE(v36) = OutputValue != 0;
          BYTE1(v36) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v33 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v33;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v32) = OutputValue != 0;
  v31 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v31, v10, v8, v9 | (v10 << 32), SBYTE4(v32), v33, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v31, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v31, -1, -1);
LABEL_28:
  v23 = *(a1 + 2);
  v24 = *(a1 + 3);
  v25 = *(a1 + 4);
  v26 = *(a1 + 5);
  v27 = *(a1 + 6);
  v28 = *a3;
  v35 = *a1;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  if (v28)
  {

    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v35);
  }
}

{
  v5 = v3;
  v78 = *MEMORY[0x1E69E9840];
  v62 = *(a2 + 8);
  LODWORD(v47[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v47) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>(0), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>(0);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = a3;
    a3 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v45 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      a3 = v4;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            *&v62 = v18;
            *(&v62 + 1) = v19;
            LOBYTE(v63) = v5 != 0;
            BYTE1(v63) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  HIDWORD(v45) = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = HIDWORD(v45);
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v44 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v44, v12, v10, v11 | (v12 << 32), v5 != 0, SBYTE4(v45), 7);
  if (a3)
  {

    MEMORY[0x193AC4820](v44, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v44, -1, -1);
  a3 = v4;
LABEL_28:
  v27 = a1[13];
  v28 = a1[11];
  v58 = a1[12];
  v59 = v27;
  v29 = a1[13];
  v60 = a1[14];
  v30 = a1[9];
  v31 = a1[7];
  v54 = a1[8];
  v55 = v30;
  v32 = a1[9];
  v33 = a1[11];
  v56 = a1[10];
  v57 = v33;
  v34 = a1[5];
  v35 = a1[3];
  v50 = a1[4];
  v51 = v34;
  v36 = a1[5];
  v37 = a1[7];
  v52 = a1[6];
  v53 = v37;
  v38 = a1[1];
  v47[0] = *a1;
  v47[1] = v38;
  v39 = a1[3];
  v41 = *a1;
  v40 = a1[1];
  v48 = a1[2];
  v49 = v39;
  v74 = v58;
  v75 = v29;
  v76 = a1[14];
  v70 = v54;
  v71 = v32;
  v72 = v56;
  v73 = v28;
  v66 = v50;
  v67 = v36;
  v68 = v52;
  v69 = v31;
  v62 = v41;
  v63 = v40;
  v61 = *(a1 + 30);
  v42 = *a3;
  v77 = *(a1 + 30);
  v64 = v48;
  v65 = v35;
  if (v42)
  {
    outlined init with copy of ScalePulseModifier<Int>(v47, &v46);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v62);
    outlined destroy of ScalePulseModifier<Int>(v47);
  }
}

{
  v40 = *MEMORY[0x1E69E9840];
  v35 = *(a2 + 8);
  LODWORD(v33[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v27 = v12;
    swift_once();
    v12 = v27;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v30 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v35 = v15;
          *(&v35 + 1) = v16;
          LOBYTE(v36) = OutputValue != 0;
          BYTE1(v36) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v31 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v31;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v30 = OutputValue != 0;
  v29 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v29, v10, v8, v9 | (v10 << 32), v30, v31, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v29, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v29, -1, -1);
LABEL_28:
  v23 = a1[3];
  v33[2] = a1[2];
  v33[3] = v23;
  v34 = *(a1 + 64);
  v24 = a1[1];
  v33[0] = *a1;
  v33[1] = v24;
  if (*a3)
  {
    v25 = a1[3];
    v37 = a1[2];
    v38 = v25;
    v39 = *(a1 + 64);
    v26 = a1[1];
    v35 = *a1;
    v36 = v26;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v33, v32, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v35);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v33, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
  }
}

{
  v35 = *MEMORY[0x1E69E9840];
  v32 = *(a2 + 8);
  v31 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v31) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v26 = v12;
    swift_once();
    v12 = v26;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v29 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v32 = v15;
          *(&v32 + 1) = v16;
          LOBYTE(v33) = OutputValue != 0;
          BYTE1(v33) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v30 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v30;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v29) = OutputValue != 0;
  v28 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v28, v10, v8, v9 | (v10 << 32), SBYTE4(v29), v30, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v28, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v28, -1, -1);
LABEL_28:
  v23 = *(a1 + 32);
  v24 = *a3;
  v25 = a1[1];
  v32 = *a1;
  v33 = v25;
  v34 = v23;
  if (v24)
  {
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v32);
  }
}

{
  v5 = v3;
  v54 = *MEMORY[0x1E69E9840];
  v39 = *(a2 + 8);
  v38 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v38) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v36 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v20;
      while ((v12 + v22) | v19)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v19;
        if (v12 + v22 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v21] = v23 & 0x7FFFFFFF;
          v20 = -v22;
          if (!__OFADD__(v21++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v21 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            *&v39 = v18;
            *(&v39 + 1) = v21;
            LOBYTE(v40) = v5 != 0;
            BYTE1(v40) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v37 = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = v37;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v35 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v35, v12, v10, v11 | (v12 << 32), v5 != 0, v37, 7);
  if (v4)
  {

    MEMORY[0x193AC4820](v35, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v35, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v27 = a1[13];
    v51 = a1[12];
    v52 = v27;
    v53 = a1[14];
    v28 = a1[9];
    v47 = a1[8];
    v48 = v28;
    v29 = a1[11];
    v49 = a1[10];
    v50 = v29;
    v30 = a1[5];
    v43 = a1[4];
    v44 = v30;
    v31 = a1[7];
    v45 = a1[6];
    v46 = v31;
    v32 = a1[1];
    v39 = *a1;
    v40 = v32;
    v33 = a1[3];
    v41 = a1[2];
    v42 = v33;
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v39);
  }
}

{
  v34 = *MEMORY[0x1E69E9840];
  v31 = *(a2 + 8);
  v30 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v30) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(0), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(0);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v25 = v12;
    swift_once();
    v12 = v25;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v31 = v15;
          *(&v31 + 1) = v18;
          LOBYTE(v32) = OutputValue != 0;
          BYTE1(v32) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)(0);
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v29 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v29;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v28) = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v9 | (v10 << 32), SBYTE4(v28), v29, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
LABEL_28:
  if (*a3 == 1)
  {
    v23 = *(a1 + 32);
    v24 = a1[1];
    v31 = *a1;
    v32 = v24;
    v33 = v23;
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v31);
  }
}