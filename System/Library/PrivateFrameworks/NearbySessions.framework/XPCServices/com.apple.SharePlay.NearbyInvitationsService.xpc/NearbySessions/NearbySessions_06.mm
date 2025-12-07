void IDSService.account(for:)(void *a1, uint64_t a2)
{
  v5 = [v2 accounts];
  if (!v5)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
  lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v9 = v71;
    v10 = v72;
    v11 = v73;
    v12 = v74;
    v13 = v75;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v15 = ~v14;
    v16 = -v14;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v8 + 56);

    v11 = v15;
    v13 = v18;
    v12 = 0;
  }

  v65 = 0;
  v53 = v11;
  v19 = (v11 + 64) >> 6;
  v60 = a2;
  v61 = v9;
  v56 = v19;
  v57 = v7;
  v58 = v10;
  v59 = a1;
  v62 = v12;
  if (v9 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v20 = v12;
  v21 = v13;
  v22 = v12;
  if (!v13)
  {
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_44;
      }

      v21 = *(v10 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_13;
      }
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_13:
  v63 = (v21 - 1) & v21;
  v64 = v22;
  v23 = *(*(v9 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
  if (v23)
  {
    while (1)
    {
      v66 = v23;
      v25 = [v23 pseudonyms];
      if (!v25)
      {
        break;
      }

      v26 = v25;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSPseudonym, IDSPseudonym_ptr);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v27 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v55 = v13;
      if (v28)
      {
        v29 = 0;
        v67 = v27 & 0xC000000000000001;
        v30 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v67)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v31 = *(v27 + 8 * v29 + 32);
          }

          v32 = v31;
          v33 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          v34 = [v31 URI];
          v35 = [v34 prefixedURI];

          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
          }

          v40 = *(v30 + 2);
          v39 = *(v30 + 3);
          if (v40 >= v39 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v30);
          }

          *(v30 + 2) = v40 + 1;
          v41 = &v30[16 * v40];
          *(v41 + 4) = v36;
          *(v41 + 5) = v38;
          ++v29;
          if (v33 == v28)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v30 = _swiftEmptyArrayStorage;
LABEL_34:

      v44 = v59;
      v43 = v60;
      v69 = v59;
      v70 = v60;
      __chkstk_darwin(v42);
      v52 = &v69;
      v45 = v65;
      v46 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v51, v30);

      if (v46)
      {
        goto LABEL_41;
      }

      v47 = [v66 aliasStrings];
      if (!v47)
      {
        goto LABEL_49;
      }

      v48 = v47;
      v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = v44;
      v70 = v43;
      __chkstk_darwin(v50);
      v52 = &v69;
      LOBYTE(v48) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v51, v49);
      v65 = v45;

      if (v48)
      {
LABEL_41:
        v9 = v61;
        goto LABEL_44;
      }

      v13 = v63;
      v12 = v64;
      v10 = v58;
      v9 = v61;
      v19 = v56;
      v62 = v64;
      if ((v61 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_15:
      v24 = __CocoaSet.Iterator.next()();
      if (!v24)
      {
        v9 = v61;
        goto LABEL_44;
      }

      v68 = v24;
      swift_dynamicCast();
      v23 = v69;
      v63 = v13;
      v64 = v62;
      if (!v69)
      {
        goto LABEL_42;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_42:
  v9 = v61;
LABEL_44:
  outlined consume of Set<IDSAccount>.Iterator._Variant(v9);
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E11GroupMemberC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMd, &_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NearbyGroupMember();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *specialized _NativeSet.subtracting<A>(_:)(unint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v53[0] = a1;
    v44 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v35 = a1;
      v3 = _CocoaArrayWrapper.endIndex.getter();
      a1 = v35;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = a1;

    if (v3)
    {
      v4 = 0;
      v50 = v49 & 0xC000000000000001;
      v48 = v49 & 0xFFFFFFFFFFFFFF8;
      v46 = v49 + 32;
      v52 = v2 + 7;
      while (1)
      {
        if (v50)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v46 + 8 * v4);
        }

        v51 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = NSObject._rawHashValue(seed:)(v2[5]);
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      type metadata accessor for NearbyGroupMember();
      while (1)
      {
        v12 = *(v2[6] + 8 * v8);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v53[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v42 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v43 = &v41;
        __chkstk_darwin(v14);
        v19 = &v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v52, v18);
        v20 = v2[2];
        v21 = *&v19[8 * v9] & ~v10;
        v47 = v19;
        *&v19[8 * v9] = v21;
        v45 = v20 - 1;
        if (v44)
        {
          a1 = _CocoaArrayWrapper.endIndex.getter();
          v51 = a1;
        }

        else
        {
          v51 = *(v48 + 16);
        }

        while (1)
        {
          if (v4 == v51)
          {
            v2 = specialized _NativeSet.extractSubset(using:count:)(v47, v42, v45, v2);
            goto LABEL_40;
          }

          if (v50)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v48 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v46 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = NSObject._rawHashValue(seed:)(v2[5]);
          v24 = v2;
          v25 = -1 << *(v2 + 32);
          v26 = v23 & ~v25;
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (((1 << v26) & v52[v26 >> 6]) != 0)
          {
            v29 = ~v25;
            while (1)
            {
              v30 = *(v24[6] + 8 * v26);
              v31 = static NSObject.== infix(_:_:)();

              if (v31)
              {
                break;
              }

              v26 = (v26 + 1) & v29;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v52[v26 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v32 = v47[v27];
            v47[v27] = v32 & ~v28;
            v2 = v24;
            if ((v32 & v28) != 0)
            {
              v33 = v45 - 1;
              if (__OFSUB__(v45, 1))
              {
                __break(1u);
              }

              --v45;
              if (!v33)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v24;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v36 = 8 * v17;

      v37 = v2;
      v38 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v37;
        goto LABEL_19;
      }

      v39 = swift_slowAlloc();
      memcpy(v39, v52, v38);
      specialized closure #1 in _NativeSet.subtracting<A>(_:)(v39, v42, v37, v8, v53);
      v2 = v40;
    }

LABEL_40:
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          specialized _NativeSet.extractSubset(using:count:)(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      type metadata accessor for NearbyGroupMember();
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = static NSObject.== infix(_:_:)();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = static NSObject.== infix(_:_:)();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMd, &_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *specialized NearbyGroupHostIDSService.init(idsService:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v64 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v59 = v48 - v8;
  v58 = type metadata accessor for Publishers.PrefetchStrategy();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR);
  v11 = *(v10 - 8);
  v62 = v10;
  v63 = v11;
  __chkstk_darwin(v10);
  v57 = v48 - v12;
  v51 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v48[1] = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v68[3] = a3;
  v68[4] = a4;
  v52 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v18 = *(*(a3 - 8) + 32);
  v53 = a3;
  v54 = boxed_opaque_existential_1;
  v18();
  v19 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService__incomingMessages;
  v48[0] = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService__incomingMessages;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  swift_allocObject();
  *&a2[v19] = PassthroughSubject.init()();
  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v66 = 0xD00000000000001ALL;
  v67 = 0x80000001000CEEC0;
  v20 = (*(*(a4 + 8) + 8))(a3);
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0x4E574F4E4B4E55;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v24._countAndFlagsBits = v22;
  v24._object = v23;
  String.append(_:)(v24);

  static DispatchQoS.unspecified.getter();
  v66 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v50 + 104))(v49, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v51);
  v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = v64;
  *&v64[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue] = v25;
  outlined init with copy of PseudonymProtocol(v68, &v26[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service]);
  v66 = *&v26[v48[0]];
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v51 = Publisher.eraseToAnyPublisher()();
  v66 = v51;
  v27 = v55;
  v28 = v56;
  v29 = v58;
  (*(v56 + 104))(v55, enum case for Publishers.PrefetchStrategy.byRequest(_:), v58);
  v31 = v59;
  v30 = v60;
  v32 = v61;
  (*(v60 + 104))(v59, enum case for Publishers.BufferingStrategy.dropOldest<A>(_:), v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR, &protocol conformance descriptor for AnyPublisher<A, B>);
  v33 = v57;
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v30 + 8))(v31, v32);
  (*(v28 + 8))(v27, v29);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR, &protocol conformance descriptor for Publishers.Buffer<A>);
  v34 = v62;
  v35 = Publisher.eraseToAnyPublisher()();

  (*(v63 + 8))(v33, v34);
  v36 = v64;
  *&v64[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_incomingMessages] = v35;
  v37 = type metadata accessor for NearbyGroupHostIDSService();
  v65.receiver = v36;
  v65.super_class = v37;
  v38 = objc_msgSendSuper2(&v65, "init");
  v39 = objc_allocWithZone(IDSServiceDelegateProperties);
  v40 = v38;
  v41 = [v39 init];
  [v41 setWantsCrossAccountMessaging:1];
  v42 = *&v40[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue];
  v43 = v52;
  v44 = *(v52 + 32);
  v45 = v41;
  v46 = v42;
  v44(v40, v41, v42, v53, v43);

  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  return v40;
}

uint64_t specialized static NearbyGroupHostIDSService.MessageEvent.Member.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t outlined destroy of NearbyGroup_Group(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id specialized Set.union<A>(_:)(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        specialized Set._Variant.insert(_:)(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

void specialized NearbyGroupHostIDSService.service(_:account:incomingData:fromID:context:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (!a4)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v7 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.host);

    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_27;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v22);
    _os_log_impl(&_mh_execute_header, oslog, v10, "Dropping message due to invalid fromID %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);

    goto LABEL_26;
  }

  if (a2 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_22;
    }
  }

  else if (v8)
  {
    if (a1 == a1 >> 32)
    {
LABEL_22:
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Log.host);
      oslog = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(oslog, v19))
      {
        goto LABEL_27;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Dropping message due to invalid data", v20, 2u);
LABEL_26:

LABEL_27:

      return;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_22;
  }

  v16 = [objc_allocWithZone(CPFeatureFlags) init];
  v17 = [v16 nearbyInvitationsBlastDoorEnabled];

  if (v17)
  {
    if (a5)
    {

      NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)(a3, a4, a1, a2, a5);
      return;
    }

    goto LABEL_36;
  }

  if (!a5)
  {
LABEL_37:
    __break(1u);
    return;
  }

  NearbyGroupHostIDSService.handleIncomingData(from:data:context:)(a3, a4, a1, a2, a5);
}

uint64_t outlined init with copy of NearbyGroup_Group(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of NearbyGroup_Group(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type NearbyGroupHostIDSService.MessageEvents.Iterator and conformance NearbyGroupHostIDSService.MessageEvents.Iterator()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvents.Iterator and conformance NearbyGroupHostIDSService.MessageEvents.Iterator;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvents.Iterator and conformance NearbyGroupHostIDSService.MessageEvents.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvents.Iterator and conformance NearbyGroupHostIDSService.MessageEvents.Iterator);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NearbyGroupHostIDSService.MessageContext(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for NearbyGroupHostIDSService.MessageContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for NearbyGroupHostIDSService.MessageEvent(uint64_t a1)
{
  result = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Set<NearbyGroupHostIDSService.MessageEvent.Member>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Set<NearbyGroupHostIDSService.MessageEvent.Member>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Set<NearbyGroupHostIDSService.MessageEvent.Member>)
  {
    lazy protocol witness table accessor for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Set<NearbyGroupHostIDSService.MessageEvent.Member>);
    }
  }
}

uint64_t type metadata completion function for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NearbyGroupHostIDSService.MessageEvent.MembershipMutation.Operation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyGroupHostIDSService.MessageEvent.MembershipMutation.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t closure #2 in _PublisherElements.Iterator.next()specialized partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyGroupHostIDSService.distributeLeave(for:)(uint64_t a1)
{
  v2 = UUID.data.getter();
  v4 = v3;
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 1;
  return result;
}

uint64_t outlined assign with take of NearbyGroup_Group.OneOf_Event?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void *NearbyInvitationServiceHostConnection.init(connection:queue:dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) = a3;
  v4 = one-time initialization token for host;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.host);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Creating NearbyInvitationServiceHostConnection", v8, 2u);
  }

  v9 = XPCHostConnection.init(connection:queue:)();
  v10 = v9;

  if (v9)
  {
  }

  return v9;
}

uint64_t NearbyInvitationServiceHostConnection.createGroup(with:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection received request to create group with %@", v12, 0xCu);
    outlined destroy of NSObject?(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 480))(v9, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.requestApproval(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    type metadata accessor for InvitationApprovalRequest();
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection requestApproval with %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 488))(v9, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.approve(pendingMember:response:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136315138;
    type metadata accessor for IncomingInvitationJoinRequest();
    v15 = v11;
    v16 = String.init<A>(reflecting:)();
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v14 + 4) = v21;
    a4 = v20;
    a3 = v19;
    a2 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "NearbyInvitationServiceHostConnection approve pendingMember %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  return (*(**(v5 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 496))(v11, a2, a3, a4);
}

uint64_t NearbyInvitationServiceHostConnection.reject(pendingMember:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    type metadata accessor for IncomingInvitationJoinRequest();
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection reject pendingMember %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 504))(v9, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.generateNearbyInvitation(provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHostConnection generateNearbyInvitation", v11, 2u);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 512))(a1, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.advertiseNearbyInvitation(_:provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "NearbyInvitationServiceHostConnection advertiseNearbyInvitation", v13, 2u);
  }

  return (*(**(v5 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 520))(a1, a2, a3, a4);
}

uint64_t @objc NearbyInvitationServiceHostConnection.advertiseNearbyInvitation(_:provider:response:)(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a1;
  NearbyInvitationServiceHostConnection.advertiseNearbyInvitation(_:provider:response:)(v10, a4, thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v9);
}

uint64_t NearbyInvitationServiceHostConnection.advertiseNearbySessionEndpoint(params:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHostConnection advertiseNearbyInvitation", v11, 2u);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 528))(a1, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHostConnection stopAdvertisingNearbyInvitation", v11, 2u);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 536))(a1, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.stopAdvertisingNearbySessionEndpoint(response:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "NearbyInvitationServiceHostConnection stopAdvertisingNearbyInvitation", v9, 2u);
  }

  return (*(**(v3 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 544))(a1, a2);
}

uint64_t @objc NearbyInvitationServiceHostConnection.stopAdvertisingNearbySessionEndpoint(response:)(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  NearbyInvitationServiceHostConnection.stopAdvertisingNearbySessionEndpoint(response:)(thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v5);
}

uint64_t NearbyInvitationServiceHostConnection.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.host);
  (*(v9 + 16))(v11, a1, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = a4;
    v18 = v17;
    v30 = v17;
    *v16 = 136315394;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = a2;
    v20 = a3;
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v22, &v30);
    a3 = v20;
    a2 = v27;

    *(v16 + 4) = v23;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v13, v14, "NearbyInvitationServiceHostConnection assertAdvertisementPublic invitationID: %s for %lu rotations", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    a4 = v28;

    a1 = v26;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  return (*(**(v29 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 560))(a1, a2, a3, a4);
}

uint64_t @objc NearbyInvitationServiceHostConnection.assertAdvertisementPublic(_:rotations:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a1;
  NearbyInvitationServiceHostConnection.assertAdvertisementPublic(_:rotations:response:)(v11, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> (), v13);

  return (*(v9 + 8))(v11, v8);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  outlined init with copy of UUID?(a1, &v13 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, isa, v12);
}

uint64_t NearbyInvitationServiceHostConnection.markInvitationUsed(_:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection markInvitationUsed for pseudonym: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 552))(v9, a2, a3);
}

uint64_t NearbyInvitationServiceHostConnection.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v28[-v9];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.host);
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v12(v8, a2, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = a2;
    v16 = v15;
    v30 = swift_slowAlloc();
    v34 = v30;
    *v16 = 136315394;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v29 = v14;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v31 = a1;
    v20 = *(v5 + 8);
    v20(v10, v4);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v34);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v8, v4);
    a1 = v31;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v34);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v29, "NearbyInvitationServiceHostConnection releaseAdvertisementPublicAssertion invitationID: %s assertionIdentifier %s", v16, 0x16u);
    swift_arrayDestroy();

    a2 = v32;
  }

  else
  {

    v26 = *(v5 + 8);
    v26(v8, v4);
    v26(v10, v4);
  }

  return (*(**(v33 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 568))(a1, a2, closure #1 in NearbyInvitationServiceHostConnection.releaseAdvertisementPublicAssertion(_:assertionIdentifier:), 0);
}

void closure #1 in NearbyInvitationServiceHostConnection.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(uint64_t a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (a1)
    {
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v6 = String.init<A>(reflecting:)();
      v8 = v7;
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 7104878;
    }

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Released assertion with error: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
  }
}

uint64_t @objc NearbyInvitationServiceHostConnection.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a1;
  NearbyInvitationServiceHostConnection.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(v11, v9);

  v13 = *(v6 + 8);
  v13(v9, v5);
  return (v13)(v11, v5);
}

uint64_t NearbyInvitationServiceHostConnection.releaseInvitation(_:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection releaseInvitation for pseudonym: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 576))(v9, a2, a3);
}

uint64_t @objc NearbyInvitationServiceHostConnection.createGroup(with:response:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t NearbyInvitationServiceHostConnection.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHostConnection scanNearbyInvitations", v11, 2u);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 584))(a1, a2, a3);
}

uint64_t @objc NearbyInvitationServiceHostConnection.stopAdvertisingNearbyInvitation(_:response:)(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = a1;
  a7(v14, a6, v16);

  return (*(v12 + 8))(v14, v11);
}

uint64_t NearbyInvitationServiceHostConnection.scanNearbyEndpoints(params:scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "NearbyInvitationServiceHostConnection scanNearbyInvitations", v13, 2u);
  }

  return (*(**(v5 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 592))(a1, a2, a3, a4);
}

uint64_t @objc NearbyInvitationServiceHostConnection.scanNearbyEndpoints(params:scannerID:response:)(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a3;
  v15 = a1;
  NearbyInvitationServiceHostConnection.scanNearbyEndpoints(params:scannerID:response:)(v14, v11, thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v13);

  return (*(v9 + 8))(v11, v8);
}

uint64_t NearbyInvitationServiceHostConnection.stopScanningNearbyInvitations(provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHostConnection stopScanningNearbyInvitations", v11, 2u);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 600))(a1, a2, a3);
}

uint64_t @objc NearbyInvitationServiceHostConnection.generateNearbyInvitation(provider:response:)(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  a7(a3, a6, v12);
}

uint64_t NearbyInvitationServiceHostConnection.requestConnection(with:localInvitation:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "NearbyInvitationServiceHostConnection requestConnection with advertisement %@", v14, 0xCu);
    outlined destroy of NSObject?(v15);
  }

  return (*(**(v5 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 608))(v11, a2, a3, a4);
}

uint64_t NearbyInvitationServiceHostConnection.requestEndpointConnection(with:pseudonym:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "NearbyInvitationServiceHostConnection requestConnectionEndpoint with advertisement %@", v14, 0xCu);
    outlined destroy of NSObject?(v15);
  }

  return (*(**(v5 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 616))(v11, a2, a3, a4);
}

uint64_t @objc NearbyInvitationServiceHostConnection.approve(pendingMember:response:completion:)(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v15, v16, a7, v14);
}

uint64_t NearbyInvitationServiceHostConnection.approveConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "NearbyInvitationServiceHostConnection approveConnectionRequest with advertisement %@", v12, 0xCu);
    outlined destroy of NSObject?(v13);
  }

  return (*(**(v4 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 624))(v9, a2, a3);
}

void @objc NearbyInvitationServiceHostConnection.approveConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11 = a1;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  NearbyInvitationServiceHostConnection.approveConnectionRequest(_:localInvitation:)(v6, v8, v10);
  outlined consume of Data._Representation(v8, v10);
}

uint64_t NearbyInvitationServiceHostConnection.denyConnectionRequest(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "NearbyInvitationServiceHostConnection denyConnectionRequest with advertisement %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
  }

  return (*(**(v2 + direct field offset for NearbyInvitationServiceHostConnection.dataSource) + 632))(v5);
}

void @objc NearbyInvitationServiceHostConnection.denyConnectionRequest(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NearbyInvitationServiceHostConnection.denyConnectionRequest(_:)(v4);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t type metadata accessor for NearbyInvitationServiceHostConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbyInvitationServiceHostConnection;
  if (!type metadata singleton initialization cache for NearbyInvitationServiceHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(_PublisherElements.Iterator.next(), 0, 0);
}

uint64_t _PublisherElements.Iterator.next()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *v2;
  v0[5] = *v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = *(v1 + 16);
  v4[3] = *(v1 + 24);
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  *v5 = v0;
  v5[1] = _PublisherElements.Iterator.next();
  v7 = v0[2];

  return withTaskCancellationHandler<A>(handler:operation:)(v7, partial apply for closure #1 in _PublisherElements.Iterator.next(), v3, &async function pointer to partial apply for closure #2 in _PublisherElements.Iterator.next(), v4, v6);
}

{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t _PublisherElements.Iterator.Inner.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, *(v3 + 80), *(v3 + 88), v4);
  return (*(*(v5 - 8) + 16))(a1, v1 + 4, v5);
}

uint64_t _PublisherElements.Iterator.Inner.state.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, *(v3 + 80), *(v3 + 88), v4);
  (*(*(v5 - 8) + 40))(v1 + 4, a1, v5);
  return swift_endAccess();
}

uint64_t _PublisherElements.Iterator.Inner.pendingDemand.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t _PublisherElements.Iterator.Inner.__allocating_init()()
{
  v0 = swift_allocObject();
  _PublisherElements.Iterator.Inner.init()();
  return v0;
}

uint64_t *_PublisherElements.Iterator.Inner.init()()
{
  *(v0 + 16) = swift_slowAlloc();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();
  *(v0 + 24) = Array.init()();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = static Subscribers.Demand.none.getter();
  **(v0 + 16) = 0;
  return v0;
}

uint64_t *_PublisherElements.Iterator.Inner.deinit()
{
  v1 = *v0;

  v3 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, *(v1 + 80), *(v1 + 88), v2);
  (*(*(v3 - 8) + 8))(v0 + 4, v3);
  return v0;
}

uint64_t _PublisherElements.Iterator.Inner.__deallocating_deinit()
{
  _PublisherElements.Iterator.Inner.deinit();

  return swift_deallocClassInstance();
}

uint64_t _PublisherElements.Iterator.Inner.receive(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = *(v2 + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v13 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, v6, v5, v12);
  v14 = *(v13 - 1);
  (*(v14 + 16))(v29, v2 + 32, v13);
  if (v30 >= 2)
  {
LABEL_11:
    swift_beginAccess();
    v28 = *(v2 + 24);
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      os_unfair_lock_unlock(v11);
    }

    else
    {
      swift_beginAccess();
      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst()();
      swift_endAccess();
      v19 = v27;
      os_unfair_lock_unlock(v11);
      v20 = v14;
      v21 = *(AssociatedTypeWitness - 8);
      (*(v21 + 16))(v10, a1, AssociatedTypeWitness);
      (*(v21 + 56))(v10, 0, 1, AssociatedTypeWitness);
      v14 = v20;
      (*(v26 + 32))(*(*(v19 + 64) + 40), v10, v8);
      swift_continuation_resume();
    }
  }

  else
  {
    v24 = v14;
    v25 = v13;
    swift_beginAccess();
    a1 = *(v2 + 24);
    swift_beginAccess();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();

    Array.removeAll(keepingCapacity:)(0);
    swift_endAccess();
    os_unfair_lock_unlock(v11);
    if (Array.endIndex.getter())
    {
      v11 = (AssociatedTypeWitness - 8);
      v13 = (v26 + 32);
      v14 = 4;
      do
      {
        v15 = v14 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v17 = *(a1 + 8 * v14);
          v18 = __OFADD__(v15, 1);
          v2 = v14 - 3;
          if (v18)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v17 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v18 = __OFADD__(v15, 1);
          v2 = v14 - 3;
          if (v18)
          {
LABEL_10:
            __break(1u);
            goto LABEL_11;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v10, 1, 1, AssociatedTypeWitness);
        (*v13)(*(*(v17 + 64) + 40), v10, v8);
        swift_continuation_resume();
        ++v14;
      }

      while (v2 != Array.endIndex.getter());
    }

    v14 = v24;
    v13 = v25;
  }

  v22 = static Subscribers.Demand.none.getter();
  (*(v14 + 8))(v29, v13);
  return v22;
}

Swift::Void __swiftcall _PublisherElements.Iterator.Inner.cancel()()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v54 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - v6;
  v53 = *(v1 + 16);
  os_unfair_lock_lock(v53);
  swift_beginAccess();
  v8 = *(v1 + 24);
  swift_beginAccess();
  v57 = v5;
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();

  Array.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  swift_beginAccess();
  v10 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, v3, v2, v9);
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 16);
  v11(&v68, v1 + 32, v10);
  if (v69 >= 2)
  {
    outlined init with take of PseudonymProtocol(&v68, v66);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.default);
    outlined init with copy of PseudonymProtocol(v66, v64);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v54;
    if (v28)
    {
      LODWORD(v52) = v27;
      v30 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v63 = v51;
      v31 = v30;
      *v30 = 136315138;
      outlined init with copy of PseudonymProtocol(v64, v62);
      outlined init with copy of Subscription?(v62, &v60);
      if (v61)
      {
        outlined init with take of PseudonymProtocol(&v60, v59);
        outlined init with copy of PseudonymProtocol(v59, &v58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pMd, &_s7Combine12Subscription_pMR);
        v32 = String.init<A>(reflecting:)();
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      outlined destroy of Subscription?(v62);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v63);

      *(v31 + 1) = v42;
      _os_log_impl(&_mh_execute_header, v26, v52, "Handling cancellation by terminating upstream subscription: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);

      v29 = v54;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v64);
    }

    memset(v64, 0, sizeof(v64));
    v65 = xmmword_1000CA6B0;
    swift_beginAccess();
    (*(v55 + 40))(v1 + 32, v64, v56);
    swift_endAccess();
    os_unfair_lock_unlock(v53);
    __swift_project_boxed_opaque_existential_1(v66, v67);
    dispatch thunk of Cancellable.cancel()();
    if (Array.endIndex.getter())
    {
      v43 = (v29 + 32);
      v44 = 4;
      do
      {
        v45 = v44 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v47 = *(v8 + 8 * v44);
          v40 = __OFADD__(v45, 1);
          v48 = v44 - 3;
          if (v40)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v47 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v40 = __OFADD__(v45, 1);
          v48 = v44 - 3;
          if (v40)
          {
LABEL_33:
            __break(1u);
            break;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v7, 1, 1, AssociatedTypeWitness);
        (*v43)(*(*(v47 + 64) + 40), v7, v57);
        swift_continuation_resume();
        ++v44;
      }

      while (v48 != Array.endIndex.getter());
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v66);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v51 = v13;
      v16 = v15;
      v52 = swift_slowAlloc();
      v64[0] = v52;
      *v16 = 136315138;
      v50 = v14;
      v17 = v56;
      v11(v66, v1 + 32, v56);
      v18 = >> prefix<A>(_:)(v66, v17);
      v20 = v19;
      v21 = type metadata accessor for Optional();
      (*(*(v21 - 8) + 8))(v66, v21);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v64);

      v23 = v16;
      *(v16 + 4) = v22;
      v24 = v51;
      _os_log_impl(&_mh_execute_header, v51, v50, "Terminating sequence from state: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
    }

    else
    {

      v17 = v56;
    }

    memset(v66, 0, sizeof(v66));
    v67 = xmmword_1000CA6B0;
    swift_beginAccess();
    (*(v55 + 40))(v1 + 32, v66, v17);
    swift_endAccess();
    os_unfair_lock_unlock(v53);
    if (Array.endIndex.getter())
    {
      v35 = (v54 + 32);
      v36 = 4;
      do
      {
        v37 = v36 - 4;
        v38 = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (v38)
        {
          v39 = *(v8 + 8 * v36);
          v40 = __OFADD__(v37, 1);
          v41 = v36 - 3;
          if (v40)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v39 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v40 = __OFADD__(v37, 1);
          v41 = v36 - 3;
          if (v40)
          {
LABEL_20:
            __break(1u);
            break;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v7, 1, 1, AssociatedTypeWitness);
        (*v35)(*(*(v39 + 64) + 40), v7, v57);
        swift_continuation_resume();
        ++v36;
      }

      while (v41 != Array.endIndex.getter());
    }

    (*(v55 + 8))(&v68, v56);
  }
}

uint64_t _PublisherElements.Iterator.Inner.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(_PublisherElements.Iterator.Inner.next(), 0, 0);
}

uint64_t _PublisherElements.Iterator.Inner.next()()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  *v1 = v0;
  v1[1] = _PublisherElements.Iterator.Inner.next();
  v3 = v0[2];
  v4 = v0[3];

  return (withUnsafeContinuation<A>(isolation:_:))(v3, 0, 0, partial apply for closure #1 in _PublisherElements.Iterator.Inner.next(), v4, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void closure #1 in _PublisherElements.Iterator.Inner.next()(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  v11 = a2[2];
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v13 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, v5, v4, v12);
  (*(*(v13 - 8) + 16))(&v18, a2 + 4, v13);
  if (!v19)
  {
    v16[1] = a1;
    swift_beginAccess();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    Array.append(_:)();
    swift_endAccess();
    swift_beginAccess();
    v14 = a2[9];
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_8;
    }

    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_8:
      v15 = static Subscribers.Demand.unlimited.getter();
    }

    a2[9] = v15;
    swift_endAccess();
    os_unfair_lock_unlock(v11);
    return;
  }

  if (v19 == 1)
  {
    os_unfair_lock_unlock(v11);
    (*(*(AssociatedTypeWitness - 8) + 56))(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 32))(*(*(a1 + 64) + 40), v10, v7);
    swift_continuation_resume();
  }

  else
  {
    outlined init with take of PseudonymProtocol(&v18, v17);
    v16[4] = a1;
    swift_beginAccess();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    Array.append(_:)();
    swift_endAccess();
    os_unfair_lock_unlock(v11);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    dispatch thunk of Subscription.request(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }
}

uint64_t withUnsafeContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(withUnsafeContinuation<A>(isolation:_:), v6, v8);
}

uint64_t withUnsafeContinuation<A>(isolation:_:)()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = withUnsafeContinuation<A>(isolation:_:);
  v3 = swift_continuation_init();
  v1(v3);

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t _PublisherElements.Iterator.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized _PublisherElements.Iterator.init(_:)(a1, a2, a3, a4);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t closure #2 in _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

uint64_t closure #2 in _PublisherElements.Iterator.next()()
{
  *(v0 + 32) = **(v0 + 24);

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = closure #2 in _PublisherElements.Iterator.next();
  v2 = *(v0 + 16);

  return _PublisherElements.Iterator.Inner.next()(v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t withTaskCancellationHandler<A>(handler:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(a1, a4, a5, a2, a3, 0, 0, a6);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance _PublisherElements<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return _PublisherElements.Iterator.next()(a1, a2);
}

uint64_t _s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = _s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6);
}

uint64_t _s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance _PublisherElements<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = _PublisherElements.makeAsyncIterator()(a1, a3, a4, a5);
  result = (*(*(a1 - 8) + 8))(v5, a1);
  *a2 = v8;
  return result;
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t specialized _PublisherElements.Iterator.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _PublisherElements.Iterator.Inner(0, a2, a3, a4);
  v4 = swift_allocObject();
  _PublisherElements.Iterator.Inner.init()();
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  return v4;
}

uint64_t partial apply for closure #2 in _PublisherElements.Iterator.next()(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

uint64_t specialized _PublisherElements.Iterator.Inner.receive(completion:)()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-v6];
  v8 = v0[2];
  os_unfair_lock_lock(v8);
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_1000CA6B0;
  swift_beginAccess();
  v10 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, v2, v1, v9);
  (*(*(v10 - 8) + 40))(v0 + 4, v21, v10);
  swift_endAccess();
  swift_beginAccess();
  v11 = v0[3];
  swift_beginAccess();
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();

  Array.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  os_unfair_lock_unlock(v8);
  if (Array.endIndex.getter())
  {
    v12 = (v5 + 32);
    v13 = 4;
    do
    {
      v14 = v13 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v16 = *(v11 + 8 * v13);
        v17 = __OFADD__(v14, 1);
        v18 = v13 - 3;
        if (v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        v17 = __OFADD__(v14, 1);
        v18 = v13 - 3;
        if (v17)
        {
LABEL_9:
          __break(1u);
        }
      }

      (*(*(AssociatedTypeWitness - 8) + 56))(v7, 1, 1, AssociatedTypeWitness);
      (*v12)(*(*(v16 + 64) + 40), v7, v4);
      swift_continuation_resume();
      ++v13;
    }

    while (v18 != Array.endIndex.getter());
  }
}

uint64_t outlined init with copy of Subscription?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Subscription?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for _PublisherElements(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata instantiation function for _PublisherElements.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for _PublisherElements.Iterator.Inner.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _PublisherElements.Iterator.Inner.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _PublisherElements.Iterator.Inner.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double destructiveInjectEnumTag for _PublisherElements.Iterator.Inner.State(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t NearbyGroup_Member.tokenID.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyGroup_Member(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t NearbyGroup_Group.MemberAdded.member.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  outlined destroy of Any?(v2 + v4, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  outlined init with take of NearbyGroup_Member(a1, v2 + v4, type metadata accessor for NearbyGroup_Member);
  v5 = type metadata accessor for NearbyGroup_Member(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t NearbyGroup_Group.MemberAdded.member.getter@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = a1(0);
  outlined init with copy of (String, Any)(v2 + *(v8 + 24), v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v9 = type metadata accessor for NearbyGroup_Member(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of NearbyGroup_Member(v7, a2, type metadata accessor for NearbyGroup_Member);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  UnknownStorage.init()();
  v11 = (a2 + *(v9 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  }

  return result;
}

uint64_t NearbyGroup_Member.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for NearbyGroup_Member(0);
  result = UnknownStorage.init()();
  v4 = (a1 + *(v2 + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t NearbyGroup_Member.tokenID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyGroup_Member(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t key path getter for NearbyGroup_Member.tokenID : NearbyGroup_Member@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyGroup_Member(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for NearbyGroup_Member.tokenID : NearbyGroup_Member(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyGroup_Member(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*NearbyGroup_Member.tokenID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NearbyGroup_Member(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NearbyProtoConnectionRequest.displayName.modify;
}

Swift::Void __swiftcall NearbyGroup_Member.clearTokenID()()
{
  v1 = (v0 + *(type metadata accessor for NearbyGroup_Member(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t NearbyGroup_Group.initialize.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of (String, Any)(v2, &v9 - v5, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v7 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of NearbyGroup_Member(v6, a1, type metadata accessor for NearbyGroup_Group.Initialization);
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v6, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  }

  *a1 = xmmword_1000CAAE0;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  type metadata accessor for NearbyGroup_Group.Initialization(0);
  return UnknownStorage.init()();
}

uint64_t NearbyGroup_Group.Initialization.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1000CAAE0;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  type metadata accessor for NearbyGroup_Group.Initialization(0);
  return UnknownStorage.init()();
}

uint64_t outlined init with take of NearbyGroup_Member(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*NearbyGroup_Group.initialize.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for NearbyGroup_Group.Initialization(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  outlined init with copy of (String, Any)(v1, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of NearbyGroup_Member(v7, v10, type metadata accessor for NearbyGroup_Group.Initialization);
      return NearbyGroup_Group.initialize.modify;
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  }

  *v10 = xmmword_1000CAAE0;
  *(v10 + 16) = _swiftEmptyArrayStorage;
  UnknownStorage.init()();
  return NearbyGroup_Group.initialize.modify;
}

uint64_t outlined destroy of NearbyGroup_Group.OneOf_Event(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NearbyGroup_Group.memberAdded.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of (String, Any)(v2, &v12 - v5, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v7 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of NearbyGroup_Member(v6, a1, type metadata accessor for NearbyGroup_Group.MemberAdded);
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v6, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  }

  *a1 = xmmword_1000CAAE0;
  v9 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  UnknownStorage.init()();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for NearbyGroup_Member(0);
  return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
}

void (*NearbyGroup_Group.memberAdded.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v10 = *(*(v9 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of (String, Any)(v2, v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
LABEL_15:
    *v12 = xmmword_1000CAAE0;
    UnknownStorage.init()();
    v15 = *(v9 + 24);
    v16 = type metadata accessor for NearbyGroup_Member(0);
    (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
    return NearbyGroup_Group.memberAdded.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of NearbyGroup_Member(v8, v12, type metadata accessor for NearbyGroup_Group.MemberAdded);
  return NearbyGroup_Group.memberAdded.modify;
}

uint64_t outlined init with copy of NearbyGroup_Group.Initialization(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NearbyGroup_Group.memberRemoved.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of (String, Any)(v2, &v12 - v5, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v7 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of NearbyGroup_Member(v6, a1, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v6, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  }

  *a1 = xmmword_1000CAAE0;
  v9 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  UnknownStorage.init()();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for NearbyGroup_Member(0);
  return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
}

uint64_t NearbyGroup_Group.MemberAdded.init()@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_1000CAAE0;
  v3 = a1(0);
  UnknownStorage.init()();
  v4 = *(v3 + 24);
  v5 = type metadata accessor for NearbyGroup_Member(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

void (*NearbyGroup_Group.memberRemoved.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v10 = *(*(v9 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of (String, Any)(v2, v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
LABEL_15:
    *v12 = xmmword_1000CAAE0;
    UnknownStorage.init()();
    v15 = *(v9 + 24);
    v16 = type metadata accessor for NearbyGroup_Member(0);
    (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
    return NearbyGroup_Group.memberRemoved.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of NearbyGroup_Member(v8, v12, type metadata accessor for NearbyGroup_Group.MemberRemoved);
  return NearbyGroup_Group.memberRemoved.modify;
}

uint64_t NearbyGroup_Group.memberLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of (String, Any)(v2, &v9 - v5, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v7 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of NearbyGroup_Member(v6, a1, type metadata accessor for NearbyGroup_Group.MemberLeft);
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v6, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  }

  *a1 = xmmword_1000CAAE0;
  *(a1 + 16) = 0;
  type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for NearbyGroup_Group.initialize : NearbyGroup_Group(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  __chkstk_darwin(v12 - 8);
  v14 = &v17 - v13;
  outlined init with copy of NearbyGroup_Group.Initialization(a1, &v17 - v13, a6);
  outlined destroy of Any?(a2, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  outlined init with take of NearbyGroup_Member(v14, a2, a7);
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t NearbyGroup_Group.initialize.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  outlined destroy of Any?(v3, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  outlined init with take of NearbyGroup_Member(a1, v3, a2);
  v6 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t NearbyGroup_Group.MemberLeft.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1000CAAE0;
  *(a1 + 16) = 0;
  type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  return UnknownStorage.init()();
}

void (*NearbyGroup_Group.memberLeft.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for NearbyGroup_Group.MemberLeft(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  outlined init with copy of (String, Any)(v1, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
LABEL_15:
    *v10 = xmmword_1000CAAE0;
    *(v10 + 16) = 0;
    UnknownStorage.init()();
    return NearbyGroup_Group.memberLeft.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of NearbyGroup_Member(v7, v10, type metadata accessor for NearbyGroup_Group.MemberLeft);
  return NearbyGroup_Group.memberLeft.modify;
}

void NearbyGroup_Group.initialize.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NearbyGroup_Group.Initialization((*a1)[3], v10, a5);
    outlined destroy of Any?(v13, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of NearbyGroup_Group.OneOf_Event(v11, a6);
  }

  else
  {
    outlined destroy of Any?(**a1, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t NearbyGroup_Member.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NearbyGroup_Member.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static NearbyGroup_Group.Initialization.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ44com_apple_SharePlay_NearbyInvitationsService0F12Group_MemberV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NearbyGroup_Group.Initialization(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static NearbyGroup_Group.MemberLeft.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t (*NearbyGroup_Group.MemberAdded.member.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for NearbyGroup_Member(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for NearbyGroup_Group.MemberAdded(0) + 24);
  *(v4 + 12) = v14;
  outlined init with copy of (String, Any)(v1 + v14, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    UnknownStorage.init()();
    v16 = (v13 + *(v8 + 24));
    *v16 = 0;
    v16[1] = 0;
    if (v15(v7, 1, v8) != 1)
    {
      outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    }
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v7, v13, type metadata accessor for NearbyGroup_Member);
  }

  return NearbyGroup_Group.MemberAdded.member.modify;
}

uint64_t key path getter for NearbyGroup_Group.MemberAdded.member : NearbyGroup_Group.MemberAdded@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = a2(0);
  outlined init with copy of (String, Any)(a1 + *(v9 + 24), v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v10 = type metadata accessor for NearbyGroup_Member(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of NearbyGroup_Member(v8, a3, type metadata accessor for NearbyGroup_Member);
  }

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  UnknownStorage.init()();
  v12 = (a3 + *(v10 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  }

  return result;
}

uint64_t key path setter for NearbyGroup_Group.MemberAdded.member : NearbyGroup_Group.MemberAdded(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for NearbyGroup_Member(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NearbyGroup_Group.Initialization(a1, v11, type metadata accessor for NearbyGroup_Member);
  v12 = *(a5(0) + 24);
  outlined destroy of Any?(a2 + v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  outlined init with take of NearbyGroup_Member(v11, a2 + v12, type metadata accessor for NearbyGroup_Member);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t (*NearbyGroup_Group.MemberRemoved.member.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for NearbyGroup_Member(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for NearbyGroup_Group.MemberRemoved(0) + 24);
  *(v4 + 12) = v14;
  outlined init with copy of (String, Any)(v1 + v14, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    UnknownStorage.init()();
    v16 = (v13 + *(v8 + 24));
    *v16 = 0;
    v16[1] = 0;
    if (v15(v7, 1, v8) != 1)
    {
      outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    }
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v7, v13, type metadata accessor for NearbyGroup_Member);
  }

  return NearbyGroup_Group.MemberRemoved.member.modify;
}

void NearbyGroup_Group.MemberAdded.member.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NearbyGroup_Group.Initialization((*a1)[5], v4, type metadata accessor for NearbyGroup_Member);
    outlined destroy of Any?(v9 + v3, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    outlined init with take of NearbyGroup_Member(v4, v9 + v3, type metadata accessor for NearbyGroup_Member);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NearbyGroup_Group.OneOf_Event(v5, type metadata accessor for NearbyGroup_Member);
  }

  else
  {
    outlined destroy of Any?(v9 + v3, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    outlined init with take of NearbyGroup_Member(v5, v9 + v3, type metadata accessor for NearbyGroup_Member);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL NearbyGroup_Group.MemberAdded.hasMember.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = a1(0);
  outlined init with copy of (String, Any)(v1 + *(v6 + 24), v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v7 = type metadata accessor for NearbyGroup_Member(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  outlined destroy of Any?(v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  return v8;
}

uint64_t NearbyGroup_Group.MemberAdded.clearMember()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 24);
  outlined destroy of Any?(v1 + v2, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v3 = type metadata accessor for NearbyGroup_Member(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t NearbyGroup_Group.Initialization.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NearbyGroup_Group.Initialization.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NearbyGroup_Group.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for NearbyGroup_Group(0);
  return UnknownStorage.init()();
}

uint64_t NearbyGroup_Member.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for NearbyGroup_Member(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t NearbyGroup_Member.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in NearbyGroup_Member.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for NearbyGroup_Member(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NearbyGroup_Member.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyGroup_Member(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NearbyGroup_Member@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  result = UnknownStorage.init()();
  v5 = (a2 + *(a1 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Member(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member, &protocol conformance descriptor for NearbyGroup_Member);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Member(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member, &protocol conformance descriptor for NearbyGroup_Member);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Member(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member, &protocol conformance descriptor for NearbyGroup_Member);

  return Message.hash(into:)();
}

uint64_t NearbyGroup_Group.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in NearbyGroup_Group.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in NearbyGroup_Group.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      closure #1 in NearbyGroup_Group.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in NearbyGroup_Group.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in NearbyGroup_Group.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of (String, Any)(a1, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of Any?(v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v12, v19, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    outlined init with take of NearbyGroup_Member(v19, v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of NearbyGroup_Group.OneOf_Event(v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v29 = v44;
    }

    else
    {
      outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
      v31 = v39;
      outlined init with take of NearbyGroup_Member(v17, v39, type metadata accessor for NearbyGroup_Group.Initialization);
      outlined init with take of NearbyGroup_Member(v31, v24, type metadata accessor for NearbyGroup_Group.Initialization);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization, &protocol conformance descriptor for NearbyGroup_Group.Initialization);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
  }

  outlined init with copy of (String, Any)(v24, v32, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
    return outlined destroy of Any?(v32, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of NearbyGroup_Member(v32, v40, type metadata accessor for NearbyGroup_Group.Initialization);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V14InitializationVSgMR);
    v36 = v38;
    outlined destroy of Any?(v38, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v35, v36, type metadata accessor for NearbyGroup_Group.Initialization);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in NearbyGroup_Group.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of (String, Any)(a1, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of Any?(v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v12, v19, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    outlined init with take of NearbyGroup_Member(v19, v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
      v31 = v40;
      outlined init with take of NearbyGroup_Member(v17, v40, type metadata accessor for NearbyGroup_Group.MemberAdded);
      outlined init with take of NearbyGroup_Member(v31, v24, type metadata accessor for NearbyGroup_Group.MemberAdded);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of NearbyGroup_Group.OneOf_Event(v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v29 = v44;
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded, &protocol conformance descriptor for NearbyGroup_Group.MemberAdded);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
  }

  outlined init with copy of (String, Any)(v24, v32, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
    return outlined destroy of Any?(v32, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of NearbyGroup_Member(v32, v39, type metadata accessor for NearbyGroup_Group.MemberAdded);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11MemberAddedVSgMR);
    v36 = v38;
    outlined destroy of Any?(v38, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v35, v36, type metadata accessor for NearbyGroup_Group.MemberAdded);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #3 in NearbyGroup_Group.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of (String, Any)(a1, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of Any?(v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v12, v19, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    outlined init with take of NearbyGroup_Member(v19, v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
      v31 = v40;
      outlined init with take of NearbyGroup_Member(v17, v40, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      outlined init with take of NearbyGroup_Member(v31, v24, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of NearbyGroup_Group.OneOf_Event(v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v29 = v44;
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved, &protocol conformance descriptor for NearbyGroup_Group.MemberRemoved);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
  }

  outlined init with copy of (String, Any)(v24, v32, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
    return outlined destroy of Any?(v32, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of NearbyGroup_Member(v32, v39, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V13MemberRemovedVSgMR);
    v36 = v38;
    outlined destroy of Any?(v38, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v35, v36, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #4 in NearbyGroup_Group.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of (String, Any)(a1, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of Any?(v12, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of NearbyGroup_Member(v12, v19, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    outlined init with take of NearbyGroup_Member(v19, v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
      v31 = v40;
      outlined init with take of NearbyGroup_Member(v17, v40, type metadata accessor for NearbyGroup_Group.MemberLeft);
      outlined init with take of NearbyGroup_Member(v31, v24, type metadata accessor for NearbyGroup_Group.MemberLeft);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of NearbyGroup_Group.OneOf_Event(v17, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v29 = v44;
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft, &protocol conformance descriptor for NearbyGroup_Group.MemberLeft);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
  }

  outlined init with copy of (String, Any)(v24, v32, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
    return outlined destroy of Any?(v32, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of NearbyGroup_Member(v32, v39, type metadata accessor for NearbyGroup_Group.MemberLeft);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V10MemberLeftVSgMR);
    v36 = v38;
    outlined destroy of Any?(v38, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    outlined init with take of NearbyGroup_Member(v35, v36, type metadata accessor for NearbyGroup_Group.MemberLeft);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t NearbyGroup_Group.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of (String, Any)(v3, &v14 - v9, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in NearbyGroup_Group.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #4 in NearbyGroup_Group.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    closure #2 in NearbyGroup_Group.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in NearbyGroup_Group.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of NearbyGroup_Group.OneOf_Event(v10, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for NearbyGroup_Group(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NearbyGroup_Group.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Any)(a1, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of NearbyGroup_Member(v7, v10, type metadata accessor for NearbyGroup_Group.Initialization);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization, &protocol conformance descriptor for NearbyGroup_Group.Initialization);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyGroup_Group.OneOf_Event(v10, type metadata accessor for NearbyGroup_Group.Initialization);
  }

  result = outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #2 in NearbyGroup_Group.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Any)(a1, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of NearbyGroup_Member(v7, v10, type metadata accessor for NearbyGroup_Group.MemberAdded);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded, &protocol conformance descriptor for NearbyGroup_Group.MemberAdded);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyGroup_Group.OneOf_Event(v10, type metadata accessor for NearbyGroup_Group.MemberAdded);
  }

  result = outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #3 in NearbyGroup_Group.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Any)(a1, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of NearbyGroup_Member(v7, v10, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved, &protocol conformance descriptor for NearbyGroup_Group.MemberRemoved);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyGroup_Group.OneOf_Event(v10, type metadata accessor for NearbyGroup_Group.MemberRemoved);
  }

  result = outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #4 in NearbyGroup_Group.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Any)(a1, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of NearbyGroup_Member(v7, v10, type metadata accessor for NearbyGroup_Group.MemberLeft);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft, &protocol conformance descriptor for NearbyGroup_Group.MemberLeft);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyGroup_Group.OneOf_Event(v10, type metadata accessor for NearbyGroup_Group.MemberLeft);
  }

  result = outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance NearbyGroup_Group@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Group(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group, &protocol conformance descriptor for NearbyGroup_Group);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Group(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group, &protocol conformance descriptor for NearbyGroup_Group);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Group(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group, &protocol conformance descriptor for NearbyGroup_Group);

  return Message.hash(into:)();
}

void one-time initialization function for protoMessageName(int a1)
{
  v1._countAndFlagsBits = 0x6C616974696E492ELL;
  v1._object = 0xEF6E6F6974617A69;
  one-time initialization function for protoMessageName(a1, v1, static NearbyGroup_Group.Initialization.protoMessageName, &static NearbyGroup_Group.Initialization.protoMessageName[1]);
}

{
  v1._countAndFlagsBits = 0x417265626D654D2ELL;
  v1._object = 0xEC00000064656464;
  one-time initialization function for protoMessageName(a1, v1, static NearbyGroup_Group.MemberAdded.protoMessageName, &static NearbyGroup_Group.MemberAdded.protoMessageName[1]);
}

{
  v1._countAndFlagsBits = 0x527265626D654D2ELL;
  v1._object = 0xEE006465766F6D65;
  one-time initialization function for protoMessageName(a1, v1, static NearbyGroup_Group.MemberRemoved.protoMessageName, &static NearbyGroup_Group.MemberRemoved.protoMessageName[1]);
}

{
  v1._countAndFlagsBits = 0x4C7265626D654D2ELL;
  v1._object = 0xEB00000000746665;
  one-time initialization function for protoMessageName(a1, v1, static NearbyGroup_Group.MemberLeft.protoMessageName, &static NearbyGroup_Group.MemberLeft.protoMessageName[1]);
}

void *NearbyGroup_Group.Initialization.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static NearbyGroup_Group.Initialization.protoMessageName;
}

uint64_t NearbyGroup_Group.Initialization.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for NearbyGroup_Member(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member, &protocol conformance descriptor for NearbyGroup_Member);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NearbyGroup_Group.Initialization.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v3[2] + 16) || (type metadata accessor for NearbyGroup_Member(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member, &protocol conformance descriptor for NearbyGroup_Member), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for NearbyGroup_Group.Initialization(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NearbyGroup_Group.Initialization@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1000CAAE0;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Group.Initialization(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization, &protocol conformance descriptor for NearbyGroup_Group.Initialization);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Group.Initialization(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization, &protocol conformance descriptor for NearbyGroup_Group.Initialization);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Group.Initialization(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization, &protocol conformance descriptor for NearbyGroup_Group.Initialization);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NearbyGroup_Group.Initialization(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ44com_apple_SharePlay_NearbyInvitationsService0F12Group_MemberV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void *NearbyGroup_Group.MemberAdded.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static NearbyGroup_Group.MemberAdded.protoMessageName;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Group.MemberAdded(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded, &protocol conformance descriptor for NearbyGroup_Group.MemberAdded);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Group.MemberAdded(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded, &protocol conformance descriptor for NearbyGroup_Group.MemberAdded);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Group.MemberAdded(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded, &protocol conformance descriptor for NearbyGroup_Group.MemberAdded);

  return Message.hash(into:)();
}

void *NearbyGroup_Group.MemberRemoved.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static NearbyGroup_Group.MemberRemoved.protoMessageName;
}

uint64_t NearbyGroup_Group.MemberAdded.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in NearbyGroup_Group.MemberAdded.decodeMessage<A>(decoder:)(a1, v7, a2, a3, a4);
    }
  }

  return result;
}

uint64_t closure #2 in NearbyGroup_Group.MemberAdded.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for NearbyGroup_Member(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member, &protocol conformance descriptor for NearbyGroup_Member);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t NearbyGroup_Group.MemberAdded.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
LABEL_8:
    if (v15 == v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v6)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v12;
    v16 = v12 >> 32;
    goto LABEL_8;
  }

  if ((v13 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = closure #1 in NearbyGroup_Group.MemberAdded.traverse<A>(visitor:)(v5, a1, a2, a3, a4);
  if (!v6)
  {
    a5(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NearbyGroup_Group.MemberAdded.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for NearbyGroup_Member(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  outlined init with copy of (String, Any)(a1 + *(v14 + 24), v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of Any?(v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  }

  outlined init with take of NearbyGroup_Member(v9, v13, type metadata accessor for NearbyGroup_Member);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Member and conformance NearbyGroup_Member, type metadata accessor for NearbyGroup_Member, &protocol conformance descriptor for NearbyGroup_Member);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NearbyGroup_Group.OneOf_Event(v13, type metadata accessor for NearbyGroup_Member);
}

uint64_t protocol witness for Message.init() in conformance NearbyGroup_Group.MemberAdded@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_1000CAAE0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for NearbyGroup_Member(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Group.MemberRemoved(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved, &protocol conformance descriptor for NearbyGroup_Group.MemberRemoved);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Group.MemberRemoved(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved, &protocol conformance descriptor for NearbyGroup_Group.MemberRemoved);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Group.MemberRemoved(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved, &protocol conformance descriptor for NearbyGroup_Group.MemberRemoved);

  return Message.hash(into:)();
}

void one-time initialization function for protoMessageName(int a1, Swift::String a2, void *a3, void *a4)
{
  String.append(_:)(a2);
  *a3 = 0x70756F72472E7063;
  *a4 = 0xE800000000000000;
}

void *NearbyGroup_Group.MemberLeft.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static NearbyGroup_Group.MemberLeft.protoMessageName;
}

uint64_t NearbyGroup_Group.MemberLeft.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t NearbyGroup_Group.MemberLeft.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(v3 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for NearbyGroup_Group.MemberLeft(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

Swift::Int NearbyGroup_Member.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance NearbyGroup_Group.MemberLeft@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1000CAAE0;
  *(a2 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyGroup_Group.MemberLeft(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft, &protocol conformance descriptor for NearbyGroup_Group.MemberLeft);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyGroup_Group.MemberLeft(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft, &protocol conformance descriptor for NearbyGroup_Group.MemberLeft);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroup_Group.MemberLeft(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft, &protocol conformance descriptor for NearbyGroup_Group.MemberLeft);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NearbyGroup_Group.MemberLeft(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ44com_apple_SharePlay_NearbyInvitationsService0F12Group_MemberV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v25 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_24:
    v23 = 0;
    return v23 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of NearbyGroup_Group.Initialization(v13, v10, type metadata accessor for NearbyGroup_Member);
      outlined init with copy of NearbyGroup_Group.Initialization(v14, v7, type metadata accessor for NearbyGroup_Member);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 24);
      v18 = (v10 + v17);
      v19 = *(v10 + v17 + 8);
      v20 = (v7 + v17);
      v21 = v20[1];
      if (v19)
      {
        if (!v21)
        {
          break;
        }

        v22 = *v18 == *v20 && v19 == v21;
        if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v21)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Member);
      outlined destroy of NearbyGroup_Group.OneOf_Event(v10, type metadata accessor for NearbyGroup_Member);
      if (v23)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Member);
    outlined destroy of NearbyGroup_Group.OneOf_Event(v10, type metadata accessor for NearbyGroup_Member);
    goto LABEL_24;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t specialized static NearbyGroup_Group.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSg_AFtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSg_AFtMR);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of (String, Any)(a1, &v20 - v13, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  outlined init with copy of (String, Any)(a2, &v14[v15], &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
LABEL_9:
      type metadata accessor for NearbyGroup_Group(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of (String, Any)(v14, v10, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of NearbyGroup_Group.OneOf_Event(v10, type metadata accessor for NearbyGroup_Group.OneOf_Event);
LABEL_6:
    outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSg_AFtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of NearbyGroup_Member(&v14[v15], v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  v18 = specialized static NearbyGroup_Group.OneOf_Event.__derived_enum_equals(_:_:)(v10, v7);
  outlined destroy of NearbyGroup_Group.OneOf_Event(v7, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  outlined destroy of NearbyGroup_Group.OneOf_Event(v10, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static NearbyGroup_Group.OneOf_Event.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v42 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  __chkstk_darwin(v42);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  __chkstk_darwin(v4 - 8);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  __chkstk_darwin(v41);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v41 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v41 - v18;
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventO_AEtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventO_AEtMR);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v41 - v24;
  v26 = *(v23 + 56);
  outlined init with copy of NearbyGroup_Group.Initialization(a1, &v41 - v24, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  outlined init with copy of NearbyGroup_Group.Initialization(v46, &v25[v26], type metadata accessor for NearbyGroup_Group.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      outlined init with copy of NearbyGroup_Group.Initialization(v25, v13, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v28 = type metadata accessor for NearbyGroup_Group.MemberLeft;
        v29 = v13;
        goto LABEL_19;
      }

      v34 = v45;
      outlined init with take of NearbyGroup_Member(&v25[v26], v45, type metadata accessor for NearbyGroup_Group.MemberLeft);
      if (specialized static Data.== infix(_:_:)(*v13, *(v13 + 1), *v34, *(v34 + 8)) && v13[16] == *(v34 + 16))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v35 = type metadata accessor for NearbyGroup_Group.MemberLeft;
          outlined destroy of NearbyGroup_Group.OneOf_Event(v34, type metadata accessor for NearbyGroup_Group.MemberLeft);
          v36 = v13;
LABEL_25:
          outlined destroy of NearbyGroup_Group.OneOf_Event(v36, v35);
          outlined destroy of NearbyGroup_Group.OneOf_Event(v25, type metadata accessor for NearbyGroup_Group.OneOf_Event);
          v31 = 1;
          return v31 & 1;
        }
      }

      v37 = type metadata accessor for NearbyGroup_Group.MemberLeft;
      outlined destroy of NearbyGroup_Group.OneOf_Event(v34, type metadata accessor for NearbyGroup_Group.MemberLeft);
      v38 = v13;
LABEL_27:
      outlined destroy of NearbyGroup_Group.OneOf_Event(v38, v37);
      outlined destroy of NearbyGroup_Group.OneOf_Event(v25, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      goto LABEL_28;
    }

    outlined init with copy of NearbyGroup_Group.Initialization(v25, v16, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v28 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
      v29 = v16;
      goto LABEL_19;
    }

    v30 = v44;
    outlined init with take of NearbyGroup_Member(&v25[v26], v44, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    v31 = specialized static NearbyGroup_Group.MemberRemoved.== infix(_:_:)(v16, v30, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    v32 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
    outlined destroy of NearbyGroup_Group.OneOf_Event(v30, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    v33 = v16;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of NearbyGroup_Group.Initialization(v25, v21, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      if (swift_getEnumCaseMultiPayload())
      {
        v28 = type metadata accessor for NearbyGroup_Group.Initialization;
        v29 = v21;
LABEL_19:
        outlined destroy of NearbyGroup_Group.OneOf_Event(v29, v28);
        outlined destroy of Any?(v25, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventO_AEtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventO_AEtMR);
LABEL_28:
        v31 = 0;
        return v31 & 1;
      }

      v39 = v43;
      outlined init with take of NearbyGroup_Member(&v25[v26], v43, type metadata accessor for NearbyGroup_Group.Initialization);
      if (specialized static Data.== infix(_:_:)(*v21, *(v21 + 1), *v39, *(v39 + 8)) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ44com_apple_SharePlay_NearbyInvitationsService0F12Group_MemberV_Tt1g5(*(v21 + 2), *(v39 + 16)) & 1) != 0)
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v35 = type metadata accessor for NearbyGroup_Group.Initialization;
          outlined destroy of NearbyGroup_Group.OneOf_Event(v39, type metadata accessor for NearbyGroup_Group.Initialization);
          v36 = v21;
          goto LABEL_25;
        }
      }

      v37 = type metadata accessor for NearbyGroup_Group.Initialization;
      outlined destroy of NearbyGroup_Group.OneOf_Event(v39, type metadata accessor for NearbyGroup_Group.Initialization);
      v38 = v21;
      goto LABEL_27;
    }

    outlined init with copy of NearbyGroup_Group.Initialization(v25, v19, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = type metadata accessor for NearbyGroup_Group.MemberAdded;
      v29 = v19;
      goto LABEL_19;
    }

    outlined init with take of NearbyGroup_Member(&v25[v26], v8, type metadata accessor for NearbyGroup_Group.MemberAdded);
    v31 = specialized static NearbyGroup_Group.MemberRemoved.== infix(_:_:)(v19, v8, type metadata accessor for NearbyGroup_Group.MemberAdded);
    v32 = type metadata accessor for NearbyGroup_Group.MemberAdded;
    outlined destroy of NearbyGroup_Group.OneOf_Event(v8, type metadata accessor for NearbyGroup_Group.MemberAdded);
    v33 = v19;
  }

  outlined destroy of NearbyGroup_Group.OneOf_Event(v33, v32);
  outlined destroy of NearbyGroup_Group.OneOf_Event(v25, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  return v31 & 1;
}

uint64_t specialized static NearbyGroup_Group.MemberRemoved.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for NearbyGroup_Member(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSg_ADtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSg_ADtMR);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_8;
  }

  v23 = v9;
  v24 = a3(0);
  v16 = *(v24 + 24);
  v17 = *(v13 + 48);
  outlined init with copy of (String, Any)(a1 + v16, v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  outlined init with copy of (String, Any)(a2 + v16, &v15[v17], &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) == 1)
  {
    if (v18(&v15[v17], 1, v6) == 1)
    {
      outlined destroy of Any?(v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v19 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of (String, Any)(v15, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  if (v18(&v15[v17], 1, v6) == 1)
  {
    outlined destroy of NearbyGroup_Group.OneOf_Event(v12, type metadata accessor for NearbyGroup_Member);
LABEL_7:
    outlined destroy of Any?(v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSg_ADtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSg_ADtMR);
    goto LABEL_8;
  }

  v21 = v23;
  outlined init with take of NearbyGroup_Member(&v15[v17], v23, type metadata accessor for NearbyGroup_Member);
  v22 = specialized static NearbyGroup_Member.== infix(_:_:)(v12, v21);
  outlined destroy of NearbyGroup_Group.OneOf_Event(v21, type metadata accessor for NearbyGroup_Member);
  outlined destroy of NearbyGroup_Group.OneOf_Event(v12, type metadata accessor for NearbyGroup_Member);
  outlined destroy of Any?(v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t specialized static NearbyGroup_Member.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = *(type metadata accessor for NearbyGroup_Member(0) + 24);
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v8[1];
    if (v7)
    {
      if (v9)
      {
        v10 = *v6 == *v8 && v7 == v9;
        if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v9)
    {
LABEL_13:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_46Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_47Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMR);
  v4 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Publishers.CompactMap<CurrentValueSubject<[FilteredBluetoothScanner<NearbyRangingFilter>.FilteredDevice], Never>, [NearbyAdvertisement]>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMR, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5TQ0_;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5TQ0_()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5TY2_;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5TY1_;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5TY2_()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMR);
  v4 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<NearbyGroupMember>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMR, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5TQ0_;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5TQ0_()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5TY2_;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5TY1_;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t NearbyGroupFirewall.__allocating_init(group:service:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = Pseudonym.__allocating_init(service:configuration:);

  return NearbyGroupFirewall.init(group:service:)(a1, a2);
}

void NearbyGroupFirewall.group.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*NearbyGroupFirewall.group.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return NearbyGroupFirewall.group.modify;
}

void NearbyGroupFirewall.group.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t NearbyGroupFirewall.firewall.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  outlined init with take of PseudonymProtocol(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t closure #1 in NearbyGroupFirewall.init(group:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F11GroupMemberCG_G_GMR);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyGroupFirewall.init(group:service:), 0, 0);
}

uint64_t closure #1 in NearbyGroupFirewall.init(group:service:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMR);
  AsyncPublisher.makeAsyncIterator()();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = closure #1 in NearbyGroupFirewall.init(group:service:);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5(0, 0);
}

{
  v19 = v0;
  v1 = v0[19];
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (Strong)
    {
      v3 = Strong;
      if (one-time initialization token for firewall != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      v0[21] = __swift_project_value_buffer(v4, static Log.firewall);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v18 = v8;
        *v7 = 136315138;
        v0[12] = v1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
        v9 = String.init<A>(reflecting:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

        *(v7 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v5, v6, "Donating %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
      }

      (*(*v3 + 120))();
      v12 = v0[5];
      v13 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
      v14 = specialized _copyCollectionToContiguousArray<A>(_:)(v1);
      v0[22] = v14;
      v15 = swift_task_alloc();
      v0[23] = v15;
      *v15 = v0;
      v15[1] = closure #1 in NearbyGroupFirewall.init(group:service:);

      return FirewallProvider.donateEntries(_:)(v14, v12, v13);
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  else
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v17 = v0[1];

  return v17();
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = closure #1 in NearbyGroupFirewall.init(group:service:);
  }

  else
  {
    v2 = closure #1 in NearbyGroupFirewall.init(group:service:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v12 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[11] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Donated %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = closure #1 in NearbyGroupFirewall.init(group:service:);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5(0, 0);
}

{
  v12 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[24];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[10] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to donate, error: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = closure #1 in NearbyGroupFirewall.init(group:service:);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VyShy14NearbySessions0J11GroupMemberCG_G_G_Tg5(0, 0);
}

uint64_t closure #1 in NearbyGroupFirewall.init(group:service:)(uint64_t a1)
{
  *(*v2 + 152) = a1;

  if (!v1)
  {

    return _swift_task_switch(closure #1 in NearbyGroupFirewall.init(group:service:), 0, 0);
  }

  return result;
}

uint64_t FirewallProvider.donateEntries(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(FirewallProvider.donateEntries(_:), 0, 0);
}

uint64_t FirewallProvider.donateEntries(_:)()
{
  v38 = v0;
  v1 = *(v0 + 32);
  v2 = _swiftEmptyArrayStorage;
  v36 = _swiftEmptyArrayStorage;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_30:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v33[4];
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v1;
  }

  v33[8] = v2;
  if (v4)
  {
    v6 = 0;
    v32 = v1 & 0xC000000000000001;
    v7 = v5 + 32;
    v31 = v4;
    v34 = v5 + 32;
    do
    {
      v30 = v2;
      v8 = v6;
      v2 = v32;
      while (1)
      {
        if (v2)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v3 + 16))
          {
            goto LABEL_29;
          }

          v9 = *(v7 + 8 * v8);
        }

        v1 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        NearbyGroupMember.handle.getter();
        v10 = objc_allocWithZone(IDSURI);
        v11 = String._bridgeToObjectiveC()();

        v12 = [v10 initWithPrefixedURI:v11];

        if (!v12)
        {
          if (one-time initialization token for firewall != -1)
          {
            swift_once();
          }

          v14 = type metadata accessor for Logger();
          v15 = __swift_project_value_buffer(v14, static Log.firewall);
          v16 = v1;
          v1 = v15;
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v20 = v3;
            v21 = swift_slowAlloc();
            v37 = v21;
            *v19 = 136315138;
            v33[2] = NearbyGroupMember.handle.getter();
            v33[3] = v22;
            v23 = String.init<A>(reflecting:)();
            v1 = v24;
            v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v37);

            *(v19 + 4) = v25;
            v2 = v32;
            _os_log_impl(&_mh_execute_header, v17, v18, "Failed to convert handle %s to IDSURI", v19, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v21);
            v3 = v20;
            v4 = v31;
          }

          v7 = v34;
          goto LABEL_7;
        }

        v13 = [objc_allocWithZone(IDSFirewallEntry) initWithURI:v12];

        if (v13)
        {
          break;
        }

LABEL_7:
        ++v8;
        if (v6 == v4)
        {
          v2 = v30;
          goto LABEL_25;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v1 = &v36;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v36;
      v33[8] = v36;
    }

    while (v6 != v4);
  }

LABEL_25:
  v35 = (*(v33[6] + 8) + **(v33[6] + 8));
  v26 = swift_task_alloc();
  v33[9] = v26;
  *v26 = v33;
  v26[1] = FirewallProvider.donateEntries(_:);
  v27 = v33[6];
  v28 = v33[5];

  return v35(v2, v28, v27);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = FirewallProvider.donateEntries(_:);
  }

  else
  {
    v2 = FirewallProvider.donateEntries(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NearbyGroupFirewall.deinit()
{
  swift_unknownObjectWeakDestroy();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  return v0;
}

uint64_t NearbyGroupFirewall.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14NearbySessions0H13AdvertisementC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t partial apply for closure #1 in NearbyGroupFirewall.init(group:service:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyGroupFirewall.init(group:service:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14NearbySessions0H13AdvertisementC_Tt1g5Tm(v2, 0);

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, v3 + 4, v2, v1);
    outlined consume of Set<IDSAccount>.Iterator._Variant(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for NearbyGroupMember();
  lazy protocol witness table accessor for type NearbyGroupMember and conformance NSObject();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for NearbyGroupMember();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D11GroupMemberCG_SSs5NeverOTg5024_s44com_apple_SharePlay_d138InvitationsService18IDSServiceProtocolPAAE4send_4from2to8priority7options10identifiery10Foundation4DataV_So10IDSAccountCShy0E8Sessions0E11fG78CGSo18IDSMessagePriorityVSDys11AnyHashableVypGSAySo8NSStringCSgGSgtKFSSAQXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_37;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        specialized Set.subscript.getter(v38, v39, v40, v1);
        v12 = v11;
        v13 = NearbyGroupMember.tokenID.getter();
        if (!v14)
        {
          v13 = NearbyGroupMember.handle.getter();
        }

        v15 = v13;
        v16 = v14;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v15;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_42;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14NearbySessions0B11GroupMemberC_GMd, &_sSh5IndexVy14NearbySessions0B11GroupMemberC_GMR);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_34:
            outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_43;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_38;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_40;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_33;
              }
            }

            outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v8, v35, 0);
          }

LABEL_33:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(_BYTE *, uint64_t))
{
  v10 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v27[-v16];
  if (!a1)
  {
    goto LABEL_17;
  }

  v28 = 1835365481;
  v29 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v18, v32);
  outlined destroy of AnyHashable(v30);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v28 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v28 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v28 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v28 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v28)
    {
      goto LABEL_17;
    }
  }

  else if (v28 != a4)
  {
    goto LABEL_17;
  }

  v28 = 0x64616F6C796170;
  v29 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v21 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v30);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v20, v32);
  outlined destroy of AnyHashable(v30);
  if (swift_dynamicCast())
  {
    v22 = v28;
    v23 = v29;
    v32[0] = v28;
    v32[1] = v29;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    outlined copy of Data._Representation(v28, v29);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest, &protocol conformance descriptor for NearbyProtoConnectionRequest);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined init with copy of NearbyProtoJoinRequest.Content(v14, v17, type metadata accessor for NearbyProtoConnectionRequest);
    (*(v12 + 56))(v17, 0, 1, v11);
    a6(v17, 0);
    outlined consume of Data._Representation(v22, v23);
    outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
    return outlined destroy of NearbyProtoConnectionResponse.Content(v14, type metadata accessor for NearbyProtoConnectionRequest);
  }

LABEL_17:
  (*(v12 + 56))(v17, 1, 1, v11);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v24 = swift_allocError();
  *v25 = 3;
  a6(v17, v24);

  return outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
}

{
  v10 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v27[-v16];
  if (!a1)
  {
    goto LABEL_17;
  }

  v28 = 1835365481;
  v29 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v18, v32);
  outlined destroy of AnyHashable(v30);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v28 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v28 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v28 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v28 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v28)
    {
      goto LABEL_17;
    }
  }

  else if (v28 != a4)
  {
    goto LABEL_17;
  }

  v28 = 0x64616F6C796170;
  v29 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v21 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v30);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v20, v32);
  outlined destroy of AnyHashable(v30);
  if (swift_dynamicCast())
  {
    v22 = v28;
    v23 = v29;
    v32[0] = v28;
    v32[1] = v29;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    outlined copy of Data._Representation(v28, v29);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined init with copy of NearbyProtoJoinRequest.Content(v14, v17, type metadata accessor for NearbyProtoConnectionResponse.Content);
    (*(v12 + 56))(v17, 0, 1, v11);
    a6(v17, 0);
    outlined consume of Data._Representation(v22, v23);
    outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
    return outlined destroy of NearbyProtoConnectionResponse.Content(v14, type metadata accessor for NearbyProtoConnectionResponse.Content);
  }

LABEL_17:
  (*(v12 + 56))(v17, 1, 1, v11);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v24 = swift_allocError();
  *v25 = 3;
  a6(v17, v24);

  return outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
}

{
  v10 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v27[-v16];
  if (!a1)
  {
    goto LABEL_17;
  }

  v28 = 1835365481;
  v29 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v18, v32);
  outlined destroy of AnyHashable(v30);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v28 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v28 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v28 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v28 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v28)
    {
      goto LABEL_17;
    }
  }

  else if (v28 != a4)
  {
    goto LABEL_17;
  }

  v28 = 0x64616F6C796170;
  v29 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v21 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v30);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v20, v32);
  outlined destroy of AnyHashable(v30);
  if (swift_dynamicCast())
  {
    v22 = v28;
    v23 = v29;
    v32[0] = v28;
    v32[1] = v29;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    outlined copy of Data._Representation(v28, v29);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content, &protocol conformance descriptor for NearbyProtoJoinRequest.Content);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined init with copy of NearbyProtoJoinRequest.Content(v14, v17, type metadata accessor for NearbyProtoJoinRequest.Content);
    (*(v12 + 56))(v17, 0, 1, v11);
    a6(v17, 0);
    outlined consume of Data._Representation(v22, v23);
    outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
    return outlined destroy of NearbyProtoConnectionResponse.Content(v14, type metadata accessor for NearbyProtoJoinRequest.Content);
  }

LABEL_17:
  (*(v12 + 56))(v17, 1, 1, v11);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v24 = swift_allocError();
  *v25 = 3;
  a6(v17, v24);

  return outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
}

{
  v10 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v27[-v16];
  if (!a1)
  {
    goto LABEL_17;
  }

  v28 = 1835365481;
  v29 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v18, v32);
  outlined destroy of AnyHashable(v30);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v28 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v28 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v28 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v28 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v28)
    {
      goto LABEL_17;
    }
  }

  else if (v28 != a4)
  {
    goto LABEL_17;
  }

  v28 = 0x64616F6C796170;
  v29 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v21 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v30);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v20, v32);
  outlined destroy of AnyHashable(v30);
  if (swift_dynamicCast())
  {
    v22 = v28;
    v23 = v29;
    v32[0] = v28;
    v32[1] = v29;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    outlined copy of Data._Representation(v28, v29);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content, &protocol conformance descriptor for NearbyProtoJoinResponse.Content);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined init with copy of NearbyProtoJoinRequest.Content(v14, v17, type metadata accessor for NearbyProtoJoinResponse.Content);
    (*(v12 + 56))(v17, 0, 1, v11);
    a6(v17, 0);
    outlined consume of Data._Representation(v22, v23);
    outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
    return outlined destroy of NearbyProtoConnectionResponse.Content(v14, type metadata accessor for NearbyProtoJoinResponse.Content);
  }

LABEL_17:
  (*(v12 + 56))(v17, 1, 1, v11);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v24 = swift_allocError();
  *v25 = 3;
  a6(v17, v24);

  return outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
}

{
  v10 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for NearbyGroup_Group(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v27[-v16];
  if (!a1)
  {
    goto LABEL_17;
  }

  v28 = 1835365481;
  v29 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v18, v32);
  outlined destroy of AnyHashable(v30);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v28 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v28 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v28 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v28 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v28)
    {
      goto LABEL_17;
    }
  }

  else if (v28 != a4)
  {
    goto LABEL_17;
  }

  v28 = 0x64616F6C796170;
  v29 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v21 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v30);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v20, v32);
  outlined destroy of AnyHashable(v30);
  if (swift_dynamicCast())
  {
    v22 = v28;
    v23 = v29;
    v32[0] = v28;
    v32[1] = v29;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    outlined copy of Data._Representation(v28, v29);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group, &protocol conformance descriptor for NearbyGroup_Group);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined init with copy of NearbyProtoJoinRequest.Content(v14, v17, type metadata accessor for NearbyGroup_Group);
    (*(v12 + 56))(v17, 0, 1, v11);
    a6(v17, 0);
    outlined consume of Data._Representation(v22, v23);
    outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
    return outlined destroy of NearbyProtoConnectionResponse.Content(v14, type metadata accessor for NearbyGroup_Group);
  }

LABEL_17:
  (*(v12 + 56))(v17, 1, 1, v11);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v24 = swift_allocError();
  *v25 = 3;
  a6(v17, v24);

  return outlined destroy of Any?(v17, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
}

id NearbyIDSServiceController.__allocating_init(queue:service:delegate:joinRequestsController:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  __chkstk_darwin(v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = specialized NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(a1, v17, a3, a4, a5, v12, v13, v14);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v19;
}

uint64_t IDSServiceProtocol.send(_:from:to:priority:options:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D11GroupMemberCG_SSs5NeverOTg5024_s44com_apple_SharePlay_d138InvitationsService18IDSServiceProtocolPAAE4send_4from2to8priority7options10identifiery10Foundation4DataV_So10IDSAccountCShy0E8Sessions0E11fG78CGSo18IDSMessagePriorityVSDys11AnyHashableVypGSAySo8NSStringCSgGSgtKFSSAQXEfU_Tf1cn_n(a4);
  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v14);

  v16 = specialized _setUpCast<A, B>(_:)(v15);

  (*(a9 + 48))(a1, a2, a3, v16, a5, a6, a7, a8, a9);
}

Swift::Int specialized _setUpCast<A, B>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v15];
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++v2[2];
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

    v5 = *(a1 + 56 + 8 * v12);
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

id @nonobjc IDSService.send(_:toDestinations:priority:options:identifier:)(uint64_t a1, unint64_t a2, objc_class *a3, uint64_t a4, Class a5, uint64_t a6)
{
  v7 = v6;
  v11 = a3;
  if (a2 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = 0;
  if (a3)
  {
LABEL_5:
    v11 = Set._bridgeToObjectiveC()().super.isa;
  }

LABEL_6:
  if (a5)
  {
    a5 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v16 = 0;
  v13 = [v7 sendData:isa toDestinations:v11 priority:a4 options:a5 identifier:a6 error:&v16];

  if (v13)
  {
    return v16;
  }

  v15 = v16;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id @nonobjc IDSService.send(_:from:toDestinations:priority:options:identifier:)(uint64_t a1, unint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, Class a6, uint64_t a7)
{
  v8 = v7;
  v12 = a4;
  if (a2 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = 0;
  if (a4)
  {
LABEL_5:
    v12 = Set._bridgeToObjectiveC()().super.isa;
  }

LABEL_6:
  if (a6)
  {
    a6 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v18 = 0;
  v15 = [v8 sendData:isa fromAccount:a3 toDestinations:v12 priority:a5 options:a6 identifier:a7 error:&v18];

  if (v15)
  {
    return v18;
  }

  v17 = v18;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t NearbyIDSServiceController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyIDSServiceController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return NearbyInvitationAdvertiser.delegate.modify;
}

uint64_t NearbyIDSServiceController.firewall.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_firewall;
  swift_beginAccess();
  return outlined init with copy of (String, Any)(v1 + v3, a1, &_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMR);
}

uint64_t NearbyIDSServiceController.firewall.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_firewall;
  swift_beginAccess();
  outlined assign with take of FirewallProvider?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t NearbyIDSServiceController.requesterCredentialsByOwnerPseudonym.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_requesterCredentialsByOwnerPseudonym;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id NearbyIDSServiceController.contactStore.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController____lazy_storage___contactStore);
  }

  else
  {
    v4 = closure #1 in NearbyIDSServiceController.contactStore.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in NearbyIDSServiceController.contactStore.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 tu_contactStoreConfigurationForBundleIdentifier:v3];

  v5 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v4];
  return v5;
}

id NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  __chkstk_darwin(v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = specialized NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(a1, v15, a3, a4, a5, v5, v11, v12);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v17;
}

uint64_t closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return _swift_task_switch(closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:), 0, 0);
}

uint64_t closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)()
{
  v1 = *(v0 + 72);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:);

  return v6(v0 + 16, v2, v3);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:);
  }

  else
  {
    v2 = closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  (*((swift_isaMask & **(v0 + 64)) + 0xA8))(v0 + 16);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetched firewall.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v14 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[7] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch firewall, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyIDSServiceController.denyConnectionRequest(id:destinationHandle:)(Swift::String id, Swift::String destinationHandle)
{
  v40 = destinationHandle;
  v3 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NearbyProtoSessionMessage(0);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  UnknownStorage.init()();
  v15 = &v8[v6[5]];
  *v15 = 0;
  v15[4] = 1;
  v16 = &v8[v6[6]];
  *v16 = 0;
  *(v16 + 4) = 256;
  v17 = &v8[v6[7]];
  *v17 = xmmword_1000C8990;
  *v16 = 4;
  *(v16 + 4) = 1;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content);
  v18 = v41;
  static Message.with(_:)();
  v19 = Message.serializedData(partial:)();
  v3 = v18;
  if (v18)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content(v5, type metadata accessor for NearbyProtoConnectionResponse.Content);
    goto LABEL_10;
  }

  v21 = v19;
  v22 = v20;
  v41 = v5;
  outlined consume of Data?(*v17, *(v17 + 1));
  *v17 = v21;
  *(v17 + 1) = v22;
  if (one-time initialization token for host != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.host);
  object = v40._object;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v44 = v28;
    *v27 = 136315138;
    countAndFlagsBits = v40._countAndFlagsBits;
    v43 = object;

    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v44);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Sending deny connection message to %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);
  v32 = Message.serializedData(partial:)();
  if (!v3)
  {
    v34 = v32;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C8970;
    v37 = v40._object;
    *(inited + 32) = v40._countAndFlagsBits;
    *(inited + 40) = v37;

    v38 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    (*((swift_isaMask & *v39) + 0x120))(v34, v35, v38, 0, 0, 0);

    outlined consume of Data._Representation(v34, v35);
  }

  outlined destroy of NearbyProtoConnectionResponse.Content(v41, type metadata accessor for NearbyProtoConnectionResponse.Content);
LABEL_10:
  outlined destroy of NearbyProtoConnectionResponse.Content(v8, type metadata accessor for NearbyProtoSessionMessage);
}

uint64_t closure #1 in NearbyIDSServiceController.denyConnectionRequest(id:destinationHandle:)(uint64_t a1)
{
  v2 = type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent(0);
  __chkstk_darwin(v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.DeniedContent);
  static Message.with(_:)();
  v5 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  outlined destroy of Any?(a1 + v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoSessionMessage(v4, a1 + v5, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
  v6 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v6 - 8) + 56))(a1 + v5, 0, 1, v6);
}

uint64_t NearbyIDSServiceController.approveConnectionRequest(id:localInvitation:destinationHandle:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v56 = a2;
  v51 = a5;
  v52 = a6;
  v54 = a1;
  v55 = a4;
  v53 = a3;
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  __chkstk_darwin(v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NearbyProtoSessionMessage(0);
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v6;
  v17 = *(v6 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v20 = *(v14 + 8);
  v19 = (v14 + 8);
  v20(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  v21 = UnknownStorage.init()();
  v22 = &v12[v10[5]];
  *v22 = 0;
  v22[4] = 1;
  v23 = &v12[v10[6]];
  *v23 = 0;
  *(v23 + 4) = 256;
  v19 = v12;
  v24 = &v12[v10[7]];
  *v24 = xmmword_1000C8990;
  *v23 = 4;
  *(v23 + 4) = 1;
  __chkstk_darwin(v21);
  v25 = v54;
  v26 = v55;
  *(&v50 - 4) = v53;
  *(&v50 - 3) = v26;
  *(&v50 - 2) = v25;
  *(&v50 - 1) = v56;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content);
  v27 = v57;
  static Message.with(_:)();
  v28 = Message.serializedData(partial:)();
  v16 = v27;
  if (v27)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content(v9, type metadata accessor for NearbyProtoConnectionResponse.Content);
    v30 = v12;
    return outlined destroy of NearbyProtoConnectionResponse.Content(v30, type metadata accessor for NearbyProtoSessionMessage);
  }

  v31 = v28;
  v32 = v29;
  v57 = v9;
  outlined consume of Data?(*v24, *(v24 + 1));
  *v24 = v31;
  *(v24 + 1) = v32;
  if (one-time initialization token for host != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.host);
  v34 = v52;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  v30 = v19;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60 = v56;
    *v37 = 136315138;
    v58 = v51;
    v59 = v34;

    v38 = String.init<A>(reflecting:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v60);

    *(v37 + 4) = v40;
    v41 = v57;
    _os_log_impl(&_mh_execute_header, v35, v36, "Sending approve connection message to %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
  }

  else
  {

    v41 = v57;
  }

  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);
  v42 = Message.serializedData(partial:)();
  if (!v16)
  {
    v44 = v42;
    v45 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C8970;
    v47 = v52;
    *(inited + 32) = v51;
    *(inited + 40) = v47;

    v48 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    (*((swift_isaMask & *v50) + 0x120))(v44, v45, v48, 0, 0, 1);

    outlined consume of Data._Representation(v44, v45);
  }

  outlined destroy of NearbyProtoConnectionResponse.Content(v41, type metadata accessor for NearbyProtoConnectionResponse.Content);
  return outlined destroy of NearbyProtoConnectionResponse.Content(v30, type metadata accessor for NearbyProtoSessionMessage);
}

uint64_t closure #1 in NearbyIDSServiceController.approveConnectionRequest(id:localInvitation:destinationHandle:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v22 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  outlined init with copy of (String, Any)(&a1[v13], v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of Any?(v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_6:
    *v12 = xmmword_1000CAAE0;
    UnknownStorage.init()();
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content(v9, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    goto LABEL_6;
  }

  outlined init with take of NearbyProtoSessionMessage(v9, v12, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
LABEL_7:
  v16 = *v12;
  v17 = *(v12 + 1);
  v18 = v22;
  outlined copy of Data._Representation(a2, v22);
  outlined consume of Data._Representation(v16, v17);
  *v12 = a2;
  *(v12 + 1) = v18;
  outlined destroy of Any?(&a1[v13], &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoSessionMessage(v12, &a1[v13], type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  swift_storeEnumTagMultiPayload();
  (*(v15 + 56))(&a1[v13], 0, 1, v14);
  v19 = v24;

  *a1 = v23;
  *(a1 + 1) = v19;
  return result;
}

void NearbyIDSServiceController.sendAcceptedJoinRequestResponse(pendingMember:response:)(void *a1, void *a2)
{
  v3 = v2;
  v96 = a2;
  v5 = type metadata accessor for NearbyProtoSessionMessage(0);
  __chkstk_darwin(v5);
  v93 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  __chkstk_darwin(v7);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v16 = dispatch thunk of IncomingInvitationJoinRequest.hostInfo.getter();
  if (v16)
  {
    v91 = v5;
    v17 = v16;
    v92 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
    v94 = v18;
    __chkstk_darwin(v92);
    v19 = v96;
    *(&v84 - 2) = a1;
    *(&v84 - 1) = v19;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content, &protocol conformance descriptor for NearbyProtoJoinResponse.Content);
    v20 = v95;
    static Message.with(_:)();
    v21 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController);
    v22 = Message.serializedData(partial:)();
    if (v20)
    {
      outlined destroy of NearbyProtoConnectionResponse.Content(v9, type metadata accessor for NearbyProtoJoinResponse.Content);
    }

    else
    {
      v35 = v22;
      v36 = v23;
      v88 = v3;
      v90 = v9;
      v95 = v17;
      v89 = a1;
      v37 = IncomingInvitationJoinRequest.remotePublicKey.getter();
      v39 = v38;
      v40 = v94;
      v41 = (*((swift_isaMask & *v21) + 0xB8))(v35, v36, v37, v38, v92, v94);
      v42 = v40;
      v44 = v43;
      v45 = v41;
      outlined consume of Data._Representation(v37, v39);
      v46 = outlined consume of Data._Representation(v35, v36);
      __chkstk_darwin(v46);
      *(&v84 - 2) = v45;
      *(&v84 - 1) = v44;
      v47 = lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);
      v48 = v93;
      static Message.with(_:)();
      v85 = v47;
      v86 = v45;
      v87 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      v84 = xmmword_1000C8970;
      *(inited + 16) = xmmword_1000C8970;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v92;
      *(inited + 40) = v51;
      *(inited + 48) = v50;
      *(inited + 56) = v42;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of Any?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);

      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Log.host);
      v53 = v96;
      v54 = v89;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138412546;
        *(v57 + 4) = v53;
        *(v57 + 12) = 2112;
        *(v57 + 14) = v54;
        *v58 = v53;
        v58[1] = v54;
        v59 = v53;
        v60 = v54;
        _os_log_impl(&_mh_execute_header, v55, v56, "We are about to send a join response with this response %@ and this %@", v57, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
      }

      v61 = IncomingInvitationJoinRequest.destinationToken.getter();
      if (v62)
      {
        v63 = v61;
        v64 = v62;
        v65 = Message.serializedData(partial:)();
        v67 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v68 = swift_initStackObject();
        *(v68 + 16) = v84;
        *(v68 + 32) = v63;
        v69 = v68 + 32;
        *(v68 + 40) = v64;
        v70 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v68);
        swift_setDeallocating();
        v71 = v67;
        v72 = v94;
        outlined destroy of String(v69);
        (*((swift_isaMask & *v88) + 0x120))(v65, v71, v70, v92, v72, 1);

        outlined consume of Data._Representation(v86, v87);

        outlined consume of Data._Representation(v65, v71);
      }

      else
      {
        v73 = IncomingInvitationJoinRequest.remotePseudonym.getter();
        v75 = v74;
        v76 = Message.serializedData(partial:)();
        v78 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v79 = swift_initStackObject();
        *(v79 + 16) = v84;
        *(v79 + 32) = v73;
        v80 = v79 + 32;
        *(v79 + 40) = v75;
        v81 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v79);
        swift_setDeallocating();
        v82 = v78;
        v83 = v94;
        outlined destroy of String(v80);
        (*((swift_isaMask & *v88) + 0x120))(v76, v82, v81, v92, v83, 1);

        outlined consume of Data._Representation(v86, v87);

        outlined consume of Data._Representation(v76, v82);
      }

      outlined destroy of NearbyProtoConnectionResponse.Content(v48, type metadata accessor for NearbyProtoSessionMessage);
      outlined destroy of NearbyProtoConnectionResponse.Content(v90, type metadata accessor for NearbyProtoJoinResponse.Content);
    }

    return;
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.host);
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v98 = v29;
    *v28 = 136315138;
    v97 = v25;
    type metadata accessor for IncomingInvitationJoinRequest();
    v30 = v25;
    v31 = String.init<A>(reflecting:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v98);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Failed to find hostInfo on pendingMember: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  lazy protocol witness table accessor for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors();
  swift_allocError();
  *v34 = 0;
  swift_willThrow();
}

uint64_t closure #1 in NearbyIDSServiceController.sendAcceptedJoinRequestResponse(pendingMember:response:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  __chkstk_darwin(v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  IncomingInvitationJoinRequest.invitationID.getter();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);

  *a1 = v12;
  a1[1] = v14;
  v19 = a3;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.ApprovalContent);
  static Message.with(_:)();
  v15 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  outlined destroy of Any?(a1 + v15, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoSessionMessage(v7, a1 + v15, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  v16 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a1 + v15, 0, 1, v16);
}

uint64_t closure #1 in closure #1 in NearbyIDSServiceController.sendAcceptedJoinRequestResponse(pendingMember:response:)(uint64_t *a1)
{
  v2 = InvitationJoinResponse.sessionIdentifier.getter();
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    *a1 = v4;
    a1[1] = v5;
  }

  v6 = InvitationJoinResponse.userInfo.getter();
  if (v7 >> 60 != 15)
  {
    v8 = v6;
    v9 = v7;
    v10 = a1 + *(type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0) + 28);
    outlined consume of Data?(*v10, *(v10 + 1));
    *v10 = v8;
    *(v10 + 1) = v9;
  }

  result = InvitationJoinResponse.memberHandles.getter();
  if (result)
  {
    v12 = result;

    a1[2] = v12;
  }

  return result;
}

void NearbyIDSServiceController.sendRejectedRequestResponse(pendingMember:)(void *a1)
{
  v89 = type metadata accessor for NearbyProtoSessionMessage(0);
  __chkstk_darwin(v89);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  __chkstk_darwin(v5);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = v1;
  v12 = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  v14 = dispatch thunk of IncomingInvitationJoinRequest.hostInfo.getter();
  if (v14)
  {
    v15 = v14;
    v87 = v4;
    v88 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
    v17 = v16;
    __chkstk_darwin(v88);
    *(&v81 - 2) = a1;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content, &protocol conformance descriptor for NearbyProtoJoinResponse.Content);
    v18 = v90;
    static Message.with(_:)();
    v19 = *(v91 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController);
    v20 = Message.serializedData(partial:)();
    if (v18)
    {
      outlined destroy of NearbyProtoConnectionResponse.Content(v7, type metadata accessor for NearbyProtoJoinResponse.Content);

      return;
    }

    v33 = v20;
    v34 = v21;
    v86 = v7;
    v90 = v15;
    v35 = IncomingInvitationJoinRequest.remotePublicKey.getter();
    v37 = v36;
    v38 = (*((swift_isaMask & *v19) + 0xB8))(v33, v34, v35, v36, v88, v17);
    v40 = v39;
    v85 = v17;
    v41 = v38;
    outlined consume of Data._Representation(v35, v37);
    v42 = outlined consume of Data._Representation(v33, v34);
    __chkstk_darwin(v42);
    *(&v81 - 2) = v41;
    *(&v81 - 1) = v40;
    v43 = lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);
    v44 = v40;
    v45 = v87;
    static Message.with(_:)();
    v82 = v43;
    v83 = 0;
    v84 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    v81 = xmmword_1000C8970;
    *(inited + 16) = xmmword_1000C8970;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v88;
    *(inited + 40) = v48;
    *(inited + 48) = v47;
    *(inited + 56) = v85;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of Any?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);

    v49 = v90;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Log.host);
    v51 = a1;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&_mh_execute_header, v52, v53, "We are about to send a reject response for %@", v54, 0xCu);
      outlined destroy of Any?(v55, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v49 = v90;
    }

    v57 = IncomingInvitationJoinRequest.destinationToken.getter();
    if (v58)
    {
      v59 = v57;
      v60 = v58;
      v61 = v45;
      v62 = v83;
      v63 = Message.serializedData(partial:)();
      if (!v62)
      {
        v65 = v63;
        v66 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v67 = swift_initStackObject();
        *(v67 + 16) = v81;
        *(v67 + 32) = v59;
        v68 = v67 + 32;
        *(v67 + 40) = v60;
        v69 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v67);
        swift_setDeallocating();
        outlined destroy of String(v68);
        (*((swift_isaMask & *v91) + 0x120))(v65, v66, v69, v88, v85, 0);

        outlined consume of Data._Representation(v84, v44);

        outlined consume of Data._Representation(v65, v66);

LABEL_19:
        outlined destroy of NearbyProtoConnectionResponse.Content(v87, type metadata accessor for NearbyProtoSessionMessage);
        outlined destroy of NearbyProtoConnectionResponse.Content(v86, type metadata accessor for NearbyProtoJoinResponse.Content);
        return;
      }
    }

    else
    {
      v70 = IncomingInvitationJoinRequest.remotePseudonym.getter();
      v72 = v71;
      v61 = v45;
      v73 = v83;
      v74 = Message.serializedData(partial:)();
      if (!v73)
      {
        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v78 = swift_initStackObject();
        *(v78 + 16) = v81;
        *(v78 + 32) = v70;
        v79 = v78 + 32;
        *(v78 + 40) = v72;
        v80 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v78);
        swift_setDeallocating();
        outlined destroy of String(v79);
        (*((swift_isaMask & *v91) + 0x120))(v76, v77, v80, v88, v85, 0);

        outlined consume of Data._Representation(v84, v44);

        outlined consume of Data._Representation(v76, v77);
        goto LABEL_19;
      }
    }

    outlined consume of Data._Representation(v84, v44);

    outlined destroy of NearbyProtoConnectionResponse.Content(v61, type metadata accessor for NearbyProtoSessionMessage);
    outlined destroy of NearbyProtoConnectionResponse.Content(v86, type metadata accessor for NearbyProtoJoinResponse.Content);
    return;
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_21;
  }

LABEL_6:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.host);
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v93 = v27;
    *v26 = 136315138;
    v92[0] = v23;
    type metadata accessor for IncomingInvitationJoinRequest();
    v28 = v23;
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v93);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to find hostInfo on pendingMember: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  lazy protocol witness table accessor for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors();
  swift_allocError();
  *v32 = 0;
  swift_willThrow();
}

uint64_t closure #1 in NearbyIDSServiceController.sendRejectedRequestResponse(pendingMember:)(uint64_t *a1)
{
  v2 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  IncomingInvitationJoinRequest.invitationID.getter();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);

  *a1 = v9;
  a1[1] = v11;
  UnknownStorage.init()();
  v12 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  outlined destroy of Any?(a1 + v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoSessionMessage(v4, a1 + v12, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
  v13 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v13 - 8) + 56))(a1 + v12, 0, 1, v13);
}

uint64_t closure #2 in NearbyIDSServiceController.sendAcceptedJoinRequestResponse(pendingMember:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for NearbyProtoJoinResponse(0);
  __chkstk_darwin(v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for NearbyProtoSessionMessage(0);
  v12 = a1 + *(v11 + 24);
  *v12 = 2;
  *(v12 + 8) = 1;
  v20 = a2;
  v21 = a3;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse, &protocol conformance descriptor for NearbyProtoJoinResponse);
  static Message.with(_:)();
  v13 = Message.serializedData(partial:)();
  if (v4)
  {
    return outlined destroy of NearbyProtoConnectionResponse.Content(v10, type metadata accessor for NearbyProtoJoinResponse);
  }

  v16 = v13;
  v17 = v14;
  outlined destroy of NearbyProtoConnectionResponse.Content(v10, type metadata accessor for NearbyProtoJoinResponse);
  v18 = a1 + *(v11 + 28);
  result = outlined consume of Data?(*v18, *(v18 + 8));
  *v18 = v16;
  *(v18 + 8) = v17;
  return result;
}

uint64_t closure #1 in closure #2 in NearbyIDSServiceController.sendAcceptedJoinRequestResponse(pendingMember:response:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for NearbyProtoJoinResponse(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  outlined copy of Data._Representation(a2, a3);
  result = outlined consume of Data?(v6, v7);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t NearbyIDSServiceController.sendRequestConnectionWithNearbyHost(fromHandle:nearbyAdvertisement:)(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a1;
  v7 = type metadata accessor for NearbyProtoConnectionRequest(0);
  __chkstk_darwin(v7);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NearbyProtoSessionMessage(0);
  __chkstk_darwin(v9);
  v75 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v73 = a2;
  v17 = NearbyAdvertisement.contactID.getter();
  if (!v18)
  {
    lazy protocol witness table accessor for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors();
    swift_allocError();
    v28 = 1;
LABEL_10:
    *v27 = v28;
    return swift_willThrow();
  }

  v19 = v17;
  v20 = v18;
  NearbyAdvertisement.handle.getter();
  if (!v21)
  {

    lazy protocol witness table accessor for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors();
    swift_allocError();
    v28 = 2;
    goto LABEL_10;
  }

  v22 = String._bridgeToObjectiveC()();

  v23 = [v22 IDSFormattedDestinationID];

  if (!v23)
  {

    lazy protocol witness table accessor for type IDSServiceError and conformance IDSServiceError();
    swift_allocError();
    return swift_willThrow();
  }

  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000C8980;
  *(v25 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  type metadata accessor for NearbyAdvertisement();
  if (v19 == static NearbyAdvertisement.meContactID.getter() && v20 == v26)
  {

    goto LABEL_14;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_14:

    v31 = NearbyIDSServiceController.contactStore.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v77 = 0;
    v33 = [v31 _ios_meContactWithKeysToFetch:isa error:&v77];

    v34 = v77;
    if (v33)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v47 = NearbyIDSServiceController.contactStore.getter();
  v48 = String._bridgeToObjectiveC()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  v49 = Array._bridgeToObjectiveC()().super.isa;

  v77 = 0;
  v33 = [v47 unifiedContactWithIdentifier:v48 keysToFetch:v49 error:&v77];

  v34 = v77;
  if (!v33)
  {
LABEL_18:
    v50 = v34;

    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

LABEL_15:
  v68 = v4;
  v35 = v34;
  v4 = v33;
  v36 = v75;
  v37 = UnknownStorage.init()();
  v70 = &v67;
  v38 = &v36[v9[5]];
  *v38 = 0;
  v38[4] = 1;
  v39 = &v36[v9[6]];
  *v39 = 0;
  *(v39 + 4) = 256;
  v40 = &v36[v9[7]];
  *v40 = xmmword_1000C8990;
  *v39 = 3;
  *(v39 + 4) = 1;
  __chkstk_darwin(v37);
  v41 = v73;
  v42 = v74;
  *(&v67 - 4) = v4;
  *(&v67 - 3) = v42;
  *(&v67 - 2) = v41;
  *(&v67 - 1) = a3;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest, &protocol conformance descriptor for NearbyProtoConnectionRequest);
  v43 = v76;
  v44 = v72;
  static Message.with(_:)();

  v45 = Message.serializedData(partial:)();
  if (!v44)
  {
    v51 = v45;
    v52 = v46;
    outlined consume of Data?(*v40, *(v40 + 1));
    *v40 = v51;
    *(v40 + 1) = v52;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);
    v9 = Message.serializedData(partial:)();
    a3 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C8970;
    *(inited + 32) = v69;
    v56 = inited + 32;
    *(inited + 40) = v71;
    v57 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(v56);
    v58 = (*((swift_isaMask & *v68) + 0x120))(v9, a3, v57, v74, v73, 1);
    v14 = v59;
    v73 = v58;

    if (one-time initialization token for host == -1)
    {
LABEL_22:
      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Log.host);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();

      v74 = v61;
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v77 = v64;
        *v63 = 136315138;
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v14, &v77);

        *(v63 + 4) = v65;
        v66 = v74;
        _os_log_impl(&_mh_execute_header, v74, v62, "Sent IDS message with identifier: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);

        outlined consume of Data._Representation(v9, a3);
      }

      else
      {

        outlined consume of Data._Representation(v9, a3);
      }

      outlined destroy of NearbyProtoConnectionResponse.Content(v76, type metadata accessor for NearbyProtoConnectionRequest);
      v53 = v75;
      return outlined destroy of NearbyProtoConnectionResponse.Content(v53, type metadata accessor for NearbyProtoSessionMessage);
    }

LABEL_27:
    swift_once();
    goto LABEL_22;
  }

  outlined destroy of NearbyProtoConnectionResponse.Content(v43, type metadata accessor for NearbyProtoConnectionRequest);

  v53 = v36;
  return outlined destroy of NearbyProtoConnectionResponse.Content(v53, type metadata accessor for NearbyProtoSessionMessage);
}

uint64_t closure #1 in NearbyIDSServiceController.sendRequestConnectionWithNearbyHost(fromHandle:nearbyAdvertisement:)(uint64_t *a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 givenName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v12 = (a1 + *(v11 + 28));

  *v12 = v8;
  v12[1] = v10;

  a1[2] = a3;
  a1[3] = a4;
  v13 = NearbyAdvertisement.identifier.getter();
  v15 = v14;

  *a1 = v13;
  a1[1] = v15;
  result = NearbyAdvertisement.userInfo.getter();
  if (v17 >> 60 != 15)
  {
    v18 = result;
    v19 = v17;
    v20 = a1 + *(v11 + 32);
    result = outlined consume of Data?(*v20, *(v20 + 1));
    *v20 = v18;
    *(v20 + 1) = v19;
  }

  return result;
}

uint64_t NearbyIDSServiceController.sendJoinRequest(for:from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v138 = a3;
  v132 = a2;
  v129 = type metadata accessor for NearbyProtoSessionMessage(0);
  v7 = __chkstk_darwin(v129);
  v127 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = &v125 - v9;
  v140 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v10 = __chkstk_darwin(v140);
  v137 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v143 = &v125 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v141 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = v4;
  v20 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v126 = a4;
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Log.host);
  v24 = v138;

  v25 = a1;
  v142 = v23;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v134 = v14;
  v135 = v13;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    *v29 = 136315394;
    v144 = v132;
    v145 = v24;

    v30 = String.init<A>(reflecting:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v146);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v144 = v25;
    type metadata accessor for InvitationApprovalRequest();
    v33 = v25;
    v34 = String.init<A>(reflecting:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v146);

    *(v29 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to create and send joinRequest from: %s for request: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  v37 = v143;
  v38 = InvitationApprovalRequest.remoteInvitationData.getter();
  v39 = NearbyInvitationData.hostConnectionInfo.getter();

  v128 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
  v133 = v40;

  v41 = v141;
  v42 = UUID.init()();
  __chkstk_darwin(v42);
  *(&v125 - 2) = v25;
  *(&v125 - 1) = v41;
  v43 = lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content, &protocol conformance descriptor for NearbyProtoJoinRequest.Content);
  v44 = v136;
  static Message.with(_:)();
  v136 = v44;
  v45 = v137;
  outlined init with copy of NearbyProtoJoinRequest.Content(v37, v137, type metadata accessor for NearbyProtoJoinRequest.Content);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v48 = os_log_type_enabled(v46, v47);
  v131 = v43;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v144 = v50;
    *v49 = 136315138;
    v51 = Message.debugDescription.getter();
    v52 = v45;
    v54 = v53;
    outlined destroy of NearbyProtoConnectionResponse.Content(v52, type metadata accessor for NearbyProtoJoinRequest.Content);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v54, &v144);

    *(v49 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "Request content: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  else
  {

    outlined destroy of NearbyProtoConnectionResponse.Content(v45, type metadata accessor for NearbyProtoJoinRequest.Content);
  }

  v56 = v25;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v146 = v60;
    *v59 = 136315138;
    v61 = InvitationApprovalRequest.remoteInvitationData.getter();
    v62 = NearbyInvitationData.hostConnectionInfo.getter();

    v63 = NearbyInvitationJoinRequestMetadata.publicKey.getter();
    v65 = v64;

    v144 = v63;
    v145 = v65;
    v66 = String.init<A>(reflecting:)();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v146);

    *(v59 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v57, v58, "Creating RequesterCredentials with publicKey: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  v69 = v143;
  v70 = v139;
  v71 = InvitationApprovalRequest.remoteInvitationData.getter();
  v72 = NearbyInvitationData.hostConnectionInfo.getter();

  NearbyInvitationJoinRequestMetadata.publicKey.getter();
  type metadata accessor for RequesterCredentials();
  swift_allocObject();
  v73 = v136;
  v74 = RequesterCredentials.init(ownerPublicKey:)();
  if (v73)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content(v69, type metadata accessor for NearbyProtoJoinRequest.Content);

    return (*(v134 + 8))(v141, v135);
  }

  else
  {
    v75 = v74;
    v76 = Message.serializedData(partial:)();
    v78 = v77;
    v79 = (*(*v75 + 144))();
    v82 = v81;
    v136 = v79;
    v137 = v83;
    v140 = v84;
    outlined consume of Data._Representation(v76, v78);
    v85 = InvitationApprovalRequest.remoteInvitationData.getter();
    v86 = NearbyInvitationData.hostConnectionInfo.getter();

    v87 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
    v89 = v88;

    v90 = *((swift_isaMask & *v70) + 0xC8);

    v91 = v90(&v144);
    v93 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = *v93;
    *v93 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, v87, v89, isUniquelyReferenced_nonNull_native);
    v95 = v140;

    *v93 = v146;
    v96 = v91(&v144, 0);
    v131 = &v125;
    __chkstk_darwin(v96);
    v97 = v136;
    *(&v125 - 4) = v137;
    *(&v125 - 3) = v95;
    *(&v125 - 2) = v97;
    *(&v125 - 1) = v82;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);
    static Message.with(_:)();
    v98 = Message.serializedData(partial:)();
    v100 = v99;
    v131 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C8970;
    *(inited + 32) = v128;
    v102 = inited + 32;
    *(inited + 40) = v133;
    v103 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(v102);
    v104 = (*((swift_isaMask & *v139) + 0x120))(v98, v100, v103, v132, v138, 1);
    v106 = v105;
    v107 = v104;

    outlined consume of Data._Representation(v98, v100);
    v108 = v130;
    v109 = v127;
    outlined init with copy of NearbyProtoJoinRequest.Content(v130, v127, type metadata accessor for NearbyProtoSessionMessage);

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = v109;
      v113 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v144 = v142;
      *v113 = 136315394;
      v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v106, &v144);
      v115 = v110;
      v116 = v114;

      *(v113 + 4) = v116;
      *(v113 + 12) = 2080;
      v117 = Message.debugDescription.getter();
      v119 = v118;
      outlined destroy of NearbyProtoConnectionResponse.Content(v112, type metadata accessor for NearbyProtoSessionMessage);
      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, &v144);

      *(v113 + 14) = v120;
      _os_log_impl(&_mh_execute_header, v115, v111, "Sent JoinRequest (%s), message: %s", v113, 0x16u);
      swift_arrayDestroy();

      outlined consume of Data._Representation(v137, v140);
      outlined consume of Data._Representation(v136, v131);

      v121 = v130;
    }

    else
    {
      outlined consume of Data._Representation(v137, v140);
      outlined consume of Data._Representation(v136, v131);

      outlined destroy of NearbyProtoConnectionResponse.Content(v109, type metadata accessor for NearbyProtoSessionMessage);
      v121 = v108;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content(v121, type metadata accessor for NearbyProtoSessionMessage);
    outlined destroy of NearbyProtoConnectionResponse.Content(v143, type metadata accessor for NearbyProtoJoinRequest.Content);
    v123 = v134;
    v122 = v135;
    v124 = v141;
    (*(v134 + 16))(v126, v141, v135);
    return (*(v123 + 8))(v124, v122);
  }
}

void closure #1 in NearbyIDSServiceController.sendJoinRequest(for:from:)(uint64_t *a1)
{
  v2 = InvitationApprovalRequest.displayName.getter();
  v4 = v3;
  v5 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v6 = (a1 + v5[6]);

  *v6 = v2;
  v6[1] = v4;
  v7 = UUID.uuidString.getter();
  v9 = v8;

  *a1 = v7;
  a1[1] = v9;
  *(a1 + v5[8]) = 1;
  v10 = InvitationApprovalRequest.userInfo.getter();
  if (v11 >> 60 != 15)
  {
    v13 = v10;
    v15 = v11;
    goto LABEL_5;
  }

  v12 = InvitationApprovalRequest.remoteInvitationData.getter();
  v13 = NearbyInvitationData.userInfo.getter();
  v15 = v14;

  if (v15 >> 60 != 15)
  {
LABEL_5:
    v16 = a1 + v5[7];
    outlined consume of Data?(*v16, *(v16 + 1));
    *v16 = v13;
    *(v16 + 1) = v15;
  }
}

uint64_t closure #2 in NearbyIDSServiceController.sendJoinRequest(for:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for NearbyProtoJoinRequest(0);
  __chkstk_darwin(v11);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for NearbyProtoSessionMessage(0);
  v15 = a1 + *(v14 + 24);
  *v15 = 1;
  *(v15 + 8) = 1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest, &protocol conformance descriptor for NearbyProtoJoinRequest);
  static Message.with(_:)();
  v16 = Message.serializedData(partial:)();
  if (v5)
  {
    return outlined destroy of NearbyProtoConnectionResponse.Content(v13, type metadata accessor for NearbyProtoJoinRequest);
  }

  v19 = v16;
  v20 = v17;
  outlined destroy of NearbyProtoConnectionResponse.Content(v13, type metadata accessor for NearbyProtoJoinRequest);
  v21 = a1 + *(v14 + 28);
  result = outlined consume of Data?(*v21, *(v21 + 8));
  *v21 = v19;
  *(v21 + 8) = v20;
  return result;
}

uint64_t closure #1 in closure #2 in NearbyIDSServiceController.sendJoinRequest(for:from:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for NearbyProtoJoinRequest(0);
  v11 = (a1 + *(v10 + 20));
  v12 = *v11;
  v13 = v11[1];
  outlined copy of Data._Representation(a2, a3);
  outlined consume of Data?(v12, v13);
  *v11 = a2;
  v11[1] = a3;
  v14 = (a1 + *(v10 + 24));
  v15 = *v14;
  v16 = v14[1];
  outlined copy of Data._Representation(a4, a5);
  result = outlined consume of Data?(v15, v16);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

void NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v42 = a6;
  v43 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C8970;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v15;
  v16 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v17.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  *(inited + 72) = v16;
  *(inited + 48) = v17;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Any?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v41 = v13;
  if (a5)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v22 = String._bridgeToObjectiveC()();
    v23 = IDSCopyBestGuessIDForID();

    if (!v23)
    {
      __break(1u);
      return;
    }

    v48 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
    *&v47 = v23;
    outlined init with take of Any(&v47, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v18;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, v19, v21, isUniquelyReferenced_nonNull_native);

    v18 = v45;
  }

  v25 = *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 24];
  v26 = *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 32];
  __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service], v25);
  v27 = specialized _setUpCast<A, B>(_:)(a3);
  v28 = a3;
  v29 = v7;
  v30 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v18);

  *&v47 = 0;
  v31 = v44;
  (*(v26 + 40))(a1, v43, v27, 300, v30, &v47, v25, v26);

  v32 = v47;
  if (v31)
  {
    v33 = v47;
LABEL_6:
    swift_willThrow();

    return;
  }

  if (v42)
  {
    v34 = type metadata accessor for TaskPriority();
    v35 = v41;
    (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v29;
    v36[5] = v28;
    v37 = v32;
    v38 = v29;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:), v36);

    if (!v32)
    {
LABEL_9:
      lazy protocol witness table accessor for type IDSServiceError and conformance IDSServiceError();
      swift_allocError();
      v33 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v39 = v47;
    if (!v32)
    {
      goto LABEL_9;
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = a5;
  return _swift_task_switch(closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:), 0, 0);
}

uint64_t closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:)()
{
  v42 = v0;
  (*((swift_isaMask & **(v0 + 128)) + 0xA0))();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 136);
    outlined init with take of PseudonymProtocol((v0 + 56), v0 + 16);
    v37 = *(v0 + 48);
    v38 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v38);
    v2 = v1 + 56;
    v3 = -1;
    v4 = -1 << *(v1 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v1 + 56);
    v6 = (63 - v4) >> 6;

    v7 = 0;
    v39 = v1;
LABEL_5:
    *(v0 + 144) = _swiftEmptyArrayStorage;
    while (v5)
    {
LABEL_12:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(v1 + 48) + ((v7 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      v13 = objc_allocWithZone(IDSURI);
      v14 = String._bridgeToObjectiveC()();
      v15 = [v13 initWithPrefixedURI:v14];

      if (v15)
      {
        v16 = [objc_allocWithZone(IDSFirewallEntry) initWithURI:v15];

        if (v16)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          goto LABEL_5;
        }
      }

      else
      {
        if (one-time initialization token for firewall != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Log.firewall);

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v41 = v36;
          *v20 = 136315138;
          *(v0 + 96) = v11;
          *(v0 + 104) = v12;

          v21 = String.init<A>(reflecting:)();
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

          *(v20 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v18, v19, "Failed to convert URI: %s to IDSURI", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v36);
        }

        v1 = v39;
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_12;
      }
    }

    v40 = (*(v37 + 8) + **(v37 + 8));
    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    *v24 = v0;
    v24[1] = closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:);

    return v40(_swiftEmptyArrayStorage, v38, v37);
  }

  else
  {
    outlined destroy of Any?(v0 + 56, &_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMR);
    if (one-time initialization token for firewall != -1)
    {
LABEL_32:
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Log.firewall);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 136);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315138;
      *(v0 + 112) = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
      v32 = String.init<A>(reflecting:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v41);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Message sent without firewall being ready to destinations: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    v35 = *(v0 + 8);

    return v35();
  }
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:);
  }

  else
  {

    v2 = closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v13 = v0;
  if (one-time initialization token for firewall != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.firewall);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[17];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v0[15] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Donated entries: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v10 = v0[1];

  return v10();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

id NearbyIDSServiceController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NearbyIDSServiceController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);

  return a8(a3, a4, a5, a6, a7, v8, v14, v15);
}

uint64_t closure #1 in closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v26 - v8);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  outlined init with copy of NearbyProtoJoinRequest.Content(a1, v9, type metadata accessor for NearbyProtoConnectionRequest);
  outlined init with copy of NearbyProtoJoinRequest.Content(a1, v7, type metadata accessor for NearbyProtoConnectionRequest);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = a1;
    v27 = v14;
    *v13 = 136315394;
    v15 = *v9;
    v16 = v9[1];

    outlined destroy of NearbyProtoConnectionResponse.Content(v9, type metadata accessor for NearbyProtoConnectionRequest);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = *(v7 + 2);
    v19 = *(v7 + 3);

    outlined destroy of NearbyProtoConnectionResponse.Content(v7, type metadata accessor for NearbyProtoConnectionRequest);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Got connection request: %s from: %s", v13, 0x16u);
    swift_arrayDestroy();
    a1 = v26;
  }

  else
  {

    outlined destroy of NearbyProtoConnectionResponse.Content(v7, type metadata accessor for NearbyProtoConnectionRequest);
    v21 = outlined destroy of NearbyProtoConnectionResponse.Content(v9, type metadata accessor for NearbyProtoConnectionRequest);
  }

  result = (*((swift_isaMask & *a2) + 0x88))(v21);
  if (result)
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    (*(v24 + 8))(a2, &protocol witness table for NearbyIDSServiceController, a1, ObjectType, v24);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(void *a1, uint64_t a2)
{
  result = (*((swift_isaMask & *a1) + 0x88))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, &protocol witness table for NearbyIDSServiceController, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = (*((swift_isaMask & *a1) + 0x88))();
  if (result)
  {
    if (a4)
    {
      v18 = v17;
      ObjectType = swift_getObjectType();
      (*(v18 + 24))(a1, &protocol witness table for NearbyIDSServiceController, a2, a3, a4, a5, a6, a7, a8, ObjectType, v18);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v29[0] = a3;
  v30 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v4);
  v29[1] = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - v7;
  v9 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v29 - v14;
  outlined init with copy of (String, Any)(a1, v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.host);
    v17 = v30;
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x80000001000D0250, aBlock);
      *(v20 + 12) = 2112;
      if (v17)
      {
        swift_errorRetain();
        v23 = _swift_stdlib_bridgeErrorToNSError();
        v24 = v23;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      *(v20 + 14) = v23;
      *v21 = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s Failed to parse join response: %@", v20, 0x16u);
      outlined destroy of Any?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }
  }

  else
  {
    outlined init with take of NearbyProtoSessionMessage(v8, v15, type metadata accessor for NearbyProtoJoinResponse.Content);
    v25 = v29[0];
    outlined init with copy of NearbyProtoJoinRequest.Content(v15, v13, type metadata accessor for NearbyProtoJoinResponse.Content);
    v26 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    outlined init with take of NearbyProtoSessionMessage(v13, v27 + v26, type metadata accessor for NearbyProtoJoinResponse.Content);
    aBlock[4] = partial apply for closure #1 in closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_59_0;
    _Block_copy(aBlock);
    v31 = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v28 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    DispatchWorkItem.init(flags:block:)();

    OS_dispatch_queue.async(execute:)();

    outlined destroy of NearbyProtoConnectionResponse.Content(v15, type metadata accessor for NearbyProtoJoinResponse.Content);
  }
}

uint64_t closure #1 in closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(void *a1, uint64_t a2)
{
  result = (*((swift_isaMask & *a1) + 0x88))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(a1, &protocol witness table for NearbyIDSServiceController, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0K6DeviceVyAC0H13RangingFilterC_GGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0K6DeviceVyAC0H13RangingFilterC_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GMd, &_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService0H12Group_MemberVGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService0H12Group_MemberVGMR);
  v10 = *(type metadata accessor for NearbyGroup_Member(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NearbyGroup_Member(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for NearbyGroupMember();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for NearbyGroupMember();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t specialized closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v3);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  outlined init with copy of (String, Any)(a1, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  }

  outlined init with take of NearbyProtoSessionMessage(v7, v14, type metadata accessor for NearbyProtoConnectionRequest);
  v16 = v21;
  outlined init with copy of NearbyProtoJoinRequest.Content(v14, v12, type metadata accessor for NearbyProtoConnectionRequest);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  outlined init with take of NearbyProtoSessionMessage(v12, v18 + v17, type metadata accessor for NearbyProtoConnectionRequest);
  *(v18 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  aBlock[4] = partial apply for closure #1 in closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_47_0;
  _Block_copy(aBlock);
  v23 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  OS_dispatch_queue.async(execute:)();

  return outlined destroy of NearbyProtoConnectionResponse.Content(v14, type metadata accessor for NearbyProtoConnectionRequest);
}

void specialized closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v3);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  outlined init with copy of (String, Any)(a1, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.host);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x80000001000D0250, aBlock);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s Failed to parse NearbyProtoConnectionResponse", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
    }
  }

  else
  {
    outlined init with take of NearbyProtoSessionMessage(v7, v14, type metadata accessor for NearbyProtoConnectionResponse.Content);
    v20 = v25;
    outlined init with copy of NearbyProtoJoinRequest.Content(v14, v12, type metadata accessor for NearbyProtoConnectionResponse.Content);
    v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    outlined init with take of NearbyProtoSessionMessage(v12, v22 + v21, type metadata accessor for NearbyProtoConnectionResponse.Content);
    aBlock[4] = partial apply for closure #1 in closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_53;
    _Block_copy(aBlock);
    v27 = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v23 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    DispatchWorkItem.init(flags:block:)();

    OS_dispatch_queue.async(execute:)();

    outlined destroy of NearbyProtoConnectionResponse.Content(v14, type metadata accessor for NearbyProtoConnectionResponse.Content);
  }
}

uint64_t specialized closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v40 = a4;
  v41 = a6;
  v38 = a3;
  v39 = a5;
  v42 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v9);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  outlined init with copy of (String, Any)(a1, v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of Any?(v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  }

  outlined init with take of NearbyProtoSessionMessage(v13, v20, type metadata accessor for NearbyProtoJoinRequest.Content);
  v22 = v42;
  v37 = *&v42[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue];
  outlined init with copy of NearbyProtoJoinRequest.Content(v20, v18, type metadata accessor for NearbyProtoJoinRequest.Content);
  v23 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v24 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  outlined init with take of NearbyProtoSessionMessage(v18, v27 + v23, type metadata accessor for NearbyProtoJoinRequest.Content);
  v28 = (v27 + v24);
  v29 = v39;
  v30 = v40;
  *v28 = v38;
  v28[1] = v30;
  v31 = (v27 + v25);
  v32 = v41;
  *v31 = v29;
  v31[1] = v32;
  v33 = (v27 + v26);
  v35 = v43;
  v34 = v44;
  *v33 = v43;
  v33[1] = v34;
  aBlock[4] = closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)partial apply;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_66;
  _Block_copy(aBlock);
  v46 = _swiftEmptyArrayStorage;

  v36 = v22;
  outlined copy of Data._Representation(v35, v34);
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  OS_dispatch_queue.async(execute:)();

  return outlined destroy of NearbyProtoConnectionResponse.Content(v20, type metadata accessor for NearbyProtoJoinRequest.Content);
}

id specialized NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - v15;
  v34[3] = a7;
  v34[4] = a8;
  __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a7 - 8) + 32))();
  v17 = &a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate];
  *&a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = &a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_firewall];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  *&a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_requesterCredentialsByOwnerPseudonym] = &_swiftEmptyDictionarySingleton;
  *&a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController____lazy_storage___contactStore] = 0;
  swift_beginAccess();
  *(v17 + 1) = a4;
  swift_unknownObjectWeakAssign();
  outlined init with copy of PseudonymProtocol(v34, &a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service]);
  *&a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue] = a1;
  *&a6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController] = a5;
  v19 = type metadata accessor for NearbyIDSServiceController();
  v33.receiver = a6;
  v33.super_class = v19;
  v20 = a1;
  v21 = a5;
  v22 = objc_msgSendSuper2(&v33, "init");
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  outlined init with copy of PseudonymProtocol(v34, v32);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  outlined init with take of PseudonymProtocol(v32, (v24 + 5));
  v25 = v22;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:), v24);

  v26 = [objc_allocWithZone(IDSServiceDelegateProperties) init];
  [v26 setWantsCrossAccountMessaging:1];
  v27 = *(a8 + 32);
  v28 = v20;
  v29 = v26;
  v27(v25, v26, v20, a7, a8);

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  return v25;
}

uint64_t outlined assign with take of FirewallProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService16FirewallProvider_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyIDSServiceController.Errors and conformance NearbyIDSServiceController.Errors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IDSServiceError and conformance IDSServiceError()
{
  result = lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError;
  if (!lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError;
  if (!lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSServiceError and conformance IDSServiceError);
  }

  return result;
}

uint64_t partial apply for closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyIDSServiceController.send(data:toDestinations:from:shouldDonateToFirweall:)(a1, v4, v5, v7, v6);
}

void _s44com_apple_SharePlay_NearbyInvitationsService0E20IDSServiceControllerC30handleIncomingMessageBlastDoor_7account12incomingData15fromIDWithToken7contextyAA0H8Protocol_p_So10IDSAccountCSg10Foundation0Q0VSgSSSgSo17IDSMessageContextCSgtFTf4ennnnn_nSo0H0C_Ttg5Tf4dnnnn_n(uint64_t (*a1)(uint64_t a1), unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t (*a6)(uint64_t a1))
{
  v290 = a5;
  v288 = a3;
  v275 = type metadata accessor for NearbyProtoJoinResponse(0);
  __chkstk_darwin(v275);
  v276 = &v255 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v11);
  v13 = &v255 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v269 = *(v266 - 8);
  v14 = __chkstk_darwin(v266);
  v262 = &v255 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v260 = &v255 - v17;
  v261 = v18;
  __chkstk_darwin(v16);
  v264 = &v255 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v265 = &v255 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v270 = &v255 - v24;
  v25 = __chkstk_darwin(v23);
  v267 = &v255 - v26;
  __chkstk_darwin(v25);
  v268 = &v255 - v27;
  v28 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v28 - 8);
  v271 = &v255 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for NearbyProtoJoinRequest(0);
  v30 = __chkstk_darwin(v277);
  v272 = &v255 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v278 = &v255 - v32;
  v33 = type metadata accessor for BinaryDecodingOptions();
  v34 = __chkstk_darwin(v33 - 8);
  v274 = &v255 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v273 = &v255 - v37;
  __chkstk_darwin(v36);
  v284 = &v255 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMR);
  __chkstk_darwin(v39 - 8);
  v289 = &v255 - v40;
  v286 = type metadata accessor for NearbyProtoSessionMessage(0);
  v285 = *(v286 - 8);
  v41 = __chkstk_darwin(v286);
  v279 = &v255 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v281 = &v255 - v44;
  __chkstk_darwin(v43);
  v46 = &v255 - v45;
  v47 = type metadata accessor for DispatchPredicate();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = (&v255 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v282 = a6;
  v51 = *(a6 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v50 = v51;
  (*(v48 + 104))(v50, enum case for DispatchPredicate.onQueue(_:), v47);
  v263 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  (*(v48 + 8))(v50, v47);
  if (v51)
  {
    v258 = v11;
    v259 = v13;
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v52 = type metadata accessor for Logger();
  v53 = __swift_project_value_buffer(v52, static Log.host);
  v54 = v290;

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  v287 = v54;

  if (os_log_type_enabled(v55, v56))
  {
    v283 = v53;
    v280 = v46;
    v57 = a1;
    v58 = a2;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v295 = v61;
    *v59 = 136315394;
    if (a4)
    {
      *&aBlock = v288;
      *(&aBlock + 1) = a4;

      v62 = String.init<A>(reflecting:)();
      v64 = v63;
    }

    else
    {
      v62 = 7104878;
      v64 = 0xE300000000000000;
    }

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v295);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2112;
    v66 = v287;
    *(v59 + 14) = v287;
    *v60 = v290;
    v67 = v66;
    _os_log_impl(&_mh_execute_header, v55, v56, "Handling incoming data from: %s context: %@", v59, 0x16u);
    outlined destroy of Any?(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v61);

    a2 = v58;
    a1 = v57;
    v46 = v280;
    v53 = v283;
  }

  else
  {
  }

  if (a4)
  {
    v68 = String._bridgeToObjectiveC()();
  }

  else
  {
    v68 = 0;
  }

  v69 = IDSCopyAddressDestinationForDestination();

  v70 = IDSCopyRawAddressForDestination();
  if (!v70)
  {
    return;
  }

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  if (String.count.getter() < 1 || a2 >> 60 == 15)
  {

    return;
  }

  v74 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v74 != 2)
    {
      goto LABEL_33;
    }

    v76 = *(a1 + 2);
    v75 = *(a1 + 3);
    v77 = v75 - v76;
    if (!__OFSUB__(v75, v76))
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_121;
    }

    v77 = HIDWORD(a1) - a1;
LABEL_26:
    outlined copy of Data._Representation(a1, a2);
    if (v77 < 1)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (v74)
  {
    goto LABEL_24;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_33;
  }

LABEL_27:
  if (!v290)
  {
    __break(1u);
    goto LABEL_134;
  }

  v78 = [v287 toID];
  v79 = IDSCopyAddressDestinationForDestination();

  v80 = IDSCopyRawAddressForDestination();
  if (v80)
  {
    v257 = v71;
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v82;

    v83 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v83 = v81 & 0xFFFFFFFFFFFFLL;
    }

    if (v83)
    {
      v256 = v81;
      v295 = a1;
      v296 = a2;
      v293 = 0;
      aBlock = 0u;
      v292 = 0u;
      outlined copy of Data._Representation(a1, a2);
      BinaryDecodingOptions.init()();
      v84 = lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);
      v85 = v286;
      Message.init<A>(serializedBytes:extensions:partial:options:)();
      v284 = v84;
      v283 = v53;
      v255 = a4;
      v95 = v289;
      (v285[7])(v289, 0, 1, v85);
      outlined init with take of NearbyProtoSessionMessage(v95, v46, type metadata accessor for NearbyProtoSessionMessage);
      v97 = *(v282 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 24);
      v96 = *(v282 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 32);
      __swift_project_boxed_opaque_existential_1((v282 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service), v97);
      (*(*(v96 + 8) + 8))(v97);
      if (v98)
      {
        v99 = objc_allocWithZone(IDSServiceProperties);
        v100 = String._bridgeToObjectiveC()();

        v101 = [v99 initWithServiceIdentifier:v100];

        if (v101)
        {
          v102 = v286;
          v103 = &v46[*(v286 + 24)];
          v104 = v281;
          if (v103[9] & 1) == 0 && (v103[8])
          {
            v105 = *v103;
            if (v105 <= 2)
            {
              if (v105)
              {
                if (v105 != 1)
                {
                  v280 = v46;

                  v151 = Logger.logObject.getter();
                  v152 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v151, v152))
                  {
                    v153 = swift_slowAlloc();
                    *v153 = 0;
                    _os_log_impl(&_mh_execute_header, v151, v152, "Handling join response", v153, 2u);
                  }

                  v154 = &v280[*(v102 + 28)];
                  v155 = *v154;
                  v156 = v154[1];
                  if (v156 >> 60 == 15)
                  {
                    v157 = 0;
                  }

                  else
                  {
                    v157 = *v154;
                  }

                  v158 = 0xC000000000000000;
                  if (v156 >> 60 != 15)
                  {
                    v158 = v156;
                  }

                  v295 = v157;
                  v296 = v158;
                  v293 = 0;
                  aBlock = 0u;
                  v292 = 0u;
                  outlined copy of Data?(v155, v156);
                  BinaryDecodingOptions.init()();
                  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse, &protocol conformance descriptor for NearbyProtoJoinResponse);
                  v159 = v276;
                  v160 = v275;
                  v161 = Message.init<A>(serializedBytes:extensions:partial:options:)();
                  v178 = (*((swift_isaMask & *v282) + 0xB8))(v161);
                  v179 = v178;
                  if (!*(v178 + 16) || (v180 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v73), (v181 & 1) == 0))
                  {

                    v189 = Logger.logObject.getter();
                    v190 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v189, v190))
                    {
                      v191 = swift_slowAlloc();
                      *&aBlock = swift_slowAlloc();
                      *v191 = 136315394;
                      *(v191 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x80000001000D0250, &aBlock);
                      *(v191 + 12) = 2080;
                      v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v257, v73, &aBlock);

                      *(v191 + 14) = v192;
                      _os_log_impl(&_mh_execute_header, v189, v190, "%s No credentials to parse join response for: %s", v191, 0x16u);
                      swift_arrayDestroy();
                    }

                    else
                    {
                    }

                    outlined consume of Data?(a1, a2);
                    v226 = type metadata accessor for NearbyProtoJoinResponse;
                    v193 = v159;
                    goto LABEL_132;
                  }

                  v182 = v180;
                  v289 = v101;

                  v183 = *(*(v179 + 56) + 8 * v182);

                  v184 = &v159[*(v160 + 20)];
                  v185 = v184[1];
                  if (v185 >> 60 == 15)
                  {
                    v186 = 0;
                  }

                  else
                  {
                    v186 = *v184;
                  }

                  if (v185 >> 60 == 15)
                  {
                    v187 = 0xC000000000000000;
                  }

                  else
                  {
                    v187 = v184[1];
                  }

                  v188 = *(*v183 + 152);
                  outlined copy of Data?(*v184, v185);
                  v221 = v188(v186, v187);
                  v223 = v222;
                  outlined consume of Data._Representation(v186, v187);
                  v224 = v282;
                  v225 = v289;
                  specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v221, v223, 2, 1, v289, v224);

                  outlined consume of Data._Representation(v221, v223);

                  outlined consume of Data?(a1, a2);
                  v226 = type metadata accessor for NearbyProtoJoinResponse;
                  v227 = &aBlock + 8;
LABEL_131:
                  v193 = *(v227 - 32);
LABEL_132:
                  outlined destroy of NearbyProtoConnectionResponse.Content(v193, v226);
                  outlined destroy of NearbyProtoConnectionResponse.Content(v280, type metadata accessor for NearbyProtoSessionMessage);
                  return;
                }

                v106 = v286;

                v107 = Logger.logObject.getter();
                v108 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v107, v108))
                {
                  v109 = swift_slowAlloc();
                  *v109 = 0;
                  _os_log_impl(&_mh_execute_header, v107, v108, "Handling join request", v109, 2u);
                  v106 = v286;
                }

                v110 = &v46[*(v106 + 28)];
                v111 = *v110;
                v112 = v110[1];
                if (v112 >> 60 == 15)
                {
                  v113 = 0;
                }

                else
                {
                  v113 = *v110;
                }

                v114 = 0xC000000000000000;
                if (v112 >> 60 != 15)
                {
                  v114 = v112;
                }

                v295 = v113;
                v296 = v114;
                v293 = 0;
                aBlock = 0u;
                v292 = 0u;
                outlined copy of Data?(v111, v112);
                BinaryDecodingOptions.init()();
                lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest, &protocol conformance descriptor for NearbyProtoJoinRequest);
                v115 = v278;
                Message.init<A>(serializedBytes:extensions:partial:options:)();
                v289 = v101;
                v285 = a1;
                v286 = a2;
                v162 = v272;
                outlined init with copy of NearbyProtoJoinRequest.Content(v115, v272, type metadata accessor for NearbyProtoJoinRequest);
                v163 = Logger.logObject.getter();
                v164 = static os_log_type_t.default.getter();
                v165 = os_log_type_enabled(v163, v164);
                v280 = v46;
                if (v165)
                {
                  v166 = swift_slowAlloc();
                  v167 = swift_slowAlloc();
                  v295 = v167;
                  *v166 = 136315138;
                  v168 = (v162 + *(v277 + 20));
                  v169 = v168[1];
                  if (v169 >> 60 == 15)
                  {
                    v170 = 0;
                  }

                  else
                  {
                    v170 = *v168;
                  }

                  if (v169 >> 60 == 15)
                  {
                    v171 = 0xC000000000000000;
                  }

                  else
                  {
                    v171 = v168[1];
                  }

                  outlined copy of Data?(*v168, v169);
                  static String.Encoding.utf8.getter();
                  v172 = String.init(data:encoding:)();
                  v174 = v173;
                  outlined consume of Data._Representation(v170, v171);
                  if (v174)
                  {
                    *&aBlock = v172;
                    *(&aBlock + 1) = v174;
                    v175 = String.init<A>(reflecting:)();
                    v177 = v176;
                  }

                  else
                  {
                    v175 = 7104878;
                    v177 = 0xE300000000000000;
                  }

                  outlined destroy of NearbyProtoConnectionResponse.Content(v272, type metadata accessor for NearbyProtoJoinRequest);
                  v194 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v177, &v295);

                  *(v166 + 4) = v194;
                  _os_log_impl(&_mh_execute_header, v163, v164, "Attempting to decrypt data with publicKey: %s", v166, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v167);

                  v115 = v278;
                }

                else
                {

                  outlined destroy of NearbyProtoConnectionResponse.Content(v162, type metadata accessor for NearbyProtoJoinRequest);
                }

                v195 = v282;
                v196 = v256;
                v197 = (*((swift_isaMask & **(v282 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController)) + 0xC0))(v115, v256, v71);
                v73 = v198;
                a4 = v199;
                v284 = v197;
                v287 = v200;
                v201 = swift_allocObject();
                v202 = v288;
                v201[2] = v195;
                v201[3] = v202;
                v201[4] = v255;
                v201[5] = v196;
                v201[6] = v71;
                v201[7] = v73;
                v201[8] = a4;
                v203 = objc_opt_self();

                v204 = v195;

                outlined copy of Data._Representation(v73, a4);

                v290 = v204;

                outlined copy of Data._Representation(v73, a4);
                v283 = [v203 getBlastDoorSharedConnection];
                if (v283)
                {
                  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                  v205 = v289;
                  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
                  v207 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v205 command:isa];

                  if (v207)
                  {
                    [v207 setPayloadType:1];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_1000CA970;
                    *(inited + 32) = 1835365481;
                    *(inited + 40) = 0xE400000000000000;
                    *(inited + 48) = 1;
                    *(inited + 72) = &type metadata for Int;
                    *(inited + 80) = 0x64616F6C796170;
                    *(inited + 120) = &type metadata for Data;
                    *(inited + 88) = 0xE700000000000000;
                    v209 = v284;
                    v210 = v287;
                    *(inited + 96) = v284;
                    *(inited + 104) = v210;
                    outlined copy of Data._Representation(v209, v210);
                    v211 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
                    swift_arrayDestroy();
                    specialized _dictionaryUpCast<A, B, C, D>(_:)(v211);

                    v212 = Dictionary._bridgeToObjectiveC()().super.isa;

                    v213 = swift_allocObject();
                    *(v213 + 16) = 1;
                    *(v213 + 24) = 1;
                    *(v213 + 32) = closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)partial apply;
                    *(v213 + 40) = v201;
                    v293 = closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)specialized partial apply;
                    v294 = v213;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    *&v292 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
                    *(&v292 + 1) = &block_descriptor_91;
                    v214 = _Block_copy(&aBlock);

                    v215 = v283;
                    [v283 diffuseClientMessage:v212 context:v207 withCompletionBlock:v214];
                    _Block_release(v214);

                    outlined consume of Data._Representation(v284, v210);

LABEL_130:
                    outlined consume of Data._Representation(v73, a4);
                    outlined consume of Data._Representation(v73, a4);
                    outlined consume of Data?(v285, v286);
                    v226 = type metadata accessor for NearbyProtoJoinRequest;
                    v227 = &v292 + 8;
                    goto LABEL_131;
                  }

                  v228 = v269;
                  v229 = v270;
                  v230 = v266;
                  (*(v269 + 56))(v270, 1, 1, v266);
                  v231 = v229;
                  v232 = v265;
                  outlined init with copy of (String, Any)(v231, v265, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                  if ((*(v228 + 48))(v232, 1, v230) == 1)
                  {
                    outlined destroy of Any?(v265, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                  }

                  else
                  {
                    v282 = type metadata accessor for NearbyProtoJoinRequest.Content;
                    v244 = v260;
                    outlined init with take of NearbyProtoSessionMessage(v265, v260, type metadata accessor for NearbyProtoJoinRequest.Content);
                    v245 = v262;
                    outlined init with copy of NearbyProtoJoinRequest.Content(v244, v262, type metadata accessor for NearbyProtoJoinRequest.Content);
                    v246 = (*(v269 + 80) + 24) & ~*(v269 + 80);
                    v247 = (v261 + v246 + 7) & 0xFFFFFFFFFFFFFFF8;
                    v248 = (v247 + 23) & 0xFFFFFFFFFFFFFFF8;
                    v249 = swift_allocObject();
                    *(v249 + 16) = v290;
                    outlined init with take of NearbyProtoSessionMessage(v245, v249 + v246, v282);
                    v250 = (v249 + v247);
                    v251 = v255;
                    *v250 = v288;
                    v250[1] = v251;
                    v252 = (v249 + v248);
                    *v252 = v256;
                    v252[1] = v71;
                    v253 = (v249 + ((v248 + 23) & 0xFFFFFFFFFFFFFFF8));
                    *v253 = v73;
                    v253[1] = a4;
                    v293 = closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)partial apply;
                    v294 = v249;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    *&v292 = thunk for @escaping @callee_guaranteed () -> ();
                    *(&v292 + 1) = &block_descriptor_84_0;
                    _Block_copy(&aBlock);
                    v295 = _swiftEmptyArrayStorage;

                    v254 = v290;

                    outlined copy of Data._Representation(v73, a4);
                    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    type metadata accessor for DispatchWorkItem();
                    swift_allocObject();
                    DispatchWorkItem.init(flags:block:)();

                    OS_dispatch_queue.async(execute:)();

                    outlined destroy of NearbyProtoConnectionResponse.Content(v260, type metadata accessor for NearbyProtoJoinRequest.Content);
                  }

LABEL_129:
                  outlined destroy of Any?(v270, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);

                  outlined consume of Data._Representation(v284, v287);

                  goto LABEL_130;
                }

LABEL_121:
                v216 = v269;
                v217 = v268;
                v218 = v266;
                (*(v269 + 56))(v268, 1, 1, v266);
                v219 = v217;
                v220 = v267;
                outlined init with copy of (String, Any)(v219, v267, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                if ((*(v216 + 48))(v220, 1, v218) == 1)
                {
                  outlined destroy of Any?(v267, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                }

                else
                {
                  v283 = type metadata accessor for NearbyProtoJoinRequest.Content;
                  v233 = v264;
                  outlined init with take of NearbyProtoSessionMessage(v267, v264, type metadata accessor for NearbyProtoJoinRequest.Content);
                  v234 = v262;
                  outlined init with copy of NearbyProtoJoinRequest.Content(v233, v262, type metadata accessor for NearbyProtoJoinRequest.Content);
                  v235 = (*(v269 + 80) + 24) & ~*(v269 + 80);
                  v236 = (v261 + v235 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v237 = (v236 + 23) & 0xFFFFFFFFFFFFFFF8;
                  v238 = swift_allocObject();
                  *(v238 + 16) = v290;
                  outlined init with take of NearbyProtoSessionMessage(v234, v238 + v235, v283);
                  v239 = (v238 + v236);
                  v240 = v255;
                  *v239 = v288;
                  v239[1] = v240;
                  v241 = (v238 + v237);
                  *v241 = v256;
                  v241[1] = v71;
                  v242 = (v238 + ((v237 + 23) & 0xFFFFFFFFFFFFFFF8));
                  *v242 = v73;
                  v242[1] = a4;
                  v293 = closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)partial apply;
                  v294 = v238;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v292 = thunk for @escaping @callee_guaranteed () -> ();
                  *(&v292 + 1) = &block_descriptor_77;
                  _Block_copy(&aBlock);
                  v295 = _swiftEmptyArrayStorage;

                  v243 = v290;

                  outlined copy of Data._Representation(v73, a4);
                  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  type metadata accessor for DispatchWorkItem();
                  swift_allocObject();
                  DispatchWorkItem.init(flags:block:)();

                  OS_dispatch_queue.async(execute:)();

                  outlined destroy of NearbyProtoConnectionResponse.Content(v264, type metadata accessor for NearbyProtoJoinRequest.Content);
                }

                v270 = v268;
                goto LABEL_129;
              }

              goto LABEL_66;
            }

            if (v105 == 3)
            {
              v289 = v101;
              v116 = v46;

              v143 = Logger.logObject.getter();
              v144 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v143, v144))
              {
                v145 = swift_slowAlloc();
                *v145 = 0;
                _os_log_impl(&_mh_execute_header, v143, v144, "Handling connection request message", v145, 2u);
              }

              v146 = (v116 + *(v102 + 28));
              v147 = *v146;
              v148 = v146[1];
              if (v148 >> 60 == 15)
              {
                v123 = 0;
              }

              else
              {
                v123 = *v146;
              }

              if (v148 >> 60 == 15)
              {
                v124 = 0xC000000000000000;
              }

              else
              {
                v124 = v146[1];
              }

              v149 = v282;
              outlined copy of Data?(v147, v148);
              v150 = v289;
              specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v123, v124, 3, 1, v289, v149);

              goto LABEL_83;
            }

            if (v105 == 4)
            {
              v289 = v101;
              v116 = v46;

              v117 = Logger.logObject.getter();
              v118 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v117, v118))
              {
                v119 = swift_slowAlloc();
                *v119 = 0;
                _os_log_impl(&_mh_execute_header, v117, v118, "Handling connection response", v119, 2u);
              }

              v120 = (v116 + *(v102 + 28));
              v121 = *v120;
              v122 = v120[1];
              if (v122 >> 60 == 15)
              {
                v123 = 0;
              }

              else
              {
                v123 = *v120;
              }

              if (v122 >> 60 == 15)
              {
                v124 = 0xC000000000000000;
              }

              else
              {
                v124 = v120[1];
              }

              v125 = v282;
              outlined copy of Data?(v121, v122);
              v126 = v289;
              specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v123, v124, 4, 1, v289, v125);

LABEL_83:
              outlined consume of Data._Representation(v123, v124);
              outlined consume of Data?(a1, a2);
              outlined destroy of NearbyProtoConnectionResponse.Content(v116, type metadata accessor for NearbyProtoSessionMessage);
              return;
            }
          }

LABEL_66:

          v127 = v46;
          outlined init with copy of NearbyProtoJoinRequest.Content(v46, v104, type metadata accessor for NearbyProtoSessionMessage);
          v128 = v279;
          outlined init with copy of NearbyProtoJoinRequest.Content(v46, v279, type metadata accessor for NearbyProtoSessionMessage);
          v129 = Logger.logObject.getter();
          v130 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v280 = v127;
            v132 = v102;
            v133 = v131;
            v134 = swift_slowAlloc();
            v289 = v101;
            v135 = v134;
            *&aBlock = v134;
            *v133 = 134218242;
            v136 = v104 + *(v132 + 24);
            v137 = v104;
            if (*(v136 + 9))
            {
              v138 = 0;
            }

            else
            {
              v138 = *v136;
            }

            outlined destroy of NearbyProtoConnectionResponse.Content(v137, type metadata accessor for NearbyProtoSessionMessage);
            *(v133 + 4) = v138;
            *(v133 + 12) = 2080;
            v139 = Message.debugDescription.getter();
            v141 = v140;
            outlined destroy of NearbyProtoConnectionResponse.Content(v128, type metadata accessor for NearbyProtoSessionMessage);
            v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v141, &aBlock);

            *(v133 + 14) = v142;
            _os_log_impl(&_mh_execute_header, v129, v130, "Not able to handle message type: %ld, message: %s", v133, 0x16u);
            __swift_destroy_boxed_opaque_existential_0Tm(v135);

            outlined consume of Data?(a1, a2);
            outlined destroy of NearbyProtoConnectionResponse.Content(v280, type metadata accessor for NearbyProtoSessionMessage);
          }

          else
          {
            outlined destroy of NearbyProtoConnectionResponse.Content(v104, type metadata accessor for NearbyProtoSessionMessage);

            outlined consume of Data?(a1, a2);
            outlined destroy of NearbyProtoConnectionResponse.Content(v128, type metadata accessor for NearbyProtoSessionMessage);
            outlined destroy of NearbyProtoConnectionResponse.Content(v127, type metadata accessor for NearbyProtoSessionMessage);
          }

          return;
        }

        outlined destroy of NearbyProtoConnectionResponse.Content(v46, type metadata accessor for NearbyProtoSessionMessage);

LABEL_33:

        outlined consume of Data?(a1, a2);
        return;
      }

LABEL_134:
      __break(1u);
      return;
    }
  }

  v86 = v287;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&aBlock = v90;
    *v89 = 136315138;
    v295 = v86;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSMessageContext, IDSMessageContext_ptr);
    v91 = v86;
    v92 = String.init<A>(reflecting:)();
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &aBlock);

    *(v89 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v87, v88, "Failed to find toID for message: %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v90);
  }

  outlined consume of Data?(a1, a2);
}

void _s44com_apple_SharePlay_NearbyInvitationsService0E20IDSServiceControllerC21handleIncomingMessage_7account12incomingData15fromIDWithToken7contextyAA0H8Protocol_p_So10IDSAccountCSg10Foundation0O0VSgSSSgSo17IDSMessageContextCSgtFTf4ennnnn_nSo0H0C_Ttg5Tf4dnnnn_n(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v274 = a4;
  v272 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  __chkstk_darwin(v10 - 8);
  v241 = &v234 - v11;
  v240 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v237 = &v234 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for NearbyProtoJoinResponse(0);
  __chkstk_darwin(v259);
  v14 = &v234 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v16 = __chkstk_darwin(v15 - 8);
  v246 = &v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v243 = &v234 - v18;
  v19 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v19 - 8);
  v242 = &v234 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = type metadata accessor for NearbyProtoJoinRequest(0);
  v21 = __chkstk_darwin(v260);
  v273 = &v234 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v261 = &v234 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  __chkstk_darwin(v24 - 8);
  v258 = &v234 - v25;
  v256 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v249 = *(v256 - 8);
  __chkstk_darwin(v256);
  v244 = &v234 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  __chkstk_darwin(v27 - 8);
  v255 = &v234 - v28;
  v254 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v248 = *(v254 - 8);
  v29 = __chkstk_darwin(v254);
  v245 = &v234 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v257 = (&v234 - v32);
  __chkstk_darwin(v31);
  v247 = &v234 - v33;
  v34 = type metadata accessor for BinaryDecodingOptions();
  v35 = __chkstk_darwin(v34 - 8);
  v238 = &v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v253 = &v234 - v38;
  v39 = __chkstk_darwin(v37);
  v251 = &v234 - v40;
  v41 = __chkstk_darwin(v39);
  v252 = &v234 - v42;
  v43 = __chkstk_darwin(v41);
  v250 = &v234 - v44;
  __chkstk_darwin(v43);
  v264 = &v234 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMR);
  __chkstk_darwin(v46 - 8);
  v266 = &v234 - v47;
  v267 = type metadata accessor for NearbyProtoSessionMessage(0);
  v265 = *(v267 - 1);
  v48 = __chkstk_darwin(v267);
  v263 = &v234 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v262 = &v234 - v51;
  __chkstk_darwin(v50);
  v53 = &v234 - v52;
  v54 = type metadata accessor for DispatchPredicate();
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = (&v234 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *(a6 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v57 = v58;
  (*(v55 + 104))(v57, enum case for DispatchPredicate.onQueue(_:), v54);
  v59 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  (*(v55 + 8))(v57, v54);
  if (v58)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v60 = type metadata accessor for Logger();
  v61 = __swift_project_value_buffer(v60, static Log.host);
  v271 = a5;
  v62 = a5;
  v63 = v274;

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  v270 = v62;

  if (os_log_type_enabled(v64, v65))
  {
    v268 = v61;
    v236 = v14;
    v269 = v53;
    v66 = a1;
    v67 = a2;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v278 = v70;
    *v68 = 136315394;
    v71 = a6;
    if (v63)
    {
      *&v275 = v272;
      *(&v275 + 1) = v63;

      v72 = String.init<A>(reflecting:)();
      v74 = v73;
    }

    else
    {
      v72 = 7104878;
      v74 = 0xE300000000000000;
    }

    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v278);

    *(v68 + 4) = v76;
    *(v68 + 12) = 2112;
    v78 = v270;
    v77 = v271;
    *(v68 + 14) = v270;
    *v69 = v77;
    v79 = v78;
    _os_log_impl(&_mh_execute_header, v64, v65, "Handling incoming data from: %s context: %@", v68, 0x16u);
    outlined destroy of Any?(v69, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v70);

    a2 = v67;
    a1 = v66;
    v61 = v268;
    v53 = v269;
    a6 = v71;
    v14 = v236;
    v63 = v274;
    v75 = v273;
    if (v274)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v75 = v273;
    if (v63)
    {
LABEL_10:
      v63 = String._bridgeToObjectiveC()();
    }
  }

  v80 = IDSCopyAddressDestinationForDestination();

  v81 = IDSCopyRawAddressForDestination();
  if (!v81)
  {
    return;
  }

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  if (String.count.getter() < 1 || a2 >> 60 == 15)
  {

    return;
  }

  v236 = v82;
  v85 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v86 = v271;
    if (v85 != 2)
    {
      goto LABEL_33;
    }

    v88 = *(a1 + 16);
    v87 = *(a1 + 24);
    v89 = v87 - v88;
    if (!__OFSUB__(v87, v88))
    {
LABEL_26:
      outlined copy of Data._Representation(a1, a2);
      if (v89 >= 1)
      {
        goto LABEL_27;
      }

LABEL_33:

      outlined consume of Data?(a1, a2);
      return;
    }

    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_107:
      v229 = v241;
      (*(v239 + 56))(v241, 0, 1, v240);
      v230 = outlined init with take of NearbyProtoSessionMessage(v229, v237, type metadata accessor for NearbyProtoJoinResponse.Content);
      if ((*((*a2 & *v267) + 0x88))(v230))
      {
        v232 = v231;
        ObjectType = swift_getObjectType();
        (*(v232 + 32))(v267, &protocol witness table for NearbyIDSServiceController, v237, ObjectType, v232);
        swift_unknownObjectRelease();
      }

      outlined consume of Data._Representation(v75, v84);
      outlined consume of Data?(v266, v264);
      outlined destroy of NearbyProtoConnectionResponse.Content(v237, type metadata accessor for NearbyProtoJoinResponse.Content);
      v227 = type metadata accessor for NearbyProtoJoinResponse;
      v228 = v14;
      goto LABEL_105;
    }

    v89 = HIDWORD(a1) - a1;
    goto LABEL_26;
  }

  v86 = v271;
  if (v85)
  {
    goto LABEL_24;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_33;
  }

LABEL_27:
  if (!v86)
  {
    __break(1u);
    goto LABEL_111;
  }

  v90 = [v270 toID];
  v91 = IDSCopyAddressDestinationForDestination();

  v92 = IDSCopyRawAddressForDestination();
  if (!v92)
  {
    goto LABEL_35;
  }

  v269 = v53;
  v93 = a2;
  v94 = a1;
  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v96;

  v98 = HIBYTE(v97) & 0xF;
  v234 = v95;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v98 = v95 & 0xFFFFFFFFFFFFLL;
  }

  if (!v98)
  {

    a1 = v94;
    a2 = v93;
LABEL_35:

    v103 = v270;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&v275 = v107;
      *v106 = 136315138;
      v278 = v103;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSMessageContext, IDSMessageContext_ptr);
      v108 = v103;
      v109 = String.init<A>(reflecting:)();
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, &v275);

      *(v106 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v104, v105, "Failed to find toID for message: %s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v107);
    }

    outlined consume of Data?(a1, a2);

    return;
  }

  v99 = v97;
  v235 = v84;
  v268 = v61;
  v277 = 0;
  v275 = 0u;
  v276 = 0u;
  v100 = v94;
  outlined copy of Data._Representation(v94, v93);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);
  v101 = v266;
  v102 = v267;
  Message.init(serializedData:extensions:partial:options:)();
  v264 = v93;
  (v265[7])(v101, 0, 1, v102);
  v112 = v269;
  outlined init with take of NearbyProtoSessionMessage(v101, v269, type metadata accessor for NearbyProtoSessionMessage);
  v113 = v112 + *(v102 + 6);
  if (*(v113 + 9) & 1) == 0 && (*(v113 + 8))
  {
    v114 = *v113;
    if (v114 > 2)
    {
      if (v114 == 3)
      {

        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          *v146 = 0;
          _os_log_impl(&_mh_execute_header, v144, v145, "Handling connection request message", v146, 2u);
        }

        v147 = (v112 + *(v267 + 7));
        v148 = *v147;
        v149 = v147[1];
        v277 = 0;
        v275 = 0u;
        v276 = 0u;
        outlined copy of Data?(v148, v149);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest, &protocol conformance descriptor for NearbyProtoConnectionRequest);
        v150 = v255;
        v151 = v254;
        Message.init(serializedData:extensions:partial:options:)();
        v152 = v257;
        v267 = a6;
        (*(v248 + 56))(v150, 0, 1, v151);
        v161 = v247;
        outlined init with take of NearbyProtoSessionMessage(v150, v247, type metadata accessor for NearbyProtoConnectionRequest);
        outlined init with copy of NearbyProtoJoinRequest.Content(v161, v152, type metadata accessor for NearbyProtoConnectionRequest);
        v162 = v245;
        outlined init with copy of NearbyProtoJoinRequest.Content(v161, v245, type metadata accessor for NearbyProtoConnectionRequest);
        v163 = Logger.logObject.getter();
        v164 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          *&v275 = swift_slowAlloc();
          *v165 = 136315394;
          v166 = *v152;
          v167 = v152[1];

          outlined destroy of NearbyProtoConnectionResponse.Content(v152, type metadata accessor for NearbyProtoConnectionRequest);
          v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v167, &v275);

          *(v165 + 4) = v168;
          *(v165 + 12) = 2080;
          v169 = *(v162 + 16);
          v170 = *(v162 + 24);

          v161 = v247;
          outlined destroy of NearbyProtoConnectionResponse.Content(v162, type metadata accessor for NearbyProtoConnectionRequest);
          v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v170, &v275);
          v112 = v269;

          *(v165 + 14) = v171;
          _os_log_impl(&_mh_execute_header, v163, v164, "Got connection request: %s from: %s", v165, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          outlined destroy of NearbyProtoConnectionResponse.Content(v162, type metadata accessor for NearbyProtoConnectionRequest);
          v172 = outlined destroy of NearbyProtoConnectionResponse.Content(v152, type metadata accessor for NearbyProtoConnectionRequest);
        }

        v211 = v267;
        if ((*((swift_isaMask & *v267) + 0x88))(v172))
        {
          v213 = v212;
          v214 = swift_getObjectType();
          (*(v213 + 8))(v211, &protocol witness table for NearbyIDSServiceController, v161, v214, v213);
          swift_unknownObjectRelease();
        }

        outlined consume of Data?(v94, v264);
        v192 = type metadata accessor for NearbyProtoConnectionRequest;
        v193 = v161;
        goto LABEL_97;
      }

      if (v114 == 4)
      {

        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = 0;
          _os_log_impl(&_mh_execute_header, v122, v123, "Handling connection response", v124, 2u);
        }

        v125 = (v112 + *(v267 + 7));
        v126 = *v125;
        v127 = v125[1];
        v277 = 0;
        v275 = 0u;
        v276 = 0u;
        outlined copy of Data?(v126, v127);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content);
        v128 = v258;
        v129 = v256;
        Message.init(serializedData:extensions:partial:options:)();
        (*(v249 + 56))(v128, 0, 1, v129);
        v186 = v244;
        v187 = outlined init with take of NearbyProtoSessionMessage(v128, v244, type metadata accessor for NearbyProtoConnectionResponse.Content);
        if ((*((swift_isaMask & *a6) + 0x88))(v187))
        {
          v190 = v189;
          v191 = swift_getObjectType();
          (*(v190 + 16))(a6, &protocol witness table for NearbyIDSServiceController, v186, v191, v190);
          swift_unknownObjectRelease();
        }

        outlined consume of Data?(v94, v264);
        v192 = type metadata accessor for NearbyProtoConnectionResponse.Content;
        v193 = v186;
        goto LABEL_97;
      }
    }

    else if (v114)
    {
      if (v114 == 1)
      {
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&_mh_execute_header, v115, v116, "Handling join request", v117, 2u);
          v75 = v273;
        }

        v118 = (v112 + *(v267 + 7));
        v119 = *v118;
        v120 = v118[1];
        v277 = 0;
        v275 = 0u;
        v276 = 0u;
        outlined copy of Data?(v119, v120);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest, &protocol conformance descriptor for NearbyProtoJoinRequest);
        v121 = v261;
        Message.init(serializedData:extensions:partial:options:)();
        outlined init with copy of NearbyProtoJoinRequest.Content(v121, v75, type metadata accessor for NearbyProtoJoinRequest);
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v173, v174))
        {
          v266 = v100;
          v267 = a6;
          v175 = swift_slowAlloc();
          v265 = swift_slowAlloc();
          v278 = v265;
          *v175 = 136315138;
          v176 = (v75 + *(v260 + 20));
          v177 = v176[1];
          if (v177 >> 60 == 15)
          {
            v178 = 0;
          }

          else
          {
            v178 = *v176;
          }

          if (v177 >> 60 == 15)
          {
            v179 = 0xC000000000000000;
          }

          else
          {
            v179 = v176[1];
          }

          outlined copy of Data?(*v176, v177);
          static String.Encoding.utf8.getter();
          v180 = String.init(data:encoding:)();
          v182 = v181;
          outlined consume of Data._Representation(v178, v179);
          if (v182)
          {
            *&v275 = v180;
            *(&v275 + 1) = v182;
            v183 = String.init<A>(reflecting:)();
            v185 = v184;
          }

          else
          {
            v183 = 7104878;
            v185 = 0xE300000000000000;
          }

          outlined destroy of NearbyProtoConnectionResponse.Content(v273, type metadata accessor for NearbyProtoJoinRequest);
          v215 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v185, &v278);

          *(v175 + 4) = v215;
          _os_log_impl(&_mh_execute_header, v173, v174, "Attempting to decrypt data with publicKey: %s", v175, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v265);

          v100 = v266;
          a6 = v267;
          v121 = v261;
        }

        else
        {

          outlined destroy of NearbyProtoConnectionResponse.Content(v75, type metadata accessor for NearbyProtoJoinRequest);
        }

        v216 = v246;
        v217 = (*((swift_isaMask & **(a6 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController)) + 0xC8))(v246, v121, v234, v97);
        v218 = v264;
        v219 = v217;
        v221 = v220;
        v222 = outlined init with take of NearbyProtoSessionMessage(v216, v243, type metadata accessor for NearbyProtoJoinRequest.Content);
        v223 = a6;
        if (!(*((swift_isaMask & *a6) + 0x88))(v222))
        {
          outlined consume of Data._Representation(v219, v221);

          goto LABEL_104;
        }

        if (v274)
        {
          v225 = v224;
          v226 = swift_getObjectType();

          (*(v225 + 24))(v223, &protocol witness table for NearbyIDSServiceController, v243, v272, v274, v234, v99, v219, v221, v226, v225);
          outlined consume of Data._Representation(v219, v221);

          swift_unknownObjectRelease();
LABEL_104:
          outlined consume of Data?(v100, v218);
          outlined destroy of NearbyProtoConnectionResponse.Content(v243, type metadata accessor for NearbyProtoJoinRequest.Content);
          v227 = type metadata accessor for NearbyProtoJoinRequest;
          v228 = v261;
LABEL_105:
          outlined destroy of NearbyProtoConnectionResponse.Content(v228, v227);
          outlined destroy of NearbyProtoConnectionResponse.Content(v269, type metadata accessor for NearbyProtoSessionMessage);
          return;
        }

LABEL_111:
        __break(1u);
        return;
      }

      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&_mh_execute_header, v153, v154, "Handling join response", v155, 2u);
      }

      v156 = (v112 + *(v267 + 7));
      v157 = *v156;
      v158 = v156[1];
      v277 = 0;
      v275 = 0u;
      v276 = 0u;
      outlined copy of Data?(v157, v158);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse, &protocol conformance descriptor for NearbyProtoJoinResponse);
      v159 = v259;
      v160 = Message.init(serializedData:extensions:partial:options:)();
      v266 = v94;
      a2 = &swift_isaMask;
      v194 = (*((swift_isaMask & *a6) + 0xB8))(v160);
      v195 = v194;
      if (*(v194 + 16))
      {
        v196 = specialized __RawDictionaryStorage.find<A>(_:)(v236, v235);
        if (v197)
        {
          v198 = v196;
          v267 = a6;

          v199 = *(*(v195 + 56) + 8 * v198);

          v200 = &v14[*(v159 + 20)];
          v201 = v200[1];
          if (v201 >> 60 == 15)
          {
            v202 = 0;
          }

          else
          {
            v202 = *v200;
          }

          if (v201 >> 60 == 15)
          {
            v203 = 0xC000000000000000;
          }

          else
          {
            v203 = v200[1];
          }

          v204 = *(*v199 + 152);
          outlined copy of Data?(*v200, v201);
          v75 = v204(v202, v203);
          v84 = v205;
          outlined consume of Data._Representation(v202, v203);
          v277 = 0;
          v275 = 0u;
          v276 = 0u;
          outlined copy of Data._Representation(v75, v84);
          BinaryDecodingOptions.init()();
          lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content, &protocol conformance descriptor for NearbyProtoJoinResponse.Content);
          Message.init(serializedData:extensions:partial:options:)();
          goto LABEL_107;
        }
      }

      v206 = v235;

      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        *&v275 = swift_slowAlloc();
        *v209 = 136315394;
        *(v209 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000046, 0x80000001000D0200, &v275);
        *(v209 + 12) = 2080;
        v210 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v236, v206, &v275);

        *(v209 + 14) = v210;
        _os_log_impl(&_mh_execute_header, v207, v208, "%s No credentials to parse join response for: %s", v209, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      outlined consume of Data?(v266, v264);
      v192 = type metadata accessor for NearbyProtoJoinResponse;
      v193 = v14;
LABEL_97:
      outlined destroy of NearbyProtoConnectionResponse.Content(v193, v192);
      outlined destroy of NearbyProtoConnectionResponse.Content(v112, type metadata accessor for NearbyProtoSessionMessage);
      return;
    }
  }

  v130 = v262;
  outlined init with copy of NearbyProtoJoinRequest.Content(v112, v262, type metadata accessor for NearbyProtoSessionMessage);
  v131 = v263;
  outlined init with copy of NearbyProtoJoinRequest.Content(v112, v263, type metadata accessor for NearbyProtoSessionMessage);
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v136 = v130;
    v137 = v135;
    *&v275 = v135;
    *v134 = 134218242;
    v138 = v136 + *(v267 + 6);
    if (*(v138 + 9))
    {
      v139 = 0;
    }

    else
    {
      v139 = *v138;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content(v136, type metadata accessor for NearbyProtoSessionMessage);
    *(v134 + 4) = v139;
    *(v134 + 12) = 2080;
    v140 = Message.debugDescription.getter();
    v142 = v141;
    outlined destroy of NearbyProtoConnectionResponse.Content(v131, type metadata accessor for NearbyProtoSessionMessage);
    v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v142, &v275);

    *(v134 + 14) = v143;
    _os_log_impl(&_mh_execute_header, v132, v133, "Not able to handle message type: %ld, message: %s", v134, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v137);

    outlined consume of Data?(v94, v264);
    outlined destroy of NearbyProtoConnectionResponse.Content(v269, type metadata accessor for NearbyProtoSessionMessage);
  }

  else
  {
    outlined destroy of NearbyProtoConnectionResponse.Content(v130, type metadata accessor for NearbyProtoSessionMessage);

    outlined consume of Data?(v94, v264);
    outlined destroy of NearbyProtoConnectionResponse.Content(v131, type metadata accessor for NearbyProtoSessionMessage);
    outlined destroy of NearbyProtoConnectionResponse.Content(v112, type metadata accessor for NearbyProtoSessionMessage);
  }
}

void specialized NearbyIDSServiceController.service(_:account:incomingData:fromID:context:)(void *a1, uint64_t (*a2)(uint64_t a1), unint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v13 = [objc_allocWithZone(CPFeatureFlags) init];
  v14 = [v13 nearbyInvitationsBlastDoorEnabled];

  if (!v14)
  {
    if (a1)
    {
      v15 = a1;
      _s44com_apple_SharePlay_NearbyInvitationsService0E20IDSServiceControllerC21handleIncomingMessage_7account12incomingData15fromIDWithToken7contextyAA0H8Protocol_p_So10IDSAccountCSg10Foundation0O0VSgSSSgSo17IDSMessageContextCSgtFTf4ennnnn_nSo0H0C_Ttg5Tf4dnnnn_n(a2, a3, a4, a5, a6, v6);
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = a1;
  _s44com_apple_SharePlay_NearbyInvitationsService0E20IDSServiceControllerC30handleIncomingMessageBlastDoor_7account12incomingData15fromIDWithToken7contextyAA0H8Protocol_p_So10IDSAccountCSg10Foundation0Q0VSgSSSgSo17IDSMessageContextCSgtFTf4ennnnn_nSo0H0C_Ttg5Tf4dnnnn_n(a2, a3, a4, a5, a6, v6);
LABEL_6:
}

void specialized NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t (*a1)(uint64_t a1), unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t (*a6)(uint64_t a1))
{
  v290 = a5;
  v288 = a3;
  v275 = type metadata accessor for NearbyProtoJoinResponse(0);
  __chkstk_darwin(v275);
  v276 = &v255 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v11);
  v13 = &v255 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v269 = *(v266 - 8);
  v14 = __chkstk_darwin(v266);
  v262 = &v255 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v260 = &v255 - v17;
  v261 = v18;
  __chkstk_darwin(v16);
  v264 = &v255 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v265 = &v255 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v270 = &v255 - v24;
  v25 = __chkstk_darwin(v23);
  v267 = &v255 - v26;
  __chkstk_darwin(v25);
  v268 = &v255 - v27;
  v28 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v28 - 8);
  v271 = &v255 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for NearbyProtoJoinRequest(0);
  v30 = __chkstk_darwin(v277);
  v272 = &v255 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v278 = &v255 - v32;
  v33 = type metadata accessor for BinaryDecodingOptions();
  v34 = __chkstk_darwin(v33 - 8);
  v274 = &v255 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v273 = &v255 - v37;
  __chkstk_darwin(v36);
  v284 = &v255 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19ProtoSessionMessageVSgMR);
  __chkstk_darwin(v39 - 8);
  v289 = &v255 - v40;
  v286 = type metadata accessor for NearbyProtoSessionMessage(0);
  v285 = *(v286 - 8);
  v41 = __chkstk_darwin(v286);
  v279 = &v255 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v281 = &v255 - v44;
  __chkstk_darwin(v43);
  v46 = &v255 - v45;
  v47 = type metadata accessor for DispatchPredicate();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = (&v255 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v282 = a6;
  v51 = *(a6 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue);
  *v50 = v51;
  (*(v48 + 104))(v50, enum case for DispatchPredicate.onQueue(_:), v47);
  v263 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  (*(v48 + 8))(v50, v47);
  if (v51)
  {
    v258 = v11;
    v259 = v13;
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v52 = type metadata accessor for Logger();
  v53 = __swift_project_value_buffer(v52, static Log.host);
  v54 = v290;

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  v287 = v54;

  if (os_log_type_enabled(v55, v56))
  {
    v283 = v53;
    v280 = v46;
    v57 = a1;
    v58 = a2;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v295 = v61;
    *v59 = 136315394;
    if (a4)
    {
      *&aBlock = v288;
      *(&aBlock + 1) = a4;

      v62 = String.init<A>(reflecting:)();
      v64 = v63;
    }

    else
    {
      v62 = 7104878;
      v64 = 0xE300000000000000;
    }

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v295);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2112;
    v66 = v287;
    *(v59 + 14) = v287;
    *v60 = v290;
    v67 = v66;
    _os_log_impl(&_mh_execute_header, v55, v56, "Handling incoming data from: %s context: %@", v59, 0x16u);
    outlined destroy of Any?(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v61);

    a2 = v58;
    a1 = v57;
    v46 = v280;
    v53 = v283;
  }

  else
  {
  }

  if (a4)
  {
    v68 = String._bridgeToObjectiveC()();
  }

  else
  {
    v68 = 0;
  }

  v69 = IDSCopyAddressDestinationForDestination();

  v70 = IDSCopyRawAddressForDestination();
  if (!v70)
  {
    return;
  }

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  if (String.count.getter() < 1 || a2 >> 60 == 15)
  {

    return;
  }

  v74 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v74 != 2)
    {
      goto LABEL_33;
    }

    v76 = *(a1 + 2);
    v75 = *(a1 + 3);
    v77 = v75 - v76;
    if (!__OFSUB__(v75, v76))
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_24:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_121;
    }

    v77 = HIDWORD(a1) - a1;
LABEL_26:
    outlined copy of Data._Representation(a1, a2);
    if (v77 < 1)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (v74)
  {
    goto LABEL_24;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_33;
  }

LABEL_27:
  if (!v290)
  {
    __break(1u);
    goto LABEL_134;
  }

  v78 = [v287 toID];
  v79 = IDSCopyAddressDestinationForDestination();

  v80 = IDSCopyRawAddressForDestination();
  if (v80)
  {
    v257 = v71;
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v82;

    v83 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v83 = v81 & 0xFFFFFFFFFFFFLL;
    }

    if (v83)
    {
      v256 = v81;
      v295 = a1;
      v296 = a2;
      v293 = 0;
      aBlock = 0u;
      v292 = 0u;
      outlined copy of Data._Representation(a1, a2);
      BinaryDecodingOptions.init()();
      v84 = lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);
      v85 = v286;
      Message.init<A>(serializedBytes:extensions:partial:options:)();
      v284 = v84;
      v283 = v53;
      v255 = a4;
      v95 = v289;
      (v285[7])(v289, 0, 1, v85);
      outlined init with take of NearbyProtoSessionMessage(v95, v46, type metadata accessor for NearbyProtoSessionMessage);
      v97 = *(v282 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 24);
      v96 = *(v282 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service + 32);
      __swift_project_boxed_opaque_existential_1((v282 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service), v97);
      (*(*(v96 + 8) + 8))(v97);
      if (v98)
      {
        v99 = objc_allocWithZone(IDSServiceProperties);
        v100 = String._bridgeToObjectiveC()();

        v101 = [v99 initWithServiceIdentifier:v100];

        if (v101)
        {
          v102 = v286;
          v103 = &v46[*(v286 + 24)];
          v104 = v281;
          if (v103[9] & 1) == 0 && (v103[8])
          {
            v105 = *v103;
            if (v105 <= 2)
            {
              if (v105)
              {
                if (v105 != 1)
                {
                  v280 = v46;

                  v151 = Logger.logObject.getter();
                  v152 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v151, v152))
                  {
                    v153 = swift_slowAlloc();
                    *v153 = 0;
                    _os_log_impl(&_mh_execute_header, v151, v152, "Handling join response", v153, 2u);
                  }

                  v154 = &v280[*(v102 + 28)];
                  v155 = *v154;
                  v156 = v154[1];
                  if (v156 >> 60 == 15)
                  {
                    v157 = 0;
                  }

                  else
                  {
                    v157 = *v154;
                  }

                  v158 = 0xC000000000000000;
                  if (v156 >> 60 != 15)
                  {
                    v158 = v156;
                  }

                  v295 = v157;
                  v296 = v158;
                  v293 = 0;
                  aBlock = 0u;
                  v292 = 0u;
                  outlined copy of Data?(v155, v156);
                  BinaryDecodingOptions.init()();
                  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse, &protocol conformance descriptor for NearbyProtoJoinResponse);
                  v159 = v276;
                  v160 = v275;
                  v161 = Message.init<A>(serializedBytes:extensions:partial:options:)();
                  v178 = (*((swift_isaMask & *v282) + 0xB8))(v161);
                  v179 = v178;
                  if (!*(v178 + 16) || (v180 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v73), (v181 & 1) == 0))
                  {

                    v189 = Logger.logObject.getter();
                    v190 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v189, v190))
                    {
                      v191 = swift_slowAlloc();
                      *&aBlock = swift_slowAlloc();
                      *v191 = 136315394;
                      *(v191 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x80000001000D0250, &aBlock);
                      *(v191 + 12) = 2080;
                      v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v257, v73, &aBlock);

                      *(v191 + 14) = v192;
                      _os_log_impl(&_mh_execute_header, v189, v190, "%s No credentials to parse join response for: %s", v191, 0x16u);
                      swift_arrayDestroy();
                    }

                    else
                    {
                    }

                    outlined consume of Data?(a1, a2);
                    v226 = type metadata accessor for NearbyProtoJoinResponse;
                    v193 = v159;
                    goto LABEL_132;
                  }

                  v182 = v180;
                  v289 = v101;

                  v183 = *(*(v179 + 56) + 8 * v182);

                  v184 = &v159[*(v160 + 20)];
                  v185 = v184[1];
                  if (v185 >> 60 == 15)
                  {
                    v186 = 0;
                  }

                  else
                  {
                    v186 = *v184;
                  }

                  if (v185 >> 60 == 15)
                  {
                    v187 = 0xC000000000000000;
                  }

                  else
                  {
                    v187 = v184[1];
                  }

                  v188 = *(*v183 + 152);
                  outlined copy of Data?(*v184, v185);
                  v221 = v188(v186, v187);
                  v223 = v222;
                  outlined consume of Data._Representation(v186, v187);
                  v224 = v282;
                  v225 = v289;
                  specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v221, v223, 2, 1, v289, v224);

                  outlined consume of Data._Representation(v221, v223);

                  outlined consume of Data?(a1, a2);
                  v226 = type metadata accessor for NearbyProtoJoinResponse;
                  v227 = &aBlock + 8;
LABEL_131:
                  v193 = *(v227 - 32);
LABEL_132:
                  outlined destroy of NearbyProtoConnectionResponse.Content(v193, v226);
                  outlined destroy of NearbyProtoConnectionResponse.Content(v280, type metadata accessor for NearbyProtoSessionMessage);
                  return;
                }

                v106 = v286;

                v107 = Logger.logObject.getter();
                v108 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v107, v108))
                {
                  v109 = swift_slowAlloc();
                  *v109 = 0;
                  _os_log_impl(&_mh_execute_header, v107, v108, "Handling join request", v109, 2u);
                  v106 = v286;
                }

                v110 = &v46[*(v106 + 28)];
                v111 = *v110;
                v112 = v110[1];
                if (v112 >> 60 == 15)
                {
                  v113 = 0;
                }

                else
                {
                  v113 = *v110;
                }

                v114 = 0xC000000000000000;
                if (v112 >> 60 != 15)
                {
                  v114 = v112;
                }

                v295 = v113;
                v296 = v114;
                v293 = 0;
                aBlock = 0u;
                v292 = 0u;
                outlined copy of Data?(v111, v112);
                BinaryDecodingOptions.init()();
                lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest, &protocol conformance descriptor for NearbyProtoJoinRequest);
                v115 = v278;
                Message.init<A>(serializedBytes:extensions:partial:options:)();
                v289 = v101;
                v285 = a1;
                v286 = a2;
                v162 = v272;
                outlined init with copy of NearbyProtoJoinRequest.Content(v115, v272, type metadata accessor for NearbyProtoJoinRequest);
                v163 = Logger.logObject.getter();
                v164 = static os_log_type_t.default.getter();
                v165 = os_log_type_enabled(v163, v164);
                v280 = v46;
                if (v165)
                {
                  v166 = swift_slowAlloc();
                  v167 = swift_slowAlloc();
                  v295 = v167;
                  *v166 = 136315138;
                  v168 = (v162 + *(v277 + 20));
                  v169 = v168[1];
                  if (v169 >> 60 == 15)
                  {
                    v170 = 0;
                  }

                  else
                  {
                    v170 = *v168;
                  }

                  if (v169 >> 60 == 15)
                  {
                    v171 = 0xC000000000000000;
                  }

                  else
                  {
                    v171 = v168[1];
                  }

                  outlined copy of Data?(*v168, v169);
                  static String.Encoding.utf8.getter();
                  v172 = String.init(data:encoding:)();
                  v174 = v173;
                  outlined consume of Data._Representation(v170, v171);
                  if (v174)
                  {
                    *&aBlock = v172;
                    *(&aBlock + 1) = v174;
                    v175 = String.init<A>(reflecting:)();
                    v177 = v176;
                  }

                  else
                  {
                    v175 = 7104878;
                    v177 = 0xE300000000000000;
                  }

                  outlined destroy of NearbyProtoConnectionResponse.Content(v272, type metadata accessor for NearbyProtoJoinRequest);
                  v194 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v177, &v295);

                  *(v166 + 4) = v194;
                  _os_log_impl(&_mh_execute_header, v163, v164, "Attempting to decrypt data with publicKey: %s", v166, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v167);

                  v115 = v278;
                }

                else
                {

                  outlined destroy of NearbyProtoConnectionResponse.Content(v162, type metadata accessor for NearbyProtoJoinRequest);
                }

                v195 = v282;
                v196 = v256;
                v197 = (*((swift_isaMask & **(v282 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController)) + 0xC0))(v115, v256, v71);
                v73 = v198;
                a4 = v199;
                v284 = v197;
                v287 = v200;
                v201 = swift_allocObject();
                v202 = v288;
                v201[2] = v195;
                v201[3] = v202;
                v201[4] = v255;
                v201[5] = v196;
                v201[6] = v71;
                v201[7] = v73;
                v201[8] = a4;
                v203 = objc_opt_self();

                v204 = v195;

                outlined copy of Data._Representation(v73, a4);

                v290 = v204;

                outlined copy of Data._Representation(v73, a4);
                v283 = [v203 getBlastDoorSharedConnection];
                if (v283)
                {
                  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                  v205 = v289;
                  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
                  v207 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v205 command:isa];

                  if (v207)
                  {
                    [v207 setPayloadType:1];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_1000CA970;
                    *(inited + 32) = 1835365481;
                    *(inited + 40) = 0xE400000000000000;
                    *(inited + 48) = 1;
                    *(inited + 72) = &type metadata for Int;
                    *(inited + 80) = 0x64616F6C796170;
                    *(inited + 120) = &type metadata for Data;
                    *(inited + 88) = 0xE700000000000000;
                    v209 = v284;
                    v210 = v287;
                    *(inited + 96) = v284;
                    *(inited + 104) = v210;
                    outlined copy of Data._Representation(v209, v210);
                    v211 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
                    swift_arrayDestroy();
                    specialized _dictionaryUpCast<A, B, C, D>(_:)(v211);

                    v212 = Dictionary._bridgeToObjectiveC()().super.isa;

                    v213 = swift_allocObject();
                    *(v213 + 16) = 1;
                    *(v213 + 24) = 1;
                    *(v213 + 32) = partial apply for closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
                    *(v213 + 40) = v201;
                    v293 = _s44com_apple_SharePlay_NearbyInvitationsService0eF25BlastDoorConnectionHelperV6defuse_4item10completiony10Foundation4DataV_AA0e5ProtoE18SessionMessageTypeOyxSg_s5Error_pSgtct21InternalSwiftProtobuf0S0RzlFySDys11AnyHashableVypGSg_So09IDSClientsT0VANtYbcfU_AA0eQ11JoinRequestV7ContentV_Tg5TA_0;
                    v294 = v213;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    *&v292 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
                    *(&v292 + 1) = &block_descriptor_41;
                    v214 = _Block_copy(&aBlock);

                    v215 = v283;
                    [v283 diffuseClientMessage:v212 context:v207 withCompletionBlock:v214];
                    _Block_release(v214);

                    outlined consume of Data._Representation(v284, v210);

LABEL_130:
                    outlined consume of Data._Representation(v73, a4);
                    outlined consume of Data._Representation(v73, a4);
                    outlined consume of Data?(v285, v286);
                    v226 = type metadata accessor for NearbyProtoJoinRequest;
                    v227 = &v292 + 8;
                    goto LABEL_131;
                  }

                  v228 = v269;
                  v229 = v270;
                  v230 = v266;
                  (*(v269 + 56))(v270, 1, 1, v266);
                  v231 = v229;
                  v232 = v265;
                  outlined init with copy of (String, Any)(v231, v265, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                  if ((*(v228 + 48))(v232, 1, v230) == 1)
                  {
                    outlined destroy of Any?(v265, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                  }

                  else
                  {
                    v282 = type metadata accessor for NearbyProtoJoinRequest.Content;
                    v244 = v260;
                    outlined init with take of NearbyProtoSessionMessage(v265, v260, type metadata accessor for NearbyProtoJoinRequest.Content);
                    v245 = v262;
                    outlined init with copy of NearbyProtoJoinRequest.Content(v244, v262, type metadata accessor for NearbyProtoJoinRequest.Content);
                    v246 = (*(v269 + 80) + 24) & ~*(v269 + 80);
                    v247 = (v261 + v246 + 7) & 0xFFFFFFFFFFFFFFF8;
                    v248 = (v247 + 23) & 0xFFFFFFFFFFFFFFF8;
                    v249 = swift_allocObject();
                    *(v249 + 16) = v290;
                    outlined init with take of NearbyProtoSessionMessage(v245, v249 + v246, v282);
                    v250 = (v249 + v247);
                    v251 = v255;
                    *v250 = v288;
                    v250[1] = v251;
                    v252 = (v249 + v248);
                    *v252 = v256;
                    v252[1] = v71;
                    v253 = (v249 + ((v248 + 23) & 0xFFFFFFFFFFFFFFF8));
                    *v253 = v73;
                    v253[1] = a4;
                    v293 = closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)partial apply;
                    v294 = v249;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    *&v292 = thunk for @escaping @callee_guaranteed () -> ();
                    *(&v292 + 1) = &block_descriptor_35;
                    _Block_copy(&aBlock);
                    v295 = _swiftEmptyArrayStorage;

                    v254 = v290;

                    outlined copy of Data._Representation(v73, a4);
                    lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    type metadata accessor for DispatchWorkItem();
                    swift_allocObject();
                    DispatchWorkItem.init(flags:block:)();

                    OS_dispatch_queue.async(execute:)();

                    outlined destroy of NearbyProtoConnectionResponse.Content(v260, type metadata accessor for NearbyProtoJoinRequest.Content);
                  }

LABEL_129:
                  outlined destroy of Any?(v270, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);

                  outlined consume of Data._Representation(v284, v287);

                  goto LABEL_130;
                }

LABEL_121:
                v216 = v269;
                v217 = v268;
                v218 = v266;
                (*(v269 + 56))(v268, 1, 1, v266);
                v219 = v217;
                v220 = v267;
                outlined init with copy of (String, Any)(v219, v267, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                if ((*(v216 + 48))(v220, 1, v218) == 1)
                {
                  outlined destroy of Any?(v267, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestV7ContentVSgMR);
                }

                else
                {
                  v283 = type metadata accessor for NearbyProtoJoinRequest.Content;
                  v233 = v264;
                  outlined init with take of NearbyProtoSessionMessage(v267, v264, type metadata accessor for NearbyProtoJoinRequest.Content);
                  v234 = v262;
                  outlined init with copy of NearbyProtoJoinRequest.Content(v233, v262, type metadata accessor for NearbyProtoJoinRequest.Content);
                  v235 = (*(v269 + 80) + 24) & ~*(v269 + 80);
                  v236 = (v261 + v235 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v237 = (v236 + 23) & 0xFFFFFFFFFFFFFFF8;
                  v238 = swift_allocObject();
                  *(v238 + 16) = v290;
                  outlined init with take of NearbyProtoSessionMessage(v234, v238 + v235, v283);
                  v239 = (v238 + v236);
                  v240 = v255;
                  *v239 = v288;
                  v239[1] = v240;
                  v241 = (v238 + v237);
                  *v241 = v256;
                  v241[1] = v71;
                  v242 = (v238 + ((v237 + 23) & 0xFFFFFFFFFFFFFFF8));
                  *v242 = v73;
                  v242[1] = a4;
                  v293 = partial apply for closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
                  v294 = v238;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v292 = thunk for @escaping @callee_guaranteed () -> ();
                  *(&v292 + 1) = &block_descriptor_28;
                  _Block_copy(&aBlock);
                  v295 = _swiftEmptyArrayStorage;

                  v243 = v290;

                  outlined copy of Data._Representation(v73, a4);
                  lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  type metadata accessor for DispatchWorkItem();
                  swift_allocObject();
                  DispatchWorkItem.init(flags:block:)();

                  OS_dispatch_queue.async(execute:)();

                  outlined destroy of NearbyProtoConnectionResponse.Content(v264, type metadata accessor for NearbyProtoJoinRequest.Content);
                }

                v270 = v268;
                goto LABEL_129;
              }

              goto LABEL_66;
            }

            if (v105 == 3)
            {
              v289 = v101;
              v116 = v46;

              v143 = Logger.logObject.getter();
              v144 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v143, v144))
              {
                v145 = swift_slowAlloc();
                *v145 = 0;
                _os_log_impl(&_mh_execute_header, v143, v144, "Handling connection request message", v145, 2u);
              }

              v146 = (v116 + *(v102 + 28));
              v147 = *v146;
              v148 = v146[1];
              if (v148 >> 60 == 15)
              {
                v123 = 0;
              }

              else
              {
                v123 = *v146;
              }

              if (v148 >> 60 == 15)
              {
                v124 = 0xC000000000000000;
              }

              else
              {
                v124 = v146[1];
              }

              v149 = v282;
              outlined copy of Data?(v147, v148);
              v150 = v289;
              specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v123, v124, 3, 1, v289, v149);

              goto LABEL_83;
            }

            if (v105 == 4)
            {
              v289 = v101;
              v116 = v46;

              v117 = Logger.logObject.getter();
              v118 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v117, v118))
              {
                v119 = swift_slowAlloc();
                *v119 = 0;
                _os_log_impl(&_mh_execute_header, v117, v118, "Handling connection response", v119, 2u);
              }

              v120 = (v116 + *(v102 + 28));
              v121 = *v120;
              v122 = v120[1];
              if (v122 >> 60 == 15)
              {
                v123 = 0;
              }

              else
              {
                v123 = *v120;
              }

              if (v122 >> 60 == 15)
              {
                v124 = 0xC000000000000000;
              }

              else
              {
                v124 = v120[1];
              }

              v125 = v282;
              outlined copy of Data?(v121, v122);
              v126 = v289;
              specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v123, v124, 4, 1, v289, v125);

LABEL_83:
              outlined consume of Data._Representation(v123, v124);
              outlined consume of Data?(a1, a2);
              outlined destroy of NearbyProtoConnectionResponse.Content(v116, type metadata accessor for NearbyProtoSessionMessage);
              return;
            }
          }

LABEL_66:

          v127 = v46;
          outlined init with copy of NearbyProtoJoinRequest.Content(v46, v104, type metadata accessor for NearbyProtoSessionMessage);
          v128 = v279;
          outlined init with copy of NearbyProtoJoinRequest.Content(v46, v279, type metadata accessor for NearbyProtoSessionMessage);
          v129 = Logger.logObject.getter();
          v130 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v280 = v127;
            v132 = v102;
            v133 = v131;
            v134 = swift_slowAlloc();
            v289 = v101;
            v135 = v134;
            *&aBlock = v134;
            *v133 = 134218242;
            v136 = v104 + *(v132 + 24);
            v137 = v104;
            if (*(v136 + 9))
            {
              v138 = 0;
            }

            else
            {
              v138 = *v136;
            }

            outlined destroy of NearbyProtoConnectionResponse.Content(v137, type metadata accessor for NearbyProtoSessionMessage);
            *(v133 + 4) = v138;
            *(v133 + 12) = 2080;
            v139 = Message.debugDescription.getter();
            v141 = v140;
            outlined destroy of NearbyProtoConnectionResponse.Content(v128, type metadata accessor for NearbyProtoSessionMessage);
            v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v141, &aBlock);

            *(v133 + 14) = v142;
            _os_log_impl(&_mh_execute_header, v129, v130, "Not able to handle message type: %ld, message: %s", v133, 0x16u);
            __swift_destroy_boxed_opaque_existential_0Tm(v135);

            outlined consume of Data?(a1, a2);
            outlined destroy of NearbyProtoConnectionResponse.Content(v280, type metadata accessor for NearbyProtoSessionMessage);
          }

          else
          {
            outlined destroy of NearbyProtoConnectionResponse.Content(v104, type metadata accessor for NearbyProtoSessionMessage);

            outlined consume of Data?(a1, a2);
            outlined destroy of NearbyProtoConnectionResponse.Content(v128, type metadata accessor for NearbyProtoSessionMessage);
            outlined destroy of NearbyProtoConnectionResponse.Content(v127, type metadata accessor for NearbyProtoSessionMessage);
          }

          return;
        }

        outlined destroy of NearbyProtoConnectionResponse.Content(v46, type metadata accessor for NearbyProtoSessionMessage);

LABEL_33:

        outlined consume of Data?(a1, a2);
        return;
      }

LABEL_134:
      __break(1u);
      return;
    }
  }

  v86 = v287;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&aBlock = v90;
    *v89 = 136315138;
    v295 = v86;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSMessageContext, IDSMessageContext_ptr);
    v91 = v86;
    v92 = String.init<A>(reflecting:)();
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &aBlock);

    *(v89 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v87, v88, "Failed to find toID for message: %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v90);
  }

  outlined consume of Data?(a1, a2);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)()
{
  v1 = *(type metadata accessor for NearbyProtoConnectionRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v0 + v2, v3);
}

uint64_t partial apply for closure #1 in closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t objectdestroy_21Tm()
{

  outlined consume of Data._Representation(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t objectdestroy_24Tm()
{
  v1 = (type metadata accessor for NearbyProtoJoinRequest.Content(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = (v0 + v3 + v1[9]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v7, v8);
  }

  v9 = (((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  outlined consume of Data._Representation(*(v0 + v9), *(v0 + v9 + 8));

  return _swift_deallocObject(v0, v9 + 16, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)()
{
  v1 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return closure #1 in closure #3 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v5, v0 + v2, v7, v8, v9, v10, v12, v13);
}

uint64_t outlined init with take of NearbyProtoSessionMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of NearbyProtoJoinRequest.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of Decoder.decodeSingularBoolField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularBoolField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularBoolField(value:)();
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularBytesField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularBytesField(value:)();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}