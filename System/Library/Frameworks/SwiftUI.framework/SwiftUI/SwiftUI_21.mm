void $defer #1 () in NavigationAuthority.flushRequestQueue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 128);
  v38 = *(a1 + 112);
  v39 = v6;
  v40[0] = *(a1 + 144);
  *(v40 + 10) = *(a1 + 154);
  v7 = *(a1 + 64);
  v34 = *(a1 + 48);
  v35 = v7;
  v8 = *(a1 + 96);
  v36 = *(a1 + 80);
  v37 = v8;
  v9 = *(a1 + 32);
  v32 = *(a1 + 16);
  v33 = v9;
  if (getEnumTag for AccessibilityActionCategory.Category(&v32) == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v33 != a2)
  {
    v10 = *(a1 + 192);
    v11 = *(a1 + 128);
    v29 = *(a1 + 112);
    v30 = v11;
    v31[0] = *(a1 + 144);
    *(v31 + 10) = *(a1 + 154);
    v12 = *(a1 + 64);
    v25 = *(a1 + 48);
    v26 = v12;
    v13 = *(a1 + 96);
    v27 = *(a1 + 80);
    v28 = v13;
    v14 = *(a1 + 32);
    v23 = *(a1 + 16);
    v24 = v14;
    if (getEnumTag for AccessibilityActionCategory.Category(&v23) == 1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v15 = DWORD1(v24);
    if (*(v10 + 16) == v24)
    {
      *(v10 + 16) = v24;
      *(v10 + 20) = v15;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost, type metadata accessor for NavigationSeedHost, protocol conformance descriptor for NavigationSeedHost);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v17 = *(a1 + 128);
  v29 = *(a1 + 112);
  v30 = v17;
  v31[0] = *(a1 + 144);
  *(v31 + 10) = *(a1 + 154);
  v18 = *(a1 + 64);
  v25 = *(a1 + 48);
  v26 = v18;
  v19 = *(a1 + 96);
  v27 = *(a1 + 80);
  v28 = v19;
  v20 = *(a1 + 32);
  v23 = *(a1 + 16);
  v24 = v20;
  if (getEnumTag for AccessibilityActionCategory.Category(&v23) == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  NavigationState.listSelectionSeedsByColumn.getter();
  v22 = v21;
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI15NavigationStateV12StackContentV3KeyV_AE13SelectionSeedVTt1g5(v21, a3))
  {
  }

  else
  {

    NavigationSelectionHost.selectionSeedByStackKey.setter(v22);
  }
}

void NavigationState.listSelectionSeedsByColumn.getter()
{
  v1 = *(v0 + 24);
  v2 = MEMORY[0x1E69E7CC8];
  v55 = MEMORY[0x1E69E7CC8];
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
  v32 = v1;

  v8 = 0;
  while (v6)
  {
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v8 << 6);
    v18 = *(v32 + 48) + 24 * v17;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    outlined init with copy of NavigationColumnState(*(v32 + 56) + 360 * v17, &v45 + 8);
    *&v44 = v19;
    BYTE8(v44) = v20;
    *&v45 = v21;
    v22 = v46;
    if (v50)
    {
      v23 = (v53 | (v46 << 32)) + ~(v53 << 32);
      v24 = (v23 ^ (v23 >> 22)) + ~((v23 ^ (v23 >> 22)) << 13);
      v25 = (9 * (v24 ^ (v24 >> 8))) ^ ((9 * (v24 ^ (v24 >> 8))) >> 15);
      v26 = ((v25 + ~(v25 << 27)) >> 31) ^ (v25 + ~(v25 << 27));
      if (v53 == -1)
      {
        v26 = -1;
      }

      if (!v46)
      {
        v26 = v53;
      }

      if (!v53)
      {
        v26 = v46;
      }

      if (v46 == -1)
      {
        v22 = -1;
      }

      else
      {
        v22 = v26;
      }
    }

    v33 = v44;
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    memcpy(v43, v54, sizeof(v43));
    v27 = *(v2 + 16);
    if (*(v2 + 24) <= v27)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27 + 1, 1);
      v2 = v55;
    }

    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v33);
    MEMORY[0x18D00F6F0](BYTE8(v33));
    MEMORY[0x18D00F6F0](v34);
    v9 = Hasher._finalize()();
    v10 = v2 + 64;
    v11 = -1 << *(v2 + 32);
    v12 = v9 & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v11) >> 6;
      while (++v13 != v29 || (v28 & 1) == 0)
      {
        v30 = v13 == v29;
        if (v13 == v29)
        {
          v13 = 0;
        }

        v28 |= v30;
        v31 = *(v10 + 8 * v13);
        if (v31 != -1)
        {
          v14 = __clz(__rbit64(~v31)) + (v13 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_35;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v6 &= v6 - 1;
    v15 = *(v2 + 48) + 24 * v14;
    *v15 = v33;
    *(v15 + 8) = BYTE8(v33);
    *(v15 + 16) = v34;
    *(*(v2 + 56) + 4 * v14) = v22;
    ++*(v2 + 16);
    outlined destroy of NavigationColumnState(&v34 + 8);
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v16);
    ++v8;
    if (v6)
    {
      v8 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI15NavigationStateV12StackContentV3KeyV_AE13SelectionSeedVTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 48) + 24 * v12;
    v14 = *(v13 + 8);
    v15 = v14 == 6;
    if (v14 != 6)
    {
      v16 = *(*(v3 + 56) + 4 * v12);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v13, v14, *(v13 + 16));
      if (v17)
      {
        v18 = *(*(a2 + 56) + 4 * result);
        if (v18 != -1 && v18 == v16)
        {
          continue;
        }
      }
    }

    return v15;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t NavigationSelectionHost.selectionSeedByStackKey.setter(uint64_t a1)
{
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI15NavigationStateV12StackContentV3KeyV_AE13SelectionSeedVTt1g5(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost, protocol conformance descriptor for NavigationSelectionHost);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t partial apply for closure #1 in NavigationSelectionHost.selectionSeedByStackKey.setter()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void PositionedNavigationDestinationProcessor.PollingRule.updateValue()(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v61 - v5;
  v7 = *(v1 + 48);
  v76 = *(v1 + 32);
  v77 = v7;
  v78 = *(v1 + 64);
  v8 = *(v1 + 16);
  v74 = *v1;
  v75 = v8;
  v66 = a1;
  PositionedNavigationDestinationProcessor.PollingRule.authority.getter(&v72);
  if (v73 == 1)
  {
    _s7SwiftUI19NavigationAuthorityVSgWOhTm_2(&v72, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720], _s7SwiftUI19NavigationAuthorityVSgMaTm_1);
    return;
  }

  if (v73 == 2)
  {
    outlined destroy of NavigationAuthority??(&v72);
    return;
  }

  v61 = v6;
  outlined init with take of NavigationAuthority(&v72, v79);
  v9 = *(v1 + 56);
  if (v9 != *AGGraphGetValue() >> 1)
  {
    *(v2 + 56) = *AGGraphGetValue() >> 1;
    *(v2 + 44) = 0xFFFFFFFFLL;
    *(v2 + 52) = 0;
  }

  v67 = v2;
  v10 = *AGGraphGetValue();
  v11 = *(v10 + 64);
  v64 = v10 + 64;
  v65 = v10;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v63 = (v12 + 63) >> 6;

  v15 = 0;
  v62 = MEMORY[0x1E69E7CC0];
  while (v14)
  {
LABEL_17:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(v65 + 48) + 48 * v17;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = *(v18 + 32);
    v24 = *(v18 + 40);
    outlined init with copy of PositionedNavigationDestination.Storage.SeededRequest(*(v65 + 56) + 176 * v17, v70);
    if (v70[17] >> 1 == 0xFFFFFFFF)
    {
LABEL_28:

      v42 = v62;
      v43 = v67;
      if (*(v62 + 2) && (UpdateCycleDetector.dispatch(label:isDebug:)() & 1) != 0)
      {
        v45 = *(v43 + 24);
        v44 = *(v43 + 32);
        v46 = v61;
        static Log.navigation.getter();
        v47 = type metadata accessor for Logger();
        v48 = *(v47 - 8);
        if ((*(v48 + 48))(v46, 1, v47) == 1)
        {
          _s7SwiftUI19NavigationAuthorityVSgWOhTm_2(v46, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for Attribute<(_:)>);
        }

        else
        {

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = v45;
            v52 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v70[0] = v66;
            *v52 = 136315394;
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v44, v70);

            *(v52 + 4) = v53;
            *(v52 + 12) = 2080;
            v54 = specialized implicit closure #5 in PositionedNavigationDestinationProcessor.PollingRule.updateValue()(v62);
            v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v70);

            *(v52 + 14) = v56;
            v42 = v62;
            _os_log_impl(&dword_18BD4A000, v49, v50, "Processing navigation destinations from\n- Processor: %s\n- Requests: %s", v52, 0x16u);
            v57 = v66;
            swift_arrayDestroy();
            MEMORY[0x18D0110E0](v57, -1, -1);
            MEMORY[0x18D0110E0](v52, -1, -1);
          }

          else
          {
          }

          (*(v48 + 8))(v46, v47);
        }

        v58 = *(v42 + 2);
        if (v58)
        {
          v59 = *(v43 + 16);
          v60 = (v42 + 32);
          do
          {
            outlined init with copy of NavigationRequest(v60, v70);
            if ((v59 & 1) == 0)
            {
              NavigationAuthority.enqueueRequest(_:)(v70);
            }

            outlined destroy of NavigationRequest(v70);
            v60 += 168;
            --v58;
          }

          while (v58);
        }

        outlined destroy of NavigationAuthority(v79);
      }

      else
      {
        outlined destroy of NavigationAuthority(v79);
      }

      return;
    }

    v14 &= v14 - 1;
    v25 = v71;
    v80[0] = v19;
    v80[1] = v20;
    v80[2] = v21;
    v80[3] = v22;
    v80[4] = v23;
    v81 = v24;
    v26 = *(v67 + 64);
    if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v80), v25 = v71, (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 4 * v27);
      if (v29 != -1 && v71 != -1 && v29 == v71)
      {
        goto LABEL_11;
      }
    }

    else if (!v25)
    {
      goto LABEL_11;
    }

    outlined init with copy of NavigationRequest(v70, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
    }

    v31 = *(v62 + 2);
    v30 = *(v62 + 3);
    if (v31 >= v30 >> 1)
    {
      v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v62);
    }

    v32 = v62;
    *(v62 + 2) = v31 + 1;
    v33 = &v32[168 * v31];
    v34 = v68[0];
    v35 = v68[2];
    *(v33 + 3) = v68[1];
    *(v33 + 4) = v35;
    *(v33 + 2) = v34;
    v36 = v68[3];
    v37 = v68[4];
    v38 = v68[6];
    *(v33 + 7) = v68[5];
    *(v33 + 8) = v38;
    *(v33 + 5) = v36;
    *(v33 + 6) = v37;
    v39 = v68[7];
    v40 = v68[8];
    v41 = v68[9];
    *(v33 + 24) = v69;
    *(v33 + 10) = v40;
    *(v33 + 11) = v41;
    *(v33 + 9) = v39;
LABEL_11:
    $defer #1 <A>() in PositionedNavigationDestinationProcessor.PollingRule.updateValue()(v67, v80, v70);
    outlined destroy of PositionedNavigationDestination.Storage.SeededRequest(v70);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v63)
    {
      goto LABEL_28;
    }

    v14 = *(v64 + 8 * v16);
    ++v15;
    if (v14)
    {
      v15 = v16;
      goto LABEL_17;
    }
  }

  __break(1u);
}

double PositionedNavigationDestinationProcessor.PollingRule.authority.getter@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t assignWithCopy for NavigationAuthority(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for NavigationColumnState.ColumnContent(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 120);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  v5 = *(a2 + 88);
  if (v4 == 1)
  {
    if (v5 == 255)
    {
      v12 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v12;
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 73) = *(a2 + 73);
      v13 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v13;
    }

    else if (v5)
    {
      *a1 = *a2;
      v6 = (a1 + 8);
      v7 = a2[4];

      if (v7)
      {
        v8 = a2[5];
        *(a1 + 32) = v7;
        *(a1 + 40) = v8;
        (**(v7 - 8))(a1 + 8, a2 + 1, v7);
      }

      else
      {
        v18 = *(a2 + 3);
        *v6 = *(a2 + 1);
        *(a1 + 24) = v18;
        *(a1 + 40) = a2[5];
      }

      v19 = a2[7];
      if (v19 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v19;
      }

      v20 = a2[9];
      v21 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v20;
      *(a1 + 80) = v21;
      *(a1 + 88) = 1;
    }

    else
    {
      v16 = *(a2 + 3);
      *(a1 + 24) = v16;
      (**(v16 - 8))(a1, a2);
      *(a1 + 88) = 0;
    }

    *(a1 + 120) = 1;
  }

  else
  {
    if (v5 == 255)
    {
      v14 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v14;
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 73) = *(a2 + 73);
      v15 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v15;
    }

    else if (v5)
    {
      *a1 = *a2;
      v9 = (a1 + 8);
      v10 = a2[4];

      if (v10)
      {
        v11 = a2[5];
        *(a1 + 32) = v10;
        *(a1 + 40) = v11;
        (**(v10 - 8))(a1 + 8, a2 + 1, v10);
      }

      else
      {
        v22 = *(a2 + 3);
        *v9 = *(a2 + 1);
        *(a1 + 24) = v22;
        *(a1 + 40) = a2[5];
      }

      v23 = a2[7];
      if (v23 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v23;
      }

      v24 = a2[9];
      v25 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v24;
      *(a1 + 80) = v25;
      *(a1 + 88) = 1;
    }

    else
    {
      v17 = *(a2 + 3);
      *(a1 + 24) = v17;
      (**(v17 - 8))(a1, a2);
      *(a1 + 88) = 0;
    }

    v26 = a2[13];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v26;
    *(a1 + 112) = a2[14];
    *(a1 + 120) = 0;
  }

  return a1;
}

void destroy for NavigationColumnState.ColumnContent(void *a1)
{
  v2 = *(a1 + 120);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  v3 = *(a1 + 88);
  if (v2 == 1)
  {
    if (v3 != 255)
    {
      if (v3)
      {

        if (a1[4])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 1);
        }

        if (a1[7] != 1)
        {
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }
  }

  else
  {
    if (v3 != 255)
    {
      if (v3)
      {

        if (a1[4])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 1);
        }

        if (a1[7] != 1)
        {
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }
  }
}

uint64_t outlined destroy of NavigationRequest.Action?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for NavigationRequest.Action?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance PositionedNavigationDestination.Key(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);
  result = swift_bridgeObjectRelease_n();
  *a1 = v6;
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v79 = a1;
  v80 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v81 = v8;
  v82 = 0;
  v83 = v11 & v9;
  v84 = a2;
  v85 = a3;

  specialized LazyMapSequence.Iterator.next()(&v67);
  if (*(&v77 + 1) >> 1 == 0xFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  v86 = v67;
  v87[0] = v68[0];
  *(v87 + 9) = *(v68 + 9);
  v65 = v77;
  v66[0] = v78[0];
  *(v66 + 12) = *(v78 + 12);
  v61 = v73;
  v62 = v74;
  v63 = v75;
  v64 = v76;
  v57 = v69;
  v58 = v70;
  v59 = v71;
  v60 = v72;
  v12 = *a5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v86);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v86);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v22 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v22;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    outlined assign with take of PositionedNavigationDestination.Storage.SeededRequest(&v57, v21[7] + 176 * v13);
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v67);
    if (*(&v77 + 1) >> 1 == 0xFFFFFFFFLL)
    {
LABEL_16:
      outlined consume of Set<UIPress>.Iterator._Variant(v79);

      return;
    }

    v19 = -1;
    while (1)
    {
      v86 = v67;
      v87[0] = v68[0];
      *(v87 + 9) = *(v68 + 9);
      v65 = v77;
      v66[0] = v78[0];
      *(v66 + 12) = *(v78 + 12);
      v61 = v73;
      v62 = v74;
      v63 = v75;
      v64 = v76;
      v57 = v69;
      v58 = v70;
      v59 = v71;
      v60 = v72;
      v36 = *a5;
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(&v86);
      v39 = v36[2];
      v40 = (v38 & 1) == 0;
      v17 = __OFADD__(v39, v40);
      v41 = v39 + v40;
      if (v17)
      {
        goto LABEL_26;
      }

      a4 = v38;
      if (v36[3] < v41)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, 1);
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(&v86);
        if ((a4 & 1) != (v42 & 1))
        {
          goto LABEL_8;
        }
      }

      v43 = *a5;
      if (a4)
      {
        outlined assign with take of PositionedNavigationDestination.Storage.SeededRequest(&v57, v43[7] + 176 * v37);
      }

      else
      {
        v43[(v37 >> 6) + 8] |= 1 << v37;
        v44 = (v43[6] + 48 * v37);
        v45 = v87[0];
        *v44 = v86;
        v44[1] = v45;
        *(v44 + 25) = *(v87 + 9);
        v46 = (v43[7] + 176 * v37);
        v47 = v64;
        v48 = v65;
        v49 = v66[0];
        *(v46 + 156) = *(v66 + 12);
        v46[8] = v48;
        v46[9] = v49;
        v46[7] = v47;
        v50 = v60;
        v51 = v61;
        v52 = v63;
        v46[5] = v62;
        v46[6] = v52;
        v46[3] = v50;
        v46[4] = v51;
        v54 = v58;
        v53 = v59;
        *v46 = v57;
        v46[1] = v54;
        v46[2] = v53;
        v55 = v43[2];
        v17 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v17)
        {
          goto LABEL_27;
        }

        v43[2] = v56;
      }

      specialized LazyMapSequence.Iterator.next()(&v67);
      if (*(&v77 + 1) >> 1 == 0xFFFFFFFFLL)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_13:
  v21[(v13 >> 6) + 8] |= 1 << v13;
  v23 = (v21[6] + 48 * v13);
  v24 = v87[0];
  *v23 = v86;
  v23[1] = v24;
  *(v23 + 25) = *(v87 + 9);
  v25 = (v21[7] + 176 * v13);
  v26 = v64;
  v27 = v65;
  v28 = v66[0];
  *(v25 + 156) = *(v66 + 12);
  v25[8] = v27;
  v25[9] = v28;
  v25[7] = v26;
  v29 = v60;
  v30 = v61;
  v31 = v63;
  v25[5] = v62;
  v25[6] = v31;
  v25[3] = v29;
  v25[4] = v30;
  v33 = v58;
  v32 = v59;
  *v25 = v57;
  v25[1] = v33;
  v25[2] = v32;
  v34 = v21[2];
  v17 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v17)
  {
    v21[2] = v35;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v53 = a1;
  v54 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v55 = v8;
  v56 = 0;
  v57 = v11 & v9;
  v58 = a2;
  v59 = a3;

  specialized LazyMapSequence.Iterator.next()(&v49);
  if (!*(&v50 + 1))
  {
    goto LABEL_25;
  }

  v46 = v49;
  v47 = v50;
  v48 = v51;
  outlined init with take of Any(v52, v45);
  v12 = *a5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v46);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v46);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v24;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = v13;
    outlined destroy of AnyHashable(&v46);
    v23 = (v21[7] + 32 * v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    outlined init with take of Any(v45, v23);
    goto LABEL_15;
  }

LABEL_13:
  v21[(v13 >> 6) + 8] |= 1 << v13;
  v25 = v21[6] + 40 * v13;
  v26 = v46;
  v27 = v47;
  *(v25 + 32) = v48;
  *v25 = v26;
  *(v25 + 16) = v27;
  outlined init with take of Any(v45, (v21[7] + 32 * v13));
  v28 = v21[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v21[2] = v29;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v49);
    if (*(&v50 + 1))
    {
      v19 = 1;
      do
      {
        v46 = v49;
        v47 = v50;
        v48 = v51;
        outlined init with take of Any(v52, v45);
        v32 = *a5;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(&v46);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v17 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v32[3] < v37)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(&v46);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v30 = v33;
          outlined destroy of AnyHashable(&v46);
          v31 = (v39[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          outlined init with take of Any(v45, v31);
        }

        else
        {
          v39[(v33 >> 6) + 8] |= 1 << v33;
          v40 = v39[6] + 40 * v33;
          v41 = v46;
          v42 = v47;
          *(v40 + 32) = v48;
          *v40 = v41;
          *(v40 + 16) = v42;
          outlined init with take of Any(v45, (v39[7] + 32 * v33));
          v43 = v39[2];
          v17 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v39[2] = v44;
        }

        specialized LazyMapSequence.Iterator.next()(&v49);
      }

      while (*(&v50 + 1));
    }

LABEL_25:
    outlined consume of Set<UIPress>.Iterator._Variant(v53);

    return;
  }

LABEL_27:
  __break(1u);
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v55 = a1;
  v56 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v57 = v8;
  v58 = 0;
  v59 = v11 & v9;
  v60 = a2;
  v61 = a3;

  specialized LazyMapSequence.Iterator.next()(&v50);
  if (*(&v51 + 1) == 1)
  {
    goto LABEL_16;
  }

  v46 = v50;
  v47 = v51;
  v48 = v52;
  v49 = v53;
  outlined init with take of UpdateViewDestinationRequest(v54, v45);
  v12 = *a5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v46);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v46);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v23 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v23;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = v13;
    outlined destroy of NavigationLinkSelectionIdentifier(&v46);
    outlined assign with take of UpdateViewDestinationRequest(v45, v21[7] + 192 * v22);
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v50);
    if (*(&v51 + 1) == 1)
    {
LABEL_16:
      outlined consume of Set<UIPress>.Iterator._Variant(v55);

      return;
    }

    v19 = 1;
    while (1)
    {
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      outlined init with take of UpdateViewDestinationRequest(v54, v45);
      v31 = *a5;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(&v46);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v17 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v17)
      {
        goto LABEL_26;
      }

      a4 = v33;
      if (v31[3] < v36)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(&v46);
        if ((a4 & 1) != (v37 & 1))
        {
          goto LABEL_8;
        }
      }

      v38 = *a5;
      if (a4)
      {
        v30 = v32;
        outlined destroy of NavigationLinkSelectionIdentifier(&v46);
        outlined assign with take of UpdateViewDestinationRequest(v45, v38[7] + 192 * v30);
      }

      else
      {
        v38[(v32 >> 6) + 8] |= 1 << v32;
        v39 = (v38[6] + (v32 << 6));
        v40 = v46;
        v41 = v47;
        v42 = v49;
        v39[2] = v48;
        v39[3] = v42;
        *v39 = v40;
        v39[1] = v41;
        outlined init with take of UpdateViewDestinationRequest(v45, v38[7] + 192 * v32);
        v43 = v38[2];
        v17 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v17)
        {
          goto LABEL_27;
        }

        v38[2] = v44;
      }

      specialized LazyMapSequence.Iterator.next()(&v50);
      if (*(&v51 + 1) == 1)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_13:
  v21[(v13 >> 6) + 8] |= 1 << v13;
  v24 = (v21[6] + (v13 << 6));
  v25 = v46;
  v26 = v47;
  v27 = v49;
  v24[2] = v48;
  v24[3] = v27;
  *v24 = v25;
  v24[1] = v26;
  outlined init with take of UpdateViewDestinationRequest(v45, v21[7] + 192 * v13);
  v28 = v21[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v21[2] = v29;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
}

{
  v55 = a5;
  v9 = type metadata accessor for UUID();
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for (UUID, PlatformItemList)?, type metadata accessor for (UUID, PlatformItemList), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v41 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v48 = a1;
  v49 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v50 = v16;
  v51 = 0;
  v52 = v19 & v17;
  v53 = a2;
  v54 = a3;

  v41[1] = a3;

  specialized LazyMapSequence.Iterator.next()(v14);
  type metadata accessor for (UUID, PlatformItemList)(0);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 48);
  v44 = v22 + 48;
  v45 = v23;
  if (v23(v14, 1, v20) == 1)
  {
LABEL_5:
    outlined consume of Set<UIPress>.Iterator._Variant(v48);
  }

  else
  {
    v46 = *(v43 + 32);
    v47 = v43 + 32;
    v42 = (v43 + 8);
    while (1)
    {
      v25 = *(v21 + 48);
      v26 = v9;
      v46(v11, v14, v9);
      v27 = *&v14[v25];
      v28 = *v55;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      v31 = v28[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        break;
      }

      v34 = v29;
      if (v28[3] >= v33)
      {
        if ((a4 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, a4 & 1);
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_20;
        }

        v30 = v35;
      }

      v37 = *v55;
      if (v34)
      {
        v24 = *(v37[7] + 8 * v30);

        v9 = v26;
        (*v42)(v11, v26);
        *(v37[7] + 8 * v30) = v24;
      }

      else
      {
        v37[(v30 >> 6) + 8] |= 1 << v30;
        v9 = v26;
        v46((v37[6] + *(v43 + 72) * v30), v11, v26);
        *(v37[7] + 8 * v30) = v27;
        v38 = v37[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_19;
        }

        v37[2] = v40;
      }

      specialized LazyMapSequence.Iterator.next()(v14);
      a4 = 1;
      if (v45(v14, 1, v21) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v67 = a1;
  v68 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v69 = v8;
  v70 = 0;
  v71 = v11 & v9;
  v72 = a2;
  v73 = a3;

  specialized LazyMapSequence.Iterator.next()(&v58);
  if (*(&v59 + 1) == 1)
  {
    goto LABEL_16;
  }

  v12 = v58;
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v57 = v66;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v53 = v62;
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v23 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v23;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    outlined assign with take of InspectorStorage(&v50, v22[7] + 120 * v14);
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v58);
    if (*(&v59 + 1) == 1)
    {
LABEL_16:
      outlined consume of Set<UIPress>.Iterator._Variant(v67);

      return;
    }

    v20 = 1;
    while (1)
    {
      v12 = v58;
      v54 = v63;
      v55 = v64;
      v56 = v65;
      v57 = v66;
      v50 = v59;
      v51 = v60;
      v52 = v61;
      v53 = v62;
      v33 = *a5;
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v18 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v18)
      {
        goto LABEL_26;
      }

      a4 = v35;
      if (v33[3] < v38)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, 1);
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if ((a4 & 1) != (v39 & 1))
        {
          goto LABEL_8;
        }
      }

      v40 = *a5;
      if (a4)
      {
        outlined assign with take of InspectorStorage(&v50, v40[7] + 120 * v34);
      }

      else
      {
        v40[(v34 >> 6) + 8] |= 1 << v34;
        *(v40[6] + 4 * v34) = v12;
        v41 = v40[7] + 120 * v34;
        v42 = v50;
        v43 = v51;
        v44 = v53;
        *(v41 + 32) = v52;
        *(v41 + 48) = v44;
        *v41 = v42;
        *(v41 + 16) = v43;
        v45 = v54;
        v46 = v55;
        v47 = v56;
        *(v41 + 112) = v57;
        *(v41 + 80) = v46;
        *(v41 + 96) = v47;
        *(v41 + 64) = v45;
        v48 = v40[2];
        v18 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v18)
        {
          goto LABEL_27;
        }

        v40[2] = v49;
      }

      specialized LazyMapSequence.Iterator.next()(&v58);
      if (*(&v59 + 1) == 1)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_13:
  v22[(v14 >> 6) + 8] |= 1 << v14;
  *(v22[6] + 4 * v14) = v12;
  v24 = v22[7] + 120 * v14;
  v25 = v50;
  v26 = v51;
  v27 = v53;
  *(v24 + 32) = v52;
  *(v24 + 48) = v27;
  *v24 = v25;
  *(v24 + 16) = v26;
  v28 = v54;
  v29 = v55;
  v30 = v56;
  *(v24 + 112) = v57;
  *(v24 + 80) = v29;
  *(v24 + 96) = v30;
  *(v24 + 64) = v28;
  v31 = v22[2];
  v18 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (!v18)
  {
    v22[2] = v32;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v52 = a1;
  v53 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v54 = v8;
  v55 = 0;
  v56 = v11 & v9;
  v57 = a2;
  v58 = a3;

  specialized LazyMapSequence.Iterator.next()(&v48);
  if (!*(&v49 + 1))
  {
    goto LABEL_25;
  }

  v45 = v48;
  v46 = v49;
  v12 = v51;
  v47 = v50;
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v24;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = v14;
    outlined destroy of AnyHashable(&v45);
    *(v22[7] + 8 * v23) = v12;

    goto LABEL_15;
  }

LABEL_13:
  v22[(v14 >> 6) + 8] |= 1 << v14;
  v25 = v22[6] + 40 * v14;
  v26 = v45;
  v27 = v46;
  *(v25 + 32) = v47;
  *v25 = v26;
  *(v25 + 16) = v27;
  *(v22[7] + 8 * v14) = v12;
  v28 = v22[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v18)
  {
    v22[2] = v29;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v48);
    if (*(&v49 + 1))
    {
      v20 = 1;
      v12 = 40;
      do
      {
        v45 = v48;
        v46 = v49;
        v31 = v51;
        v47 = v50;
        v32 = *a5;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v32[3] < v37)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v30 = v33;
          outlined destroy of AnyHashable(&v45);
          *(v39[7] + 8 * v30) = v31;
        }

        else
        {
          v39[(v33 >> 6) + 8] |= 1 << v33;
          v40 = v39[6] + 40 * v33;
          v41 = v45;
          v42 = v46;
          *(v40 + 32) = v47;
          *v40 = v41;
          *(v40 + 16) = v42;
          *(v39[7] + 8 * v33) = v31;
          v43 = v39[2];
          v18 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v39[2] = v44;
        }

        specialized LazyMapSequence.Iterator.next()(&v48);
      }

      while (*(&v49 + 1));
    }

LABEL_25:
    outlined consume of Set<UIPress>.Iterator._Variant(v52);

    return;
  }

LABEL_27:
  __break(1u);
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v57 = a1;
  v58 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v59 = v8;
  v60 = 0;
  v61 = v11 & v9;
  v62 = a2;
  v63 = a3;

  specialized LazyMapSequence.Iterator.next()(&v51);
  if (v56[24] == 255)
  {
    goto LABEL_25;
  }

  v12 = v51;
  v48 = v54;
  v49 = v55;
  v50[0] = *v56;
  *(v50 + 9) = *&v56[9];
  v46 = v52;
  v47 = v53;
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v51);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v23 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v23;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    outlined assign with take of NavigationDestinationPresentation(&v46, v22[7] + 96 * v14);
    goto LABEL_15;
  }

LABEL_13:
  v22[(v14 >> 6) + 8] |= 1 << v14;
  *(v22[6] + 8 * v14) = v12;
  v24 = (v22[7] + 96 * v14);
  v25 = v47;
  *v24 = v46;
  v24[1] = v25;
  v26 = v48;
  v27 = v49;
  v28 = v50[0];
  *(v24 + 73) = *(v50 + 9);
  v24[3] = v27;
  v24[4] = v28;
  v24[2] = v26;
  v29 = v22[2];
  v18 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v18)
  {
    v22[2] = v30;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v51);
    if (v56[24] != 255)
    {
      v20 = 1;
      do
      {
        v12 = v51;
        v48 = v54;
        v49 = v55;
        v50[0] = *v56;
        *(v50 + 9) = *&v56[9];
        v46 = v52;
        v47 = v53;
        v31 = *a5;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v51);
        v34 = v31[2];
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v31[3] < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          outlined assign with take of NavigationDestinationPresentation(&v46, v38[7] + 96 * v32);
        }

        else
        {
          v38[(v32 >> 6) + 8] |= 1 << v32;
          *(v38[6] + 8 * v32) = v12;
          v39 = (v38[7] + 96 * v32);
          v40 = v47;
          *v39 = v46;
          v39[1] = v40;
          v41 = v48;
          v42 = v49;
          v43 = v50[0];
          *(v39 + 73) = *(v50 + 9);
          v39[3] = v42;
          v39[4] = v43;
          v39[2] = v41;
          v44 = v38[2];
          v18 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v45;
        }

        specialized LazyMapSequence.Iterator.next()(&v51);
      }

      while (v56[24] != 255);
    }

LABEL_25:
    outlined consume of Set<UIPress>.Iterator._Variant(v57);

    return;
  }

LABEL_27:
  __break(1u);
}

void *initializeWithCopy for MenuStyleConfiguration(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    *a1 = *a2;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = a2[3];
    a1[2] = v5;
    a1[3] = v6;
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
  }

  return a1;
}

double destroy for MenuStyleConfiguration(void *a1)
{
  if (*a1)
  {
  }

  if (a1[2])
  {
  }

  return result;
}

double EnvironmentValues.setBridgedValue<A>(value:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>, &type metadata for BridgedEnvironmentKeysKey, &protocol witness table for BridgedEnvironmentKeysKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<BridgedEnvironmentKeysKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>, &type metadata for BridgedEnvironmentKeysKey, &protocol witness table for BridgedEnvironmentKeysKey);
  if (v8)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v9 = v19;
  v10 = *(v19 + 16);
  v11 = v10 + 1;
  v12 = 32;
  while (--v11)
  {
    v13 = *(v19 + v12);
    v12 += 16;
    if (v13 == a2)
    {

      return EnvironmentValues._set<A>(_:for:)(a1, a2, a3, *(a4 + 8));
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 1, v19);
  }

  v15 = *(v9 + 2);
  v14 = *(v9 + 3);
  if (v15 >= v14 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
  }

  *(v9 + 2) = v15 + 1;
  v16 = &v9[16 * v15];
  *(v16 + 4) = a2;
  *(v16 + 5) = a4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>, &type metadata for BridgedEnvironmentKeysKey, &protocol witness table for BridgedEnvironmentKeysKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<BridgedEnvironmentKeysKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>, &type metadata for BridgedEnvironmentKeysKey, &protocol witness table for BridgedEnvironmentKeysKey);

  PropertyList.subscript.setter();
  if (v8)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return EnvironmentValues._set<A>(_:for:)(a1, a2, a3, *(a4 + 8));
}

void type metadata accessor for _ContiguousArrayStorage<UISceneConnectionOptionDefinition.Type>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for UISceneConnectionOptionDefinition.Type(255, a3, a4, a5);
    v6 = type metadata accessor for _ContiguousArrayStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<UISceneConnectionOptionDefinition.Type>(0, a5, a6, a7, a8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v12);
  }

  return v14;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolbarPlacement.Role(uint64_t a1)
{
  Hasher.init(_seed:)();
  ToolbarPlacement.Role.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t specialized static ToolbarPlacement.Role.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ToolbarPlacement.Role(a1, v8);
  outlined init with copy of ToolbarPlacement.Role(a2, &v10);
  if (v9 <= 2)
  {
    switch(v9)
    {
      case 0:
        if (!*(&v11 + 1))
        {
          goto LABEL_20;
        }

        goto LABEL_22;
      case 1:
        if (*(&v11 + 1) != 1)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      case 2:
        if (*(&v11 + 1) != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v9 > 4)
  {
    if (v9 == 5)
    {
      if (*(&v11 + 1) == 5)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (v9 == 6)
    {
      if (*(&v11 + 1) != 6)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_17:
    outlined init with copy of ToolbarPlacement.Role(v8, v7);
    if (*(&v11 + 1) >= 7uLL)
    {
      v5[0] = v10;
      v5[1] = v11;
      v6 = v12;
      v3 = MEMORY[0x18D00E7E0](v7, v5);
      outlined destroy of AnyHashable(v5);
      outlined destroy of AnyHashable(v7);
      outlined destroy of UIKitNavigationController.PlatformNavigationRequestStrategy(v8);
      return v3 & 1;
    }

    outlined destroy of AnyHashable(v7);
    goto LABEL_22;
  }

  if (v9 == 3)
  {
    if (*(&v11 + 1) == 3)
    {
      goto LABEL_20;
    }

LABEL_22:
    outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v8, &lazy cache variable for type metadata for (ToolbarPlacement.Role, ToolbarPlacement.Role), &type metadata for ToolbarPlacement.Role);
    v3 = 0;
    return v3 & 1;
  }

  if (*(&v11 + 1) != 4)
  {
    goto LABEL_22;
  }

LABEL_20:
  outlined destroy of UIKitNavigationController.PlatformNavigationRequestStrategy(v8);
  v3 = 1;
  return v3 & 1;
}

void *outlined destroy of UIKitNavigationController.PlatformNavigationRequestStrategy(void *result)
{
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v1;
  }

  return result;
}

uint64_t outlined destroy of PPTTestCase?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AttributedString and conformance AttributedString(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationState.StackContent.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 24))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t outlined destroy of UINavigationPresentationAdaptor?(uint64_t a1)
{
  type metadata accessor for UINavigationPresentationAdaptor?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SidebarListStyle._makeViewList<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v23 = *a2;
  v24 = v6;
  v25 = a2[2];
  if (one-time initialization token for searchFieldPlacement != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA17EnvironmentValuesV11SearchFieldV_TtB5Tm(&lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchField>, lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField, &type metadata for EnvironmentValues.SearchField, lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField();
  v7 = Attribute.init<A>(body:value:flags:update:)();
  v19 = &type metadata for SidebarListStyle;
  v20 = a3;
  v21 = &protocol witness table for SidebarListStyle;
  v22 = a4;
  type metadata accessor for _ListValue(255, &v19);
  type metadata accessor for _GraphValue();
  v8 = _GraphValue.value.getter();
  type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>(255);
  v10 = v9;
  v12 = type metadata accessor for SelectionManagerBox(255, a3, a4, v11);
  v13 = lazy protocol witness table accessor for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v12);
  v19 = v10;
  v20 = v12;
  v21 = v13;
  v22 = WitnessTable;
  v15 = type metadata accessor for SidebarListBody(0, &v19);
  v19 = __PAIR64__(v7, v8);
  v17 = type metadata accessor for SidebarListStyle.Body(0, a3, a4, v16);
  swift_getWitnessTable(protocol conformance descriptor for SidebarListStyle.Body<A>, v17);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for SidebarListBody<A, B>, v15);
  return static View.makeDebuggableViewList(view:inputs:)();
}

void type metadata accessor for _DictionaryStorage<UISplitViewControllerColumn, NavigationStackCoordinator<SplitColumnNavigationStrategy>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UISplitViewControllerColumn, NavigationStackCoordinator<SplitColumnNavigationStrategy>>)
  {
    type metadata accessor for UISplitViewControllerColumn(255);
    type metadata accessor for _ViewModifier_Content<UserActivityModifier>(255, &lazy cache variable for type metadata for NavigationStackCoordinator<SplitColumnNavigationStrategy>, lazy protocol witness table accessor for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy, &type metadata for SplitColumnNavigationStrategy, type metadata accessor for NavigationStackCoordinator);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn, type metadata accessor for UISplitViewControllerColumn, protocol conformance descriptor for UISplitViewControllerColumn);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<UISplitViewControllerColumn, NavigationStackCoordinator<SplitColumnNavigationStrategy>>);
    }
  }
}

id implicit closure #2 in implicit closure #1 in variable initialization expression of FetchRequest._controller(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FetchedResults(255, a1, a3, a4);
  type metadata accessor for FetchController(0, MEMORY[0x1E69E7CA8] + 8, a1, v5);
  return specialized FetchController.__allocating_init(_:)(partial apply for implicit closure #3 in implicit closure #2 in implicit closure #1 in variable initialization expression of FetchRequest._controller, 0);
}

void outlined consume of FetchedResults<A>?<A>(void *a1, void *a2)
{
  if (a1)
  {
  }
}

Swift::Void __swiftcall FetchController.update(in:)(NSManagedObjectContext_optional in)
{
  v2 = v1;
  v55[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  if (in.value.super.isa)
  {
    isa = in.value.super.isa;
  }

  else
  {
    v6 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
    if (!v6)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    isa = [v6 managedObjectContext];
    v4 = *v3 & *v1;
    in.value.super.isa = 0;
  }

  if (!*(v1 + *(v4 + 112)))
  {
    __break(1u);
  }

  v7 = in.value.super.isa;

  v8 = DeferredFetchRequest.result.getter();

  if (-[objc_class concurrencyType](isa, sel_concurrencyType) != 2 && -[objc_class concurrencyType](isa, sel_concurrencyType) || ![objc_opt_self() isMainThread])
  {
    goto LABEL_47;
  }

  v9 = *((*v3 & *v1) + 0x80);
  v10 = *(v1 + v9);
  if (!v10)
  {
    v21 = 1;
    goto LABEL_28;
  }

  v11 = [v10 fetchRequest];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchRequest, 0x1E695D5E0);
    v13 = v8;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      v15 = *(v2 + v9);
      if (v15 && (v16 = [v15 sectionNameKeyPath]) != 0)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      MEMORY[0x18D0027E0](aBlock, v22);

      if (aBlock[0])
      {
        v51 = v18;
        v23 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        v25 = v24;

        if (v20)
        {
          if (v25)
          {
            if (v51 == v23 && v20 == v25)
            {

              return;
            }

            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v50)
            {
              goto LABEL_42;
            }

            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (v25)
        {
LABEL_26:

          goto LABEL_27;
        }
      }

      else if (v20)
      {
        goto LABEL_26;
      }

LABEL_42:

      goto LABEL_38;
    }
  }

LABEL_27:
  v21 = *(v2 + v9) == 0;
  v3 = MEMORY[0x1E69E7D40];
LABEL_28:
  v52 = v8;
  [v8 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchRequest, 0x1E695D5E0);
  swift_dynamicCast();
  v26 = v3;

  MEMORY[0x18D0027E0](v55, v27);

  if (v55[0])
  {
    v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchedResultsController, 0x1E695D600);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = isa;
  v32 = objc_allocWithZone(ObjCClassFromMetadata);
  v33 = specialized @nonobjc NSFetchedResultsController.init(fetchRequest:managedObjectContext:sectionNameKeyPath:cacheName:)(v53, isa, v28, v30, 0, 0);

  v34 = *(v2 + v9);
  *(v2 + v9) = v33;
  v35 = v33;

  if (!v35)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v35 setDelegate_];

  if (v21)
  {
    v36 = *(v2 + v9);
    if (v36)
    {
      aBlock[0] = 0;
      if ([v36 performFetch_])
      {
        v37 = aBlock[0];

LABEL_38:
        return;
      }

      v42 = aBlock[0];
      v43 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v44 = static os_log_type_t.fault.getter();
      v45 = static Log.runtimeIssuesLog.getter();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_18CD63400;
      swift_getErrorValue();
      v47 = Error.localizedDescription.getter();
      v49 = v48;
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      os_log(_:dso:log:_:_:)(v44, &dword_18BD4A000, v45, "Failed to perform fetch request: %@", 35, 2, v46);

      return;
    }

    goto LABEL_45;
  }

  v38 = *((*v26 & *v2) + 0x90);
  if (*(v2 + v38))
  {

    goto LABEL_38;
  }

  v39 = swift_allocObject();
  v39[2] = v2;
  aBlock[4] = partial apply for closure #1 in FetchController.update(in:);
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_14;
  v40 = _Block_copy(aBlock);
  v41 = v2;

  [(objc_class *)isa performBlock:v40];

  _Block_release(v40);
  *(v2 + v38) = 1;
}

uint64_t sub_18BEC8450()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in FetchRequest.init(fetchRequest:transaction:)()
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();

  return v0;
}

id specialized @nonobjc NSFetchedResultsController.init(fetchRequest:managedObjectContext:sectionNameKeyPath:cacheName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    v11 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = MEMORY[0x18D00C850](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = MEMORY[0x18D00C850](a5, a6);

LABEL_6:
  v13 = [v6 initWithFetchRequest:a1 managedObjectContext:a2 sectionNameKeyPath:v11 cacheName:v12];

  return v13;
}

id closure #1 in FetchRequest<>.init(sortDescriptors:predicate:animation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchRequest, 0x1E695D5E0);
  v4 = NSFetchRequest.__allocating_init()();
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x1E696AEB0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v4 setSortDescriptors_];

  [v4 setPredicate_];
  return v4;
}

id NSFetchRequest.__allocating_init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t assignWithCopy for CustomHoverEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  LOBYTE(v5) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<Bool>.Content();
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  *(v9 + 8) = v11;
  *(v9 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v12, v13);
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  v16 = *(v10 + 40);
  v17 = *(v10 + 48);
  outlined copy of Environment<HoverEffectContext.State>.Content(v14, v15, v16, v17);
  v18 = *(v9 + 24);
  v19 = *(v9 + 32);
  v20 = *(v9 + 40);
  v21 = *(v9 + 48);
  *(v9 + 24) = v14;
  *(v9 + 32) = v15;
  *(v9 + 40) = v16;
  *(v9 + 48) = v17;
  outlined consume of Environment<HoverEffectContext.State>.Content(v18, v19, v20, v21);
  *(v9 + 49) = *(v10 + 49);
  v22 = (v9 + 57) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v10 + 57) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  *(v22 + 8) = *(v23 + 8);
  *v22 = v24;
  v25 = (v9 + 73) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v10 + 73) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  *(v25 + 8) = *(v26 + 8);
  *v25 = v27;
  *(v25 + 9) = *(v26 + 9);
  v28 = ((v25 + 17) & 0xFFFFFFFFFFFFFFF8);
  v29 = (v26 + 17) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v29 += 15;
  *v28 = v30;
  v31 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = *(v29 & 0xFFFFFFFFFFFFFFF8);
  v33 = *((v29 & 0xFFFFFFFFFFFFFFF8) + 8);
  LOBYTE(v16) = *((v29 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<String?>.Content(v32, v33, v16);
  v34 = *v31;
  v35 = *(v31 + 8);
  v36 = *(v31 + 16);
  *v31 = v32;
  *(v31 + 8) = v33;
  *(v31 + 16) = v16;
  outlined consume of Environment<String?>.Content(v34, v35, v36);
  return a1;
}

uint64_t @objc ToolbarBridge.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(a1 + direct field offset for ToolbarBridge.platformVended, type metadata accessor for Toolbar.PlatformVended);
  outlined consume of ToolbarStorage?(*(a1 + direct field offset for ToolbarBridge.lastToolbarStorage), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 8), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 16), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 24), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 32), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 40), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 48), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 56), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 64));
  outlined consume of ToolbarStorage?(*(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 8), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 16), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 24), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 32), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 40), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 48), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 56), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 64));
  v2 = MEMORY[0x1E69E6720];
  outlined destroy of Toolbar.UpdateContext?(a1 + direct field offset for ToolbarBridge.searchItem, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1);

  outlined destroy of Toolbar.UpdateContext?(a1 + direct field offset for ToolbarBridge.lastNavigationProperties, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v2, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1);
  outlined destroy of Toolbar.UpdateContext?(a1 + direct field offset for ToolbarBridge.lastInputNavigationProperties, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v2, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1);
}

void @objc UIHostingController.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of HostingControllerOverrides(a1 + direct field offset for UIHostingController.overrides);

  MEMORY[0x18D011290](a1 + direct field offset for UIHostingController.lastZoomPresentationSource);

  v2 = *(a1 + direct field offset for UIHostingController.keyboardShortcutBridge);
}

uint64_t UIKitDialogBridge.__deallocating_deinit()
{
  UIKitDialogBridge.deinit();

  return swift_deallocClassInstance();
}

uint64_t UIKitDialogBridge.deinit()
{
  MEMORY[0x18D011290](v0 + 16);
  outlined destroy of weak FallbackResponderProvider?(v0 + 24);

  outlined destroy of CustomRecursiveStringConvertible?(v0 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);

  return v0;
}

uint64_t outlined destroy of CustomRecursiveStringConvertible?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for DialogActionContext?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_18BEC8CA4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t PPTTestBridge.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);
  outlined destroy of PPTTestCase?(v0 + 40);

  return swift_deallocClassInstance();
}

void destroy for FileImportExportBridge.PresentationState(char *a1)
{
  v2 = type metadata accessor for FileImportExportBridge.Presentation(0);
  if ((*(*(v2 - 8) + 48))(a1, 1, v2))
  {
    return;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FileExportOperation.Mode(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        outlined consume of FileExportOperation.Storage(*a1, *(a1 + 1), *(a1 + 2), *(a1 + 3), *(a1 + 4), a1[40]);

        goto LABEL_26;
      }

      if (EnumCaseMultiPayload == 3)
      {

        goto LABEL_26;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v15 = type metadata accessor for URL();
        (*(*(v15 - 8) + 8))(a1, v15);
        type metadata accessor for FileExportOperation.Move(0);

        goto LABEL_26;
      }

      if (EnumCaseMultiPayload == 1)
      {

LABEL_26:
      }
    }

    v16 = type metadata accessor for FileExportOperation(0);

    v17 = v16[6];
    v18 = type metadata accessor for URL();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(&a1[v17], 1, v18))
    {
      (*(v19 + 8))(&a1[v17], v18);
    }

    v20 = &a1[v16[7]];
    if (*(v20 + 3))
    {
      outlined consume of Text.Storage(*v20, *(v20 + 1), v20[16]);
    }

    v21 = &a1[v16[8]];
    if (*(v21 + 3))
    {
      outlined consume of Text.Storage(*v21, *(v21 + 1), v21[16]);
    }

    v22 = &a1[v16[9]];
    if (*(v22 + 3))
    {
      outlined consume of Text.Storage(*v22, *(v22 + 1), v22[16]);
    }

    v23 = v16[10];
    type metadata accessor for Predicate<Pack{URL}>(0);
    v25 = v24;
    v27 = *(v24 - 8);
    if (!(*(v27 + 48))(&a1[v23], 1, v24))
    {
      v26 = *(v27 + 8);

      v26(&a1[v23], v25);
    }

    return;
  }

  v4 = type metadata accessor for FileImportOperation(0);
  v5 = v4[5];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(&a1[v5], 1, v6))
  {
    (*(v7 + 8))(&a1[v5], v6);
  }

  v8 = &a1[v4[6]];
  if (*(v8 + 3))
  {
    outlined consume of Text.Storage(*v8, *(v8 + 1), v8[16]);
  }

  v9 = &a1[v4[7]];
  if (*(v9 + 3))
  {
    outlined consume of Text.Storage(*v9, *(v9 + 1), v9[16]);
  }

  v10 = &a1[v4[8]];
  if (*(v10 + 3))
  {
    outlined consume of Text.Storage(*v10, *(v10 + 1), v10[16]);
  }

  v11 = v4[11];
  type metadata accessor for Predicate<Pack{URL}>(0);
  v13 = v12;
  v14 = *(v12 - 8);
  if (!(*(v14 + 48))(&a1[v11], 1, v12))
  {
    (*(v14 + 8))(&a1[v11], v13);
  }
}

uint64_t ContainerBackgroundBridge.__deallocating_deinit()
{
  MEMORY[0x18D011290](v0 + 16);
  outlined destroy of weak FallbackResponderProvider?(v0 + 24);

  outlined destroy of weak FallbackResponderProvider?(v0 + 56);
  outlined consume of ContainerBackgroundValue?(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t ShareConfigurationBridge.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);

  return swift_deallocClassInstance();
}

void *assignWithCopy for OnTestViewModifier(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t assignWithCopy for SpatialTapGesture(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  *a1 = *a2;
  v4 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 8);
    if (*(a2 + 48))
    {
      v6 = *v3;
      v7 = v3[1];
      *(v4 + 25) = *(v3 + 25);
      *v4 = v6;
      v4[1] = v7;
    }

    else
    {
      v8 = *(a2 + 32);
      *(a1 + 32) = v8;
      *(a1 + 40) = *(a2 + 40);
      (**(v8 - 8))(v4, v3);
      *(a1 + 48) = 0;
    }
  }

  return a1;
}

uint64_t assignWithCopy for DragGesture(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  v5 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 8);
    if (*(a2 + 48))
    {
      v6 = *v4;
      v7 = v4[1];
      *(v5 + 25) = *(v4 + 25);
      *v5 = v6;
      v5[1] = v7;
    }

    else
    {
      v8 = *(a2 + 32);
      *(a1 + 32) = v8;
      *(a1 + 40) = *(a2 + 40);
      (**(v8 - 8))(v5, v4);
      *(a1 + 48) = 0;
    }
  }

  *(a1 + 49) = *(a2 + 49);
  return a1;
}

void destroy for Toolbar.PlatformVended(id *a1, int *a2)
{

  v4 = a1 + a2[11];
  v5 = type metadata accessor for ToolbarStorage.Item(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    if (*(v4 + 11))
    {
      __swift_destroy_boxed_opaque_existential_1(v4 + 8);
    }

    if (v4[152] == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v4 + 14);
    }

    __swift_destroy_boxed_opaque_existential_1(v4 + 23);

    v6 = &v4[*(v5 + 68)];
    v7 = type metadata accessor for PlatformItemList.Item(0);
    if ((*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      goto LABEL_45;
    }

    v8 = *(v6 + 24);
    v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v10 = v6[72];
      if (v10 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v6 + 8), v10);
        v8 = *(v6 + 24);
        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v9 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v6 + 22), *(v6 + 23), v8, *(v6 + 25));
      }

      swift_unknownObjectRelease();
    }

    if (*(v6 + 33))
    {

      v11 = *(v6 + 34);
      if (v11 >= 2)
      {
      }
    }

    v12 = *(v6 + 42);
    if (v12 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v6 + 38), *(v6 + 39), *(v6 + 40), *(v6 + 41), v12, *(v6 + 43), *(v6 + 44), *(v6 + 45), *(v6 + 46), *(v6 + 47), *(v6 + 48), *(v6 + 49), *(v6 + 50));
    }

    v13 = *(v6 + 52);
    if (v13)
    {
      if (v13 == 1)
      {
        goto LABEL_26;
      }
    }

    if (*(v6 + 54))
    {
    }

    if (*(v6 + 56))
    {
    }

LABEL_26:

    if (*(v6 + 64))
    {
    }

    if (!*(v6 + 102))
    {
LABEL_36:
      v15 = *(v6 + 108);
      if (v15)
      {
        if (v15 == 1)
        {
LABEL_41:

          v16 = &v6[*(v7 + 112)];
          v17 = type metadata accessor for CommandOperation(0);
          if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
          {
            v18 = &v16[*(v17 + 20)];
            outlined consume of Text.Storage(*v18, *(v18 + 1), v18[16]);

            v19 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v20 = type metadata accessor for UUID();
            (*(*(v20 - 8) + 8))(&v18[v19], v20);
            if (*&v16[*(v17 + 24)])
            {
            }
          }

LABEL_45:
          swift_weakDestroy();
          goto LABEL_46;
        }

        __swift_destroy_boxed_opaque_existential_1(v6 + 105);
      }

      if (*(v6 + 110))
      {
      }

      goto LABEL_41;
    }

    v14 = *(v6 + 78);
    if (v14)
    {
      if (v14 == 1)
      {
LABEL_33:
        if (*(v6 + 97) != 1)
        {
        }

        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_1(v6 + 75);
    }

    goto LABEL_33;
  }

LABEL_46:

  v21 = *(a1 + a2[13]);
}

uint64_t InputAccessoryGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void outlined consume of ToolbarStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a7)
  {

    outlined consume of Binding<NavigationSplitViewColumn>?(a3, a4);
  }
}

uint64_t destroy for Gradient.CubicDefinition(void *a1)
{
}

uint64_t outlined destroy of TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for ToolbarContentDescription?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double outlined consume of NavigationTitleStorage?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 != 1)
  {
    outlined consume of Text?(a1, a2, a3, a4);
    outlined consume of ListItemTint?(a5);
  }

  return result;
}

uint64_t UIKitContentScrollViewBridge.__deallocating_deinit()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t AlwaysOnBridge.__deallocating_deinit()
{
  AlwaysOnBridge.deinit();

  return swift_deallocClassInstance();
}

uint64_t AlwaysOnBridge.deinit()
{
  MEMORY[0x18D011290](v0 + 16);

  return v0;
}

uint64_t NavigationBridge_PhoneTV.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);

  outlined destroy of BridgedPresentation?(v0 + 40, &lazy cache variable for type metadata for BridgedPresentation?, &type metadata for BridgedPresentation);

  outlined consume of EnvironmentValues?(*(v0 + 184), *(v0 + 192));
  MEMORY[0x18D011290](v0 + 200);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of BridgedPresentation?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for BridgedPresentation?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Data?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void @objc _UIHostingView.willRemoveSubview(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _UIHostingView.willRemoveSubview(_:)(v4);
}

Swift::Void __swiftcall _UIHostingView.willRemoveSubview(_:)(UIView *a1)
{
  v4 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), v1);
  v6.receiver = v2;
  v6.super_class = v4;
  [(UIView *)&v6 willRemoveSubview:a1];
  v5 = _UIHostingView.foreignSubviews.getter();
  [v5 removeObject_];
}

unint64_t lazy protocol witness table accessor for type CubicGradientProvider and conformance CubicGradientProvider()
{
  result = lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider;
  if (!lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CubicGradientProvider, &type metadata for CubicGradientProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider;
  if (!lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CubicGradientProvider, &type metadata for CubicGradientProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider;
  if (!lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CubicGradientProvider, &type metadata for CubicGradientProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider;
  if (!lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CubicGradientProvider, &type metadata for CubicGradientProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Gradient.CubicDefinition(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CubicGradientProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV_Tt1g5(*a1, *a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v4 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(v2, v4) & 1) == 0)
  {
    return 0;
  }

LABEL_5:

  return interpolationsEqual(_:_:)(v3, v5);
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3 != *v4)
      {

        v5 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

        if ((v5 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

_BYTE *assignWithCopy for TextInputSuggestionsModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance FetchController<A, B, C>@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall FetchRequest.update()()
{
  v5 = v4;
  v6 = v0;
  v7 = v4[3];
  v43 = v4[2];
  v44 = v7;
  v8 = v4[1];
  v41 = *v4;
  v42 = v8;
  v9 = *(v4 + 9);
  *&v45 = *(v4 + 8);
  *(&v45 + 1) = v9;
  v10 = FetchRequest.controller.getter(v0, v1, v2, v3);
  *(v10 + *((*MEMORY[0x1E69E7D40] & *v10) + 0x70)) = v9;

  v11 = v5[1];
  v12 = v5[3];
  v38 = v5[2];
  v39 = v12;
  v13 = v5[3];
  v14 = v5[4];
  v15 = v5[1];
  v37[0] = *v5;
  v37[1] = v15;
  v17 = *v5;
  v16 = v5[1];
  v18 = v5[3];
  v34 = v5[2];
  v35 = v18;
  v36 = v5[4];
  v32 = *v5;
  v33 = v16;
  v40 = v14;
  v41 = v17;
  v42 = v11;
  v43 = v38;
  v44 = v13;
  v19 = *(v5 + 9);
  *&v45 = *(v5 + 8);
  *(&v45 + 1) = v19;
  v20 = *(v6 - 8);
  (*(v20 + 16))(v30, v37, v6);
  FetchRequest.$results.getter(v6, v21, v22, v23);
  v29 = v31;
  type metadata accessor for FetchedResults(255, *(v6 + 16), v24, v25);
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  Binding.transaction(_:)();

  outlined consume of FetchedResults<A>?<A>(v29, *(&v29 + 1));
  v26 = v30[0];
  v27 = v30[2];
  v28 = v30[3];

  outlined consume of FetchedResults<A>?<A>(v27, v28);
  FetchRequest.update(_:)(v26, v6);

  v43 = v34;
  v44 = v35;
  v45 = v36;
  v41 = v32;
  v42 = v33;
  (*(v20 + 8))(&v41, v6);
}

void *FetchRequest.$results.getter(uint64_t a1, void x1_0, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FetchedResults(255, *(a1 + 16), a2, a3);
  type metadata accessor for Optional();
  type metadata accessor for State();
  return State.projectedValue.getter();
}

uint64_t View.searchable(text:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v89 = a6;
  LODWORD(v84) = a8;
  v83 = a5;
  v93 = a4;
  v94 = a3;
  v92 = a2;
  v77 = a1;
  v87 = a9;
  v88 = a12;
  v86 = a11;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v85 = &v73 - v13;
  v91 = type metadata accessor for SearchFieldState(0) - 8;
  MEMORY[0x1EEE9AC00](v91);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v16 - 8);
  type metadata accessor for Binding<AttributedString>(0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v73 - v20);
  type metadata accessor for SearchModifier<TextField<EmptyView>>(0, v22, v23, v24);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v83) = *v83;

  v28 = Text.init(_:tableName:bundle:comment:)();
  v89 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v82 = v32;
  v35 = v32 & 1;
  outlined copy of Text.Storage(v28, v30, v35);

  AttributeContainer.init()();
  v36 = v90;
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v37 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v38 = v77;
  *v21 = v77;
  v21[1] = v37;
  v84 = v21;
  v39 = v21;
  v40 = v36;
  outlined init with copy of Binding<AttributedString>(v39, v36, type metadata accessor for Binding<AttributedString>);
  v41 = v26;
  v42 = v89;
  v43 = v80;
  v44 = &v80[v26[12]];
  *v44 = 0;
  *(v44 + 1) = 0;
  *(v44 + 8) = 0;
  *v15 = 2;

  outlined copy of Text.Storage(v42, v30, v35);
  v15[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v15 + 1) = 2;
  *(v15 + 1) = 0;
  v15[8] = 1;
  v45 = v91;
  AttributedString.init()();
  v15[*(v45 + 48)] = 0;
  v46 = *(v45 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v47 = &v15[v46];
  v48 = byte_1EAB095CC;
  *v47 = static SearchFocusUpdate.empty;
  v47[4] = v48;

  v49 = outlined copy of Text.Storage(v42, v30, v35);
  MEMORY[0x18D009CE0](v96, v49);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v42, v30, v35);

  *(v43 + 8) = v42;
  *(v43 + 16) = v30;
  *(v43 + 24) = v35;
  *(v43 + 32) = v34;
  LODWORD(v91) = v35;
  v81 = v41;
  outlined init with copy of Binding<AttributedString>(v40, v43 + v41[11], type metadata accessor for Binding<AttributedString>);
  v50 = v43 + v41[13];
  outlined init with copy of Binding<AttributedString>(v15, v50, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v50 + *(v51 + 28)) = 0;
  v52 = v41[10];
  v53 = v30;
  v76 = v30;
  v54 = v43 + v52;
  v82 &= 1u;
  v97 = 1;
  v55 = v38;
  v56 = v92;
  v96[0] = v38;
  v96[1] = v92;
  v78 = v34;
  v57 = v93;
  v96[2] = v94;
  v96[3] = v93;

  outlined copy of Text.Storage(v42, v53, v91);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v95);
  v74 = v95[0];
  v73 = v95[1];
  v75 = v97;
  type metadata accessor for Binding<TextSelection?>(0);
  v59 = v58;
  v60 = *(v58 - 8);
  v79 = v15;
  v61 = *(v60 + 56);
  v62 = v85;
  v61(v85, 1, 1, v58);
  type metadata accessor for TextField<EmptyView>(0, v63, v64, v65);
  v67 = *(v66 + 56);
  v61((v54 + v67), 1, 1, v59);
  LOBYTE(v96[0]) = 0;
  v68 = v73;
  *(v54 + 72) = v74;
  *(v54 + 80) = v68;
  *(v54 + 88) = 0u;
  *(v54 + 104) = 0u;
  *(v54 + 120) = 0u;
  *(v54 + 136) = 0u;
  *(v54 + 152) = 0;
  *(v54 + 156) = 0;
  *(v54 + 160) = v75;
  *(v54 + 161) = 2;
  *(v54 + 163) = 0;
  *(v54 + 168) = 0;
  *(v54 + 180) = 0;
  *v54 = v55;
  *(v54 + 8) = v56;
  *(v54 + 16) = v94;
  *(v54 + 24) = v57;
  *(v54 + 32) = 0;
  v69 = v89;
  v70 = v76;
  *(v54 + 40) = v89;
  *(v54 + 48) = v70;
  v71 = v78;
  *(v54 + 56) = v82;
  *(v54 + 64) = v71;
  outlined assign with take of Binding<TextSelection?>?(v62, v54 + v67);

  *v43 = v83;
  LOBYTE(v57) = v91;
  outlined consume of Text.Storage(v69, v70, v91);

  outlined consume of Text.Storage(v69, v70, v57);

  _s7SwiftUI16SearchFieldStateVWOhTm_2(v79, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v90, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v84, type metadata accessor for Binding<AttributedString>);
  MEMORY[0x18D00A570](v43, v86, v81, v88);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v43, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

unint64_t lazy protocol witness table accessor for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous()
{
  result = lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous;
  if (!lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationPath.ToHeterogeneous, &type metadata for AnyNavigationPath.ToHeterogeneous, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous;
  if (!lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationPath.ToHeterogeneous, &type metadata for AnyNavigationPath.ToHeterogeneous, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous;
  if (!lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationPath.ToHeterogeneous, &type metadata for AnyNavigationPath.ToHeterogeneous, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous);
  }

  return result;
}

double View.selectionClearsNavigationStackPath(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t View.navigationSplitViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationSplitStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

double View._onEnvironmentChange<A>(_:perform:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return View._onEnvironmentChange<A>(_:perform:)(a1, a2, a3, a4, a5, a6, type metadata accessor for EnvironmentChangeModifier);
}

{
  return View._onEnvironmentChange<A>(_:perform:)(a1, a2, a3, a4, a5, a6, type metadata accessor for EnvironmentChangeModifier2);
}

uint64_t initializeBufferWithCopyOfBuffer for EnvironmentChangeModifier2(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 16) = v3;

  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzSQRd__r__lAA15ModifiedContentVyxAA25EnvironmentChangeModifier33_1BB15EB6F18297504C950F7546E07730LLVyqd__GGAaBHPxAaBHD1__AhA0cH0HPyHCHCTm(void *a1, double (*a2)(uint64_t, void, void), uint64_t a3)
{
  v4 = a1[2];
  a2(255, a1[1], a1[3]);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = a3;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

double destroy for ScrollPocketBarInteractionRepresentable(void *a1)
{

  return result;
}

uint64_t View.formSheet<A>(isPresented:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  v17 = type metadata accessor for ModifiedContent();
  v42[0] = a9;
  v42[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v17, v42);
  SheetPresentationModifier<>.init(isPresented:onDismiss:sheetContent:placement:drawsBackground:)(a1, a2, a3, 0, 0, partial apply for closure #1 in View.formSheet<A>(isPresented:content:), v16, 2, v50, 1, v17, WitnessTable);
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  v19[5] = a9;
  v19[6] = a4;
  v19[7] = a5;
  SheetPresentationModifier<>.init(isPresented:onDismiss:sheetContent:placement:drawsBackground:)(a1, a2, a3, 0, 0, partial apply for closure #2 in View.formSheet<A>(isPresented:content:), v19, 0, &v35, 1, v17, WitnessTable);
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v21 = v20;
  v25 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(v20, v22, v23, v24);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  *&v43 = v17;
  *(&v43 + 1) = v21;
  *&v44 = WitnessTable;
  *(&v44 + 1) = v25;
  v26 = type metadata accessor for SheetPresentationModifier(0, &v43);
  swift_getWitnessTable(protocol conformance descriptor for SheetPresentationModifier<A, B>, v26);
  v27 = MEMORY[0x1E697F270];
  v28 = MEMORY[0x1E697F278];
  StaticIf<>.init<A>(idiom:then:else:)();
  v39 = v47;
  v40 = v48;
  v41[0] = v49[0];
  *(v41 + 11) = *(v49 + 11);
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<PadInterfaceIdiom>, v28, v27, MEMORY[0x1E69801E0]);
  v29 = type metadata accessor for StaticIf();
  MEMORY[0x18D00A570](&v35, a6, v29, a8);
  v50[4] = v39;
  v50[5] = v40;
  v51[0] = v41[0];
  *(v51 + 11) = *(v41 + 11);
  v50[0] = v35;
  v50[1] = v36;
  v50[2] = v37;
  v50[3] = v38;
  return (*(*(v29 - 8) + 8))(v50, v29);
}

uint64_t sub_18BECB584()
{

  return swift_deallocObject();
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>);
    }
  }
}

uint64_t protocol witness for NavigationSplitViewStyle.makeBody(configuration:) in conformance BalancedNavigationSplitViewStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v3 = *(a1 + 16);
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  *a2 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = *a1;
  *(a2 + 48) = v3;
  *(a2 + 64) = *(a1 + 32);
  *(a2 + 80) = *(a1 + 48);
  return outlined init with copy of NavigationSplitViewStyleConfiguration(v6, &v5);
}

uint64_t getEnumTagSinglePayload for AnyStyle(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t storeEnumTagSinglePayload for AnyStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitColumn and conformance NavigationSplitColumn()
{
  result = lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn;
  if (!lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitColumn, &type metadata for NavigationSplitColumn, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn;
  if (!lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitColumn, &type metadata for NavigationSplitColumn, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn);
  }

  return result;
}

double View._onEnvironmentChange<A>(_:perform:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, uint64_t))
{
  v9 = *a1;
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v10 = a7(0, *(v9 + *MEMORY[0x1E69E77B0] + 8), a6);

  MEMORY[0x18D00A570](v12, a4, v10, a5);

  return result;
}

void *View.navigationPresentationAdaptor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of _Benchmark(a1, v6);
  MEMORY[0x18D00A570](v6, a2, &type metadata for NavigationPresentationAdaptorModifier, a3);
  return outlined destroy of _PresentationTransitionOutputs(v6);
}

void *outlined destroy of _PresentationTransitionOutputs(void *result)
{
  if (result[3])
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v1;
  }

  return result;
}

double View.navigationTransitionEagerRenderEnabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized EnvironmentValues.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

uint64_t type metadata accessor for UISceneConnectionOptionDefinition.Type(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for DropDelegate(255, a3, a4, 1);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unsigned __int8 *protocol witness for Projection.get(base:) in conformance AnyNavigationSplitVisibility.ToTwoColumns@<X0>(unsigned __int8 *result@<X0>, _WORD *a2@<X8>)
{
  if (result[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2 | *result | 0x4000;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>);
    }
  }
}

uint64_t protocol witness for static AnyStyleType.makeView<A>(view:style:inputs:) in conformance StyleType<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return static StyleType.makeView<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

{
  return static StyleType.makeView<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

{
  return static StyleType.makeView<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

uint64_t static ResolvedList._makeView(view:inputs:)@<X0>(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = (a2 + 1);
  v10 = *a2;
  lazy protocol witness table accessor for type ListStyleInput and conformance ListStyleInput();
  PropertyList.subscript.getter();
  if (v20)
  {
    v11 = *v9;
    v12 = v9[2];
    v13 = v9[3];
    v22 = v9[1];
    v23 = v12;
    *v24 = v13;
    *&v24[12] = *(v9 + 60);
    v14 = v21;
    v25 = v8;
    v21 = v11;
    v15 = *(v14 + 8);
    v20 = v10;
    return v15(&v25);
  }

  else
  {
    v25 = v8;
    v20 = v10;
    v17 = *v9;
    v18 = v9[2];
    v19 = v9[3];
    v22 = v9[1];
    v23 = v18;
    *v24 = v19;
    *&v24[12] = *(v9 + 60);
    v21 = v17;
    return static ResolvedList.makeView<A>(view:style:inputs:)(&v25, 0, &v20, a3, &type metadata for DefaultListStyle, a4, &protocol witness table for DefaultListStyle, a5);
  }
}

uint64_t static StyleType.makeView<A>(view:style:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v13 = *(a5 + 48);
  v23[2] = *(a5 + 32);
  v23[3] = v13;
  v23[4] = *(a5 + 64);
  v24 = *(a5 + 80);
  v14 = *(a5 + 16);
  v23[0] = *a5;
  v23[1] = v14;
  type metadata accessor for ResolvedList(255, a7, a9, a4);
  type metadata accessor for _GraphValue();
  v21 = _GraphValue.value.getter();
  v22 = v12;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  type metadata accessor for _ListValue(0, &v17);
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v15 = type metadata accessor for _ListValue.Init2(0, &v17);
  swift_getWitnessTable(protocol conformance descriptor for _ListValue<A, B>.Init2, v15);
  _GraphValue.init<A>(_:)();
  return (*(a8 + 8))(&v17, v23, a7, a9, a6, a8);
}

{
  v12 = a4;
  v13 = *(a5 + 48);
  v23[2] = *(a5 + 32);
  v23[3] = v13;
  v23[4] = *(a5 + 64);
  v24 = *(a5 + 80);
  v14 = *(a5 + 16);
  v23[0] = *a5;
  v23[1] = v14;
  type metadata accessor for ResolvedTabView(255, a7, a9, a4);
  type metadata accessor for _GraphValue();
  v21 = _GraphValue.value.getter();
  v22 = v12;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  type metadata accessor for _TabViewValue(0, &v17);
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v15 = type metadata accessor for _TabViewValue.Init2(0, &v17);
  swift_getWitnessTable(protocol conformance descriptor for _TabViewValue<A, B>.Init2, v15);
  _GraphValue.init<A>(_:)();
  return (*(a8 + 8))(&v17, v23, a7, a9, a6, a8);
}

{
  v12 = a4;
  v13 = *(a5 + 48);
  v23[2] = *(a5 + 32);
  v23[3] = v13;
  v23[4] = *(a5 + 64);
  v24 = *(a5 + 80);
  v14 = *(a5 + 16);
  v23[0] = *a5;
  v23[1] = v14;
  type metadata accessor for ResolvedPicker(255, a7, a9, a4);
  type metadata accessor for _GraphValue();
  v21 = _GraphValue.value.getter();
  v22 = v12;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  type metadata accessor for _PickerValue(0, &v17);
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v15 = type metadata accessor for _PickerValue.Init2(0, &v17);
  swift_getWitnessTable(protocol conformance descriptor for _PickerValue<A, B>.Init2, v15);
  _GraphValue.init<A>(_:)();
  return (*(a8 + 8))(&v17, v23, a7, a9, a6, a8);
}

uint64_t static SidebarListStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  v7 = a2[4];
  v35 = a2[3];
  v36 = v7;
  v37 = *(a2 + 20);
  v8 = *a2;
  v33 = a2[1];
  v34 = v6;
  v29 = v8;
  v30 = v33;
  v31 = v6;
  v32 = v8;
  outlined init with copy of _GraphInputs(&v32, &v23);
  if (one-time initialization token for searchFieldPlacement != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v10 = _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA17EnvironmentValuesV11SearchFieldV_TtB5Tm(&lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchField>, lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField, &type metadata for EnvironmentValues.SearchField, lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>);
  outlined destroy of _GraphInputs(&v32);
  *&v23 = __PAIR64__(v10, v9);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  *&v23 = &type metadata for SidebarListStyle;
  *(&v23 + 1) = a3;
  *&v24 = &protocol witness table for SidebarListStyle;
  *(&v24 + 1) = a4;
  type metadata accessor for _ListValue(255, &v23);
  type metadata accessor for _GraphValue();
  v12 = _GraphValue.value.getter();
  type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>(255);
  v14 = v13;
  v16 = type metadata accessor for SelectionManagerBox(255, a3, a4, v15);
  v17 = lazy protocol witness table accessor for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v16);
  *&v23 = v14;
  *(&v23 + 1) = v16;
  *&v24 = v17;
  *(&v24 + 1) = WitnessTable;
  v19 = type metadata accessor for SidebarListBody(0, &v23);
  *&v23 = __PAIR64__(v11, v12);
  v21 = type metadata accessor for SidebarListStyle.Body(0, a3, a4, v20);
  swift_getWitnessTable(protocol conformance descriptor for SidebarListStyle.Body<A>, v21);
  _GraphValue.init<A>(_:)();
  v25 = v34;
  v26 = v35;
  v27 = v36;
  v28 = v37;
  v23 = v32;
  v24 = v33;
  swift_getWitnessTable(protocol conformance descriptor for SidebarListBody<A, B>, v19);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t View.searchable(text:isPresented:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v30 = a7;
  v28 = a5;
  v29 = a6;
  v31 = a3;
  v32 = a9;
  v27 = a1;
  v33 = a14;
  v34 = a15;
  type metadata accessor for SearchModifier<TextField<EmptyView>>(0, a2, a3, a4);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a8;

  v22 = a2;

  v23 = a4;

  outlined copy of Text?(a10, a11, a12, a13);
  v24 = v28;

  v25 = v29;

  SearchModifier.init<>(text:isPresented:placement:prompt:)(v27, v22, v31, v23, v24, v25, v30 & 1, &v35, v21, a10, a11, a12, a13);
  MEMORY[0x18D00A570](v21, v33, v19, v34);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v21, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

uint64_t SearchModifier.init<>(text:isPresented:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, unsigned __int8 *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v86 = a7;
  v92 = a6;
  v85 = a5;
  v102 = a3;
  v103 = a2;
  v99 = a9;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v91 = &v83 - v17;
  v18 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v20 - 8);
  type metadata accessor for Binding<AttributedString>(0);
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v97 = (&v83 - v24);
  v90 = *a8;
  if (a13)
  {
    v105 = a11;
    v106 = a10;
    v101 = a12;
    v104 = a13;
  }

  else
  {
    v25 = static Text.System.search.getter();
    v105 = v26;
    v106 = v25;
    v101 = v27;
    v104 = v28;
  }

  v93 = a10;
  v94 = a11;
  v95 = a12;
  v96 = a13;
  outlined copy of Text?(a10, a11, a12, a13);
  AttributeContainer.init()();
  v29 = v97;
  v89 = a4;
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v30 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v29 = a1;
  v29[1] = v30;
  v31 = v98;
  outlined init with copy of Binding<AttributedString>(v29, v98, type metadata accessor for Binding<AttributedString>);
  type metadata accessor for SearchModifier<TextField<EmptyView>>(0, v32, v33, v34);
  v36 = v35;
  v37 = v99;
  v38 = &v99[v35[12]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v84 = v38;
  *(v38 + 8) = 0;
  v39 = v100;
  *v100 = 2;

  v40 = v101 & 1;
  outlined copy of Text.Storage(v106, v105, v101 & 1);
  v39[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v39 + 1) = 2;
  *(v39 + 1) = 0;
  v39[8] = 1;
  AttributedString.init()();
  v39[*(v18 + 40)] = 0;
  v41 = &v39[*(v18 + 44)];
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v42 = byte_1EAB095CC;
  *v41 = static SearchFocusUpdate.empty;
  v41[4] = v42;
  v43 = v104;

  v44 = v105;
  v45 = v106;
  v46 = outlined copy of Text.Storage(v106, v105, v40);
  MEMORY[0x18D009CE0](v108, v46);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v45, v44, v40);

  *(v37 + 1) = v45;
  *(v37 + 2) = v44;
  v47 = v45;
  v37[24] = v40;
  *(v37 + 4) = v43;
  outlined init with copy of Binding<AttributedString>(v31, &v37[v36[11]], type metadata accessor for Binding<AttributedString>);
  v48 = &v37[v36[13]];
  outlined init with copy of Binding<AttributedString>(v39, v48, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v48 + *(v49 + 28)) = 0;
  v50 = &v37[v36[10]];
  v88 = v101 & 1;
  v109 = 1;
  v108[0] = a1;
  v108[1] = v103;
  v51 = v89;
  v108[2] = v102;
  v108[3] = v89;
  v104 = v43;

  v105 = v44;
  v106 = v47;
  outlined copy of Text.Storage(v47, v44, v40);

  outlined copy of Text.Storage(v47, v44, v40);
  type metadata accessor for Binding<String>();
  v53 = v52;

  MEMORY[0x18D00ACC0](v107, v53);
  v55 = v107[0];
  v54 = v107[1];
  v87 = v109;
  type metadata accessor for Binding<TextSelection?>(0);
  v57 = v56;
  v58 = *(*(v56 - 8) + 56);
  v59 = v51;
  v60 = v91;
  v58(v91, 1, 1, v56);
  type metadata accessor for TextField<EmptyView>(0, v61, v62, v63);
  v65 = *(v64 + 56);
  v58(&v50[v65], 1, 1, v57);
  v66 = v103;
  LOBYTE(v108[0]) = 0;
  *(v50 + 9) = v55;
  *(v50 + 10) = v54;
  *(v50 + 88) = 0u;
  *(v50 + 104) = 0u;
  *(v50 + 120) = 0u;
  *(v50 + 136) = 0u;
  v50[152] = 0;
  *(v50 + 39) = 0;
  v50[160] = v87;
  *(v50 + 161) = 2;
  v50[163] = 0;
  *(v50 + 21) = 0;
  v50[180] = 0;
  *v50 = a1;
  *(v50 + 1) = v66;
  *(v50 + 2) = v102;
  *(v50 + 3) = v59;
  *(v50 + 16) = 0;
  v68 = v105;
  v67 = v106;
  *(v50 + 5) = v106;
  *(v50 + 6) = v68;
  v69 = v104;
  *(v50 + 7) = v88;
  *(v50 + 8) = v69;
  outlined assign with take of Binding<TextSelection?>?(v60, &v50[v65]);
  *v99 = v90;
  v70 = v92;
  v71 = v68;
  if (v92)
  {
    v72 = v86;
    v73 = v84;
    v74 = *v84;
    v75 = *(v84 + 1);
    v76 = v84[17];
    v77 = v85;
    *v84 = v85;
    *(v73 + 1) = v70;
    v78 = v73[16];
    v73[16] = v72 & 1;
    v73[17] = 1;

    v79 = v74;
    v80 = v75;
    v71 = v105;
    v67 = v106;
    outlined consume of StateOrBinding<Bool>(v79, v80, v78, v76);
    outlined consume of Binding<NavigationSplitViewColumn>?(v77, v70);
  }

  v81 = v101;
  outlined consume of Text.Storage(v67, v71, v101 & 1);

  outlined consume of Text.Storage(v67, v71, v81 & 1);

  outlined consume of Text?(v93, v94, v95, v96);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v100, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v98, type metadata accessor for Binding<AttributedString>);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v97, type metadata accessor for Binding<AttributedString>);
}

uint64_t View.searchSuggestions<A>(placement:_:)@<X0>(char *a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a6;
  v28[0] = a4;
  v28[1] = a3;
  v29 = a2;
  v32 = a7;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchSuggestionsModifier(0, v13, v14, v12);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v28 - v17;
  v19 = type metadata accessor for ModifiedContent();
  v30 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v28 - v21;
  v23 = *a1;
  v29(v20);
  (*(v9 + 32))(v18, v11, a5);
  v24 = v31;
  MEMORY[0x18D00A570](v18, v28[0], v15, v31);
  (*(v16 + 8))(v18, v15);
  v34 = v23;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchSuggestionsModifier<A>, v15);
  v33[0] = v24;
  v33[1] = WitnessTable;
  v26 = swift_getWitnessTable(MEMORY[0x1E697E858], v19, v33);
  View.searchEnvironmentTransform<A>(_:)(&v34, v19, &type metadata for SearchSuggestionPlacementTransform, v26);
  return (*(v30 + 8))(v22, v19);
}

double protocol witness for static Rule.initialValue.getter in conformance MakeAccessibilityScrollView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t SearchField.multiSuggestions(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + *(a2 + 44)) == 1 && (v41 = v17, v20 = SearchField.renderSuggestions(_:)(), v17 = v41, (v20 & 1) != 0))
  {
    KeyPath = swift_getKeyPath();
    v42 = KeyPath;
    v40 = a3;
    v21 = *(v9 + 32);
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v23 = *(v22 + 32);
    outlined init with copy of SearchBoundProperty<AttributedString>(a1 + v21, v14, type metadata accessor for SearchFieldState);
    v24 = *(v12 + 36);
    v25 = type metadata accessor for AttributedString();
    (*(*(v25 - 8) + 32))(&v19[v23], &v14[v24], v25);
    type metadata accessor for WritableKeyPath<SearchFieldState, AttributedString>(0);
    v39 = MEMORY[0x1E6982050];
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type WritableKeyPath<SearchFieldState, AttributedString> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<SearchFieldState, AttributedString>, MEMORY[0x1E6982050]);
    v26 = dispatch thunk of AnyLocation.projecting<A>(_:)();

    *v19 = *a1;
    *(v19 + 1) = v26;
    v27 = swift_getKeyPath();

    MEMORY[0x18D00ACC0](v9);
    LOBYTE(v23) = v14[1];
    outlined destroy of StateOrBinding<SearchFieldState>(v14, type metadata accessor for SearchFieldState);
    type metadata accessor for ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>(0);
    v29 = &v19[*(v28 + 36)];
    *v29 = v27;
    v29[8] = v23;
    SearchField.$state.getter(v11);
    v42 = swift_getKeyPath();
    v30 = *(v11 + *(v9 + 32) + 2);
    type metadata accessor for WritableKeyPath<SearchFieldState, Bool?>(0);
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type WritableKeyPath<SearchFieldState, Bool?> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<SearchFieldState, Bool?>, v39);
    v31 = dispatch thunk of AnyLocation.projecting<A>(_:)();

    v32 = *v11;

    outlined destroy of StateOrBinding<SearchFieldState>(v11, type metadata accessor for Binding<SearchFieldState>);
    v33 = &v19[*(v16 + 36)];
    *v33 = v32;
    *(v33 + 1) = v31;
    v33[16] = v30;
    v34 = v40;
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v19, v40, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>);
    return (*(v41 + 56))(v34, 0, 1, v16);
  }

  else
  {
    v36 = *(v17 + 56);

    return v36(a3, 1, 1, v16);
  }
}

uint64_t SearchField.renderSuggestions(_:)()
{
  v0 = type metadata accessor for AttributedString.Index();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for AttributedString.CharacterView();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  SearchField.state.getter();
  v15 = *v14;
  outlined destroy of StateOrBinding<SearchFieldState>(v14, type metadata accessor for SearchFieldState);
  if (v15 == 2)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    MEMORY[0x18D00ACC0]();
    AttributedString.characters.getter();
    outlined destroy of StateOrBinding<SearchFieldState>(v11, type metadata accessor for SearchFieldState);
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968690]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = *(v21 + 8);
    v17(v2, v0);
    v17(v5, v0);
    (*(v20 + 8))(v8, v6);
    v18 = v16 ^ 1;
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

uint64_t SearchField.state.getter()
{
  v2 = v1;
  type metadata accessor for Binding<SearchFieldState>(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for State<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StateOrBinding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<AttributedString>(v2, v12, type metadata accessor for StateOrBinding<SearchFieldState>);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v12, v6, type metadata accessor for Binding<SearchFieldState>);
    MEMORY[0x18D00ACC0](v4);
    v13 = type metadata accessor for Binding<SearchFieldState>;
    v14 = v6;
  }

  else
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v12, v9, type metadata accessor for State<SearchFieldState>);
    State.wrappedValue.getter();
    v13 = type metadata accessor for State<SearchFieldState>;
    v14 = v9;
  }

  return outlined destroy of StateOrBinding<SearchFieldState>(v14, v13);
}

uint64_t CommandGroup.MakeList.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CommandGroup(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = type metadata accessor for CommandsList.Item(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  CommandGroup.MakeList.commandGroup.getter(a2, a3, v14, v8);
  _s7SwiftUI16CommandOperationVWObTm_1(v8, v13, type metadata accessor for CommandOperation);
  type metadata accessor for CommandsList.Item.Value(0);
  swift_storeEnumTagMultiPayload();
  DisplayList.Version.init(forUpdate:)();
  *&v13[*(v10 + 28)] = v18[1];
  type metadata accessor for _ContiguousArrayStorage<CommandsList.Item>(0);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18CD63400;
  _s7SwiftUI16CommandOperationVWObTm_1(v13, v16 + v15, type metadata accessor for CommandsList.Item);
  return v16;
}

uint64_t protocol witness for Rule.value.getter in conformance CommandGroup<A>.MakeList@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = CommandGroup.MakeList.value.getter(*v3, *(a1 + 16), *(a1 + 24), a2);
  *a3 = result;
  return result;
}

uint64_t CommandGroup.MakeList.commandGroup.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for CommandGroup(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

void type metadata accessor for _ContiguousArrayStorage<CommandsList.Item>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CommandsList.Item>)
  {
    type metadata accessor for CommandsList.Item(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<CommandsList.Item>);
    }
  }
}

_BYTE *initializeWithCopy for CommandsList.Item(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for CommandsList.Item.Value(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    v22 = a3;
    *a1 = *a2;
    v21 = type metadata accessor for CommandOperation(0);
    v7 = *(v21 + 20);
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = *&a2[v7];
    v11 = *&a2[v7 + 8];
    v12 = a2[v7 + 16];
    outlined copy of Text.Storage(v10, v11, v12);
    *v8 = v10;
    *(v8 + 1) = v11;
    v8[16] = v12;
    *(v8 + 3) = *(v9 + 3);
    v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v14 = type metadata accessor for UUID();
    v15 = *(*(v14 - 8) + 16);

    v15(&v8[v13], &v9[v13], v14);
    v16 = *(v21 + 24);
    v17 = &a1[v16];
    v18 = &a2[v16];
    if (*v18)
    {
      v19 = v18[1];
      *v17 = *v18;
      v17[1] = v19;
    }

    else
    {
      *v17 = *v18;
    }

    swift_storeEnumTagMultiPayload();
    a3 = v22;
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

uint64_t sub_18BECDCCC(uint64_t *a1)
{
  v3 = MEMORY[0x1E6980280];
  v4 = *a1;
  v5 = MEMORY[0x1E6980278];
  v6 = a1[1];
  v1 = type metadata accessor for _DelayedPreferenceView();
  return swift_getWitnessTable(MEMORY[0x1E697FF80], v1, v3, v4, v5, v6);
}

uint64_t @objc UIKitPlatformViewHost.__ivar_destroyer(void *a1)
{

  return swift_weakDestroy();
}

uint64_t BarEnvironmentViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUI23BarEnvironmentViewModel__visibility;
  type metadata accessor for Published<Visibility>(0, &lazy cache variable for type metadata for Published<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7SwiftUI23BarEnvironmentViewModel__colorScheme;
  type metadata accessor for Published<ColorScheme?>(0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t UIViewResponder.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);
  swift_weakDestroy();
  MEMORY[0x18D011290](v0 + 40);
  MEMORY[0x18D011290](v0 + 48);
  outlined destroy of ContentResponderHelper<UIViewContentResponder>(v0 + 56, type metadata accessor for ContentResponderHelper<UIViewContentResponder>);
  outlined destroy of ContentResponderHelper<UIViewContentResponder>(v0 + 184, type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?);
  MEMORY[0x18D011290](v0 + 224);

  MEMORY[0x18D011290](v0 + 232);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of ContentResponderHelper<UIViewContentResponder>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ContentResponderHelper<UIViewContentResponder>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderHelper<UIViewContentResponder>)
  {
    lazy protocol witness table accessor for type UIViewContentResponder and conformance UIViewContentResponder();
    v1 = type metadata accessor for ContentResponderHelper();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ContentResponderHelper<UIViewContentResponder>);
    }
  }
}

uint64_t getEnumTagSinglePayload for UIViewContentResponder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?)
  {
    type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?);
    }
  }
}

void type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult)
  {
    type metadata accessor for UIView();
    lazy protocol witness table accessor for type UIViewContentResponder and conformance UIViewContentResponder();
    v1 = type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult);
    }
  }
}

id _UIHostingView.foreignSubviews.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1F8);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_opt_self() weakObjectsHashTable];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

BOOL interpolationsEqual(_:_:)(_BOOL8 result, uint64_t a2)
{
  if (!result)
  {
    return !a2;
  }

  if (!a2)
  {
    return 0;
  }

  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = (a2 + 44);
  v4 = (result + 44);
  LOBYTE(result) = 1;
  do
  {
    result = (result & (*(v4 - 3) == *(v3 - 3))) == 1 && *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1) && *v4 == *v3;
    v3 += 4;
    v4 += 4;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t initializeWithCopy for OnModifierKeysChangedModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

double destroy for OnModifierKeysChangedModifier(uint64_t a1)
{

  return result;
}

uint64_t getEnumTagSinglePayload for HelpView(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t closure #1 in static GridRow._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for GridRow(0, a2, a3, a4);
  v8 = *(v7 + 36);
  v12[2] = v7;
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, a4, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t closure #2 in static GridRow._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for GridRow(0, a2, a3, a4);
  type metadata accessor for VerticalAlignment?(0, &lazy cache variable for type metadata for VerticalAlignment?, MEMORY[0x1E697F2F0], MEMORY[0x1E69E6720]);
  v6 = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_21, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t static ToolbarItem._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *a2;
  v33 = a2[1];
  v34 = v9;
  v35[0] = v10;
  *(v35 + 12) = *(a2 + 60);
  v12 = *a1;
  v32 = v11;
  v21[1] = v12;
  type metadata accessor for ToolbarItem(255, a3, a4, a5);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in static ToolbarItem._makeToolbar(content:inputs:)(1, a3, a4, a5);
  }

  AGGraphCreateOffsetAttribute2();
  type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
  v13 = type metadata accessor for ModifiedContent();
  View = type metadata accessor for ToolbarItem.MakeView(0, a3, a4, a5);
  swift_getWitnessTable(protocol conformance descriptor for ToolbarItem<A, B>.MakeView, View);
  _GraphValue.init<A>(_:)();
  _GraphValue.value.getter();
  closure #2 in static ToolbarItem._makeToolbar(content:inputs:)(1, a3, a4, a5);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v30 = v34;
  v31[0] = v35[0];
  *(v31 + 12) = *(v35 + 12);
  v28 = v32;
  v29 = v33;
  v27[0] = a5;
  v27[1] = lazy protocol witness table accessor for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v27);
  LODWORD(v13) = static ToolbarContent.makeViewList<A>(placement:content:inputs:)(OffsetAttribute2, v21, &v28, v17, v13, v18, WitnessTable);
  v22[0] = v12;
  _GraphValue.value.getter();
  v25 = v34;
  v26[0] = v35[0];
  *(v26 + 12) = *(v35 + 12);
  v23 = v32;
  v24 = v33;
  outlined init with copy of _ToolbarInputs(&v32, &v28);
  ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(OffsetAttribute2, v13, &v23, a3, a4, a5, &v28);
  v25 = v30;
  v26[0] = v31[0];
  v26[1] = v31[1];
  v26[2] = v31[2];
  v23 = v28;
  v24 = v29;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of ToolbarMakeEntries(&v28, v22);
  type metadata accessor for [ToolbarStorage.Entry](0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type ToolbarMakeEntries and conformance ToolbarMakeEntries();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ToolbarMakeEntries(&v28);
  v25 = v34;
  v26[0] = v35[0];
  *(v26 + 12) = *(v35 + 12);
  v23 = v32;
  v24 = v33;
  static ToolbarContent.makeToolbarOutputs(placement:entries:inputs:)(&v23, a6);
  return outlined destroy of ToolbarMakeEntries(&v28);
}

uint64_t closure #1 in static ToolbarItem._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ToolbarItem(0, a2, a3, a4);
  v7 = *(v6 + 48);
  v11[2] = v6;
  v11[3] = a3;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t closure #2 in static ToolbarItem._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolbarItem(0, a2, a3, a4);
  v6 = *(v5 + 44);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_6, v10, &type metadata for ToolbarItemPlacement, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)@<X0>(int a1@<W0>, int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a1;
  v46 = a3;
  v53 = *MEMORY[0x1E69E9840];
  v12 = a4[3];
  v51 = a4[2];
  *v52 = v12;
  *&v52[12] = *(a4 + 60);
  v13 = a4[1];
  v49 = *a4;
  v50 = v13;
  if (*(*(a5 - 8) + 64))
  {
    closure #1 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(1, a5, a6, a7);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  closure #2 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(1, a5, a6, a7);
  v15 = AGGraphCreateOffsetAttribute2();
  v43 = *&v52[24];
  v44 = v15;
  v42 = DWORD2(v50);
  v48[0] = OffsetAttribute2;
  MEMORY[0x1EEE9AC00](v15);
  v37 = type metadata accessor for ToString(0, a5, v16, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ToString<A>, v37);
  type metadata accessor for Attribute<String?>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v48, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_15, &v36, v37, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  v41 = v47;
  if (one-time initialization token for toolbarTransitionIdentifier != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.toolbarTransitionIdentifier;
  swift_beginAccess();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
  v40 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarMatchedTransitionIdentifier != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.toolbarMatchedTransitionIdentifier;
  swift_beginAccess();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier);
  v39 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  closure #3 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(1, a5, a6, a7);
  v20 = AGGraphCreateOffsetAttribute2();
  closure #4 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(1, a5, a6, a7);
  v21 = AGGraphCreateOffsetAttribute2();
  if (one-time initialization token for toolbarCustomizationBehavior != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.toolbarCustomizationBehavior;
  swift_beginAccess();
  v22 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemContainerTint != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.toolbarItemContainerTint;
  swift_beginAccess();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  v23 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationVisibility != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.toolbarCustomizationVisibility;
  swift_beginAccess();
  v24 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemIsHidden != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.toolbarItemIsHidden;
  swift_beginAccess();
  v25 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemPlatterVisibility != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.toolbarItemPlatterVisibility;
  swift_beginAccess();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Visibility?, MEMORY[0x1E697DB50]);
  v26 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationOptions != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.toolbarCustomizationOptions;
  swift_beginAccess();
  v27 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v28 = AGSubgraphGetCurrent();
  if (!v28)
  {
    __break(1u);
  }

  v29 = v28;
  result = outlined destroy of _ToolbarInputs(&v49);
  v31 = *&v52[16];
  v32 = v44;
  *a8 = v45;
  *(a8 + 4) = v32;
  v33 = v42;
  v34 = v43;
  *(a8 + 8) = v46;
  *(a8 + 12) = v34;
  *(a8 + 16) = v33;
  *(a8 + 20) = 0;
  v35 = v40;
  *(a8 + 24) = v41;
  *(a8 + 28) = v35;
  *(a8 + 32) = v39;
  *(a8 + 36) = v20;
  *(a8 + 40) = v22;
  *(a8 + 44) = v23;
  *(a8 + 48) = v24;
  *(a8 + 52) = v25;
  *(a8 + 56) = v26;
  *(a8 + 60) = v27;
  *(a8 + 64) = v21;
  *(a8 + 72) = v29;
  *(a8 + 80) = v31;
  *(a8 + 88) = 0;
  return result;
}

uint64_t closure #2 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolbarItem(0, a2, a3, a4);
  v6 = *(v5 + 56);
  v11[2] = v5;
  v7 = MEMORY[0x1E69E6370];
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

void type metadata accessor for Attribute<String?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<String?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<String?>);
    }
  }
}

uint64_t closure #3 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolbarItem(0, a2, a3, a4);
  v6 = *(v5 + 52);
  v11[2] = v5;
  v7 = MEMORY[0x1E69E6370];
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t closure #4 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolbarItem(0, a2, a3, a4);
  v6 = *(v5 + 60);
  v12[2] = v5;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ToolbarDefaultItemKind?, &type metadata for ToolbarDefaultItemKind);
  v8 = v7;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_10, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t outlined init with take of FocusItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for FocusItem?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized static FocusState._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  lazy protocol witness table accessor for type FocusStoreInputKey and conformance FocusStoreInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey();
  PropertyList.subscript.getter();
  v9 = type metadata accessor for FocusState.Box(0, a4, a6, v8);
  swift_getWitnessTable(protocol conformance descriptor for FocusState<A>.Box, v9);
  return _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
}

uint64_t FocusState.Box.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *v3;
  if (*MEMORY[0x1E698D3F8] != *v3)
  {
    v12 = v5;
    v32 = v3;
    v13 = v3[1];
    v14 = *(v6 + 24);
    v33 = v13 == 0;
    v15 = v13;
    v31 = v13;
    if (!v13)
    {
      v17 = type metadata accessor for FocusState(0, v4, v14, v7);
      if (*(v12 + *(v17 + 36)) && (type metadata accessor for FocusStoreLocation(0, v4, v14, v16), (v18 = swift_dynamicCastClass()) != 0))
      {
        v15 = v18;
      }

      else
      {
        type metadata accessor for FocusStoreLocation(0, v4, v14, v16);
        type metadata accessor for GraphHost();
        v19 = MEMORY[0x18D00B7D0]();
        v15 = specialized FocusStoreLocation.__allocating_init(host:resetValue:)(v19, v12 + *(v17 + 40));
      }

      v32[1] = v15;
    }

    Value = AGGraphGetValue();
    v32 = v21;
    v22 = Value[1];
    v23 = Value[2];
    v15[2] = *Value;
    v15[3] = v22;
    v15[4] = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    FocusState.Box.focusedItem.getter(v11, v35);
    if (v36 == 1 && v37 == 1)
    {
      outlined destroy of FocusItem??(v35);
      v24 = 0;
    }

    else
    {
      outlined init with take of FocusItem?(v35, v38);
      if (v39 || v40 != 1)
      {
        v24 = v41;
        outlined destroy of FocusItem(v38);
      }

      else
      {
        outlined destroy of FocusItem?(v38, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
        v24 = 0;
      }
    }

    *(v15 + *(*v15 + class metadata base offset for FocusStoreLocation + 40)) = v24;
    v25 = FocusStoreLocation.update()(v9);
    (*(v34 + 24))(v12, v9, v4);
    v27 = *(type metadata accessor for FocusState(0, v4, v14, v26) + 36);

    *(v12 + v27) = v15;
    if (v32)
    {
      v28 = swift_weakInit();
      specialized closure #1 in FocusState.Box.update(property:phase:)(v28);
      swift_weakDestroy();
    }

    (*(v34 + 8))(v9, v4);

    v10 = v33;
    if (v25)
    {
      v29 = v31 == 0;
      v10 = v29 | FocusStoreLocation.wasRead.getter();
    }
  }

  return v10 & 1;
}

uint64_t type metadata completion function for FocusStoreLocation(uint64_t a1)
{
  v1 = a1 + class metadata base offset for FocusStoreLocation;
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_getTupleTypeMetadata2();
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      type metadata accessor for FocusStore.Entry(255, v4, *(v1 + 8), v5);
      result = type metadata accessor for Optional();
      if (v7 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for FocusStore.Entry(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for FocusStore.Entry.Target(319, result, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for FocusStore.Entry.Target(uint64_t a1)
{
  type metadata accessor for Binding<SearchFieldState>(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

uint64_t specialized FocusStoreLocation.init(host:resetValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v2 + 2) = 0;
  *(v2 + 3) = v5;
  *(v2 + 4) = v6;
  swift_weakInit();
  *&v2[*(*v2 + class metadata base offset for FocusStoreLocation + 40)] = 0;
  v7 = *(*v2 + class metadata base offset for FocusStoreLocation + 48);
  v8 = *(v4 + class metadata base offset for FocusStoreLocation);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(&v2[v7], 1, 1, TupleTypeMetadata2);
  v10 = *(*v2 + class metadata base offset for FocusStoreLocation + 56);
  v12 = type metadata accessor for FocusStore.Entry(0, v8, *(v4 + class metadata base offset for FocusStoreLocation + 8), v11);
  (*(*(v12 - 8) + 56))(&v2[v10], 1, 1, v12);
  *&v2[*(*v2 + class metadata base offset for FocusStoreLocation + 64)] = 0;
  v2[*(*v2 + class metadata base offset for FocusStoreLocation + 72)] = 0;
  swift_weakAssign();
  v13 = (*(*(v8 - 8) + 16))(&v2[*(*v2 + class metadata base offset for FocusStoreLocation + 32)], a2, v8);

  return MEMORY[0x1EEDDD3A8](v13);
}

void storeEnumTagSinglePayload for FocusStore.Entry(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for AttributedString() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = 16;
  if (((v12 & 0xFC ^ 0x1FCu) & (v12 + 16)) + ((((v12 + 9) & ~v12) + v13) & 0xFFFFFFFFFFFFFFFCLL) + 9 > 0x10)
  {
    v14 = ((v12 & 0xFC ^ 0x1FCu) & (v12 + 16)) + ((((v12 + 9) & ~v12) + v13) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v15 = *(v8 + 64);
  v16 = v14 + ((v12 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & (v12 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 1;
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_49:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0x7FFFFFFF)
  {
    v24 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *v24 = v25;
  }

  else
  {
    v23 = *(v26 + 56);

    v23(a1, a2, v9, v7);
  }
}

void FocusState.Box.focusedItem.getter(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(result))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = vdupq_n_s64(1uLL);
    *(a2 + 56) = 0;
  }

  else
  {
    v3 = MEMORY[0x1E69E6720];
    type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    outlined init with copy of FocusItem?(Value, a2, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, v3);
  }
}

uint64_t outlined init with copy of FocusItem?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for FocusItem?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI9FocusItemVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of FocusItem?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for FocusItem?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI9FocusItemVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI9FocusItemVSgWOhTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI9FocusItemVSgWOhTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

BOOL FocusStoreLocation.update()(char *a1)
{
  v23 = a1;
  v2 = *v1;
  v3 = *(*v1 + class metadata base offset for FocusStoreLocation);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v14 = *(v13 + 56);
  swift_beginAccess();
  v15 = class metadata base offset for FocusStoreLocation;
  v17 = type metadata accessor for FocusStore.Entry(0, v3, *(v2 + class metadata base offset for FocusStoreLocation + 8), v16);
  if ((*(*(v17 - 8) + 48))(&v1[v14], 1, v17))
  {
    v18 = *(*v1 + v15 + 32);
    v19 = *(v4 + 16);
    v19(v12, &v1[v18], v3);
  }

  else
  {
    v19 = *(v4 + 16);
    v19(v9, &v1[v14], v3);
    (*(v4 + 32))(v12, v9, v3);
  }

  FocusStoreLocation.getValue(forReading:)(0, v6);
  v19(v23, v6, v3);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v4 + 8);
  v21(v6, v3);
  v21(v12, v3);
  return (v20 & 1) == 0;
}

uint64_t getEnumTagSinglePayload for FocusStore.Entry(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for AttributedString() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if (((v10 & 0xFC ^ 0x1FCu) & (v10 + 16)) + ((((v10 + 9) & ~v10) + v11) & 0xFFFFFFFFFFFFFFFCLL) + 9 <= 0x10)
  {
    v12 = 16;
  }

  else
  {
    v12 = ((v10 & 0xFC ^ 0x1FCu) & (v10 + 16)) + ((((v10 + 9) & ~v10) + v11) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v13 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v14 = v12 + ((v10 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & (v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v8 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_29:
      if (v7 < 0x7FFFFFFF)
      {
        v21 = *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }

      else
      {
        v20 = *(v6 + 48);

        return v20(a1, v7, v5);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v8 + (v14 | v19) + 1;
}

uint64_t FocusStoreLocation.getValue(forReading:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v32 = a2;
  v30 = *(*(*v2 + class metadata base offset for FocusStoreLocation) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v27 - v5;
  v7 = *(v6 + 8);
  v31 = v8;
  v10 = type metadata accessor for FocusStore.Entry(255, v8, v7, v9);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  type metadata accessor for GraphHost();
  if (static GraphHost.isUpdating.getter() & 1) != 0 && (v4)
  {
    v2[*(*v2 + class metadata base offset for FocusStoreLocation + 72)] = 1;
  }

  v17 = *(*v2 + class metadata base offset for FocusStoreLocation + 56);
  swift_beginAccess();
  (*(v12 + 16))(v16, &v2[v17], v11);
  v18 = *(*(v10 - 8) + 48);
  v19 = v18(v16, 1, v10);
  (*(v12 + 8))(v16, v11);
  if (v19 == 1 || *(v3 + 2) != *&v3[*(*v3 + class metadata base offset for FocusStoreLocation + 64)])
  {
    v21 = v29;
    FocusStoreLocation.findFocusedEntry()(v20, v29);
    swift_beginAccess();
    (*(v12 + 40))(&v3[v17], v21, v11);
    swift_endAccess();
    *&v3[*(*v3 + class metadata base offset for FocusStoreLocation + 64)] = *(v3 + 2);
  }

  if (v18(&v3[v17], 1, v10))
  {
    return (*(v30 + 16))(v32, &v3[*(*v3 + class metadata base offset for FocusStoreLocation + 32)], v31);
  }

  v24 = v30;
  v23 = v31;
  v25 = &v3[v17];
  v26 = v28;
  (*(v30 + 16))(v28, v25, v31);
  return (*(v24 + 32))(v32, v26, v23);
}

void FocusStoreLocation.findFocusedEntry()(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v2[4] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    v6 = v4 + class metadata base offset for FocusStoreLocation;
    v7 = *(v4 + class metadata base offset for FocusStoreLocation);
    v8 = *(v6 + 8);
    v9 = type metadata accessor for FocusStore.Entry(0, v7, v8, a1);
    (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
    v11 = type metadata accessor for FocusStore.Key(0, v7, v8, v10);
    MEMORY[0x1EEE9AC00](v11);

    swift_getWitnessTable(protocol conformance descriptor for FocusStore.Key<A>, v11);
    PropertyList.forEach<A>(keyType:_:)();
  }

  else
  {
    v12 = type metadata accessor for FocusStore.Entry(0, *(v4 + class metadata base offset for FocusStoreLocation), *(v4 + class metadata base offset for FocusStoreLocation + 8), a1);
    v13 = *(*(v12 - 8) + 56);

    v13(a2, 1, 1, v12);
  }
}

Swift::Void __swiftcall FocusStoreLocation.performDeferredUpdate()()
{
  v1 = (*v0 + class metadata base offset for FocusStoreLocation);
  v2 = *v1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v21 = v2;
  v10 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = v1[6];
  swift_beginAccess();
  (*(v5 + 16))(v9, &v0[v14], v4);
  v15 = *(TupleTypeMetadata2 - 8);
  if ((*(v15 + 48))(v9, 1, TupleTypeMetadata2) == 1)
  {
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v16 = *&v9[*(TupleTypeMetadata2 + 48)];
    v17 = v9;
    v18 = v21;
    (*(v10 + 32))(v13, v17, v21);
    if (v16)
    {
      v19 = v16 == *&v0[*(*v0 + class metadata base offset for FocusStoreLocation + 40)];
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      static Transaction.current.getter();
      specialized FocusStoreLocation.set(_:transaction:)(v13);

      (*(v10 + 8))(v13, v18);
      return;
    }

    (*(v10 + 8))(v13, v18);
  }

  v20 = v22;
  (*(v15 + 56))(v22, 1, 1, TupleTypeMetadata2);
  swift_beginAccess();
  (*(v5 + 40))(&v0[v14], v20, v4);
  swift_endAccess();
}

double specialized closure #1 in FocusState.Box.update(property:phase:)(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    FocusStoreLocation.performDeferredUpdate()();
  }

  return result;
}

uint64_t FocusState.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Binding();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = FocusState.getValue(forReading:)(0, a1, &v21 - v15);
  if (*(v2 + *(a1 + 36)))
  {
    (*(v10 + 16))(v13, v16, v5, v17);

    Binding.init(value:location:)();
  }

  else
  {
    v18 = static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v18, &dword_18BD4A000, v19, "Accessing FocusState's value outside of the body of a View. This will result in a constant Binding of the initial value and will not update.", 140, 2, MEMORY[0x1E69E7CC0]);

    static Binding.constant(_:)();
  }

  (*(v10 + 8))(v16, v5);
  return (*(v7 + 32))(a2, v9, v6);
}

double FocusState.getValue(forReading:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(v3 + *(a2 + 36)))
  {
LABEL_6:
    v7 = *(*(*(a2 + 16) - 8) + 16);

    v7(a3, v3);
    return result;
  }

  type metadata accessor for GraphHost();

  if (static GraphHost.isUpdating.getter())
  {
    if (a1)
    {
      dispatch thunk of AnyLocation.wasRead.setter();
    }

    goto LABEL_6;
  }

  dispatch thunk of AnyLocation.get()();

  return result;
}

void type metadata accessor for [Scrollable](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Scrollable])
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0]);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Scrollable]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollablePreferenceProvider and conformance ScrollablePreferenceProvider()
{
  result = lazy protocol witness table cache variable for type ScrollablePreferenceProvider and conformance ScrollablePreferenceProvider;
  if (!lazy protocol witness table cache variable for type ScrollablePreferenceProvider and conformance ScrollablePreferenceProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollablePreferenceProvider, &unk_1F00197F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollablePreferenceProvider and conformance ScrollablePreferenceProvider);
  }

  return result;
}

uint64_t ModifiedContent<>.accessibilityHint(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Text>();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3 & 1;
  *(v12 + 56) = a4;
  v14 = v12;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980100], &v14, 1, a5, MEMORY[0x1E6980100], MEMORY[0x1E69800F8], a6);
}

void type metadata accessor for _ContiguousArrayStorage<Text>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Text>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>);
    }
  }
}

double one-time initialization function for bottomBar()
{
  static ToolbarItemPlacement.bottomBar = 13;
  result = 0.0;
  unk_1EAA05FC8 = 0u;
  unk_1EAA05FD8 = 0u;
  byte_1EAA05FE8 = 2;
  return result;
}

uint64_t ToolbarItemGroup.init(placement:isEmpty:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  outlined init with copy of ToolbarItemPlacement(a1, a6);
  *(a6 + *(type metadata accessor for ToolbarItemGroup(0, a4, a5, v12) + 40)) = a2;
  a3();

  return outlined destroy of ToolbarItemPlacement(a1);
}

uint64_t ToolbarItemGroup.init(placement:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  outlined init with copy of ToolbarItemPlacement(a1, v11);
  ToolbarItemGroup.init(placement:isEmpty:content:)(v11, 0, a2, a3, a4, a5);
  return outlined destroy of ToolbarItemPlacement(a1);
}

uint64_t initializeWithCopy for ToolbarItemGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 40) == 1)
  {
    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1, a2);
    *(a1 + 40) = 1;
  }

  else
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 25) = *(a2 + 25);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v10 + 41 + a1) & ~v10;
  v12 = (v10 + 41 + a2) & ~v10;
  (*(v8 + 16))(v11, v12);
  *(*(v9 + 48) + v11) = *(*(v9 + 48) + v12);
  return a1;
}

uint64_t destroy for ToolbarItemGroup(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 41) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(unsigned __int8 a1)
{
  v2 = a1;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable();
  _ViewInputs.requestedTextRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable();
  _ViewInputs.requestedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable();
  _ViewInputs.requestedNamedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable();
  _ViewInputs.requestedSpacerRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable();
  _ViewInputs.requestedHiddenRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  result = PropertyList.subscript.setter();
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    if (a1)
    {
      PropertyList.subscript.getter();
    }

    return PropertyList.subscript.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable()
{
  result = lazy protocol witness table cache variable for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable;
  if (!lazy protocol witness table cache variable for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListTextRepresentable, &type metadata for PlatformItemListTextRepresentable, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable()
{
  result = lazy protocol witness table cache variable for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable;
  if (!lazy protocol witness table cache variable for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListImageRepresentable, &type metadata for PlatformItemListImageRepresentable, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable()
{
  result = lazy protocol witness table cache variable for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable;
  if (!lazy protocol witness table cache variable for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListNamedImageRepresentable, &type metadata for PlatformItemListNamedImageRepresentable, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable()
{
  result = lazy protocol witness table cache variable for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable;
  if (!lazy protocol witness table cache variable for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListSpacerRepresentable, &type metadata for PlatformItemListSpacerRepresentable, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.DynamicHiddenRepresentationKey, &type metadata for _GraphInputs.DynamicHiddenRepresentationKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey);
  }

  return result;
}

uint64_t static ToolbarItemGroup._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *a2;
  v33 = a2[1];
  v34 = v7;
  v35[0] = v8;
  *(v35 + 12) = *(a2 + 60);
  v10 = *a1;
  v32 = v9;
  v21[1] = v10;
  v11 = type metadata accessor for ToolbarItemGroup(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static ToolbarItemGroup._makeToolbar(content:inputs:)(1, a3, a4, v12);
  }

  AGGraphCreateOffsetAttribute2();
  type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
  v13 = type metadata accessor for ModifiedContent();
  View = type metadata accessor for ToolbarItemGroup.MakeView(0, a3, a4, v14);
  swift_getWitnessTable(protocol conformance descriptor for ToolbarItemGroup<A>.MakeView, View);
  _GraphValue.init<A>(_:)();
  _GraphValue.value.getter();
  closure #2 in static ToolbarItemGroup._makeToolbar(content:inputs:)(1, a3, a4, v16);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v30 = v34;
  v31[0] = v35[0];
  *(v31 + 12) = *(v35 + 12);
  v28 = v32;
  v29 = v33;
  v27[0] = a4;
  v27[1] = lazy protocol witness table accessor for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v27);
  LODWORD(v13) = static ToolbarContent.makeViewList<A>(placement:content:inputs:)(OffsetAttribute2, v21, &v28, v11, v13, &protocol witness table for ToolbarItemGroup<A>, WitnessTable);
  v22[0] = v10;
  _GraphValue.value.getter();
  v25 = v34;
  v26[0] = v35[0];
  *(v26 + 12) = *(v35 + 12);
  v23 = v32;
  v24 = v33;
  outlined init with copy of _ToolbarInputs(&v32, &v28);
  ToolbarMakeEntries.init<A>(placement:toolbarItemGroup:viewList:inputs:)(OffsetAttribute2, v13, &v23, a3, a4, &v28);
  v25 = v30;
  v26[0] = v31[0];
  v26[1] = v31[1];
  v26[2] = v31[2];
  v23 = v28;
  v24 = v29;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of ToolbarMakeEntries(&v28, v22);
  type metadata accessor for [ToolbarStorage.Entry](0);
  lazy protocol witness table accessor for type ToolbarMakeEntries and conformance ToolbarMakeEntries();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ToolbarMakeEntries(&v28);
  v25 = v34;
  v26[0] = v35[0];
  *(v26 + 12) = *(v35 + 12);
  v23 = v32;
  v24 = v33;
  static ToolbarContent.makeToolbarOutputs(placement:entries:inputs:)(&v23, a5);
  return outlined destroy of ToolbarMakeEntries(&v28);
}

uint64_t closure #1 in static ToolbarItemGroup._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ToolbarItemGroup(0, a2, a3, a4);
  v7 = *(v6 + 36);
  v11[2] = v6;
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, partial apply for closure #1 in static PointerOffset.of(_:), v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t closure #2 in static ToolbarItemGroup._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for ToolbarItemGroup(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_6, v8, &type metadata for ToolbarItemPlacement, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t type metadata completion function for PopoverPresentationModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t partial apply for closure #1 in Optional<A>.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(*(v2 + 16) - 8) + 16))(a2, a1, *(v2 + 16));
  type metadata accessor for _ConditionalContent.Storage();
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(*(v2 + 16) - 8) + 16))(a2, a1, *(v2 + 16));
  type metadata accessor for _ConditionalContent.Storage();
  return swift_storeEnumTagMultiPayload();
}

uint64_t _ConditionalContent<>.CommandsProvider.makeTrueOutputs(child:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  *v8 = a2[2];
  *&v8[12] = *(a2 + 44);
  v5 = *(a3 + 16);
  _GraphValue.init(_:)();
  return (*(*(a3 + 32) + 32))(v9, v7, v5);
}

_BYTE *assignWithCopy for CommandGroup(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for CommandOperation(0);
  v5 = *(v4 + 20);
  v6 = &a1[v5];
  v7 = &a2[v5];
  v8 = *&a2[v5];
  v9 = *&a2[v5 + 8];
  v10 = a2[v5 + 16];
  outlined copy of Text.Storage(v8, v9, v10);
  v11 = *v6;
  v12 = *(v6 + 1);
  v13 = v6[16];
  *v6 = v8;
  *(v6 + 1) = v9;
  v6[16] = v10;
  outlined consume of Text.Storage(v11, v12, v13);
  *(v6 + 3) = *(v7 + 3);

  v14 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 24))(&v6[v14], &v7[v14], v15);
  v16 = *(v4 + 24);
  v17 = &a1[v16];
  v18 = &a2[v16];
  v19 = *&a1[v16];
  v20 = *v18;
  if (!v19)
  {
    if (v20)
    {
      v22 = v18[1];
      *v17 = v20;
      v17[1] = v22;

      return a1;
    }

LABEL_7:
    *v17 = *v18;
    return a1;
  }

  if (!v20)
  {

    goto LABEL_7;
  }

  v21 = v18[1];
  *v17 = v20;
  v17[1] = v21;

  return a1;
}

unint64_t lazy protocol witness table accessor for type OnModifierKeysChangedModifier and conformance OnModifierKeysChangedModifier()
{
  result = lazy protocol witness table cache variable for type OnModifierKeysChangedModifier and conformance OnModifierKeysChangedModifier;
  if (!lazy protocol witness table cache variable for type OnModifierKeysChangedModifier and conformance OnModifierKeysChangedModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnModifierKeysChangedModifier, &type metadata for OnModifierKeysChangedModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnModifierKeysChangedModifier and conformance OnModifierKeysChangedModifier);
  }

  return result;
}

uint64_t sub_18BED2B04()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2(255);
  }

  else
  {
    type metadata accessor for _TaskModifier(255);
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_18BED2B6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2(255);
    v2 = type metadata accessor for ModifiedContent();
    return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v6, v5[0], v5[1], v1, &protocol witness table for _TaskModifier2);
  }

  else
  {
    type metadata accessor for _TaskModifier(255);
    v4 = type metadata accessor for ModifiedContent();
    return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5, v1, &protocol witness table for _TaskModifier, v6[0], v6[1]);
  }
}

uint64_t sub_18BED2C50()
{
  type metadata accessor for _ViewModifier_Content<OnModifierKeysChangedModifier>(255);
  lazy protocol witness table accessor for type _ViewModifier_Content<OnModifierKeysChangedModifier> and conformance _ViewModifier_Content<A>();
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for _ViewModifier_Content<OnModifierKeysChangedModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OnModifierKeysChangedModifier>)
  {
    lazy protocol witness table accessor for type OnModifierKeysChangedModifier and conformance OnModifierKeysChangedModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<OnModifierKeysChangedModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<OnModifierKeysChangedModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<OnModifierKeysChangedModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<OnModifierKeysChangedModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<OnModifierKeysChangedModifier>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<OnModifierKeysChangedModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t type metadata completion function for HelpView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t View._onModifierKeysChanged(mask:initial:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = 0;
  v12 = 0;
  return MEMORY[0x18D00A570](&v7, a5, &type metadata for OnModifierKeysChangedModifier, a6);
}

uint64_t FocusState.init<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v6 = type metadata accessor for Optional();
  v12 = a3;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E7C78], v6, &v12);
  v9 = type metadata accessor for FocusState(0, v6, WitnessTable, v8);
  *(a2 + *(v9 + 36)) = 0;
  v10 = *(*(a1 - 8) + 56);
  v10(a2, 1, 1, a1);
  return (v10)(a2 + *(v9 + 40), 1, 1, a1);
}

_DWORD *storeEnumTagSinglePayload for HelpView(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v18[2] = 0;
      v18[3] = 0;
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[3] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t type metadata completion function for GridRow(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static GridRow._makeViewList(view:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *a1;
  type metadata accessor for GridRow(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v8[1] = v10;
  type metadata accessor for VerticalAlignment?(0, &lazy cache variable for type metadata for VerticalAlignment?, MEMORY[0x1E697F2F0], MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  return static RowTransformTrait.makeViewList<A>(content:alignment:inputs:)(&v9, v8, a2, a3, a4);
}

void type metadata accessor for VerticalAlignment?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static RowTransformTrait.makeViewList<A>(content:alignment:inputs:)(int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *a2;
  outlined init with copy of _ViewListInputs(a3, v15);
  v7 = _ViewListInputs.traits.getter();
  v8 = *MEMORY[0x1E698D3F8];
  if ((v7 & 0x100000000) == 0)
  {
    v8 = v7;
  }

  v13 = __PAIR64__(v6, v8);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RowTransformTrait and conformance RowTransformTrait();
  Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v13) = 0;
  _ViewListInputs.traits.setter();
  if (v16)
  {
    v13 = v16;
    v14 = v17 & 1;
    v16 = 0;
    v17 = 0;
    specialized Set._Variant.insert(_:)(&v12, &type metadata for GridMetadata);
    v9 = v13;
    v10 = v14;

    v16 = v9;
    v17 = v10;
  }

  LODWORD(v13) = v5;
  static View.makeDebuggableViewList(view:inputs:)();
  return outlined destroy of _ViewListInputs(v15);
}

unint64_t lazy protocol witness table accessor for type RowTransformTrait and conformance RowTransformTrait()
{
  result = lazy protocol witness table cache variable for type RowTransformTrait and conformance RowTransformTrait;
  if (!lazy protocol witness table cache variable for type RowTransformTrait and conformance RowTransformTrait)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RowTransformTrait, &unk_1EFFF7018, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RowTransformTrait and conformance RowTransformTrait);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x18D00F6C0](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  v6 = MEMORY[0x18D00F6C0](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
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
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  Hasher.init(_seed:)();
  dispatch thunk of AnyColorBox.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {

      v10 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v12, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    *a1 = a2;
    return 1;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  if (*(*v3 + 24) <= v5)
  {
    v7 = v5 + 1;
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7);
    }

    else
    {
      specialized _NativeSet.copyAndResize(capacity:)(v7);
    }

    v8 = *v3;
    v9 = MEMORY[0x18D00F6C0](*(*v3 + 40), result);
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (*(*(v8 + 48) + 8 * a2) != result)
      {
        a2 = (a2 + 1) & v11;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_14;
    }
  }

  else if ((a3 & 1) == 0)
  {
    v6 = a2;
    specialized _NativeSet.copy()();
    a2 = v6;
  }

LABEL_11:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_14:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  v9 = *(result + 40);
  MEMORY[0x18D00F6F0](v9);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      outlined init with copy of AccessibilityRelationshipScope.Key(*(v8 + 48) + 48 * a2, v20);
      if (MEMORY[0x18D00E7E0](v20, result))
      {
        v13 = v20[5];
        outlined destroy of AccessibilityRelationshipScope.Key(v20);
        if (v13 == v9)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        outlined destroy of AccessibilityRelationshipScope.Key(v20);
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = (*(v14 + 48) + 48 * a2);
  v16 = *(result + 16);
  *v15 = *result;
  v15[1] = v16;
  v15[2] = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v19;
  }
}

{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x18D00F6C0](*(*v3 + 40), result);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for UITextFormattingViewControllerComponentKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = result;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void type metadata accessor for _SetStorage<ObjectIdentifier>()
{
  if (!lazy cache variable for type metadata for _SetStorage<ObjectIdentifier>)
  {
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<ObjectIdentifier>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FocusStateBindingModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FocusStateBindingModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t GridRow.init(alignment:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  type metadata accessor for GridRow(0, a5, a6, a4);
  return a3();
}

uint64_t View.focused<A>(_:equals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a5;
  v27 = a7;
  v28 = a3;
  v25 = a1;
  v26 = a2;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FocusState.Binding(0, v12, v13, v12);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v19 = type metadata accessor for FocusStateBindingModifier(0, a4, a6, v18);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v25 - v22;
  (*(v15 + 16))(v17, v25, v14, v21);
  (*(v9 + 16))(v11, v26, a4);
  FocusStateBindingModifier.init(binding:value:)(v17, v11, a4, a6, v23);
  MEMORY[0x18D00A570](v23, v28, v19, v29);
  return (*(v20 + 8))(v23, v19);
}

uint64_t FocusStateBindingModifier.init(binding:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FocusState.Binding(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = type metadata accessor for FocusStateBindingModifier(0, a3, a4, v11);
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v12 + 36);

  return v13(v14, a2, a3);
}

uint64_t initializeWithCopy for GridRow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

id one-time initialization function for dynamicColorCache()
{
  result = [objc_opt_self() strongToWeakObjectsMapTable];
  dynamicColorCache = result;
  return result;
}

uint64_t RowTransformTrait.value.getter@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    ViewTraitCollection.init()();
  }

  else
  {
    v6 = *AGGraphGetValue();
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  RowTransformTrait.update(data:)(&v5, a1);
  result = ViewTraitCollection.subscript.setter();
  *a2 = v6;
  return result;
}

uint64_t RowTransformTrait.update(data:)(uint64_t *a1, unint64_t a2)
{
  v3 = AGMakeUniqueID();
  type metadata accessor for VerticalAlignment?(0, &lazy cache variable for type metadata for VerticalAlignment?, MEMORY[0x1E697F2F0], MEMORY[0x1E69E6720]);
  result = AGGraphGetValue();
  v5 = *result;
  v6 = v3;
  v7 = *(result + 8) | 0x20;
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = v9 + 1;
  v11 = 48;
  while (--v10)
  {
    v12 = *(v8 + v11);
    v11 += 24;
    if ((v12 & 0xE0) == 0x20)
    {
      return result;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, v8);
    v8 = result;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v14 + 1;
  v15 = v8 + 24 * v14;
  *(v15 + 32) = v6;
  *(v15 + 40) = v5;
  *(v15 + 48) = v7;
  *a1 = v8;
  return result;
}

double static FocusStateBindingModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a2[3];
  v10 = a2[1];
  v53 = a2[2];
  v54 = v9;
  v11 = a2[3];
  v55 = a2[4];
  v12 = a2[1];
  v51 = *a2;
  v52 = v12;
  v45 = v53;
  v46 = v11;
  v47 = a2[4];
  v13 = *a1;
  v56 = *(a2 + 20);
  v48 = *(a2 + 20);
  v43 = v51;
  v44 = v10;
  a3(&v41);
  v14 = v54;
  v15 = DWORD2(v54);
  *&v43 = v54;
  DWORD2(v43) = DWORD2(v54);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v37 = v15;
    v39 = a6;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v48 = v56;
    v43 = v51;
    v44 = v52;
    v40[0] = v41;
    *&v40[1] = v42;
    type metadata accessor for FocusStateBindingResponder(0);
    swift_allocObject();
    outlined init with copy of _ViewInputs(&v51, v49);

    v16 = FocusStateBindingResponder.init(inputs:outputs:)(&v43, v40);
    *&v43 = v16;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type FocusStateBindingResponderFilter and conformance FocusStateBindingResponderFilter();
    v36 = Attribute.init<A>(body:value:flags:update:)();
    *(v16 + 216) = v36;
    *(v16 + 220) = 0;
    LODWORD(v40[0]) = v13;
    v17 = a4;
    v38 = a5;
    type metadata accessor for FocusStateBindingModifier(255, a4, a5, v18);
    type metadata accessor for _GraphValue();
    v35 = _GraphValue.value.getter();
    lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey();

    PropertyList.subscript.getter();
    v34 = v43;
    v19 = one-time initialization token for focusBridge;

    if (v19 != -1)
    {
      swift_once();
    }

    *&v49[0] = static CachedEnvironment.ID.focusBridge;
    swift_beginAccess();
    type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for FocusBridge?, type metadata accessor for FocusBridge, MEMORY[0x1E69E6720]);
    v20 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();

    v21 = one-time initialization token for focusScopes;

    if (v21 != -1)
    {
      swift_once();
    }

    *&v49[0] = static CachedEnvironment.ID.focusScopes;
    swift_beginAccess();
    type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for [Namespace.ID], MEMORY[0x1E6981EA0], MEMORY[0x1E69E62F8]);
    v22 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();

    LODWORD(v43) = v35;
    *(&v43 + 1) = v16;
    *&v44 = __PAIR64__(v20, v34);
    DWORD2(v44) = v22;
    BYTE12(v44) = 0;
    MEMORY[0x1EEE9AC00](v23);
    v24 = v38;
    v32 = type metadata accessor for FocusStateBindingModifier.ListItemFilter(0, v17, v38, v25);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FocusStateBindingModifier<A>.ListItemFilter, v32);
    type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for Attribute<FocusStoreList>, &type metadata for FocusStoreList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v43, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_17, v31, v32, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);

    v28 = v49[0];
    v49[2] = v53;
    v49[3] = v54;
    v49[4] = v55;
    v50 = v56;
    v49[0] = v51;
    v49[1] = v52;
    outlined init with copy of _ViewInputs(&v51, &v43);
    UIKitHostedFocusItemLifecycle.init(inputs:responders:)(v49, v36, &v43);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of UIKitHostedFocusItemLifecycle(&v43);
    AGGraphSetFlags();
    LOBYTE(v43) = 0;
    v29 = PreferencesOutputs.subscript.setter();
    *&v43 = v14;
    DWORD2(v43) = v37;
    MEMORY[0x1EEE9AC00](v29);
    v31[0] = v17;
    v31[1] = v24;
    LODWORD(v32) = v28;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

    a6 = v39;
  }

  *a6 = v41;
  result = v42;
  a6[1] = v42;
  return result;
}

uint64_t type metadata accessor for FocusStateBindingResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for FocusStateBindingResponder;
  if (!type metadata singleton initialization cache for FocusStateBindingResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FocusStateBindingResponder.init(inputs:outputs:)(__int128 *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *(a1 + 15);
  *(v2 + 216) = 0;
  *(v2 + 220) = 1;
  *(v2 + 248) = 0;
  v5 = _ViewOutputs.viewResponders()();

  v3[56] = v5;
  v3[57] = v4;
  v3[58] = _ViewInputs.animatedPosition()();
  swift_beginAccess();
  v6 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v3[59] = v6;
  v3[60] = _GraphInputs.isEnabled.getter();
  return DefaultLayoutViewResponder.init(inputs:)();
}

unint64_t lazy protocol witness table accessor for type FocusStateBindingResponderFilter and conformance FocusStateBindingResponderFilter()
{
  result = lazy protocol witness table cache variable for type FocusStateBindingResponderFilter and conformance FocusStateBindingResponderFilter;
  if (!lazy protocol witness table cache variable for type FocusStateBindingResponderFilter and conformance FocusStateBindingResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusStateBindingResponderFilter, &unk_1EFFC0A00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusStateBindingResponderFilter and conformance FocusStateBindingResponderFilter);
  }

  return result;
}

uint64_t initializeWithCopy for FocusStateBindingModifier.ListItemFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);

  return a1;
}

id UIKitHostedFocusItemLifecycle.init(inputs:responders:)@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1[2];
  v6 = a1[4];
  v15 = a1[3];
  v16 = v6;
  v7 = a1[1];
  v12 = *a1;
  v17 = *(a1 + 20);
  v13 = v7;
  v14 = v5;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  *(a3 + 44) = 2;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a3 + 48) = result;
    *(a3 + 56) = 0;
    *(a3 + 60) = 1;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = MEMORY[0x1E69E7CC0];
    v9 = HIDWORD(v15);
    *a3 = DWORD2(v13);
    *(a3 + 4) = v9;
    *(a3 + 8) = _ViewInputs.animatedPosition()();
    v11 = v12;
    swift_beginAccess();
    v10 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    *(a3 + 12) = v10;
    lazy protocol witness table accessor for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput();
    PropertyList.subscript.getter();
    *(a3 + 16) = v11;
    lazy protocol witness table accessor for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey();
    PropertyList.subscript.getter();
    result = outlined destroy of _ViewInputs(&v12);
    *(a3 + 20) = v11;
    *(a3 + 24) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle()
{
  result = lazy protocol witness table cache variable for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle;
  if (!lazy protocol witness table cache variable for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitHostedFocusItemLifecycle, &type metadata for UIKitHostedFocusItemLifecycle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle);
  }

  return result;
}

uint64_t initializeWithCopy for UIKitHostedFocusItemLifecycle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectWeakCopyInit();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);
  v5 = v4;
  swift_unknownObjectRetain();

  return a1;
}

uint64_t destroy for UIKitHostedFocusItemLifecycle(uint64_t a1)
{
  MEMORY[0x18D011290](a1 + 32);

  swift_unknownObjectRelease();
}

uint64_t implicit closure #1 in static FocusStateBindingModifier._makeView(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v10 = type metadata accessor for FocusStateBindingModifier.ListTransform(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FocusStateBindingModifier<A>.ListTransform, v10);
  type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_19, v9, v10, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7;
}

unint64_t instantiation function for generic protocol witness table for HelpStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HelpStyleConfiguration.Content, &type metadata for HelpStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HelpStyleConfiguration.Content, &type metadata for HelpStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content);
  }

  return result;
}

uint64_t sub_18BED509C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v6[0] = &type metadata for HelpStyleConfiguration.Content;
  v6[1] = v1;
  v6[2] = lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content();
  v6[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v6);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = lazy protocol witness table accessor for type ResolvedHelpStyle and conformance ResolvedHelpStyle();
  v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

unint64_t lazy protocol witness table accessor for type ResolvedHelpStyle and conformance ResolvedHelpStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle;
  if (!lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedHelpStyle, &unk_1F0013FD0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle;
  if (!lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedHelpStyle, &unk_1F0013FD0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedHelpStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedHelpStyle and conformance ResolvedHelpStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<HelpView<HelpStyleConfiguration.Content>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

void type metadata accessor for HelpView<HelpStyleConfiguration.Content>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v5 = (a4)(0, &type metadata for HelpStyleConfiguration.Content, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, AccessibilityAttachmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for HelpView<HelpStyleConfiguration.Content>(255, &lazy cache variable for type metadata for HelpView<HelpStyleConfiguration.Content>, &protocol witness table for HelpStyleConfiguration.Content, type metadata accessor for HelpView);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, AccessibilityAttachmentModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HelpView<HelpStyleConfiguration.Content> and conformance HelpView<A>()
{
  result = lazy protocol witness table cache variable for type HelpView<HelpStyleConfiguration.Content> and conformance HelpView<A>;
  if (!lazy protocol witness table cache variable for type HelpView<HelpStyleConfiguration.Content> and conformance HelpView<A>)
  {
    type metadata accessor for HelpView<HelpStyleConfiguration.Content>(255, &lazy cache variable for type metadata for HelpView<HelpStyleConfiguration.Content>, &protocol witness table for HelpStyleConfiguration.Content, type metadata accessor for HelpView);
    result = swift_getWitnessTable(protocol conformance descriptor for HelpView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HelpView<HelpStyleConfiguration.Content> and conformance HelpView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HelpStyleModifier<DefaultHelpStyle> and conformance HelpStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type HelpStyleModifier<DefaultHelpStyle> and conformance HelpStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type HelpStyleModifier<DefaultHelpStyle> and conformance HelpStyleModifier<A>)
  {
    type metadata accessor for HelpStyleModifier<DefaultHelpStyle>(255, &lazy cache variable for type metadata for HelpStyleModifier<DefaultHelpStyle>, lazy protocol witness table accessor for type DefaultHelpStyle and conformance DefaultHelpStyle, &type metadata for DefaultHelpStyle);
    result = swift_getWitnessTable(protocol conformance descriptor for HelpStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HelpStyleModifier<DefaultHelpStyle> and conformance HelpStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for HelpStyleModifier<DefaultHelpStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for HelpStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultHelpStyle and conformance DefaultHelpStyle()
{
  result = lazy protocol witness table cache variable for type DefaultHelpStyle and conformance DefaultHelpStyle;
  if (!lazy protocol witness table cache variable for type DefaultHelpStyle and conformance DefaultHelpStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultHelpStyle, &type metadata for DefaultHelpStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultHelpStyle and conformance DefaultHelpStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance HelpStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for HelpStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_18BED5778(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

void type metadata accessor for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>)
  {
    type metadata accessor for HelpView<HelpStyleConfiguration.Content>(255, &lazy cache variable for type metadata for HelpView<HelpStyleConfiguration.Content>, &protocol witness table for HelpStyleConfiguration.Content, type metadata accessor for HelpView);
    type metadata accessor for HelpStyleModifier<DefaultHelpStyle>(255, &lazy cache variable for type metadata for HelpStyleModifier<TooltipHelpStyle>, lazy protocol witness table accessor for type TooltipHelpStyle and conformance TooltipHelpStyle, &unk_1F0014018);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>, HelpStyleModifier<EmptyHelpStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>, HelpStyleModifier<EmptyHelpStyle>>)
  {
    type metadata accessor for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>(255);
    type metadata accessor for HelpStyleModifier<DefaultHelpStyle>(255, &lazy cache variable for type metadata for HelpStyleModifier<EmptyHelpStyle>, lazy protocol witness table accessor for type EmptyHelpStyle and conformance EmptyHelpStyle, &unk_1F0013FF8);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>, HelpStyleModifier<EmptyHelpStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TooltipHelpStyle and conformance TooltipHelpStyle()
{
  result = lazy protocol witness table cache variable for type TooltipHelpStyle and conformance TooltipHelpStyle;
  if (!lazy protocol witness table cache variable for type TooltipHelpStyle and conformance TooltipHelpStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TooltipHelpStyle, &unk_1F0014018, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TooltipHelpStyle and conformance TooltipHelpStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyHelpStyle and conformance EmptyHelpStyle()
{
  result = lazy protocol witness table cache variable for type EmptyHelpStyle and conformance EmptyHelpStyle;
  if (!lazy protocol witness table cache variable for type EmptyHelpStyle and conformance EmptyHelpStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmptyHelpStyle, &unk_1F0013FF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyHelpStyle and conformance EmptyHelpStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HelpStyleConfiguration.Content, TooltipModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HelpStyleConfiguration.Content, TooltipModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HelpStyleConfiguration.Content, TooltipModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for HelpView<HelpStyleConfiguration.Content>(255, &lazy cache variable for type metadata for ModifiedContent<HelpStyleConfiguration.Content, TooltipModifier>, &type metadata for TooltipModifier, MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for HelpStyleConfiguration.Content;
    v4[1] = &protocol witness table for TooltipModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HelpStyleConfiguration.Content, TooltipModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance HelpStyleConfiguration.Content(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<HelpStyleConfiguration.Content>, lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content, &type metadata for HelpStyleConfiguration.Content, &lazy protocol witness table cache variable for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

double static TooltipModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, void *a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v36 = a2[2];
  v37 = v5;
  v7 = a2[3];
  v38 = a2[4];
  v8 = a2[1];
  v34 = *a2;
  v35 = v8;
  v30 = v36;
  v31 = v7;
  v32 = a2[4];
  v9 = *a1;
  v39 = *(a2 + 20);
  v33 = *(a2 + 20);
  v28 = v34;
  v29 = v6;
  a3(&v22);
  v10 = v35;
  swift_beginAccess();
  *&v28 = __PAIR64__(*(v10 + 16), v9);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TooltipModifier.ResolveText and conformance TooltipModifier.ResolveText();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  v12 = PropertyList.subscript.getter();
  if ((v28 & 4) != 0)
  {
    MEMORY[0x1EEE9AC00](v12);
    v23 = v37;
    v24 = DWORD2(v37);
    *&v28 = v37;
    DWORD2(v28) = DWORD2(v37);
    MEMORY[0x1EEE9AC00](v13);
    outlined init with copy of PreferencesInputs(&v23, v27);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v25 = v37;
  v26 = DWORD2(v37);
  *&v28 = v37;
  DWORD2(v28) = DWORD2(v37);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    type metadata accessor for _SemanticFeature<Semantics_v5>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    if (static SemanticFeature.isEnabled.getter())
    {
      *&v28 = v25;
      DWORD2(v28) = v26;
      v14 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
      if (v14)
      {
        *&v28 = v25;
        DWORD2(v28) = v26;
        MEMORY[0x1EEE9AC00](v14);
        outlined init with copy of PreferencesInputs(&v25, v27);
        PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

        type metadata accessor for TooltipResponder(0);
        v15 = swift_allocObject();
        v15[28] = 0;
        v15[29] = 0;
        v15[27] = 0;
        outlined init with copy of _ViewInputs(&v34, &v28);
        static CGSize.invalidValue.getter();
        v15[30] = v16;
        v15[31] = v17;
        ViewTransform.init()();
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v28 = v34;
        v29 = v35;
        v18 = DefaultLayoutViewResponder.init(inputs:)();
        v28 = v22;

        v19 = _ViewOutputs.viewResponders()();

        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v28 = v34;
        v29 = v35;
        v20 = _ViewInputs.animatedPosition()();
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v28 = v34;
        v29 = v35;
        swift_beginAccess();
        LODWORD(v15) = CachedEnvironment.animatedSize(for:)();
        swift_endAccess();
        *&v28 = v18;
        *(&v28 + 1) = __PAIR64__(v11, v19);
        *&v29 = __PAIR64__(v15, v20);
        DWORD2(v29) = HIDWORD(v37);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        type metadata accessor for [ViewResponder](0);
        lazy protocol witness table accessor for type TooltipModifier.TooltipResponderUpdater and conformance TooltipModifier.TooltipResponderUpdater();
        Attribute.init<A>(body:value:flags:update:)();

        LOBYTE(v28) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }
  }

  *a4 = v22;
  result = *(&v22 + 1);
  a4[1] = *(&v22 + 1);
  return result;
}

unint64_t lazy protocol witness table accessor for type TooltipModifier.ResolveText and conformance TooltipModifier.ResolveText()
{
  result = lazy protocol witness table cache variable for type TooltipModifier.ResolveText and conformance TooltipModifier.ResolveText;
  if (!lazy protocol witness table cache variable for type TooltipModifier.ResolveText and conformance TooltipModifier.ResolveText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TooltipModifier.ResolveText, &unk_1EFFB5850, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TooltipModifier.ResolveText and conformance TooltipModifier.ResolveText);
  }

  return result;
}

uint64_t type metadata accessor for TooltipResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for TooltipResponder;
  if (!type metadata singleton initialization cache for TooltipResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TooltipModifier.TooltipResponderUpdater and conformance TooltipModifier.TooltipResponderUpdater()
{
  result = lazy protocol witness table cache variable for type TooltipModifier.TooltipResponderUpdater and conformance TooltipModifier.TooltipResponderUpdater;
  if (!lazy protocol witness table cache variable for type TooltipModifier.TooltipResponderUpdater and conformance TooltipModifier.TooltipResponderUpdater)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TooltipModifier.TooltipResponderUpdater, &unk_1EFFB57C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TooltipModifier.TooltipResponderUpdater and conformance TooltipModifier.TooltipResponderUpdater);
  }

  return result;
}

uint64_t initializeWithCopy for TooltipModifier.TooltipResponderUpdater(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 6);

  return a1;
}

uint64_t ModifiedContent<>.accessibilityHint(_:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  ModifiedContent<>.accessibilityHint(_:)(v8, v9, v11 & 1, v13, a5, a6);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t ModifiedContent<>.accessibilityValue(_:isEnabled:)@<X0>(char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13 & 1;
  ModifiedContent<>.update(isEnabled:body:)(a5, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:), a6, a7);
  outlined consume of Text.Storage(v10, v12, v14);
}

uint64_t static Material._experimentalGlass.getter()
{
  v0 = type metadata accessor for GlassMaterialProvider.Size();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GlassMaterialProvider.Options?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GlassMaterialProvider.Variant();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GlassMaterialProvider();
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v8 + 104))(v10, *MEMORY[0x1E6999DE0], v7, v12);
  v13 = type metadata accessor for GlassMaterialProvider.Options();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  (*(v1 + 104))(v3, *MEMORY[0x1E6999D40], v0);
  GlassMaterialProvider.init(_:options:size:)();
  lazy protocol witness table accessor for type GlassMaterialProvider and conformance GlassMaterialProvider(v14);
  return Material.init<A>(provider:)();
}

void type metadata accessor for GlassMaterialProvider.Options?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GlassMaterialProvider.Options?)
  {
    type metadata accessor for GlassMaterialProvider.Options();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GlassMaterialProvider.Options?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassMaterialProvider and conformance GlassMaterialProvider(double a1)
{
  result = lazy protocol witness table cache variable for type GlassMaterialProvider and conformance GlassMaterialProvider;
  if (!lazy protocol witness table cache variable for type GlassMaterialProvider and conformance GlassMaterialProvider)
  {
    v4 = type metadata accessor for GlassMaterialProvider();
    result = swift_getWitnessTable(MEMORY[0x1E6999DD8], v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type GlassMaterialProvider and conformance GlassMaterialProvider);
  }

  return result;
}

uint64_t View.help(_:)@<X0>(uint64_t x4_0@<X4>, uint64_t x5_0@<X5>, uint64_t x8_0@<X8>)
{

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  View.help(_:)(v10, v11, v13 & 1, v15, x4_0, x5_0, x8_0);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

double View.help(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v16 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D009CE0](&v22, v17);
  Text.assertUnstyled(_:options:)();
  (*(v16 + 16))(v19, v8, a5);
  HelpView.init(content:text:)(v19, a1, a2, a3 & 1, a4, a5, a6, a7);
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  return result;
}

uint64_t HelpView.init(content:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  result = type metadata accessor for HelpView(0, a6, a7, v15);
  v17 = a8 + *(result + 36);
  *v17 = a2;
  *(v17 + 8) = a3;
  *(v17 + 16) = a4 & 1;
  *(v17 + 24) = a5;
  return result;
}

uint64_t initializeWithCopy for HelpView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Text.Storage(*v8, v10, v11);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = *(v8 + 24);

  return a1;
}

uint64_t destroy for HelpView(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
}

uint64_t HelpView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content();
  v6 = *(a1 + 24);
  v27 = &type metadata for HelpStyleConfiguration.Content;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  type metadata accessor for StaticSourceWriter(255, &v27);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = v2 + *(a1 + 36);
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  v17 = *(v14 + 24);
  v27 = *v14;
  v28 = v15;
  LOBYTE(v29) = v16;
  v30 = v17;
  v23 = v4;
  v24 = v6;
  v25 = v2;
  outlined copy of Text.Storage(v27, v15, v16);
  v18 = lazy protocol witness table accessor for type ResolvedHelpStyle and conformance ResolvedHelpStyle();

  View.viewAlias<A, B>(_:_:)(&type metadata for HelpStyleConfiguration.Content, partial apply for closure #1 in HelpView.body.getter, v22, &unk_1F0013FD0, &type metadata for HelpStyleConfiguration.Content, v4, v18);
  outlined consume of Text.Storage(v27, v28, v29);

  v26[0] = v18;
  v26[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v26);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v8 + 8);
  v19(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v13, v7);
}

uint64_t closure #1 in HelpView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

double destroy for ToggleStyleConfiguration(uint64_t a1)
{

  v3 = *(a1 + 72);
  if (v3)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  return result;
}

uint64_t initializeWithCopy for TooltipModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t destroy for TooltipModifier(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
}

void NavigationColumnState.hasDismissableColumnContent.getter(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (!v2 || (v3 = *(v1 + 88), v12 = *(v1 + 40), v13 = v2, v4 = *(v1 + 72), v14 = *(v1 + 56), v15 = v4, v16 = v3, NavigationListState.hasNonEmptySelection.getter(), (v5 & 1) == 0))
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v1 + 120, &v12);
    if (v19)
    {
      outlined init with copy of NavigationColumnState.ColumnContent(&v12, v11);
    }

    else
    {
      outlined init with copy of NavigationColumnState.ColumnContent(&v12, v11);
    }

    if (v11[88] != 255)
    {
      outlined destroy of NavigationRequest.Action?(v11, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationColumnState.ColumnContent(&v12);
      return;
    }

    outlined destroy of NavigationColumnState.ColumnContent(&v12);
    v6 = outlined init with copy of NavigationColumnState.ColumnContent(v1 + 120, &v12);
    if (v19)
    {
      goto LABEL_11;
    }

    v7 = v18;
    v8 = (*(*v17 + 88))(v6);

    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      v10 = *(v7 + 16);

      if (!__OFADD__(v9, v10))
      {
LABEL_11:
        outlined destroy of NavigationRequest.Action?(&v12, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t assignWithCopy for _NavigationSplitReader.ForestRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 56) = *(a2 + 56);

  swift_weakCopyAssign();
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v4 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v4;
  *(a1 + 104) = *(a2 + 104);

  v5 = *(a2 + 136);
  if (!*(a1 + 136))
  {
    if (v5)
    {
      *(a1 + 136) = v5;
      *(a1 + 144) = *(a2 + 144);
      (**(v5 - 8))(a1 + 112, a2 + 112);
      return a1;
    }

LABEL_7:
    v7 = *(a2 + 112);
    v8 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 112) = v7;
    *(a1 + 128) = v8;
    return a1;
  }

  v6 = (a1 + 112);
  if (!v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v6, (a2 + 112));
  return a1;
}

uint64_t assignWithCopy for NavigationSplitCore(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  __swift_assign_boxed_opaque_existential_1((a1 + 64), (a2 + 64));
  v7 = *(a2 + 104);
  v8 = *(a1 + 104);
  *(a1 + 104) = v7;
  v9 = v7;

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  __swift_assign_boxed_opaque_existential_1((a1 + 128), (a2 + 128));
  v10 = *(a2 + 168);
  v11 = *(a1 + 168);
  *(a1 + 168) = v10;
  v12 = v10;

  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 250) = *(a2 + 250);
  swift_weakCopyAssign();
  *(a1 + 264) = *(a2 + 264);

  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 288) = *(a2 + 288);

  v13 = (a1 + 296);
  v14 = (a2 + 296);
  v15 = *(a2 + 320);
  if (*(a1 + 320))
  {
    if (v15)
    {
      __swift_assign_boxed_opaque_existential_1(v13, (a2 + 296));
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
      v16 = *v14;
      v17 = *(a2 + 312);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 296) = v16;
      *(a1 + 312) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + 320) = v15;
    *(a1 + 328) = *(a2 + 328);
    (**(v15 - 8))(v13, a2 + 296);
  }

  else
  {
    v18 = *v14;
    v19 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *v13 = v18;
    *(a1 + 312) = v19;
  }

  return a1;
}

uint64_t assignWithCopy for NavigationSplitRepresentable(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  __swift_assign_boxed_opaque_existential_1((a1 + 64), (a2 + 64));
  v7 = *(a2 + 104);
  v8 = *(a1 + 104);
  *(a1 + 104) = v7;
  v9 = v7;

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  __swift_assign_boxed_opaque_existential_1((a1 + 128), (a2 + 128));
  v10 = *(a2 + 168);
  v11 = *(a1 + 168);
  *(a1 + 168) = v10;
  v12 = v10;

  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 250) = *(a2 + 250);
  swift_weakCopyAssign();
  *(a1 + 264) = *(a2 + 264);

  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 288) = *(a2 + 288);

  v13 = (a1 + 296);
  v14 = (a2 + 296);
  v15 = *(a2 + 320);
  if (*(a1 + 320))
  {
    if (v15)
    {
      __swift_assign_boxed_opaque_existential_1(v13, (a2 + 296));
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
      v16 = *v14;
      v17 = *(a2 + 312);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 296) = v16;
      *(a1 + 312) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + 320) = v15;
    *(a1 + 328) = *(a2 + 328);
    (**(v15 - 8))(v13, a2 + 296);
  }

  else
  {
    v18 = *v14;
    v19 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *v13 = v18;
    *(a1 + 312) = v19;
  }

  v20 = *(a2 + 336);
  v21 = *(a2 + 344);
  outlined copy of Environment<Bool>.Content();
  v22 = *(a1 + 336);
  v23 = *(a1 + 344);
  *(a1 + 336) = v20;
  *(a1 + 344) = v21;
  outlined consume of Environment<Bool>.Content(v22, v23);
  v24 = *(a2 + 352);
  v25 = *(a2 + 360);
  outlined copy of Environment<Bool>.Content();
  v26 = *(a1 + 352);
  v27 = *(a1 + 360);
  *(a1 + 352) = v24;
  *(a1 + 360) = v25;
  outlined consume of Environment<Bool>.Content(v26, v27);
  v28 = *(a2 + 368);
  v29 = *(a2 + 376);
  v30 = *(a2 + 384);
  v31 = *(a2 + 392);
  v32 = *(a2 + 400);
  outlined copy of Environment<NavigationEventHandlers>.Content(v28, v29, v30, v31, v32);
  v33 = *(a1 + 368);
  v34 = *(a1 + 376);
  v35 = *(a1 + 384);
  v36 = *(a1 + 392);
  v37 = *(a1 + 400);
  *(a1 + 368) = v28;
  *(a1 + 376) = v29;
  *(a1 + 384) = v30;
  *(a1 + 392) = v31;
  *(a1 + 400) = v32;
  outlined consume of Environment<NavigationEventHandlers>.Content(v33, v34, v35, v36, v37);
  return a1;
}

double ContainerBackgroundRendererModifier.ChildEnvironment.value.getter@<D0>(_OWORD *a2@<X8>, uint64_t x1_0@<X1>)
{
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  *&v20 = v7;
  *(&v20 + 1) = v6;

  ContainerBackgroundRendererModifier.ChildEnvironment.background.getter(x1_0, &v15);
  if (v18 == 1)
  {
    goto LABEL_8;
  }

  outlined consume of ContainerBackgroundValue?(v15, v16, v17, v18, v19);
  ContainerBackgroundRendererModifier.ChildEnvironment.background.getter(x1_0, &v15);
  if (v18 == 1)
  {
    goto LABEL_8;
  }

  if (!(v16 >> 62))
  {
    outlined consume of ContainerBackgroundValue?(v15, v16, v17, v18, v19);
    v13 = 1;
    goto LABEL_9;
  }

  if (v16 >> 62 != 1)
  {
    outlined consume of ContainerBackgroundValue?(v15, v16, v17, v18, v19);
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v8 = v15;
  v9 = v16;
  v10 = v18;
  v11 = v19;
  v12 = v17;
  outlined copy of ContainerBackgroundValue.Content(v15, v16);
  outlined consume of ContainerBackgroundValue?(v8, v9, v12, v10, v11);

  v13 = 1;
LABEL_9:
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>(0, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, Bool>, MEMORY[0x1E697F230], MEMORY[0x1E69E6370], MEMORY[0x1E69E6CE0]);
  AGGraphGetValue();
  LOBYTE(v15) = v13;

  swift_setAtWritableKeyPath();

  result = *&v20;
  *a2 = v20;
  return result;
}

void ContainerBackgroundRendererModifier.ChildEnvironment.background.getter(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    a2[2] = 0;
    v6 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v3 = *Value;
    v4 = *(Value + 8);
    v6 = *(Value + 24);
    v5 = *(Value + 32);
    *(a2 + 16) = *(Value + 16);
    outlined copy of ContainerBackgroundValue.Content(v3, v4);
  }

  *a2 = v3;
  a2[1] = v4;
  a2[3] = v6;
  a2[4] = v5;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey>, &type metadata for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, &protocol witness table for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t initializeWithTake for NavigationSplitRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  v10 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 211) = *(a2 + 211);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  swift_weakTakeInit();
  *(a1 + 264) = *(a2 + 264);
  v11 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v11;
  v12 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v12;
  v13 = *(a2 + 336);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = v13;
  *(a1 + 344) = *(a2 + 344);
  v14 = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 352) = v14;
  *(a1 + 400) = *(a2 + 400);
  v15 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v15;
  return a1;
}

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance NavigationSplitRepresentable@<X0>(uint64_t *a1@<X8>)
{
  result = NavigationSplitRepresentable.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t NavigationSplitRepresentable.makeCoordinator()()
{
  outlined init with copy of _VariadicView_Children(v0, v24);
  outlined init with copy of _VariadicView_Children(v0 + 64, v23);
  outlined init with copy of _VariadicView_Children(v0 + 128, v22);
  v1 = *(v0 + 192);
  v20 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v18 = *(v0 + 226);
  v19 = *(v0 + 225);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v17 = *(v0 + 248);
  outlined init with copy of NavigationAuthority(v0 + 256, v21);
  type metadata accessor for NavigationSplitCoordinator();
  v7 = swift_allocObject();
  *(v7 + 208) = 0;
  type metadata accessor for NavigationSplitSidebarStateMachine();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 512;
  swift_unknownObjectWeakInit();
  *(v8 + 40) = 2;
  *(v7 + 248) = v8;
  *(v7 + 280) = 1;
  *(v7 + 288) = 0;
  *(v7 + 296) = 0;
  *(v7 + 304) = 0;
  *(v7 + 336) = 0u;
  *(v7 + 352) = 0u;
  *(v7 + 368) = 0;
  *(v7 + 376) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo27UISplitViewControllerColumnV_7SwiftUI26NavigationStackCoordinatorCyAE05SplitfI8StrategyVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v7 + 384) = 0;
  *(v7 + 392) = 0;
  *(v7 + 396) = -1;
  v9 = v24[1];
  v10 = v24[2];
  v11 = v23[3];
  *(v7 + 16) = v24[0];
  *(v7 + 32) = v9;
  v12 = v24[3];
  *(v7 + 48) = v10;
  *(v7 + 64) = v12;
  *(v7 + 112) = v23[2];
  *(v7 + 128) = v11;
  v13 = v23[1];
  *(v7 + 80) = v23[0];
  *(v7 + 96) = v13;
  v14 = v22[3];
  *(v7 + 176) = v22[2];
  *(v7 + 192) = v14;
  v15 = v22[1];
  *(v7 + 144) = v22[0];
  *(v7 + 160) = v15;
  *(v7 + 208) = v1;
  *(v7 + 216) = v20;
  *(v7 + 224) = v2;
  *(v7 + 232) = v3;
  *(v7 + 240) = v4;
  *(v7 + 241) = v19;
  *(v7 + 242) = v18;
  *(v7 + 256) = v6;
  *(v7 + 264) = v5;
  *(v7 + 272) = v17;
  outlined init with take of NavigationAuthority(v21, v7 + 312);
  swift_beginAccess();

  outlined assign with copy of UINavigationPresentationAdaptor?(v0 + 296, v7 + 336);
  swift_endAccess();
  return v7;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo27UISplitViewControllerColumnV_7SwiftUI26NavigationStackCoordinatorCyAE05SplitfI8StrategyVGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<UISplitViewControllerColumn, NavigationStackCoordinator<SplitColumnNavigationStrategy>>(0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
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
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined assign with copy of UINavigationPresentationAdaptor?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UINavigationPresentationAdaptor?(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id specialized NavigationSplitCoordinator.makeSplitViewController(environment:seeds:splitViewControllerProxyStorage:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1[1];
  v42 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v5 = v67;
  v6 = v68;
  v7 = v69;
  v8 = v70;
  v9 = *(v3 + 280);
  v10 = *(v3 + 288);
  v11 = *(v3 + 296);
  v12 = *(v3 + 304);
  *(v3 + 280) = v67;
  *(v3 + 288) = v6;
  *(v3 + 296) = v7;
  *(v3 + 304) = v8;
  outlined copy of AppIntentExecutor?(v5, v6);
  outlined copy of AppIntentExecutor?(v7, v8);
  outlined consume of NavigationEventHandlers?(v9, v10, v11, v12);
  v13 = *(v3 + 256);
  v14 = *(v3 + 264);
  LOWORD(v9) = *(v3 + 272);
  LOWORD(v10) = *(v3 + 274);
  swift_beginAccess();
  v15 = *(v3 + 224);
  v56[0] = v13;
  v56[1] = v14;
  v57 = v9;
  v58 = v10;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = v5;
  v63 = v6;
  v64 = v7;
  v65 = v8;
  v66 = v15;
  *&v49 = v13;
  *(&v49 + 1) = v14;
  LOWORD(v50) = v9;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v17 = v16;

  MEMORY[0x18D00ACC0](&v43, v17);
  v18 = v43;
  if (v43 >> 14 > 1u)
  {
    v19 = a2;
    if (v43 >> 14 == 2)
    {
      outlined destroy of UISplitViewControllerVisibilityEngine(v56);
      v20 = 2;
    }

    else
    {
      outlined destroy of UISplitViewControllerVisibilityEngine(v56);
      if (v18 == 49152)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }
    }
  }

  else
  {
    v19 = a2;
    outlined destroy of UISplitViewControllerVisibilityEngine(v56);
    v20 = 1;
  }

  v21 = [objc_allocWithZone(type metadata accessor for UIKitSplitViewController()) initWithStyle_];
  if (v19)
  {
    swift_getKeyPath();
    *&v49 = v19;
    lazy protocol witness table accessor for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *&v49 = *(v19 + 16);

    specialized NavigationSplitCoordinator.applyOverrides(from:to:)(&v49, v21);
  }

  [v21 setPrimaryBackgroundStyle_];
  v22 = qword_18CE05380[*(v3 + 224)];
  v23 = v21;
  [v23 setPreferredSplitBehavior_];
  [v23 _setUsesExtraWidePrimaryColumn_];
  [v23 setDelegate_];
  v24 = *(v3 + 264);
  v25 = *(v3 + 272);
  v26 = *(v3 + 280);
  v27 = *(v3 + 288);
  v28 = *(v3 + 296);
  v29 = *(v3 + 304);
  *&v49 = *(v3 + 256);
  *(&v49 + 1) = v24;
  LODWORD(v50) = v25;
  v51 = 0;
  *&v52 = 0;
  BYTE8(v52) = 0;
  *&v53 = v26;
  *(&v53 + 1) = v27;
  *&v54 = v28;
  *(&v54 + 1) = v29;
  v55 = *(v3 + 224);
  v46 = v53;
  v47 = v54;
  v48 = v55;
  v43 = v49;
  v44 = v50;
  v45 = v52;

  outlined copy of NavigationEventHandlers?(v26, v27, v28, v29);
  v30 = UISplitViewControllerVisibilityEngine.initialDisplayMode.getter();
  outlined destroy of UISplitViewControllerVisibilityEngine(&v49);
  [v23 setPreferredDisplayMode_];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey);
  if (v4)
  {

    v31 = v42;
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v31 = v42;
    PropertyList.subscript.getter();
  }

  *(v23 + OBJC_IVAR____TtC7SwiftUI24UIKitSplitViewController_allowsSecureDrawing) = v43;
  *&v43 = v31;
  *(&v43 + 1) = v4;
  if (NavigationSplitCoordinator.presentsWithGesture(environment:)(&v43, v32) != 2)
  {
    v33 = *(v3 + 264);
    v34 = *(v3 + 272);
    v35 = *(v3 + 280);
    v36 = *(v3 + 288);
    v37 = *(v3 + 296);
    v38 = *(v3 + 304);
    v39 = *(v3 + 224);
    *&v43 = *(v3 + 256);
    *(&v43 + 1) = v33;
    LODWORD(v44) = v34;
    *(&v44 + 1) = 0;
    *&v45 = 0;
    BYTE8(v45) = 0;
    *&v46 = v35;
    *(&v46 + 1) = v36;
    *&v47 = v37;
    *(&v47 + 1) = v38;
    v48 = v39;

    outlined copy of NavigationEventHandlers?(v35, v36, v37, v38);
    outlined destroy of UISplitViewControllerVisibilityEngine(&v43);
    [v23 setPresentsWithGesture_];
  }

  *&v43 = v31;
  *(&v43 + 1) = v4;
  NavigationSplitCoordinator.makeNavigationControllers(splitController:environment:)(v23, &v43);

  return v23;
}

id protocol witness for UIViewControllerRepresentable.makeUIViewController(context:) in conformance NavigationSplitRepresentable(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v7[0] = v3;
  v7[1] = v2;
  v4 = *(v1 + 288);

  v5 = specialized NavigationSplitCoordinator.makeSplitViewController(environment:seeds:splitViewControllerProxyStorage:)(v7, v4);

  return v5;
}

uint64_t outlined consume of NavigationEventHandlers?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(result, a2);

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a3, a4);
  }

  return result;
}

uint64_t outlined copy of NavigationEventHandlers?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    outlined copy of AppIntentExecutor?(result, a2);

    return outlined copy of AppIntentExecutor?(a3, a4);
  }

  return result;
}

double destroy for UISplitViewControllerVisibilityEngine(void *a1)
{

  if (a1[4])
  {
  }

  v3 = a1[6];
  if (v3)
  {
    if (v3 == 1)
    {
      return result;
    }
  }

  if (a1[8])
  {
  }

  return result;
}

uint64_t UISplitViewControllerVisibilityEngine.initialDisplayMode.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = v0[6];
  v6 = *(v0 + 80);
  if (v5 >= 2)
  {
    v7 = v0[7];
    v8 = objc_opt_self();

    v9 = [v8 mainScreen];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v30.origin.x = v11;
    v30.origin.y = v13;
    v30.size.width = v15;
    v30.size.height = v17;
    Width = CGRectGetWidth(v30);
    v31.origin.x = v11;
    v31.origin.y = v13;
    v31.size.width = v15;
    v31.size.height = v17;
    if (CGRectGetHeight(v31) >= Width)
    {
      v19 = 1194.0;
    }

    else
    {
      v19 = 1024.0;
    }

    v32.origin.x = v11;
    v32.origin.y = v13;
    v32.size.width = v15;
    v32.size.height = v17;
    LOBYTE(v26) = CGRectGetWidth(v32) >= v19;
    HIBYTE(v26) = 1;
    v5(&v27, &v26);
    v20 = v27;
    if ((v27 & 0xFF00) != 0x200)
    {
      v27 = v2;
      v28 = v1;
      v29 = v3;
      type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
      MEMORY[0x18D00ACC0](&v26);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5, v7);
      v23 = v26 >> 14;
      if (v23 < 2 || v23 != 2 && v26 == 49152)
      {
        v24 = 0x4000;
      }

      else
      {
        v24 = 0x8000;
      }

      LOWORD(v27) = v20 & 0x1FF | v24;
      return AnyNavigationSplitVisibility.Kind.displayMode(proposed:behavior:)(0, 1, v6);
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5, v7);
  }

  if ((v4 & 0xFF00) == 0x200)
  {
    v27 = v2;
    v28 = v1;
    v29 = v3;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
    MEMORY[0x18D00ACC0](&v26);
    return AnyNavigationSplitVisibility.Kind.displayMode(proposed:behavior:)(0, 1, v6);
  }

  v27 = v2;
  v28 = v1;
  v29 = v3;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility);
  MEMORY[0x18D00ACC0](&v26);
  v21 = v26 >> 14;
  if (v21 < 2 || v21 != 2 && v26 == 49152)
  {
    v22 = 2;
  }

  else
  {
    v22 = 4;
  }

  if (v4 == 1)
  {
    v22 = 2;
  }

  if (v4)
  {
    return v22;
  }

  else
  {
    return 1;
  }
}

uint64_t AnyNavigationSplitVisibility.Kind.displayMode(proposed:behavior:)(uint64_t result, char a2, unsigned __int8 a3)
{
  v4 = *v3 >> 14;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (!a3)
      {
        if (a2)
        {
          return 0;
        }

        if ((result - 2) < 5)
        {
          return qword_18CD720D8[result - 2];
        }

        return 1;
      }

      if (a3 == 1)
      {
        if (a2)
        {
          return 0;
        }

        if ((result - 2) < 5)
        {
          return qword_18CD72100[result - 2];
        }

        return 1;
      }

      if (a2)
      {
        return 0;
      }

      return result;
    }

    if (!*v3)
    {
      return 1;
    }

    if (*v3 != 1)
    {
      if (!a3)
      {
        return 4;
      }

      if (a3 == 1)
      {
        return 5;
      }

      if ((a2 & 1) != 0 || (result - 3) >= 4)
      {
        return 4;
      }

      else
      {
        return qword_18CD720B8[result - 3];
      }
    }

    v5 = a3;
    if (a3)
    {
LABEL_11:
      v6 = 2;
      v7 = 2;
      if (((result - 3) & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        v7 = 3;
      }

      if ((a2 & 1) == 0)
      {
        v6 = v7;
      }

      if (v5 == 1)
      {
        return 3;
      }

      else
      {
        return v6;
      }
    }

    return 2;
  }

  if (v4)
  {
    if (!*v3)
    {
      return 1;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        return 3;
      }

      v9 = 2;
      if (((result - 3) & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        v9 = 3;
      }

      if (a2)
      {
        return 2;
      }

      else
      {
        return v9;
      }
    }

    return 2;
  }

  if (*v3)
  {
    if (*v3 == 1)
    {
      v5 = a3;
      if (!a3)
      {
        return 2;
      }

      goto LABEL_11;
    }

    return 1;
  }

  if (a3)
  {
    v8 = 3;
    if (!(a2 & 1 | ((result - 2) < 5)))
    {
      v8 = 1;
    }

    if (a3 == 1)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else if (a2 & 1 | ((result - 2) < 5))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}