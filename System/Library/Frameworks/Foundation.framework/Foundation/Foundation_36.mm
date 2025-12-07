void _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_So21NSAttributedStringKeya_ypTt3g5Tf4xxnn_n(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [a3 _getObjects_andKeys_count_];
  if (a4 < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    type metadata accessor for NSAttributedStringKey(0);
    v7 = a1 - 8;
    v8 = a4;
    do
    {
      if (v8 > a4)
      {
        __break(1u);
        goto LABEL_13;
      }

      v14 = *(v7 + 8 * v8);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      *(v7 + 8 * v8--) = v13;
    }

    while (v8);
    v9 = (a2 + 8 * a4 - 8);
    v10 = (a2 + 32 * a4 - 32);
    v11 = a4;
    while (v11 <= a4)
    {
      --v11;
      v12 = *v9--;
      v14 = v12;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      outlined init with take of Any(&v13, v10);
      v10 -= 2;
      if (!v11)
      {
        return;
      }
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }
}

uint64_t AttributedString.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v109;
  v113[6] = *MEMORY[0x1E69E9840];
  v4 = one-time initialization token for _loadedScopeCache;
  v5 = a1;
  v94 = v5;
  if (v4 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v6 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock(v6 + 10);
    closure #1 in _loadDefaultAttributes()partial apply(v113);
    os_unfair_lock_unlock(v6 + 10);
    v7 = v113[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd, &_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    v113[0] = v7;
    specialized Array.append<A>(contentsOf:)(inited);
    v9 = v113[0];
    v10 = *(v113[0] + 16);
    if (v10)
    {
      v113[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      v11 = v113[0];
      v12 = v9 + 40;
      do
      {
        v13 = static AttributeScope.scopeDescription.getter(*(v12 - 8));

        v113[0] = v11;
        v2 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v2 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v2 + 1, 1);
          v11 = v113[0];
        }

        *(v11 + 16) = v2 + 1;
        *(v11 + 8 * v2 + 32) = v13;
        v12 += 16;
        --v10;
      }

      while (v10);
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v97 = *(v11 + 16);
    if (!v97)
    {
      break;
    }

    v15 = 0;
    v96 = v11 + 32;
    v16 = MEMORY[0x1E69E7CC8];
    v95 = v11;
    while (v15 < *(v11 + 16))
    {
      v17 = *(v96 + 8 * v15);
      v98 = v15 + 1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113[0] = v16;
      v19 = v17 + 64;
      v20 = 1 << *(v17 + 32);
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & *(v17 + 64);
      v23 = (v20 + 63) >> 6;
      v100 = v17;

      v24 = 0;
      v99 = v23;
      while (v22)
      {
        v25 = v24;
LABEL_24:
        v26 = (v25 << 10) | (16 * __clz(__rbit64(v22)));
        v27 = (*(v100 + 48) + v26);
        v28 = *v27;
        v2 = v27[1];
        v101 = *(*(v100 + 56) + v26);

        *&v102 = v28;
        v3 = v16;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v2);
        v31 = *(v16 + 16);
        v32 = (v29 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          __break(1u);
          v69 = [v16 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v69);
          v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v72 = HIBYTE(v71) & 0xF;
          if ((v71 & 0x2000000000000000) == 0)
          {
            v72 = v70 & 0xFFFFFFFFFFFFLL;
          }

          if (v72)
          {
LABEL_77:

            goto LABEL_81;
          }

LABEL_79:

          goto LABEL_80;
        }

        v34 = v29;
        if (*(v16 + 24) >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd, &_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMR);
            isUniquelyReferenced_nonNull_native = v16;
            v41 = static _DictionaryStorage.copy(original:)();
            v16 = v41;
            if (*(isUniquelyReferenced_nonNull_native + 16))
            {
              v42 = (v41 + 64);
              isUniquelyReferenced_nonNull_native = (v3 + 64);
              v43 = ((1 << *(v16 + 32)) + 63) >> 6;
              if (v16 != v3 || v42 >= isUniquelyReferenced_nonNull_native + 8 * v43)
              {
                memmove(v42, v3 + 64, 8 * v43);
              }

              v44 = 0;
              *(v16 + 16) = *(v3 + 2);
              v45 = 1 << v3[32];
              if (v45 < 64)
              {
                v46 = ~(-1 << v45);
              }

              else
              {
                v46 = -1;
              }

              v47 = v46 & *(v3 + 8);
              v90 = (v45 + 63) >> 6;
              if (v47)
              {
                do
                {
                  v91 = (v47 - 1) & v47;
                  v92 = v44;
                  v48 = __clz(__rbit64(v47)) | (v44 << 6);
LABEL_47:
                  v52 = 16 * v48;
                  v53 = (*(v3 + 6) + v52);
                  v55 = *v53;
                  v54 = v53[1];
                  v56 = *(*(v3 + 7) + v52);
                  v57 = (*(v16 + 48) + v52);
                  *v57 = v55;
                  v57[1] = v54;
                  *(*(v16 + 56) + v52) = v56;

                  v47 = v91;
                  v44 = v92;
                }

                while (v91);
              }

              v49 = v44;
              while (1)
              {
                v50 = v49 + 1;
                if (__OFADD__(v49, 1))
                {
                  __break(1u);
                }

                if (v50 >= v90)
                {
                  break;
                }

                v51 = *(isUniquelyReferenced_nonNull_native + 8 * v50);
                ++v49;
                if (v51)
                {
                  v91 = (v51 - 1) & v51;
                  v92 = v50;
                  v48 = __clz(__rbit64(v51)) | (v50 << 6);
                  goto LABEL_47;
                }
              }
            }

            v113[0] = v16;
          }

          v3 = v102;
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native & 1);
          v16 = v113[0];
          v3 = v102;
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v102, v2);
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_105;
          }

          v30 = v35;
        }

        v22 &= v22 - 1;
        if (v34)
        {

          *(*(v16 + 56) + 16 * v30) = v101;
        }

        else
        {
          *(v16 + 8 * (v30 >> 6) + 64) |= 1 << v30;
          v37 = (*(v16 + 48) + 16 * v30);
          *v37 = v3;
          v37[1] = v2;
          *(*(v16 + 56) + 16 * v30) = v101;
          v38 = *(v16 + 16);
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            __break(1u);
            goto LABEL_79;
          }

          *(v16 + 16) = v40;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v24 = v25;
        v23 = v99;
      }

      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          goto LABEL_63;
        }

        if (v25 >= v23)
        {
          break;
        }

        v22 = *(v19 + 8 * v25);
        ++v24;
        if (v22)
        {
          goto LABEL_24;
        }
      }

      v15 = v98;
      v3 = v109;
      v11 = v95;
      if (v98 == v97)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_98:
    v5 = swift_once();
  }

  v16 = MEMORY[0x1E69E7CC8];
LABEL_51:
  v2 = v16;

  v58 = [v94 string];
  isUniquelyReferenced_nonNull_native = &selRef_lastEditorFormattedName;
  if (v58)
  {
    v59 = v58;
    isTaggedPointer = _objc_isTaggedPointer(v58);
    v61 = v59;
    v16 = v61;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v61);
      switch(TaggedPointerTag)
      {
        case 0:
          v107[0] = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v67)
          {
            goto LABEL_77;
          }

          [v16 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_81;
        case 0x16:
          v65 = [v16 UTF8String];
          if (v65)
          {
            String.init(utf8String:)(v65);
            if (v66)
            {
              goto LABEL_68;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_105:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_106;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_82;
      }
    }

    LOBYTE(v108[0]) = 0;
    v113[0] = 0;
    LOBYTE(v107[0]) = 0;
    v112 = 0;
    if (!__CFStringIsCF())
    {
LABEL_63:
      v63 = v16;
      String.init(_nativeStorage:)();
      if (v64 || (v68 = [v63 *(isUniquelyReferenced_nonNull_native + 96)], (*(v3 + 19) = v68) == 0))
      {

        goto LABEL_82;
      }

      goto LABEL_80;
    }

    if (v113[0])
    {
      if (v112 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_81;
      }

LABEL_80:
      String.init(_cocoaString:)();
LABEL_81:

      goto LABEL_82;
    }

LABEL_68:
  }

LABEL_82:
  BigString.init(_:)();
  v108[0] = 0;
  MEMORY[0x1865D26B0](v108, 8);
  v73 = v108[0];
  *(v3 + 10) = 0;
  *(v3 + 11) = 0;
  *(v3 + 12) = v73;
  *(v3 + 8) = 0;
  *(v3 + 9) = 0;
  v74 = BigString.startIndex.getter();
  *(v3 + 4) = v74;
  *(v3 + 5) = v75;
  *(v3 + 6) = v76;
  *(v3 + 7) = v77;
  *v3 = v74;
  *(v3 + 1) = v75;
  *(v3 + 2) = v76;
  *(v3 + 3) = v77;
  v104 = 0;
  v105 = MEMORY[0x1E69E7CC8];
  v106 = MEMORY[0x1E69E7CD0];
  v103 = 0;
  v78 = [v94 *(isUniquelyReferenced_nonNull_native + 96)];
  v79 = swift_allocObject();
  *(v79 + 16) = v2;
  *(v79 + 24) = 1;
  *(v79 + 32) = &v111;
  *(v79 + 40) = v109;
  *(v79 + 48) = &v110;
  *(v79 + 56) = *(v3 + 152);
  *(v79 + 72) = *(v3 + 168);
  *(v79 + 88) = *(v3 + 184);
  *(v79 + 104) = &v104;
  *(v79 + 112) = &v112;
  *(v79 + 120) = &v103;
  v80 = swift_allocObject();
  *(v80 + 16) = partial apply for closure #1 in AttributedString.init(_:attributeTable:options:);
  *(v80 + 24) = v79;
  v108[4] = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v108[5] = v80;
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 1107296256;
  v108[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v108[3] = &block_descriptor_2;
  v81 = _Block_copy(v108);

  outlined init with copy of BigString(v113, v107);

  [v94 enumerateAttributesInRange:0 options:v78 usingBlock:{0, v81}];
  _Block_release(v81);
  LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

  if (v78)
  {
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v16 = *(v3 + 8);
  if (v16)
  {
LABEL_106:
    swift_willThrow();
    v89 = v16;
    outlined destroy of BigString(v113);

    swift_unknownObjectRelease();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v82 = v104;
  if (v104 >= 1)
  {
    v83 = v105;
    v84 = v106;

    specialized Rope.append(_:)(v82, v83, v84);
  }

  v101 = *(v3 + 72);
  v102 = *(v3 + 88);
  type metadata accessor for AttributedString.Guts();
  v80 = swift_allocObject();
  v85 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(v113, v108);
  if (v101)
  {
    v86 = v102 == 0;
  }

  else
  {
    v86 = 1;
  }

  v87 = v86;
  swift_unknownObjectRetain();
  if (v87 != v85)
  {
    goto LABEL_100;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_101:
    swift_once();
  }

  *(v80 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v80 + 24) = *(v3 + 152);
  *(v80 + 40) = *(v3 + 168);
  *(v80 + 56) = *(v3 + 184);
  *(v80 + 88) = v102;
  *(v80 + 72) = v101;
  *(v80 + 104) = MEMORY[0x1E69E7CC0];
  if (v103 == 1)
  {
    AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()();
  }

  outlined destroy of BigString(v113);

  result = swift_unknownObjectRelease();
  *a2 = v80;
  return result;
}

id AttributedString.init<A>(_:including:)@<X0>(void *a1@<X0>, unint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = static AttributeScope.scopeDescription.getter(a2);

  v5 = [a1 string];
  v6 = &selRef_lastEditorFormattedName;
  if (v5)
  {
    v7 = v5;
    isTaggedPointer = _objc_isTaggedPointer(v5);
    v9 = v7;
    v10 = v9;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v9);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v45) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v16)
          {
          }

          else
          {
            [v10 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
          }

LABEL_21:

          goto LABEL_22;
        case 0x16:
          result = [v10 UTF8String];
          if (result)
          {
            result = String.init(utf8String:)(result);
            if (v15)
            {
              goto LABEL_8;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return result;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          v6 = &selRef_lastEditorFormattedName;
          goto LABEL_22;
      }
    }

    v40[0] = 0;
    v41[0] = 0;
    LOBYTE(v45) = 0;
    LOBYTE(v43[0]) = 0;
    if (__CFStringIsCF())
    {
LABEL_8:

      goto LABEL_22;
    }

    v12 = v10;
    String.init(_nativeStorage:)();
    if (v13 || (v41[0] = [v12 length]) == 0)
    {

      goto LABEL_22;
    }

    String.init(_cocoaString:)();
    goto LABEL_21;
  }

LABEL_22:
  BigString.init(_:)();
  v41[0] = 0;
  MEMORY[0x1865D26B0](v41, 8);
  *&v46 = 0;
  *(&v46 + 1) = v41[0];
  v44 = 0;
  v45 = 0uLL;
  v17 = BigString.startIndex.getter();
  v43[1] = v18;
  v43[2] = v19;
  v43[3] = v20;
  v42[0] = v17;
  v42[1] = v18;
  v42[2] = v19;
  v42[3] = v20;
  v43[0] = v17;
  v37 = 0;
  v38 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CD0];
  v36 = 0;
  v21 = [a1 v6[12]];
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = 0;
  *(v22 + 32) = &v44;
  *(v22 + 40) = v42;
  *(v22 + 48) = v43;
  *(v22 + 56) = v47;
  *(v22 + 72) = v48;
  *(v22 + 88) = v49;
  *(v22 + 104) = &v37;
  *(v22 + 112) = &v45;
  *(v22 + 120) = &v36;
  v23 = swift_allocObject();
  *(v23 + 16) = closure #1 in AttributedString.init(_:attributeTable:options:)partial apply;
  *(v23 + 24) = v22;
  v41[4] = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v41[5] = v23;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 1107296256;
  v41[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v41[3] = &block_descriptor_116;
  v24 = _Block_copy(v41);

  outlined init with copy of BigString(&v47, v40);

  [a1 enumerateAttributesInRange:0 options:v21 usingBlock:{0, v24}];
  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v25 = v44;
  if (v44)
  {
    swift_willThrow();
    v26 = v25;
    outlined destroy of BigString(&v47);

    return swift_unknownObjectRelease();
  }

  v27 = v37;
  if (v37 >= 1)
  {
    v28 = v38;
    v29 = v39;

    specialized Rope.append(_:)(v27, v28, v29);
  }

  v33 = v45;
  v34 = v46;
  type metadata accessor for AttributedString.Guts();
  v23 = swift_allocObject();
  v30 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v47, v41);
  if (v33)
  {
    v31 = v34 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  swift_unknownObjectRetain();
  if (v32 != v30)
  {
    goto LABEL_39;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_40:
    swift_once();
  }

  *(v23 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v23 + 24) = v47;
  *(v23 + 40) = v48;
  *(v23 + 56) = v49;
  *(v23 + 88) = v34;
  *(v23 + 72) = v33;
  *(v23 + 104) = MEMORY[0x1E69E7CC0];
  if (v36 == 1)
  {
    AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()();
  }

  outlined destroy of BigString(&v47);

  result = swift_unknownObjectRelease();
  *a3 = v23;
  return result;
}

{
  v50 = *MEMORY[0x1E69E9840];
  v4 = static AttributeScope.scopeDescription.getter(a2);

  v5 = [a1 string];
  v6 = &selRef_lastEditorFormattedName;
  if (v5)
  {
    v7 = v5;
    isTaggedPointer = _objc_isTaggedPointer(v5);
    v9 = v7;
    v10 = v9;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v9);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v45) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v16)
          {
          }

          else
          {
            [v10 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
          }

LABEL_21:

          goto LABEL_22;
        case 0x16:
          result = [v10 UTF8String];
          if (result)
          {
            result = String.init(utf8String:)(result);
            if (v15)
            {
              goto LABEL_8;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return result;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          v6 = &selRef_lastEditorFormattedName;
          goto LABEL_22;
      }
    }

    v40[0] = 0;
    v41[0] = 0;
    LOBYTE(v45) = 0;
    LOBYTE(v43[0]) = 0;
    if (__CFStringIsCF())
    {
LABEL_8:

      goto LABEL_22;
    }

    v12 = v10;
    String.init(_nativeStorage:)();
    if (v13 || (v41[0] = [v12 length]) == 0)
    {

      goto LABEL_22;
    }

    String.init(_cocoaString:)();
    goto LABEL_21;
  }

LABEL_22:
  BigString.init(_:)();
  v41[0] = 0;
  MEMORY[0x1865D26B0](v41, 8);
  *&v46 = 0;
  *(&v46 + 1) = v41[0];
  v44 = 0;
  v45 = 0uLL;
  v17 = BigString.startIndex.getter();
  v43[1] = v18;
  v43[2] = v19;
  v43[3] = v20;
  v42[0] = v17;
  v42[1] = v18;
  v42[2] = v19;
  v42[3] = v20;
  v43[0] = v17;
  v37 = 0;
  v38 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CD0];
  v36 = 0;
  v21 = [a1 v6[12]];
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = 0;
  *(v22 + 32) = &v44;
  *(v22 + 40) = v42;
  *(v22 + 48) = v43;
  *(v22 + 56) = v47;
  *(v22 + 72) = v48;
  *(v22 + 88) = v49;
  *(v22 + 104) = &v37;
  *(v22 + 112) = &v45;
  *(v22 + 120) = &v36;
  v23 = swift_allocObject();
  *(v23 + 16) = closure #1 in AttributedString.init(_:attributeTable:options:)partial apply;
  *(v23 + 24) = v22;
  v41[4] = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v41[5] = v23;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 1107296256;
  v41[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v41[3] = &block_descriptor_102;
  v24 = _Block_copy(v41);

  outlined init with copy of BigString(&v47, v40);

  [a1 enumerateAttributesInRange:0 options:v21 usingBlock:{0, v24}];
  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v25 = v44;
  if (v44)
  {
    swift_willThrow();
    v26 = v25;
    outlined destroy of BigString(&v47);

    return swift_unknownObjectRelease();
  }

  v27 = v37;
  if (v37 >= 1)
  {
    v28 = v38;
    v29 = v39;

    specialized Rope.append(_:)(v27, v28, v29);
  }

  v33 = v45;
  v34 = v46;
  type metadata accessor for AttributedString.Guts();
  v23 = swift_allocObject();
  v30 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v47, v41);
  if (v33)
  {
    v31 = v34 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  swift_unknownObjectRetain();
  if (v32 != v30)
  {
    goto LABEL_39;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_40:
    swift_once();
  }

  *(v23 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v23 + 24) = v47;
  *(v23 + 40) = v48;
  *(v23 + 56) = v49;
  *(v23 + 88) = v34;
  *(v23 + 72) = v33;
  *(v23 + 104) = MEMORY[0x1E69E7CC0];
  if (v36 == 1)
  {
    AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()();
  }

  outlined destroy of BigString(&v47);

  result = swift_unknownObjectRelease();
  *a3 = v23;
  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  outlined consume of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for AttributedString.Runs(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for ICULegacyNumberFormatter.Signature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = *(type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0) + 36);
    v11 = type metadata accessor for FloatingPointRoundingRule();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd, &_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMR);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = *(type metadata accessor for NumberFormatStyleConfiguration.Collection(0) + 36);
    v8 = type metadata accessor for FloatingPointRoundingRule();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance Locale(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftLocale();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
    v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    result = swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged, &protocol conformance descriptor for _LocaleBridged);
    result = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Locale()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 488))(ObjectType, v1);
}

uint64_t _NSSetFloatValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    [a3 floatValue];

    return (Implementation)(a1, Name);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

Swift::String __swiftcall NSBundle.localizedString(forKey:value:table:localizations:)(Swift::String forKey, Swift::String_optional value, Swift::String_optional table, Swift::OpaquePointer localizations)
{
  v5 = v4;
  object = table.value._object;
  v7 = value.value._object;
  v8 = *(localizations._rawValue + 2);
  if (v8)
  {
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v10 = v44;
    v11 = localizations._rawValue + 32;
    do
    {
      v12 = Locale.Language.minimalIdentifier.getter();
      v43 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        v42 = v12;
        v17 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v12 = v42;
        v10 = v43;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v11 += 96;
      --v8;
    }

    while (v8);
    v5 = v4;
  }

  v18 = String._bridgeToObjectiveCImpl()();
  if (v7)
  {
    v7 = String._bridgeToObjectiveCImpl()();
  }

  if (object)
  {
    object = String._bridgeToObjectiveCImpl()();
  }

  v19 = [v5 localizedStringForKey:v18 value:v7 table:object localizations:_ContiguousArrayBuffer._asCocoaArray()()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (!v19)
  {
    goto LABEL_21;
  }

  isTaggedPointer = _objc_isTaggedPointer(v19);
  v21 = v19;
  v22 = v21;
  if (!isTaggedPointer)
  {
    goto LABEL_38;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v21);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v36 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v37)
    {
      v38 = v36;
      v39 = v37;
    }

    else
    {
      [v22 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v38 = v43;
      v39 = v45;
    }

    goto LABEL_31;
  }

  if (TaggedPointerTag == 22)
  {
    v28 = [v22 UTF8String];
    if (v28)
    {
      v28 = String.init(utf8String:)(v28);
      if (v27)
      {
        v34 = v28;
        v35 = v27;

        v28 = v34;
        v27 = v35;
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_38:
    if (__CFStringIsCF())
    {

LABEL_21:
      v28 = 0;
      v27 = 0xE000000000000000;
      goto LABEL_34;
    }

    v29 = v22;
    v30 = String.init(_nativeStorage:)();
    if (v31)
    {
      v32 = v30;
      v33 = v31;

      v27 = v33;
      v28 = v32;
      goto LABEL_34;
    }

    if (![v29 length])
    {

      goto LABEL_21;
    }

    v38 = String.init(_cocoaString:)();
    v39 = v40;
LABEL_31:

    v27 = v39;
    v28 = v38;
    goto LABEL_34;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v26 = v25;

  v27 = v26;
  v28 = v24;
LABEL_34:
  result._object = v27;
  result._countAndFlagsBits = v28;
  return result;
}

uint64_t Locale.Language.minimalIdentifier.getter()
{
  v0 = MEMORY[0x1E69E5758];

  return Locale.Language.minimalIdentifier.getter(v0);
}

uint64_t LocalizedStringResource.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String?, @unowned _NSRange, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a2)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)(a2);
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v12(v13, v15, a3, a4, a5, a6, a7);
}

uint64_t closure #1 in StringProtocol.enumerateSubstrings<A>(in:options:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v24 = 0;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(a3, a4))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  result = StringProtocol._toUTF16Indices(_:)();
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  if (__OFADD__(a5, a6))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = StringProtocol._toUTF16Indices(_:)();
  result = a8(v17, a2, v20, v19, v21, v22, &v24);
  if (v24 == 1)
  {
    *a7 = v24;
  }

  return result;
}

uint64_t static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 16))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for PredicateExpressions.Conjunction(0, v15);
  return (*(*(a4 - 8) + 16))(a7 + *(v13 + 52), a2, a4);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Conjunction<A, B>(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23 = a8;
  v24 = a3;
  v25 = a2;
  v15 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 16);
  v19(v18, v16);
  (v19)(a9, v18, a4);
  if (one-time initialization token for nextID != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
  v26[0] = a4;
  v26[1] = a6;
  v26[2] = a5;
  v26[3] = a7;
  v26[4] = v23;
  v26[5] = a10;
  *(a9 + *(type metadata accessor for PredicateExpressions.OptionalFlatMap(0, v26) + 72)) = add_explicit;
  v26[0] = add_explicit;
  v25(v26);
  return (*(v15 + 8))(v18, a4);
}

{
  return static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

{
  return static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.CollectionIndexSubscript<A, B>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t static PredicateExpressions.build_contains<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 16))(a9, a1);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v17 = type metadata accessor for PredicateExpressions.SequenceContains(0, v19);
  return (*(*(a4 - 8) + 16))(a9 + *(v17 + 68), a2, a4);
}

{
  (*(*(a3 - 8) + 16))(a9, a1);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v17 = type metadata accessor for PredicateExpressions.StringContainsRegex(0, v19);
  return (*(*(a4 - 8) + 16))(a9 + *(v17 + 68), a2, a4);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Comparison<A, B>(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.SequenceContains<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1, a2, a3, &protocol conformance descriptor for <> PredicateExpressions.SequenceContains<A, B>, &protocol conformance descriptor for <> PredicateExpressions.SequenceContains<A, B>);
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1, a2, a3, &protocol conformance descriptor for <> PredicateExpressions.SequenceContains<A, B>);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t *Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = 0;
  v9 = 0;
  v10 = *a3;
  v11 = *result;
  v12 = *(result + 8);
  v13 = *a4;
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *a5;
  v33 = 1;
  v17 = 0uLL;
  v18 = 0x3000000000000;
  v19 = *a6;
  if (v12)
  {
    v20 = 0;
    v21 = 0uLL;
  }

  else
  {
    v20 = 0;
    v21 = 0uLL;
    if (v11)
    {
      v33 = 0;
      v38 = xmmword_18121B8E0;
      v39 = xmmword_181223220;
      v40 = 0x2020E0906030100;
      v41 = 0;
      v42 = 3327;
      v32 = v11;
      v30 = v13;
      v31 = v10;
      v29 = v16;
      result = Date.FormatStyle.DateFieldCollection.collection(date:)(&v32, v34);
      v16 = v29;
      v13 = v30;
      v10 = v31;
      v17 = v34[0];
      v21 = v34[1];
      v18 = v35;
      v9 = v36;
      v20 = v11;
      v8 = v37;
    }
  }

  if (v14)
  {
    v22 = v15;
  }

  else
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    if ((v18 & 0xFF000000000000) == 0x3000000000000)
    {
      v9 = 0;
      v23 = 0;
      v18 = 0x2020E0906030000;
      LOBYTE(v24) = 1;
      v21 = xmmword_181223220;
      v17 = xmmword_18121B8E0;
      LOWORD(v25) = 12;
      LOBYTE(v8) = -1;
    }

    else
    {
      v24 = v18 >> 8;
      v23 = v18;
      v25 = v8 >> 8;
    }

    v26 = v23 & 0xFFFFFFFFFFFF00FFLL | (v24 << 8);
    v27 = v18 & 0xFF00000000000000;
    if (v14 == 2)
    {
      v27 = 0x100000000000000;
    }

    if (v14 == 3)
    {
      LOWORD(v25) = 0;
      v27 = 0x100000000000000;
    }

    v18 = v27 | v18 & 0xFFFFFF0000 | v26 | 0x1000000000000;
    LOWORD(v8) = v8 | (v25 << 8);
  }

  v28 = v33;
  *a7 = v17;
  *(a7 + 16) = v21;
  *(a7 + 32) = v18;
  *(a7 + 40) = v9;
  *(a7 + 48) = v8;
  *(a7 + 56) = v20;
  *(a7 + 64) = v28;
  *(a7 + 72) = v10;
  *(a7 + 88) = v16;
  *(a7 + 104) = v13;
  *(a7 + 120) = v19;
  *(a7 + 121) = 1;
  return result;
}

uint64_t Date.FormatStyle.year(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v2[5];
  v33 = v2[4];
  v34 = v5;
  v35[0] = v2[6];
  *(v35 + 10) = *(v2 + 106);
  v6 = v2[1];
  v29 = *v2;
  v30 = v6;
  v7 = v2[3];
  v31 = v2[2];
  v32 = v7;
  v8 = *(&v30 + 1);
  v9 = v30;
  v10 = *(&v31 + 1);
  v11 = v31;
  v12 = v7;
  if ((v31 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v4 == 255)
    {
      v19 = *(v2 + 66);
      v20 = *(v2 + 82);
      v21 = *(v2 + 98);
      v22 = *(v2 + 114);
      v18 = *(v2 + 50);
      v16[0] = v29;
      v16[1] = v30;
      v16[2] = v31;
      v17 = v7;
      v14 = a2;
      Date.FormatStyle.symbols.getter(v23);
      a2 = v14;
      v13 = v23[0];
      v9 = v24;
      v8 = v25;
      v11 = v26;
      v10 = v27;
      v12 = v28;
      if ((v26 & 0xFF000000000000) == 0x3000000000000)
      {
        v3 = v23[1];
        LOBYTE(v4) = v24;
      }

      else
      {
        LOBYTE(v4) = -1;
      }
    }

    else
    {
      v8 = 0;
      v10 = 0;
      LOBYTE(v16[0]) = 1;
      v11 = 0x2020E0906030100;
      v12 = 3327;
      v9 = 50660863;
      v13 = 3;
    }
  }

  else
  {
    v13 = v29;
  }

  *a2 = v13;
  *(a2 + 8) = v3;
  *(a2 + 16) = v9 & 0xFFFFFFFFFFFFFF00 | v4;
  *(a2 + 24) = v8;
  *(a2 + 32) = v11;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(&v29, v16);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Date.FormatStyle@<X0>(Swift::String *a1@<X8>, Foundation::Date a2@<D0>)
{
  v4 = Date.FormatStyle.format(_:)(a2);
  result = v4._countAndFlagsBits;
  *a1 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Date.AttributedStyle(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t URLRequest.allHTTPHeaderFields.getter()
{
  v1 = *(*v0 + 16);
  v2 = [v1 allHTTPHeaderFields];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  v4 = MEMORY[0x1E69E7CA0] + 8;
  v5 = MEMORY[0x1E69E6158];
  swift_unknownObjectRetain();
  if (v5 != v4)
  {
    v6 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v6)
    {
      goto LABEL_11;
    }

    v38 = [v3 count];
    if (!v38)
    {
      goto LABEL_37;
    }

    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v40 = v9[6];
    v41 = v9[7];

    result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(v40, v41, v3, v39);
    if (result < 0 || v39 < result)
    {
      goto LABEL_43;
    }

    v9[2] = result;
    if (!result)
    {
      goto LABEL_36;
    }

    v42 = result - 1;
    v43 = v9 + 8;
    while (1)
    {
      if ((*(v43 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v42))
      {
        goto LABEL_28;
      }

      v45 = (v9[6] + 16 * v42);
      v46 = *v45;
      v47 = v45[1];

      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
      v50 = v49;

      if (v50)
      {
        v51 = v9[6];

        outlined destroy of String(v51 + 16 * v42);
        result = outlined destroy of String(v9[7] + 16 * v42);
        v52 = v9[2];
        v27 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        if (v27)
        {
          goto LABEL_41;
        }

        v9[2] = v53;

        goto LABEL_28;
      }

      *(v43 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (v42 < v48)
      {
        v44 = 16 * v48;
        *(v9[6] + v44) = *(v9[6] + 16 * v42);
        *(v9[7] + v44) = *(v9[7] + 16 * v42);
LABEL_28:
        if (--v42 < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v48 == v42)
        {
          goto LABEL_28;
        }

        v54 = v9[6];
        v55 = (v54 + 16 * v48);
        v56 = (v54 + 16 * v42);
        v57 = *v55;
        v58 = v55[1];
        v59 = v56[1];
        *v55 = *v56;
        v55[1] = v59;
        *v56 = v57;
        v56[1] = v58;
        v60 = v9[7];
        v61 = (v60 + 16 * v48);
        v62 = (v60 + 16 * v42);
        v63 = *v61;
        v64 = v61[1];
        v65 = v62[1];
        *v61 = *v62;
        v61[1] = v65;
        *v62 = v63;
        v62[1] = v64;
        if (v42 < 0)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v6 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v6)
  {
LABEL_11:
    v9 = v6;
LABEL_38:

    return v9;
  }

  v7 = [v3 count];
  if (!v7)
  {
LABEL_37:
    v9 = MEMORY[0x1E69E7CC8];
    goto LABEL_38;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v9 = static _DictionaryStorage.allocate(capacity:)();
  v10 = v9[6];
  v11 = v9[7];

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v10, v11, v3, v8);
  if (result < 0 || v8 < result)
  {
    goto LABEL_42;
  }

  v9[2] = result;
  if (!result)
  {
LABEL_36:

    goto LABEL_38;
  }

  v13 = result - 1;
  v14 = v9 + 8;
  while (1)
  {
    if ((*(v14 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13))
    {
      goto LABEL_13;
    }

    v19 = (v9[6] + 16 * v13);
    v20 = *v19;
    v21 = v19[1];

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
    v24 = v23;

    if (v24)
    {
      break;
    }

    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    if (v13 < v22)
    {
      *(v9[6] + 16 * v22) = *(v9[6] + 16 * v13);
      v15 = v9[7];
      v16 = (v15 + 32 * v13);
      v17 = v16[1];
      v18 = (v15 + 32 * v22);
      *v18 = *v16;
      v18[1] = v17;
LABEL_13:
      if (--v13 < 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v22 == v13)
      {
        goto LABEL_13;
      }

      v29 = v9[6];
      v30 = (v29 + 16 * v22);
      v31 = (v29 + 16 * v13);
      v32 = *v30;
      v33 = v30[1];
      v34 = v31[1];
      *v30 = *v31;
      v30[1] = v34;
      *v31 = v32;
      v31[1] = v33;
      v35 = v9[7];
      v36 = (v35 + 32 * v22);
      v37 = (v35 + 32 * v13);
      outlined init with take of Any(v36, v66);
      outlined init with take of Any(v37, v36);
      outlined init with take of Any(v66, v37);
      if (v13 < 0)
      {
        goto LABEL_36;
      }
    }
  }

  v25 = v9[6] + 16 * v13;

  outlined destroy of String(v25);
  result = __swift_destroy_boxed_opaque_existential_1((v9[7] + 32 * v13));
  v26 = v9[2];
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (!v27)
  {
    v9[2] = v28;

    goto LABEL_13;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

char *_sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(char *result, uint64_t a2, id a3, uint64_t a4)
{
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2)
  {
    v6 = result;
    result = [a3 _getObjects_andKeys_count_];
    if ((a4 & 0x8000000000000000) == 0)
    {
      if (!a4)
      {
        return a4;
      }

      v7 = &v6[8 * a4 - 8];
      v8 = &v6[16 * a4 - 8];
      v9 = a4;
      do
      {
        if (v9 > a4)
        {
          __break(1u);
          goto LABEL_13;
        }

        --v9;
        v7 -= 8;
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        *(v8 - 1) = v13;
        *v8 = v14;
        v8 -= 16;
      }

      while (v9);
      v10 = a2 + 8 * a4 - 8;
      v11 = (a2 + 16 * a4 - 8);
      v12 = a4;
      while (v12 <= a4)
      {
        --v12;
        v10 -= 8;
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        *(v11 - 1) = v13;
        *v11 = v14;
        v11 -= 2;
        if (!v12)
        {
          return a4;
        }
      }

LABEL_13:
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t Slice<>.withUnsafeBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v17 = a4;
  v18 = a1;
  v19 = a2;
  v20 = a6;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  dispatch thunk of Collection.startIndex.getter();
  v15 = dispatch thunk of Collection.distance(from:to:)();
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v22 = v10;
  v23 = v17;
  v24 = a5;
  v25 = v9;
  v26 = v15;
  v27 = v7;
  v28 = v18;
  v29 = v19;
  return (*(a5 + 8))(partial apply for closure #1 in Slice<>.withUnsafeBytes<A>(_:), v21);
}

uint64_t closure #1 in Slice<>.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1)
  {
    v11 = a3 + a1;
  }

  else
  {
    v11 = 0;
  }

  type metadata accessor for Slice();
  v12 = dispatch thunk of Collection.distance(from:to:)();
  if (v11)
  {
    v13 = v12 + v11;
  }

  else
  {
    v13 = 0;
  }

  return a5(v11, v13);
}

Swift::Void __swiftcall Data._Representation.reserveCapacity(_:)(Swift::Int a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    return;
  }

  v2 = a1;
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      outlined consume of Data._Representation(*v1, *(v1 + 8));
      if (v2 <= 0xE)
      {
        *v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        v16 = v1;
        type metadata accessor for __DataStorage();
        v17 = swift_allocObject();
        __DataStorage.init(capacity:)(v2);
        if (v2 > 0x7FFFFFFE)
        {
          type metadata accessor for Data.RangeReference();
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
          *(v29 + 24) = 0;
          *v16 = v29;
          v16[1] = v17 | 0x8000000000000000;
        }

        else
        {
          *v16 = 0;
          v16[1] = v17 | 0x4000000000000000;
        }
      }

      return;
    }

    v31 = *v1;
    v32 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    if ((*((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 0x7FFFFFFFFFFFFFFFuLL) >= a1)
    {
      return;
    }

    outlined consume of Data._Representation(v4, v3);
    v9 = v1;
    *v1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v11 = *(v31 + 16);
    v10 = *(v31 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (v12)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    v14 = v32;
    if (v13 > v2)
    {
      v2 = v13;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(v2, 0);

    *v9 = v31;
    v9[1] = v14 | 0x8000000000000000;
  }

  else
  {
    if (!v5)
    {
      if (a1 <= 0xE)
      {
        return;
      }

      v6 = v1;
      outlined consume of Data._Representation(*v1, *(v1 + 8));
      if (v2 <= 0x7FFFFFFE)
      {
        v31 = v4;
        LOWORD(v32) = v3;
        BYTE2(v32) = BYTE2(v3);
        BYTE3(v32) = BYTE3(v3);
        BYTE4(v32) = BYTE4(v3);
        BYTE5(v32) = BYTE5(v3);
        type metadata accessor for __DataStorage();
        v7 = swift_allocObject();
        __DataStorage.init(bytes:length:)(&v31, BYTE6(v3));
        LODWORD(v31) = 0;
        HIDWORD(v31) = BYTE6(v3);
        v32 = v7;
        Data.InlineSlice.reserveCapacity(_:)(v2);
        v8 = v32 | 0x4000000000000000;
        *v6 = v31;
        v6[1] = v8;
        return;
      }

      v31 = v4;
      LOWORD(v32) = v3;
      BYTE2(v32) = BYTE2(v3);
      BYTE3(v32) = BYTE3(v3);
      BYTE4(v32) = BYTE4(v3);
      BYTE5(v32) = BYTE5(v3);
      type metadata accessor for __DataStorage();
      v18 = swift_allocObject();
      __DataStorage.init(bytes:length:)(&v31, BYTE6(v3));
      type metadata accessor for Data.RangeReference();
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = BYTE6(v3);
      v31 = v19;
      v32 = v18;
      Data.LargeSlice.ensureUniqueReference()();
      v20 = v31;
      v22 = *(v31 + 16);
      v21 = *(v31 + 24);
      v12 = __OFSUB__(v21, v22);
      v23 = v21 - v22;
      if (!v12)
      {
        v24 = v32;
        if (v23 > v2)
        {
          v2 = v23;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(v2, 0);

        *v6 = v20;
        v6[1] = v24 | 0x8000000000000000;
        return;
      }

      goto LABEL_32;
    }

    v31 = *v1;
    v32 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    if ((*((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 0x7FFFFFFFFFFFFFFFuLL) >= a1)
    {
      return;
    }

    outlined consume of Data._Representation(v4, v3);
    if (v2 <= 0x7FFFFFFE)
    {
      *v1 = xmmword_181234410;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      Data.InlineSlice.reserveCapacity(_:)(v2);
      v15 = v32 | 0x4000000000000000;
      *v1 = v31;
      *(v1 + 8) = v15;
      return;
    }

    if (v4 >> 32 < v4)
    {
      goto LABEL_33;
    }

    type metadata accessor for Data.RangeReference();
    v25 = swift_allocObject();
    *(v25 + 16) = v4;
    *(v25 + 24) = v4 >> 32;
    v30 = v25;

    Data.LargeSlice.ensureUniqueReference()();
    v27 = *(v30 + 16);
    v26 = *(v30 + 24);
    v12 = __OFSUB__(v26, v27);
    v28 = v26 - v27;
    if (v12)
    {
      goto LABEL_34;
    }

    if (v28 > v2)
    {
      v2 = v28;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(v2, 0);

    outlined consume of Data._Representation(v4, v3);
    *v1 = v30;
    *(v1 + 8) = v3 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
  }
}

__n128 protocol witness for DataProtocol.regions.getter in conformance UnsafeRawBufferPointer@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

void type metadata completion function for String.LocalizationValue.FormatArgument.CodableStorage(uint64_t a1)
{
  type metadata accessor for (AttributedString, options: UInt)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (Date, String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (Range<Date>, Date.IntervalFormatStyle)(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (Int, String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle)(319, &lazy cache variable for type metadata for (Int, String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle), type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, MEMORY[0x1E69E6530]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for (Int, String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle)(319, &lazy cache variable for type metadata for (Double, String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle), type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, MEMORY[0x1E69E63B0]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for (NSDecimal, String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle)(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ([LocalizedStringResource], ListFormatStyle<StringStyle, [String]>)(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for (AttributedString, options: UInt)()
{
  if (!lazy cache variable for type metadata for (AttributedString, options: UInt))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString, options: UInt));
    }
  }
}

void type metadata accessor for (Range<Date>, Date.IntervalFormatStyle)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Range<Date>, Date.IntervalFormatStyle))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Range<Date>, Date.IntervalFormatStyle));
    }
  }
}

void type metadata accessor for IntegerFormatStyle<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata completion function for FloatingPointFormatStyle.Currency(uint64_t a1)
{
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(uint64_t a1)
{
  type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for FloatingPointFormatStyle);
  if (v1 <= 0x3F)
  {
    type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Currency, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for FloatingPointFormatStyle.Currency);
    if (v2 <= 0x3F)
    {
      type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Percent, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for FloatingPointFormatStyle.Percent);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (NSDecimal, String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (NSDecimal, String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle))
  {
    type metadata accessor for NSDecimal(255);
    type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NSDecimal, String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle));
    }
  }
}

uint64_t type metadata completion function for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(uint64_t a1)
{
  result = type metadata accessor for NSDecimal.FormatStyle(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NSDecimal.FormatStyle.Currency(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NSDecimal.FormatStyle.Percent(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

NSString *_NSFullMethodName(objc_class *a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v10[0] = 0;
  if (v4 == a1)
  {
    v5 = 43;
  }

  else
  {
    v5 = 45;
  }

  if (v4)
  {
    Name = class_getName(v4);
  }

  else
  {
    Name = "nil";
  }

  v7 = sel_getName(a2);
  asprintf(v10, "%c[%s %s]", v5, Name, v7);
  if (!v10[0])
  {
    return 0;
  }

  v8 = [NSString stringWithUTF8String:?];
  free(v10[0]);
  return v8;
}

void type metadata accessor for (Date, String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)()
{
  if (!lazy cache variable for type metadata for (Date, String.LocalizationValue.FormatArgument.DateArgumentFormatStyle))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Date, String.LocalizationValue.FormatArgument.DateArgumentFormatStyle));
    }
  }
}

void type metadata accessor for (Int, String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata completion function for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(uint64_t a1)
{
  type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for IntegerFormatStyle<Int>, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], type metadata accessor for IntegerFormatStyle);
  if (v1 <= 0x3F)
  {
    type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for IntegerFormatStyle<Int>.Currency, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], type metadata accessor for IntegerFormatStyle.Currency);
    if (v2 <= 0x3F)
    {
      type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for IntegerFormatStyle<Int>.Percent, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], type metadata accessor for IntegerFormatStyle.Percent);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CurrencyFormatStyleConfiguration.Collection(uint64_t a1)
{
  type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.Precision?, &type metadata for NumberFormatStyleConfiguration.Precision);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.Grouping?, &type metadata for NumberFormatStyleConfiguration.Grouping);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for CurrencyFormatStyleConfiguration.SignDisplayStrategy?, &type metadata for CurrencyFormatStyleConfiguration.SignDisplayStrategy);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy?, &type metadata for NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy);
          if (v5 <= 0x3F)
          {
            type metadata accessor for FloatingPointRoundingRule?(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.RoundingIncrement?, &type metadata for NumberFormatStyleConfiguration.RoundingIncrement);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.Notation?, &type metadata for NumberFormatStyleConfiguration.Notation);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for NSDecimal.FormatStyle(uint64_t a1)
{
  result = type metadata accessor for NumberFormatStyleConfiguration.Collection(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSRunLoop.SchedulerTimeType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1865CD090](*&v3);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for NSDecimal.FormatStyle.Currency(uint64_t a1)
{
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for ([LocalizedStringResource], ListFormatStyle<StringStyle, [String]>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ([LocalizedStringResource], ListFormatStyle<StringStyle, [String]>))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation23LocalizedStringResourceVGMd, &_sSay10Foundation23LocalizedStringResourceVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMd, &_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ([LocalizedStringResource], ListFormatStyle<StringStyle, [String]>));
    }
  }
}

unint64_t instantiation function for generic protocol witness table for StringStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type StringStyle and conformance StringStyle();
  a1[2] = lazy protocol witness table accessor for type StringStyle and conformance StringStyle();
  result = lazy protocol witness table accessor for type StringStyle and conformance StringStyle();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type StringStyle and conformance StringStyle()
{
  result = lazy protocol witness table cache variable for type StringStyle and conformance StringStyle;
  if (!lazy protocol witness table cache variable for type StringStyle and conformance StringStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringStyle and conformance StringStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StringStyle and conformance StringStyle;
  if (!lazy protocol witness table cache variable for type StringStyle and conformance StringStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringStyle and conformance StringStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StringStyle and conformance StringStyle;
  if (!lazy protocol witness table cache variable for type StringStyle and conformance StringStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringStyle and conformance StringStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StringStyle and conformance StringStyle;
  if (!lazy protocol witness table cache variable for type StringStyle and conformance StringStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringStyle and conformance StringStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage and conformance String.LocalizationValue.FormatArgument.CodableStorage(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id startReadARCWeakWithSentinelAt(id *a1, BOOL *a2)
{
  v2 = *a1;
  if (a2)
  {
    *a2 = v2 == 1;
  }

  if (v2 >= 2)
  {
    return objc_loadWeakRetained(a1);
  }

  else
  {
    return 0;
  }
}

void finishReadARCWeakAt(id a1)
{
  if (a1)
  {
  }
}

id continueReadARCWeakAt(id result)
{
  if (result)
  {
    return result;
  }

  return result;
}

id startReadARCWeakAt(id *a1, BOOL *a2)
{
  if (*a1)
  {
    result = objc_loadWeakRetained(a1);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = result == 0;
  return result;
}

Swift::Bool __swiftcall URL.startAccessingSecurityScopedResource()()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 432))(ObjectType, v1);
  v4 = [v3 startAccessingSecurityScopedResource];

  return v4;
}

uint64_t type metadata completion function for ListFormatStyle(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v14 = 0;
    v17 = result;
    v4 = a1[3];
    v5 = a1[4];
    v6 = a1[5];
    v7 = result;
    v10 = result;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    result = type metadata accessor for ListFormatStyle.Width(319, &v10);
    if (v8 <= 0x3F)
    {
      v15 = 0;
      v18 = result;
      v10 = v7;
      v11 = v4;
      v12 = v5;
      v13 = v6;
      result = type metadata accessor for ListFormatStyle.ListType(319, &v10);
      if (v9 <= 0x3F)
      {
        v16 = 0;
        v19 = result;
        v20 = &type metadata for Locale;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(unint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v179 = a4;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v169 = (v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v163 = v151 - v11;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v171 = v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v173 = (v151 - v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v168 = v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v162 = v151 - v19;
  v175 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v175);
  v167 = v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v161 = v151 - v22;
  v186 = a3;
  v182 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v181 = v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v166 = v151 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v165 = v151 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v177 = (v151 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v160 = v151 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v159 = v151 - v34;
  v185 = a2;
  v183 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v35);
  v180 = v151 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v170 = v151 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v164 = v151 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v158 = v151 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v178 = v151 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v157 = v151 - v46;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v184 = MEMORY[0x1E69E7CC8];
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for _DictionaryStorage();
  v184 = static _DictionaryStorage.allocate(capacity:)();
LABEL_6:
  v154 = v7;
  v153 = v8;
  v156 = v12;
  v155 = v13;
  if (v185 != MEMORY[0x1E69E6158])
  {
    if (v47)
    {
      v48 = __CocoaDictionary.makeIterator()();
      v158 = 0;
      v49 = 0;
      v50 = 0;
      v51 = v48 | 0x8000000000000000;
    }

    else
    {
      v56 = -1 << *(a1 + 32);
      v49 = ~v56;
      v57 = *(a1 + 64);
      v158 = (a1 + 64);
      v58 = -v56;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      else
      {
        v59 = -1;
      }

      v50 = v59 & v57;
      v51 = a1;
    }

    v157 = v49;
    v60 = (v49 + 64) >> 6;
    v162 = (v183 + 56);
    v178 = (v183 + 32);
    v161 = (v182 + 56);
    v177 = (v182 + 32);
    v61 = v184;

    v63 = 0;
    v64 = v170;
    v65 = v171;
    v163 = v51;
    v159 = v60;
    v160 = (v61 + 8);
    while (1)
    {
      if ((v51 & 0x8000000000000000) != 0)
      {
        v75 = __CocoaDictionary.Iterator.next()();
        if (!v75)
        {
          v110 = v51;
LABEL_40:
          outlined consume of Set<AnyKeyPath>.Iterator._Variant(v110);
          return v61;
        }

        v73 = v76;
        v187 = v75;
        type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        swift_dynamicCast();
        v74 = v188;
        v174 = v63;
        v69 = v63;
        v71 = v50;
        if (!v188)
        {
LABEL_66:
          v51 = v163;
LABEL_39:
          v110 = v51;
          goto LABEL_40;
        }
      }

      else
      {
        v68 = v50;
        v69 = v63;
        if (!v50)
        {
          v70 = v63;
          while (1)
          {
            v69 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              break;
            }

            if (v69 >= v60)
            {
              goto LABEL_39;
            }

            v68 = *&v158[8 * v69];
            ++v70;
            if (v68)
            {
              goto LABEL_24;
            }
          }

LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_24:
        v174 = v63;
        v71 = (v68 - 1) & v68;
        v72 = (v69 << 9) | (8 * __clz(__rbit64(v68)));
        v73 = *(*(v51 + 56) + v72);
        v74 = *(*(v51 + 48) + v72);
        swift_unknownObjectRetain();
        if (!v74)
        {
          goto LABEL_66;
        }
      }

      v188 = v74;
      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        swift_unknownObjectRelease();
        outlined consume of Set<AnyKeyPath>.Iterator._Variant(v163);
        (*v162)(v65, 1, 1, v185);
        (*(v155 + 8))(v65, v156);
        goto LABEL_72;
      }

      v77 = v64;
      v78 = v185;
      (*v162)(v65, 0, 1, v185);
      v79 = *v178;
      (*v178)(v77, v65, v78);
      v188 = v73;
      v80 = v169;
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*(v183 + 8))(v77, v185);
        outlined consume of Set<AnyKeyPath>.Iterator._Variant(v163);
        (*v161)(v80, 1, 1, v186);
        (*(v153 + 8))(v80, v154);
        goto LABEL_72;
      }

      v174 = v71;
      v81 = v186;
      (*v161)(v80, 0, 1, v186);
      v82 = *v177;
      v83 = v166;
      (*v177)(v166, v80, v81);
      v84 = v82;
      v173 = v82;
      v85 = *(TupleTypeMetadata2 + 48);
      v86 = v168;
      v87 = v77;
      v88 = v185;
      v79(v168, v87, v185);
      v84(&v86[v85], v83, v81);
      v89 = v88;
      v90 = v81;
      v91 = v175;
      v172 = *(v175 + 48);
      v92 = v167;
      v79(v167, v86, v89);
      v93 = &v86[v85];
      v94 = v173;
      v173(v172 + v92, v93, v90);
      v95 = *(v91 + 48);
      v96 = v90;
      v97 = v164;
      v79(v164, v92, v89);
      v98 = &v92[v95];
      v99 = v165;
      v94(v165, v98, v96);
      v79(v180, v97, v89);
      v100 = v96;
      v101 = v94;
      v94(v181, v99, v100);
      v102 = v184;
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v103 = -1 << *(v102 + 32);
      v104 = result & ~v103;
      v105 = v104 >> 6;
      if (((-1 << v104) & ~*&v160[8 * (v104 >> 6)]) != 0)
      {
        v66 = __clz(__rbit64((-1 << v104) & ~*&v160[8 * (v104 >> 6)])) | v104 & 0x7FFFFFFFFFFFFFC0;
        v64 = v170;
        v65 = v171;
        v50 = v174;
        v67 = v79;
        v61 = v102;
      }

      else
      {
        v106 = 0;
        v107 = (63 - v103) >> 6;
        v64 = v170;
        v65 = v171;
        v50 = v174;
        v67 = v79;
        v61 = v102;
        do
        {
          if (++v105 == v107 && (v106 & 1) != 0)
          {
            __break(1u);
            goto LABEL_76;
          }

          v108 = v105 == v107;
          if (v105 == v107)
          {
            v105 = 0;
          }

          v106 |= v108;
          v109 = *&v160[8 * v105];
        }

        while (v109 == -1);
        v66 = __clz(__rbit64(~v109)) + (v105 << 6);
      }

      *&v160[(v66 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v66;
      v67(v61[6] + *(v183 + 72) * v66, v180, v185);
      result = v101(v61[7] + *(v182 + 72) * v66, v181, v186);
      ++v61[2];
      v63 = v69;
      v51 = v163;
      v60 = v159;
    }
  }

  if (v47)
  {
    v52 = __CocoaDictionary.makeIterator()();
    v152 = 0;
    v53 = 0;
    v54 = 0;
    v55 = v52 | 0x8000000000000000;
  }

  else
  {
    v111 = -1 << *(a1 + 32);
    v53 = ~v111;
    v112 = *(a1 + 64);
    v152 = a1 + 64;
    v113 = -v111;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    else
    {
      v114 = -1;
    }

    v54 = (v114 & v112);
    v55 = a1;
  }

  v151[1] = v53;
  v115 = (v53 + 64) >> 6;
  v172 = (v183 + 32);
  v169 = (v182 + 56);
  v170 = (v183 + 56);
  v171 = (v182 + 32);
  v164 = (v184 + 64);
  v166 = (v183 + 40);
  v165 = (v182 + 40);

  v116 = 0;
  v117 = MEMORY[0x1E69E6158];
  v118 = v173;
  v119 = v178;
  v167 = v115;
  v168 = v55;
  while (1)
  {
    if ((v55 & 0x8000000000000000) != 0)
    {
      v127 = __CocoaDictionary.Iterator.next()();
      if (!v127)
      {
        v150 = v55;
LABEL_65:
        outlined consume of Set<AnyKeyPath>.Iterator._Variant(v150);
        return v184;
      }

      v125 = v128;
      v187 = v127;
      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      swift_dynamicCast();
      v126 = v188;
      v121 = v116;
      v123 = v54;
      if (!v188)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v120 = v54;
      v121 = v116;
      if (!v54)
      {
        v122 = v116;
        while (1)
        {
          v121 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
            goto LABEL_77;
          }

          if (v121 >= v115)
          {
            break;
          }

          v120 = *(v152 + 8 * v121);
          ++v122;
          if (v120)
          {
            goto LABEL_54;
          }
        }

LABEL_64:
        v150 = v55;
        goto LABEL_65;
      }

LABEL_54:
      v123 = (v120 - 1) & v120;
      v124 = (v121 << 9) | (8 * __clz(__rbit64(v120)));
      v125 = *(*(v55 + 56) + v124);
      v126 = *(*(v55 + 48) + v124);
      swift_unknownObjectRetain();
      if (!v126)
      {
        goto LABEL_64;
      }
    }

    v188 = v126;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_unknownObjectRelease();
      outlined consume of Set<AnyKeyPath>.Iterator._Variant(v55);
      (*v170)(v118, 1, 1, MEMORY[0x1E69E6158]);
      (*(v155 + 8))(v118, v156);
LABEL_72:

      return 0;
    }

    v181 = v123;
    (*v170)(v118, 0, 1, v117);
    v129 = *v172;
    (*v172)(v119, v118, v117);
    v188 = v125;
    v130 = v163;
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v183 + 8))(v119, MEMORY[0x1E69E6158]);
      outlined consume of Set<AnyKeyPath>.Iterator._Variant(v55);
      (*v169)(v130, 1, 1, v186);
      (*(v153 + 8))(v130, v154);
      goto LABEL_72;
    }

    v131 = v186;
    (*v169)(v130, 0, 1, v186);
    v185 = v129;
    v132 = *v171;
    v133 = v160;
    (*v171)(v160, v130, v131);
    v134 = *(TupleTypeMetadata2 + 48);
    v180 = v134;
    v135 = v162;
    v129(v162, v178, v117);
    v132(&v134[v135], v133, v131);
    v136 = v175;
    v174 = *(v175 + 48);
    v137 = v161;
    v138 = v185;
    v185(v161, v135, v117);
    v132(&v137[v174], &v180[v135], v131);
    v139 = *(v136 + 48);
    v140 = v157;
    v138(v157, v137, v117);
    v141 = &v137[v139];
    v142 = v159;
    v132(v159, v141, v131);
    v143 = v158;
    v138(v158, v140, v117);
    v132(v177, v142, v131);
    v144 = v184;
    result = __RawDictionaryStorage.find<A>(_:)(v143, v117, v179);
    v145 = result;
    if (v146)
    {
      (*(v183 + 40))(v144[6] + *(v183 + 72) * result, v143, v117);
      result = (*(v182 + 40))(v144[7] + *(v182 + 72) * v145, v177, v186);
      v116 = v121;
      v54 = v181;
      goto LABEL_47;
    }

    v54 = v181;
    if (v144[2] >= v144[3])
    {
      goto LABEL_78;
    }

    *&v164[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
    v185((v144[6] + *(v183 + 72) * result), v143, v117);
    result = (v132)(v144[7] + *(v182 + 72) * v145, v177, v186);
    v147 = v144[2];
    v148 = __OFADD__(v147, 1);
    v149 = v147 + 1;
    if (v148)
    {
      break;
    }

    v144[2] = v149;
    v116 = v121;
LABEL_47:
    v118 = v173;
    v119 = v178;
    v55 = v168;
    v115 = v167;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t _NSFCLog()
{
  if (qword_1ED440198 != -1)
  {
    dispatch_once(&qword_1ED440198, &__block_literal_global_935);
  }

  return qword_1ED4400F8;
}

Swift::Void __swiftcall URL.stopAccessingSecurityScopedResource()()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 432))(ObjectType, v1);
  [v3 stopAccessingSecurityScopedResource];
}

unint64_t specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(unint64_t result, unint64_t a2, uint64_t a3)
{
  if (result < a2 || (v3 = result, v4 = a2 + a3, a2 + a3 < result))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    if (v4 >= result + 1)
    {
      v4 = result + 1;
    }

    if (v4 <= a2)
    {
      return 1;
    }

    else
    {
      v5 = a3 + a2;
      v6 = -a2;
      result = 1;
LABEL_7:
      while (2)
      {
        v7 = 0;
        v8 = 0;
        v9 = v5 - a2;
        while (1)
        {
          if ((v6 + a2 + v8) < 0 || v9 + v7 < 1)
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v10 = *(a2 + v8);
          if (v10 == 10)
          {
            v12 = __OFADD__(result++, 1);
            if (v12)
            {
              goto LABEL_30;
            }

            a2 += v8 + 1;
            if (a2 < v4)
            {
              goto LABEL_7;
            }

            return result;
          }

          if (v10 == 13)
          {
            break;
          }

          if (__OFADD__(v8, 1))
          {
            goto LABEL_28;
          }

          ++v8;
          --v7;
          if (a2 + v8 >= v4)
          {
            return result;
          }
        }

        v11 = a2 + v8;
        if (a2 + v8 + 1 <= v3)
        {
          if (((v6 + a2 + v8 + 1) & 0x8000000000000000) != 0 || ~v8 + v9 < 1)
          {
            goto LABEL_32;
          }

          if (*(v11 + 1) == 10)
          {
            v11 = a2 + v8 + 1;
          }
        }

        v12 = __OFADD__(result++, 1);
        if (v12)
        {
          goto LABEL_31;
        }

        a2 = v11 + 1;
        if (v11 + 1 < v4)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

unsigned __int8 *specialized static JSONScanner.parseUnicodeSequence(from:into:fullSource:allowNulls:)(unsigned __int8 *result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a2 >= 4)
  {
    v6 = a5;
    v7 = a4;
    v9 = 0;
    v10 = result + 4;
    v11 = result;
    while (1)
    {
      v12 = *v11;
      v13 = v12 - 48;
      if ((v12 - 48) >= 0xA)
      {
        if ((v12 - 65) < 6)
        {
          v13 = v12 - 55;
        }

        else
        {
          if ((v12 - 97) > 5)
          {
            break;
          }

          v13 = v12 - 87;
        }
      }

      if (v9 > 0xFFFu)
      {
        break;
      }

      v9 = 16 * v9 + v13;
      if (++v11 >= v10)
      {
        if ((a6 & 1) == 0 && !v9)
        {
          v14 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(result, a4, a5);
          v10 = v15;
          v17 = v16;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v18 = v14;
          *(v18 + 8) = v10;
          *(v18 + 16) = v17;
          *(v18 + 24) = 0;
          *(v18 + 32) = 0;
          *(v18 + 40) = 0;
          v19 = 4;
          goto LABEL_16;
        }

        if (v9 >> 10 != 54)
        {
          if (v9 >> 11 == 27)
          {
            v35 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(result, a4, a5);
            v10 = v36;
            v38 = v37;
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v18 = v35;
            *(v18 + 8) = v10;
            *(v18 + 16) = v38;
            *(v18 + 24) = v9;
            *(v18 + 32) = 0;
            *(v18 + 40) = 0;
            v19 = 9;
            goto LABEL_16;
          }

          v55 = *a3;
          v57 = a3[1];
          String.UnicodeScalarView.append(_:)();
          *a3 = v55;
          a3[1] = v57;
          return v10;
        }

        if (a2 - 4 < 0)
        {
          __break(1u);
        }

        else
        {
          v28 = a2 - 6;
          if ((a2 - 4) < 2 || *v10 != 92 || result[5] != 117)
          {
            v39 = (result + 4);
            goto LABEL_40;
          }

          if (v28 >= 4)
          {
            v29 = 4;
          }

          else
          {
            v29 = a2 - 6;
          }

          if (v28 >= 4)
          {
            v30 = 0;
            v8 = (result + 6);
            v10 += v29 + 2;
            v31 = result + 6;
            do
            {
              v32 = *v31;
              v33 = v32 - 48;
              if ((v32 - 48) >= 0xA)
              {
                if ((v32 - 65) < 6)
                {
                  v33 = v32 - 55;
                }

                else
                {
                  if ((v32 - 97) > 5)
                  {
                    goto LABEL_42;
                  }

                  v33 = v32 - 87;
                }
              }

              if (v30 > 0xFFFu)
              {
LABEL_42:
                v10 = static String._fromUTF8Repairing(_:)();
                v46 = v45;
                v47 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v8, v7, v6);
                v49 = v48;
                v51 = v50;
                lazy protocol witness table accessor for type JSONError and conformance JSONError();
                swift_allocError();
                *v18 = v10;
                *(v18 + 8) = v46;
                *(v18 + 16) = v47;
                *(v18 + 24) = v49;
                *(v18 + 32) = v51;
                goto LABEL_15;
              }

              v30 = 16 * v30 + v33;
              ++v31;
            }

            while (v31 < v10);
            v52 = v30;
            if (v30 >> 10 != 55)
            {
              goto LABEL_43;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_181215ED0;
            *(inited + 32) = v9;
            *(inited + 34) = v52;
            _sSmsEyxqd__cSTRd__7ElementQyd__AARtzlufCs11_UIntBufferVys6UInt16VG_SayAGGTt1g5Tf4g_n(inited);
            swift_setDeallocating();
            v54 = *a3;
            v56 = a3[1];
            String.UnicodeScalarView.append(_:)();
            *a3 = v54;
            a3[1] = v56;
            return v10;
          }
        }

        __break(1u);
        return result;
      }
    }

    v20 = result;
    v10 = static String._fromUTF8Repairing(_:)();
    v22 = v21;
    v23 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v20, v7, v6);
    v25 = v24;
    v27 = v26;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v18 = v10;
    *(v18 + 8) = v22;
    *(v18 + 16) = v23;
    *(v18 + 24) = v25;
    *(v18 + 32) = v27;
LABEL_15:
    *(v18 + 40) = 0;
    v19 = 3;
  }

  else
  {
    __break(1u);
LABEL_43:
    v39 = v8;
LABEL_40:
    v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v39, v7, v6);
    v10 = v41;
    v43 = v42;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v18 = v40;
    *(v18 + 8) = v10;
    *(v18 + 16) = v43;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    v19 = 8;
  }

LABEL_16:
  *(v18 + 48) = v19;
  swift_willThrow();
  return v10;
}

unint64_t _sSmsEyxqd__cSTRd__7ElementQyd__AARtzlufCs11_UIntBufferVys6UInt16VG_SayAGGTt1g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1;
  LODWORD(a1) = 0;
  v3 = 0;
  v4 = (v2 + 32);
  v5 = v1;
  do
  {
    v6 = *v4++;
    a1 = ((-65535 << (v3 & 0x10)) - 1) & a1 | (v6 << (v3 & 0x10));
    v3 += 16;
    --v5;
  }

  while (v5);
  return a1 & 0xFFFFFF0FFFFFFFFFLL | ((v1 & 0xF) << 36);
}

unint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(uint64_t a1, void *a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

uint64_t _PlistDecoder.codingPath.getter()
{
  v1 = *(v0 + 40);

  v2 = _CodingPathNode.path.getter(v1);

  return v2;
}

uint64_t static _XMLPlistDecodingFormat.unwrapFloatingPoint<A, B>(from:in:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v61 = a8;
  v58 = a7;
  v59 = a9;
  v62 = a5;
  v63 = a3;
  v57 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v23 = v56 - v21;
  if (a1 >> 60 == 6)
  {
    MEMORY[0x1EEE9AC00](v20);
    v38 = v62;
    v56[-8] = v62;
    v56[-7] = a6;
    v39 = v61;
    v56[-6] = v58;
    v56[-5] = v39;
    v56[-4] = v63;
    v56[-3] = a4;
    v56[-2] = v38;
    v40 = *(a2 + 24);
    *&v42 = MEMORY[0x1EEE9AC00](v41);
    v56[-6] = v43;
    v56[-5] = partial apply for closure #1 in XMLPlistMap.Value.realValue<A, B>(in:as:for:_:);
    v56[-4] = v44;
    *&v56[-3] = v42;

    os_unfair_lock_lock((v40 + 40));
    closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)partial apply((v40 + 16));
    os_unfair_lock_unlock((v40 + 40));
  }

  else if (a1 >> 60 == 7)
  {
    v57 = v56;
    v56[1] = a1 & 0xFFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v20);
    v24 = v61;
    v56[-6] = a6;
    v56[-5] = v24;
    v25 = v63;
    v56[-4] = a1;
    v56[-3] = v25;
    v56[-2] = a4;
    v26 = *(a2 + 24);
    *&v28 = MEMORY[0x1EEE9AC00](v27);
    v56[-4] = closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)specialized partial apply;
    v56[-3] = v29;
    *&v56[-2] = v28;

    os_unfair_lock_lock((v26 + 40));
    v30 = v60;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v26 + 16), &v64);
    v31 = (v26 + 40);
    if (v30)
    {
      os_unfair_lock_unlock(v31);

      MEMORY[0x1EEE9AC00](v32);
      v56[-6] = a6;
      v56[-5] = v24;
      v56[-4] = a1;
      v56[-3] = v25;
      v56[-2] = a4;
      v33 = *(a2 + 24);
      *&v35 = MEMORY[0x1EEE9AC00](v34);
      v56[-4] = closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)specialized partial apply;
      v56[-3] = v36;
      *&v56[-2] = v35;

      os_unfair_lock_lock((v33 + 40));
      partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v33 + 16), &v64);
      os_unfair_lock_unlock((v33 + 40));
      v37 = v64;

      v64 = v37;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
    }

    else
    {
      os_unfair_lock_unlock(v31);
      v55 = v64;

      v64 = v55;
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    }

    return dispatch thunk of FloatingPoint.init<A>(_:)();
  }

  else
  {
    v60 = a1;
    v46 = *(v16 + 16);
    v46(v56 - v21, a4, v15, v22);
    (v46)(v18, v23, v15);
    v47 = v57;
    if ((v57[6])(v18, 1, a6) == 1)
    {
      v48 = *(v16 + 8);
      v48(v18, v15);
      _CodingPathNode.path.getter(v63);
      v48(v23, v15);
    }

    else
    {
      (v47[4])(v14, v18, a6);
      v49 = _CodingPathNode.path.getter(v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v51 = v61;
      *(inited + 56) = a6;
      *(inited + 64) = v51;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (v47[2])(boxed_opaque_existential_0, v14, a6);
      v64 = v49;
      specialized Array.append<A>(contentsOf:)(inited);
      (v47[1])(v14, a6);
      (*(v16 + 8))(v23, v15);
    }

    v53 = v60;
    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(v62, v53, v54);

    return swift_willThrow();
  }
}

void closure #1 in XMLPlistMap.Value.realValue<A, B>(in:as:for:_:)(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v83 = a6;
  v85 = a4;
  v86 = a5;
  v84 = a3;
  v73 = a8;
  v82 = a10;
  v95[1] = *MEMORY[0x1E69E9840];
  v71 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Optional();
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v69 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v63 - v17;
  v77 = type metadata accessor for Optional();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v63 - v21;
  v80 = *(a7 - 8);
  v22 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63 - v25;
  v78 = a9;
  v79 = a7;
  v27 = v81;
  closure #1 in static XMLPlistMap.Value.parseSpecialRealValue<A, B>(_:fullSource:for:_:)(a1, a2, a1, a2, v84, v85, v86, v83, v19, a7, a9, v82, a11);
  if (!v27)
  {
    v64 = v26;
    v66 = a2;
    v67 = a1;
    v81 = 0;
    v65 = a11;
    v63 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v76;
    v29 = v78;
    v30 = v75;
    v31 = v74;
    v32 = v19;
    v33 = v77;
    (*(v75 + 32))(v74, v32, v77);
    v34 = v80;
    v35 = v79;
    if ((*(v80 + 48))(v31, 1, v79) == 1)
    {
      (*(v30 + 8))(v31, v33);
      v36 = v67;
      v37 = v83;
      v38 = v29;
      v39 = v81;
      static XMLPlistMap.Value.rejectHexadecimalValues<A>(_:fullSource:for:_:)(v67, v66, v84, v85, v86, v83, v29, v65);
      if (!v39)
      {
        v95[0] = 0;
        if (v22 == 4)
        {
          _stringshims_strtof_clocale(v36, v95);
          v40 = v63;
          dispatch thunk of BinaryFloatingPoint.init(_:)();
          v41 = v28;
          v42 = v72;
        }

        else
        {
          v42 = v72;
          v40 = v63;
          if (v22 != 8)
          {
            __break(1u);
          }

          _stringshims_strtod_clocale(v67, v95);
          dispatch thunk of BinaryFloatingPoint.init(_:)();
          v41 = v28;
        }

        if (v95[0])
        {
          if (&v67[v66] == v95[0])
          {
            (*(v80 + 32))(v73, v40, v79);
          }

          else
          {
            v90 = v84;
            v91 = v85;
            v92 = v67;
            v93 = v67;
            v94 = &v67[v66];
            v88 = 0;
            v89 = 0xE000000000000000;
            _StringGuts.grow(_:)(40);

            v88 = 0xD000000000000026;
            v89 = 0x80000001814860B0;
            v87 = BufferReader.lineNumber.getter();
            v45 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v45);

            v85 = v88;
            v84 = v89;
            v46 = type metadata accessor for DecodingError();
            v81 = swift_allocError();
            v82 = v47;
            v48 = *(v42 + 16);
            v49 = v70;
            v48(v70, v37, v41);
            v50 = v69;
            v48(v69, v49, v41);
            v51 = v71;
            if ((*(v71 + 48))(v50, 1, v38) == 1)
            {
              v52 = *(v42 + 8);
              v52(v50, v41);
              _CodingPathNode.path.getter(v86);
              v52(v49, v41);
            }

            else
            {
              v53 = v68;
              (*(v51 + 32))(v68, v50, v38);
              v54 = _CodingPathNode.path.getter(v86);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
              v55 = v53;
              v56 = v41;
              v57 = v38;
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_181218E20;
              v59 = v65;
              *(inited + 56) = v57;
              *(inited + 64) = v59;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
              (*(v51 + 16))(boxed_opaque_existential_0, v55, v57);
              v88 = v54;
              specialized Array.append<A>(contentsOf:)(inited);
              (*(v51 + 8))(v55, v57);
              v61 = v56;
              v40 = v63;
              (*(v42 + 8))(v49, v61);
            }

            v62 = v82;
            DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
            (*(*(v46 - 8) + 104))(v62, *MEMORY[0x1E69E6B00], v46);
            swift_willThrow();
            (*(v80 + 8))(v40, v79);
          }
        }

        else
        {
          __break(1u);
        }
      }
    }

    else
    {
      v43 = *(v34 + 32);
      v44 = v64;
      v43(v64, v31, v35);
      v43(v73, v44, v35);
    }
  }
}

unint64_t _PlistKeyedDecodingContainer.decodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v108 = a7;
  v92 = a4;
  v107 = a3;
  v104 = a2;
  v96 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Optional();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v87 - v17;
  swift_getAssociatedTypeWitness();
  v98 = a8;
  v99 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v103 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v87 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - v27;
  v106 = v24;
  v105 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v87 - v30;
  v91 = a1;
  v93 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v107;
  if (!*(v107 + 16))
  {

    goto LABEL_7;
  }

  v87 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_7:
    v46 = 1;
    (*(v105 + 56))(v28, 1, 1, v106);
    (*(v26 + 8))(v28, v25);
    v47 = 0;
    goto LABEL_8;
  }

  v37 = *(v33 + 56);
  v38 = v101;
  v39 = v102;
  v40 = v103;
  (*(v102 + 16))(v101, v37 + *(v102 + 72) * v34, v103);
  v41 = v87;
  (*(v39 + 32))(v87, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v109;
  v42(v41, v43, AssociatedConformanceWitness);
  v109 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v49 = v105;
  v48 = v106;
  (*(v105 + 56))(v28, 0, 1, v106);
  v50 = v100;
  (*(v49 + 32))(v100, v28, v48);
  v51 = v98;
  v52 = *(v98 + 40);
  v53 = v99;
  if ((v52(v50, v99, v98) & 1) == 0)
  {
    v54 = v96;
    v55 = v53;
    v56 = *(v96 + 16);
    v57 = v97;
    v58 = v51;
    v59 = v93;
    v107 = v96 + 16;
    v56(v97, v91, v93);
    (*(v54 + 56))(v57, 0, 1, v59);
    if (v52(v50, v55, v58))
    {
      v103 = v56;
      v104 = type metadata accessor for DecodingError();
      v109 = swift_allocError();
      v61 = v60;
      *v60 = MEMORY[0x1E69E72F0];
      v62 = v59;
      v63 = v94;
      v64 = *(v94 + 16);
      v65 = v90;
      v66 = v95;
      v64(v90, v57, v95);
      v67 = v89;
      v64(v89, v65, v66);
      v68 = v96;
      if ((*(v96 + 48))(v67, 1, v62) == 1)
      {
        v69 = *(v63 + 8);
        v69(v67, v66);
        _CodingPathNode.path.getter(v92);
        v69(v65, v66);
      }

      else
      {
        v79 = v65;
        v80 = v88;
        (*(v68 + 32))(v88, v67, v62);
        v81 = _CodingPathNode.path.getter(v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        v82 = v68;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v84 = v108;
        *(inited + 56) = v62;
        *(inited + 64) = v84;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v103(boxed_opaque_existential_0, v80, v62);
        v110 = v81;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v82 + 8))(v80, v62);
        v69 = *(v63 + 8);
        v69(v79, v66);
      }

      v78 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v104 - 8) + 104))(v61, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v69(v97, v66);
    }

    else
    {
      v70 = *(v104 + 24);
      v71 = *(v58 + 88);
      v72 = lazy protocol witness table accessor for type Int32 and conformance Int32();
      swift_unknownObjectRetain();
      v86 = v58;
      v73 = v100;
      v74 = v72;
      v75 = v109;
      v71(&v111, v100, v70, v92, v57, MEMORY[0x1E69E72F0], v59, v74, v108, v55, v86);
      v109 = v75;
      v76 = v95;
      v77 = v94;
      if (!v75)
      {
        swift_unknownObjectRelease();
        (*(v77 + 8))(v57, v76);
        (*(v105 + 8))(v73, v106);
        v46 = 0;
        v47 = v111;
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
      v78 = v105;
      (*(v77 + 8))(v97, v76);
    }

    return (*(v78 + 8))(v100, v106);
  }

  (*(v49 + 8))(v50, v48);
  v47 = 0;
  v46 = 1;
LABEL_8:
  LOBYTE(v110) = v46;
  return v47 | (v46 << 32);
}

{
  v108 = a7;
  v92 = a4;
  v107 = a3;
  v104 = a2;
  v96 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Optional();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v87 - v17;
  swift_getAssociatedTypeWitness();
  v98 = a8;
  v99 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v103 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v87 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - v27;
  v106 = v24;
  v105 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v87 - v30;
  v91 = a1;
  v93 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v107;
  if (!*(v107 + 16))
  {

    goto LABEL_7;
  }

  v87 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_7:
    v46 = 1;
    (*(v105 + 56))(v28, 1, 1, v106);
    (*(v26 + 8))(v28, v25);
    v47 = 0;
    goto LABEL_8;
  }

  v37 = *(v33 + 56);
  v38 = v101;
  v39 = v102;
  v40 = v103;
  (*(v102 + 16))(v101, v37 + *(v102 + 72) * v34, v103);
  v41 = v87;
  (*(v39 + 32))(v87, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v109;
  v42(v41, v43, AssociatedConformanceWitness);
  v109 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v49 = v105;
  v48 = v106;
  (*(v105 + 56))(v28, 0, 1, v106);
  v50 = v100;
  (*(v49 + 32))(v100, v28, v48);
  v51 = v98;
  v52 = *(v98 + 40);
  v53 = v99;
  if ((v52(v50, v99, v98) & 1) == 0)
  {
    v54 = v96;
    v55 = v53;
    v56 = *(v96 + 16);
    v57 = v97;
    v58 = v51;
    v59 = v93;
    v107 = v96 + 16;
    v56(v97, v91, v93);
    (*(v54 + 56))(v57, 0, 1, v59);
    if (v52(v50, v55, v58))
    {
      v103 = v56;
      v104 = type metadata accessor for DecodingError();
      v109 = swift_allocError();
      v61 = v60;
      *v60 = MEMORY[0x1E69E6448];
      v62 = v59;
      v63 = v94;
      v64 = *(v94 + 16);
      v65 = v90;
      v66 = v95;
      v64(v90, v57, v95);
      v67 = v89;
      v64(v89, v65, v66);
      v68 = v96;
      if ((*(v96 + 48))(v67, 1, v62) == 1)
      {
        v69 = *(v63 + 8);
        v69(v67, v66);
        _CodingPathNode.path.getter(v92);
        v69(v65, v66);
      }

      else
      {
        v79 = v65;
        v80 = v88;
        (*(v68 + 32))(v88, v67, v62);
        v81 = _CodingPathNode.path.getter(v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        v82 = v68;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v84 = v108;
        *(inited + 56) = v62;
        *(inited + 64) = v84;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v103(boxed_opaque_existential_0, v80, v62);
        v110 = v81;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v82 + 8))(v80, v62);
        v69 = *(v63 + 8);
        v69(v79, v66);
      }

      v78 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v104 - 8) + 104))(v61, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v69(v97, v66);
    }

    else
    {
      v70 = *(v104 + 24);
      v71 = *(v58 + 80);
      v72 = lazy protocol witness table accessor for type Float and conformance Float();
      swift_unknownObjectRetain();
      v86 = v58;
      v73 = v100;
      v74 = v72;
      v75 = v109;
      v71(&v111, v100, v70, v92, v57, MEMORY[0x1E69E6448], v59, v74, v108, v55, v86);
      v109 = v75;
      v76 = v95;
      v77 = v94;
      if (!v75)
      {
        swift_unknownObjectRelease();
        (*(v77 + 8))(v57, v76);
        (*(v105 + 8))(v73, v106);
        v46 = 0;
        v47 = v111;
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
      v78 = v105;
      (*(v77 + 8))(v97, v76);
    }

    return (*(v78 + 8))(v100, v106);
  }

  (*(v49 + 8))(v50, v48);
  v47 = 0;
  v46 = 1;
LABEL_8:
  LOBYTE(v110) = v46;
  return v47 | (v46 << 32);
}

{
  v108 = a7;
  v92 = a4;
  v107 = a3;
  v104 = a2;
  v96 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Optional();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v87 - v17;
  swift_getAssociatedTypeWitness();
  v98 = a8;
  v99 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v103 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v87 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - v27;
  v106 = v24;
  v105 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v100 = &v87 - v30;
  v91 = a1;
  v93 = a5;
  v31 = dispatch thunk of CodingKey.stringValue.getter();
  v33 = v107;
  if (!*(v107 + 16))
  {

    goto LABEL_7;
  }

  v87 = v23;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_7:
    v46 = 1;
    (*(v105 + 56))(v28, 1, 1, v106);
    (*(v26 + 8))(v28, v25);
    v47 = 0;
    goto LABEL_8;
  }

  v37 = *(v33 + 56);
  v38 = v101;
  v39 = v102;
  v40 = v103;
  (*(v102 + 16))(v101, v37 + *(v102 + 72) * v34, v103);
  v41 = v87;
  (*(v39 + 32))(v87, v38, v40);
  v42 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v43 = swift_checkMetadataState();
  v44 = v109;
  v42(v41, v43, AssociatedConformanceWitness);
  v109 = v44;
  if (v44)
  {
    (*(v39 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  (*(v39 + 8))(v41, v40);
  swift_unknownObjectRelease();
  v49 = v105;
  v48 = v106;
  (*(v105 + 56))(v28, 0, 1, v106);
  v50 = v100;
  (*(v49 + 32))(v100, v28, v48);
  v51 = v98;
  v52 = *(v98 + 40);
  v53 = v99;
  if ((v52(v50, v99, v98) & 1) == 0)
  {
    v54 = v96;
    v55 = v53;
    v56 = *(v96 + 16);
    v57 = v97;
    v58 = v51;
    v59 = v93;
    v107 = v96 + 16;
    v56(v97, v91, v93);
    (*(v54 + 56))(v57, 0, 1, v59);
    if (v52(v50, v55, v58))
    {
      v103 = v56;
      v104 = type metadata accessor for DecodingError();
      v109 = swift_allocError();
      v61 = v60;
      *v60 = MEMORY[0x1E69E7668];
      v62 = v59;
      v63 = v94;
      v64 = *(v94 + 16);
      v65 = v90;
      v66 = v95;
      v64(v90, v57, v95);
      v67 = v89;
      v64(v89, v65, v66);
      v68 = v96;
      if ((*(v96 + 48))(v67, 1, v62) == 1)
      {
        v69 = *(v63 + 8);
        v69(v67, v66);
        _CodingPathNode.path.getter(v92);
        v69(v65, v66);
      }

      else
      {
        v79 = v65;
        v80 = v88;
        (*(v68 + 32))(v88, v67, v62);
        v81 = _CodingPathNode.path.getter(v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        v82 = v68;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v84 = v108;
        *(inited + 56) = v62;
        *(inited + 64) = v84;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v103(boxed_opaque_existential_0, v80, v62);
        v110 = v81;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v82 + 8))(v80, v62);
        v69 = *(v63 + 8);
        v69(v79, v66);
      }

      v78 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v104 - 8) + 104))(v61, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v69(v97, v66);
    }

    else
    {
      v70 = *(v104 + 24);
      v71 = *(v58 + 88);
      v72 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      swift_unknownObjectRetain();
      v86 = v58;
      v73 = v100;
      v74 = v72;
      v75 = v109;
      v71(&v111, v100, v70, v92, v57, MEMORY[0x1E69E7668], v59, v74, v108, v55, v86);
      v109 = v75;
      v76 = v95;
      v77 = v94;
      if (!v75)
      {
        swift_unknownObjectRelease();
        (*(v77 + 8))(v57, v76);
        (*(v105 + 8))(v73, v106);
        v46 = 0;
        v47 = v111;
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
      v78 = v105;
      (*(v77 + 8))(v97, v76);
    }

    return (*(v78 + 8))(v100, v106);
  }

  (*(v49 + 8))(v50, v48);
  v47 = 0;
  v46 = 1;
LABEL_8:
  LOBYTE(v110) = v46;
  return v47 | (v46 << 32);
}

uint64_t XMLPlistMap.Value.debugDataTypeDescription.getter(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) <= 3)
  {
    v3 = 0x676E697274732061;
    v4 = 0x6F69746369642061;
    if (v1 != 2)
    {
      v4 = 0x7620617461642061;
    }

    if (v1)
    {
      v3 = 0x7961727261206E61;
    }

    if (v1 <= 1)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (v1 <= 5)
  {
    if (v1 == 4)
    {
      return 0x657461642061;
    }

    else
    {
      return 0x61656C6F6F622061;
    }
  }

  else if (v1 == 6)
  {
    return 0x6E206C6165722061;
  }

  else if (v1 == 7)
  {
    return 0x6765746E69206E61;
  }

  else if (a1 == 0x8000000000000000)
  {
    return 0x76206C6C756E2061;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t closure #1 in static XMLPlistMap.Value.parseSpecialRealValue<A, B>(_:fullSource:for:_:)@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v57 = a8;
  v59 = a7;
  v56 = a6;
  v55 = a5;
  v54 = a4;
  v61 = a9;
  v60 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Optional();
  v63 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v51 - v21;
  v53 = *(a12 + 16);
  v52 = *(*(v53 + 16) + 8);
  v51[1] = *(v52 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v62 = a10;
  v24 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  if (a2)
  {
    v29 = *a1;
    v30 = a1;
    if ((v29 & 0xFFFFFFDF) == 0x4E && a2 == 3)
    {
      if ((*(a1 + 1) | 0x20) == 0x61 && (*(a1 + 2) | 0x20) == 0x6E)
      {
        v31 = v61;
        v32 = v62;
        dispatch thunk of static FloatingPoint.nan.getter();
        return (*(v24 + 56))(v31, 0, 1, v32);
      }

      return (*(v24 + 56))(v61, 1, 1, v62);
    }

    if (v29 == 43 && a2 == 9)
    {
      if (!_stringshims_strncasecmp_clocale(a1, "+infinity", 9uLL))
      {
LABEL_20:
        v31 = v61;
        v32 = v62;
        dispatch thunk of static FloatingPoint.infinity.getter();
        return (*(v24 + 56))(v31, 0, 1, v32);
      }
    }

    else
    {
      if (v29 != 43 || a2 != 4)
      {
        v46 = v51 - v27;
        if (v29 == 45 && a2 == 9)
        {
          v47 = v28;
          if (_stringshims_strncasecmp_clocale(v30, "-infinity", 9uLL))
          {
            return (*(v24 + 56))(v61, 1, 1, v62);
          }
        }

        else
        {
          if (v29 != 45 || a2 != 4)
          {
            if ((v29 & 0xFFFFFFDF) == 0x49 && a2 == 8 && !_stringshims_strncasecmp_clocale(a1, "infinity", 8uLL))
            {
              goto LABEL_20;
            }

            return (*(v24 + 56))(v61, 1, 1, v62);
          }

          if ((*(a1 + 1) | 0x20) != 0x69 || (*(a1 + 2) | 0x20) != 0x6E || (*(a1 + 3) | 0x20) != 0x66)
          {
            return (*(v24 + 56))(v61, 1, 1, v62);
          }

          v47 = v28;
        }

        v48 = v62;
        dispatch thunk of static FloatingPoint.infinity.getter();
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v49 = v61;
        dispatch thunk of static Numeric.* infix(_:_:)();
        v50 = *(v24 + 8);
        v50(v47, v48);
        v50(v46, v48);
        return (*(v24 + 56))(v49, 0, 1, v48);
      }

      if ((*(a1 + 1) | 0x20) == 0x69 && (*(a1 + 2) | 0x20) == 0x6E && (*(a1 + 3) | 0x20) == 0x66)
      {
        goto LABEL_20;
      }
    }

    return (*(v24 + 56))(v61, 1, 1, v62);
  }

  v67 = v55;
  v68 = v56;
  v69 = a3;
  v70 = a3;
  v71 = a3 + v54;
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v65 = 0xD000000000000026;
  v66 = 0x80000001814860B0;
  v72 = BufferReader.lineNumber.getter();
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v33);

  v34 = v65;
  v62 = v66;
  v35 = type metadata accessor for DecodingError();
  v64 = swift_allocError();
  v61 = v36;
  v37 = *(v63 + 16);
  v38 = v58;
  v37(v22, v57, v58);
  v37(v19, v22, v38);
  if ((*(v60 + 48))(v19, 1, a11) == 1)
  {
    v39 = *(v63 + 8);
    v39(v19, v38);
    _CodingPathNode.path.getter(v59);
    v39(v22, v38);
  }

  else
  {
    v57 = v34;
    v40 = v60;
    (*(v60 + 32))(v17, v19, a11);
    v41 = _CodingPathNode.path.getter(v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = a11;
    *(inited + 64) = a13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(v40 + 16))(boxed_opaque_existential_0, v17, a11);
    v65 = v41;
    specialized Array.append<A>(contentsOf:)(inited);
    (*(v40 + 8))(v17, a11);
    (*(v63 + 8))(v22, v38);
  }

  v44 = v61;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v35 - 8) + 104))(v44, *MEMORY[0x1E69E6B00], v35);
  return swift_willThrow();
}

void static XMLPlistMap.Value.rejectHexadecimalValues<A>(_:fullSource:for:_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v44 = a5;
  v13 = *(a7 - 8);
  v45 = a6;
  v46 = v13;
  MEMORY[0x1EEE9AC00](a1);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v40 - v22;
  if (a2 >= 1)
  {
    v24 = a1;
    while (1)
    {
      v25 = *v24;
      if (v25 > 0x30 || ((1 << v25) & 0x1280100002600) == 0)
      {
        break;
      }

      if (++v24 >= &a1[a2])
      {
        return;
      }
    }

    if (v25 == 88 || v25 == 120)
    {
      v49 = a3;
      v50 = a4;
      v51 = a1;
      v52 = a1;
      v53 = &a1[a2];
      v47 = 0;
      v48 = 0xE000000000000000;
      v27 = v20;
      v28 = v21;
      _StringGuts.grow(_:)(40);

      v47 = 0xD000000000000026;
      v48 = 0x80000001814860B0;
      v54 = BufferReader.lineNumber.getter();
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v29);

      v40[2] = v47;
      v40[1] = v48;
      v41 = type metadata accessor for DecodingError();
      swift_allocError();
      v40[0] = v30;
      v42 = v28;
      v31 = *(v28 + 16);
      v31(v23, v45, v27);
      v32 = v27;
      v31(v18, v23, v27);
      v33 = v46;
      if ((*(v46 + 48))(v18, 1, a7) == 1)
      {
        v34 = *(v42 + 8);
        v34(v18, v27);
        _CodingPathNode.path.getter(v44);
        v34(v23, v27);
      }

      else
      {
        (*(v33 + 32))(v15, v18, a7);
        v35 = _CodingPathNode.path.getter(v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v37 = v43;
        *(inited + 56) = a7;
        *(inited + 64) = v37;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v33 + 16))(boxed_opaque_existential_0, v15, a7);
        v47 = v35;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v33 + 8))(v15, a7);
        (*(v42 + 8))(v23, v32);
      }

      v39 = v40[0];
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v41 - 8) + 104))(v39, *MEMORY[0x1E69E6B00]);
      swift_willThrow();
    }
  }
}

uint64_t _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X7>, uint64_t *a5@<X8>, uint64_t a6)
{
  v24 = a4;
  swift_getMetatypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss30KeyedDecodingContainerProtocol_pMd, &_ss30KeyedDecodingContainerProtocol_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v22);
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v11 = "ner -- no value found for key ";
    v12 = 0xD00000000000003DLL;
  }

  else
  {
    v24 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd, &_ss24UnkeyedDecodingContainer_pMR);
    if (!swift_dynamicCast())
    {
      _StringGuts.grow(_:)(39);

      v22 = 0xD00000000000001DLL;
      v23 = 0x8000000181482300;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v16);

      MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
      v17 = dispatch thunk of CodingKey.stringValue.getter();
      MEMORY[0x1865CB0E0](v17);

      v14 = 3025186;
      v15 = 0xE300000000000000;
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1(&v22);
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v11 = "d null value instead";
    v12 = 0xD00000000000003FLL;
  }

  MEMORY[0x1865CB0E0](v12, v11 | 0x8000000000000000);
  v13 = dispatch thunk of CodingKey.stringValue.getter();
  MEMORY[0x1865CB0E0](v13);

  v14 = 34;
  v15 = 0xE100000000000000;
LABEL_7:
  MEMORY[0x1865CB0E0](v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd, &_ss9CodingKey_p_s13DecodingErrorO7ContextVtMR);
  a5[3] = a3;
  a5[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  _CodingPathNode.path.getter(a2);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v19 = *MEMORY[0x1E69E6AF0];
  v20 = type metadata accessor for DecodingError();
  return (*(*(v20 - 8) + 104))(a5, v19, v20);
}

unint64_t lazy protocol witness table accessor for type Int8 and conformance Int8()
{
  result = lazy protocol witness table cache variable for type Int8 and conformance Int8;
  if (!lazy protocol witness table cache variable for type Int8 and conformance Int8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int8 and conformance Int8);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int8 and conformance Int8;
  if (!lazy protocol witness table cache variable for type Int8 and conformance Int8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int8 and conformance Int8);
  }

  return result;
}

void NSHashRemove(NSHashTable *table, const void *pointer)
{
  if (!table)
  {
    NSLog(@"%s: hash table argument is NULL", "void NSHashRemove(NSHashTable * _Nonnull, const void * _Nullable)");
  }

  [(NSHashTable *)table removeItem:pointer];
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderBPlist(double a1)
{
  result = (*(**v1 + 240))();
  if (result)
  {
    specialized _BPlistEncodingFormat.number<A>(from:)(a1);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Sequence.sorted<A, B>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  (*(v16 + 16))(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v5, a2, v7);
  v26 = dispatch thunk of Sequence._copyToContiguousArray()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.sort(by:)();
  return v26;
}

uint64_t Sequence.compare<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a1;
  v30 = a2;
  v27 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v27 - v20;
  (*(v14 + 16))(v17, v32, a3, v19);
  v31 = v21;
  dispatch thunk of Sequence.makeIterator()();
  v32 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v22 = (v27 + 48);
  v23 = (v27 + 32);
  v24 = (v27 + 8);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if ((*v22)(v13, 1, a4) == 1)
    {
      break;
    }

    (*v23)(v10, v13, a4);
    v25 = (*(a6 + 24))(v29, v30, a4, a6);
    (*v24)(v10, a4);
    if (v25)
    {
      goto LABEL_6;
    }
  }

  v25 = 0;
LABEL_6:
  (*(v28 + 8))(v31, v32);
  return v25;
}

uint64_t storeEnumTagSinglePayload for KeyPathComparator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyPathComparator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

void _NSSetDoubleValueAndNotify(void *a1, const void *a2, double a3)
{
  v11[8] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetDoubleValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F4690;
      v11[5] = v8;
      v11[6] = a2;
      v11[4] = a1;
      *&v11[7] = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

void IndexPath.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t PredicateExpressions.NotEqual<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v6)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t _decodeCharAtCursor(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = __CFADD__(*a3, a1);
  if (v3 == 0x8000000000000000 || *a3 > 0 && v4 || v3 < 0 && a1 < -v3 || !a2 || -a2 < a1 && a2 != 1 || (v5 = (v3 + a1), v3 + a1 < a1) || a2 - 1 + a1 < v5)
  {
    v7 = [NSString stringWithFormat:@"*** End of archive encountered prematurely at %ld", v3];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSArchiverArchiveInconsistency" reason:v7 userInfo:0]);
  }

  result = *v5;
  *a3 = v3 + 1;
  return result;
}

_BYTE *_decodeCStringAtCursor(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = _decodeCharAtCursor(*(a1 + 8), *(a1 + 16), a2);
  if (v6 != -123)
  {
    v8 = _decodeIntStartingWithChar(a1, v6, a2, a3);
    if ((v8 & 0x80000000) != 0)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = @"NSArchiverArchiveInconsistency";
      v14 = @"*** Incorrect archive: invalid length";
    }

    else
    {
      v9 = v8;
      v10 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL);
      if (v10)
      {
        v7 = v10;
        _deserializeBytes(v10, *(a1 + 8), *(a1 + 16), a2, v9);
        v7[v9] = 0;
        return v7;
      }

      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695DA18];
      v14 = @"*** memory allocation failed";
    }

    objc_exception_throw([v12 exceptionWithName:v13 reason:v14 userInfo:0]);
  }

  return 0;
}

uint64_t _decodeIntStartingWithChar(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 0xFFFFFF81:
      v10 = 0;
      _deserializeBytes(&v10, *(a1 + 8), *(a1 + 16), a3, 2uLL);
      v6 = v10;
      v7 = bswap32(v10) >> 16;
      if (a4)
      {
        v6 = v7;
      }

      return v6;
    case 0xFFFFFF82:
      v9 = 0;
      _deserializeBytes(&v9, *(a1 + 8), *(a1 + 16), a3, 4uLL);
      v5 = bswap32(v9);
      if (a4)
      {
        return v5;
      }

      else
      {
        return v9;
      }

    case 0xFFFFFF87:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"more data than room" userInfo:0]);
  }

  return a2;
}

_BYTE *_decodeReusedCStringUsingTable(uint64_t a1, unint64_t *a2, uint64_t *a3, int a4)
{
  v8 = _decodeCharAtCursor(*(a1 + 8), *(a1 + 16), a3);
  if (v8 == -123)
  {
    return 0;
  }

  if (v8 == 132)
  {
    v9 = _decodeCStringAtCursor(a1, a3, a4);
    v10 = *a2;
    if (*a2 != a2[2])
    {
      v12 = a2[3];
      goto LABEL_12;
    }

    v11 = a2[1] + v10;
    a2[1] = v10;
    a2[2] = v11;
    if (!(v11 >> 60))
    {
      v12 = MEMORY[0x1865CFE30](a2[3], 8 * v11, 0x10040436913F5, &__block_literal_global_0);
      a2[3] = v12;
      v10 = *a2;
LABEL_12:
      *a2 = v10 + 1;
      *(v12 + 8 * v10) = v9;
      return v9;
    }

    v17 = [NSString stringWithFormat:@"*** value %lu too large (may have wrapped)", v11];
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D920];
LABEL_16:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v17 userInfo:0]);
  }

  v13 = _decodeIntStartingWithChar(a1, v8, a3, a4);
  if (v13 <= -111)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = @"NSArchiverArchiveInconsistency";
    v17 = @"*** Incorrect archive: invalid length";
    goto LABEL_16;
  }

  v14 = (v13 + 110);
  if (*a2 <= v14 || (v9 = *(a2[3] + 8 * v14)) == 0)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = @"NSArchiverArchiveInconsistency";
    v17 = @"*** Incorrect archive: unexpected byte";
    goto LABEL_16;
  }

  return v9;
}

uint64_t _decodeObject_old(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25[0] = 0;
  if (!_decodeNewPtr(*(a1 + 8), v25, &v24, *(a1 + 48), (a1 + 72), (a1 + 16), *(a1 + 41) != 0))
  {
    if (!v25[0])
    {
      return 0;
    }

    if (*(v25[0] + 8) != 2)
    {
      v19 = MEMORY[0x1E695DF30];
      v20 = @"NSArchiverArchiveInconsistency";
      v21 = @"*** reuse label points to invalid type";
LABEL_25:
      objc_exception_throw([v19 exceptionWithName:v20 reason:v21 userInfo:0]);
    }

    return *v25[0];
  }

  v2 = _decodeClass(a1);
  if (*(a1 + 40) == 3)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 41) != 0;
    v5 = _decodeCharAtCursor(*(v3 + 8), *(v3 + 16), (a1 + 16));
    _decodeIntStartingWithChar(v3, v5, (a1 + 16), v4);
  }

  if (!v2)
  {
    v17 = [NSString stringWithFormat:@"*** class error for '%@': %@", @"NULL", @"found null class"];
    goto LABEL_22;
  }

  v6 = [(objc_class *)v2 allocWithZone:*(a1 + 24)];
  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004022EE8E53uLL);
  if (!v7)
  {
    goto LABEL_20;
  }

  *v7 = v6;
  v7[8] = 2;
  v8 = v24;
  CFDictionarySetValue(*(a1 + 48), (v24 + 110), v7);
  v9 = [[(objc_class *)v6 initWithCoder:a1] awakeAfterUsingCoder:a1];
  v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004022EE8E53uLL);
  if (!v10)
  {
    goto LABEL_20;
  }

  *v10 = v9;
  v10[8] = 2;
  CFDictionarySetValue(*(a1 + 48), (v8 + 110), v10);
  if (!v9)
  {
    goto LABEL_13;
  }

  v11 = *(a1 + 88);
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  if (v12 <= *v11)
  {
    v15 = v12 + 512;
    if ((v12 + 512) >> 60)
    {
      v21 = [NSString stringWithFormat:@"*** value %lu too large (may have wrapped)", v12 + 512];
      v19 = MEMORY[0x1E695DF30];
      v22 = MEMORY[0x1E695D920];
      goto LABEL_23;
    }

    v14 = NSReallocateObjectArray(v14, v12 + 512);
    if (v14)
    {
      v16 = *(a1 + 88);
      *(v16 + 8) = v15;
      *(v16 + 16) = v14;
      goto LABEL_12;
    }

LABEL_20:
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695DA18];
    v21 = @"*** memory allocation failed";
    goto LABEL_25;
  }

LABEL_12:
  *&v14[8 * v13] = v9;
  ++**(a1 + 88);
LABEL_13:
  if (_decodeCharAtCursor(*(*(a1 + 8) + 8), *(*(a1 + 8) + 16), (a1 + 16)) != -122)
  {
    v17 = [NSString stringWithFormat:@"*** NSUnarchiver: inconsistency between written and read data for object %p", v9, v23];
LABEL_22:
    v21 = v17;
    v19 = MEMORY[0x1E695DF30];
    v22 = &NSInconsistentArchiveException;
LABEL_23:
    v20 = *v22;
    goto LABEL_25;
  }

  return v9;
}

uint64_t _decodeNewPtr(uint64_t a1, void *a2, uint64_t *a3, const __CFDictionary *a4, uint64_t *a5, uint64_t *a6, int a7)
{
  v14 = _decodeCharAtCursor(*(a1 + 8), *(a1 + 16), a6);
  if (v14 == -124)
  {
    v16 = *a5 + 1;
    *a5 = v16;
    *a3 = v16;
    return 1;
  }

  else if (v14 == 133)
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    v17 = _decodeIntStartingWithChar(a1, v14, a6, a7);
    *a3 = v17;
    Value = CFDictionaryGetValue(a4, (v17 + 110));
    result = 0;
    *a2 = Value;
  }

  return result;
}

objc_class *_decodeClass(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23[0] = 0;
  if (!_decodeNewPtr(*(a1 + 8), v23, &v22, *(a1 + 48), (a1 + 72), (a1 + 16), *(a1 + 41) != 0))
  {
    if (!v23[0])
    {
      return 0;
    }

    if (*(v23[0] + 8) == 1)
    {
      return *v23[0];
    }

    v18 = MEMORY[0x1E695DF30];
    v19 = @"NSArchiverArchiveInconsistency";
    v20 = @"*** reuse label points to invalid type";
LABEL_30:
    objc_exception_throw([v18 exceptionWithName:v19 reason:v20 userInfo:0]);
  }

  v2 = _decodeReusedCStringUsingTable(*(a1 + 8), *(a1 + 56), (a1 + 16), *(a1 + 41) != 0);
  if (!v2)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = @"NSArchiverArchiveInconsistency";
    v20 = @"*** class name is null";
    goto LABEL_30;
  }

  if (*v2 == 37)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = [[NSString alloc] initWithCString:v3 encoding:CFStringConvertEncodingToNSStringEncoding(0x600u)];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v6 = *(a1 + 8);
  v7 = *(a1 + 41) != 0;
  v8 = _decodeCharAtCursor(*(v6 + 8), *(v6 + 16), (a1 + 16));
  v9 = _decodeIntStartingWithChar(v6, v8, (a1 + 16), v7);
  v10 = *(a1 + 80);
  if (!v10 || (Value = CFDictionaryGetValue(v10, v5)) == 0)
  {
    Value = decodingMap;
    if (decodingMap)
    {
      Value = CFDictionaryGetValue(decodingMap, v5);
    }
  }

  if (Value)
  {
    v12 = Value;
  }

  else
  {
    v12 = v5;
  }

  v13 = *(a1 + 96);
  if (v13 && ([v13 containsObject:v12] & 1) == 0)
  {
    v20 = [NSString stringWithFormat:@"*** data to unarchive contains class (%@) which has not been allowed", v12];
    v18 = MEMORY[0x1E695DF30];
    v21 = MEMORY[0x1E695D940];
    goto LABEL_29;
  }

  v14 = NSClassFromString(v12);
  if (!v14)
  {
    v20 = [NSString stringWithFormat:@"*** class error for '%@': %@", v12, @"class not loaded"];
    v18 = MEMORY[0x1E695DF30];
    v21 = &NSInconsistentArchiveException;
LABEL_29:
    v19 = *v21;
    goto LABEL_30;
  }

  v15 = v14;
  _NSCoderCheckPotentiallyMangledClassNameAndWarn(v14, 0);
  objc_opt_self();
  CFDictionarySetValue(*(a1 + 64), v12, v9);
  v16 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004022EE8E53uLL);
  if (!v16)
  {
LABEL_24:
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695DA18];
    v20 = @"*** memory allocation failed";
    goto LABEL_30;
  }

  *v16 = v15;
  v16[8] = 1;
  CFDictionarySetValue(*(a1 + 48), (v22 + 110), v16);
  _decodeClass(a1);

  return v15;
}

uint64_t _NSUnarchiverPointerTableEntryRetain(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 9))++ + 1;
  if ((v2 & 0x100) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

BOOL _NSReadMutableAttributedStringWithCoder(void *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = [a1 allowsKeyedCoding];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [a1 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"NSString"}];
  }

  else
  {
    v8 = [a1 decodeObject];
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1EEEFDF90;
  }

  v10 = [(__CFString *)v9 length];
  [a2 replaceCharactersInRange:0 withString:{0, v9}];
  if (!v10)
  {
    return 1;
  }

  if ((v5 & 1) == 0)
  {
    v13 = 0;
    v14 = 20;
    v15 = __src;
    memset(__src, 0, sizeof(__src));
    while (1)
    {
      v49 = 0;
      [a1 decodeValuesOfObjCTypes:{"iI", &v49 + 4, &v49}];
      if (SHIDWORD(v49) < 1)
      {
LABEL_32:
        v20 = v13 >= v10;
        if (v15 && v15 != __src)
        {
          free(v15);
        }

        return v20;
      }

      if (v14 <= HIDWORD(v49))
      {
        break;
      }

      v16 = *&v15[8 * HIDWORD(v49)];
      if (!v16)
      {
        goto LABEL_30;
      }

LABEL_31:
      [a2 setAttributes:v16 range:{v13, v49}];
      v13 += v49;
      if (v13 >= v10)
      {
        goto LABEL_32;
      }
    }

    if (2 * v14 <= HIDWORD(v49))
    {
      v17 = (HIDWORD(v49) + 1);
    }

    else
    {
      v17 = 2 * v14;
    }

    if (v15 == __src)
    {
      v19 = NSAllocateObjectArray(v17);
      v15 = v19;
      if (!v19)
      {
        goto LABEL_32;
      }

      memmove(v19, __src, 8 * v14);
    }

    else
    {
      v18 = NSReallocateObjectArray(v15, v17);
      v15 = v18;
      if (!v18)
      {
        goto LABEL_32;
      }

      bzero(&v18[8 * v14], 8 * (v17 - v14));
    }

    v14 = v17;
LABEL_30:
    v16 = [a1 decodeObject];
    *&v15[8 * SHIDWORD(v49)] = v16;
    goto LABEL_31;
  }

  if (qword_1ED43E7A0 != -1)
  {
    dispatch_once(&qword_1ED43E7A0, &__block_literal_global_221);
  }

  v11 = [a1 allowedClasses];
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFD8] set];
  }

  if (objc_opt_isKindOfClass() & 1) != 0 && ([a1 _strictSecureDecodingEnabled])
  {
    v12 = &qword_1ED43E790;
  }

  else
  {
    v12 = &qword_1ED43E798;
  }

  v21 = [a1 decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setByAddingObjectsFromSet:", *v12), @"NSAttributes"}];
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [a1 decodeObjectOfClasses:objc_msgSend(v22 forKey:{"setWithObjects:", v23, objc_opt_class(), 0), @"NSAttributeInfo"}];
  if (!v21)
  {
    return 1;
  }

  v25 = v24;
  if (!v24 && _NSIsNSDictionary())
  {
    [a2 setAttributes:v21 range:{0, v10}];
    return 1;
  }

  v26 = [v25 bytes];
  v27 = [v25 length];
  v28 = 0;
  v29 = (v26 + v27);
LABEL_42:
  if (v26 != v29)
  {
    v30 = 0;
    v31 = 1;
    v32 = v26;
    do
    {
      v34 = *v32++;
      v33 = v34;
      v35 = v34;
      v36 = v34 - 128;
      if ((v34 & 0x80u) != 0)
      {
        v33 = v36;
      }

      v37 = v31 * v33;
      v38 = __CFADD__(v37, v30);
      v30 += v37;
      if (v38)
      {
        break;
      }

      if ((v35 & 0x80000000) == 0)
      {
        v39 = (v26 + 1);
        if (v39 != v29)
        {
          v40 = 0;
          v41 = 1;
          v42 = v39;
          while (1)
          {
            v44 = *v42++;
            v43 = v44;
            v45 = v44;
            v46 = v44 - 128;
            if ((v44 & 0x80u) != 0)
            {
              v43 = v46;
            }

            v47 = v41 * v43;
            v38 = __CFADD__(v47, v40);
            v40 += v47;
            if (v38)
            {
              break;
            }

            if ((v45 & 0x80000000) == 0)
            {
              [a2 setAttributes:objc_msgSend(v21 range:{"objectAtIndex:", v40), v28, v30}];
              v28 += v30;
              v26 = (v39 + 1);
              v20 = 1;
              if (v28 < v10)
              {
                goto LABEL_42;
              }

              return v20;
            }

            v20 = 0;
            v41 <<= 7;
            v39 = v42;
            if (v42 == v29)
            {
              return v20;
            }
          }
        }

        return 0;
      }

      v31 <<= 7;
      v26 = v32;
    }

    while (v32 != v29);
  }

  return 0;
}

void _NSUnarchiverPointerTableEntryFree(int a1, _BYTE *a2)
{
  v2 = a2[9];
  a2[9] = v2 - 1;
  if (v2 == 1)
  {
    free(a2);
  }

  else if (!v2)
  {
    __break(1u);
  }
}

char *_decodeValueOfObjCType(uint64_t a1, unsigned __int8 *a2, double *a3)
{
  sizep[1] = *MEMORY[0x1E69E9840];
  v7 = (a2 + 1);
  v6 = *a2;
  if (v6 > 0x50)
  {
    if (*a2 <= 0x65u)
    {
      if (*a2 > 0x5Au)
      {
        if (v6 != 91)
        {
          if (v6 != 99)
          {
            if (v6 == 100)
            {
              v10 = *(a1 + 8);
              v11 = *(a1 + 41);
              v12 = _decodeCharAtCursor(*(v10 + 8), *(v10 + 16), (a1 + 16));
              if (v12 == -125)
              {
                sizep[0] = 0;
                _deserializeBytes(sizep, *(v10 + 8), *(v10 + 16), (a1 + 16), 8uLL);
                v13 = *sizep;
                v14 = COERCE_DOUBLE(bswap64(sizep[0]));
                if (v11)
                {
                  v13 = v14;
                }
              }

              else
              {
                v13 = _decodeIntStartingWithChar(v10, v12, (a1 + 16), v11 != 0);
              }

              *a3 = v13;
              return v7;
            }

            goto LABEL_113;
          }

          goto LABEL_60;
        }

        sizep[0] = 0;
        v33 = *v7;
        if (v33 - 48 > 9)
        {
          v38 = NSGetSizeAndAlignment(v7, sizep, 0);
        }

        else
        {
          v34 = 0;
          do
          {
            v35 = v34;
            if (v34 >= 0xCCCCCCCCCCCCCCDLL)
            {
              v56 = [NSString stringWithFormat:@"*** value %lu too large (may have wrapped)", v34];
              goto LABEL_110;
            }

            v36 = v33;
            v37 = *++v7;
            v33 = v37;
            v34 = 10 * v34 + v36 - 48;
          }

          while (v37 - 48 < 0xA);
          v38 = NSGetSizeAndAlignment(v7, sizep, 0);
          if (v34)
          {
            v39 = 0;
            v40 = 10 * v35 + v36 - 48;
            while (v39 <= 0x7FFFFFFFFFFFFFFFLL / sizep[0])
            {
              _decodeValueOfObjCType(a1, v7, (a3 + sizep[0] * v39++));
              if (v40 == v39)
              {
                goto LABEL_90;
              }
            }

            v56 = [NSString stringWithFormat:@"*** value %lu too large (may have wrapped)", v39];
LABEL_110:
            v57 = v56;
            v58 = MEMORY[0x1E695DF30];
            v59 = *MEMORY[0x1E695D920];
            goto LABEL_111;
          }
        }

LABEL_90:
        v54 = *v38;
        if (v54 == 93)
        {
          return (v38 + 1);
        }

        v60 = "missing ']' in type descriptor";
        goto LABEL_115;
      }

      if (v6 != 81)
      {
        if (v6 != 83)
        {
          goto LABEL_113;
        }

        goto LABEL_49;
      }
    }

    else
    {
      if (*a2 <= 0x70u)
      {
        if (v6 == 102)
        {
          v44 = *(a1 + 8);
          v45 = *(a1 + 41);
          v46 = _decodeCharAtCursor(*(v44 + 8), *(v44 + 16), (a1 + 16));
          if (v46 == -125)
          {
            LODWORD(sizep[0]) = 0;
            _deserializeBytes(sizep, *(v44 + 8), *(v44 + 16), (a1 + 16), 4uLL);
            v47 = *sizep;
            v48 = COERCE_FLOAT(bswap32(sizep[0]));
            if (v45)
            {
              v47 = v48;
            }
          }

          else
          {
            v47 = _decodeIntStartingWithChar(v44, v46, (a1 + 16), v45 != 0);
          }

          *a3 = v47;
          return v7;
        }

        if (v6 == 105 || v6 == 108)
        {
LABEL_32:
          v15 = *(a1 + 8);
          v16 = *(a1 + 41) != 0;
          v17 = _decodeCharAtCursor(*(v15 + 8), *(v15 + 16), (a1 + 16));
          *a3 = _decodeIntStartingWithChar(v15, v17, (a1 + 16), v16);
          return v7;
        }

LABEL_113:
        v54 = v6;
        v60 = "unknown type descriptor";
        goto LABEL_115;
      }

      if (v6 != 113)
      {
        if (v6 != 115)
        {
          if (v6 == 123)
          {
            v18 = skipAggregateName(a2 + 1);
            if (*v18 != 125)
            {
              v19 = 0;
              do
              {
                alignp = 0;
                sizep[0] = 0;
                NSGetSizeAndAlignment(v18, sizep, &alignp);
                if ((alignp ^ 0x7FFFFFFFFFFFFFFFLL) < v19)
                {
                  extremeSize(alignp + v19);
                }

                if (alignp)
                {
                  v20 = (alignp + v19 - 1) / alignp * alignp;
                }

                else
                {
                  v20 = 0;
                }

                v18 = _decodeValueOfObjCType(a1, v18, (a3 + v20));
                v19 = sizep[0] + v20;
              }

              while (*v18 != 125);
            }

            return v18 + 1;
          }

          goto LABEL_113;
        }

LABEL_49:
        v22 = *(a1 + 8);
        v23 = *(a1 + 41);
        v24 = _decodeCharAtCursor(*(v22 + 8), *(v22 + 16), (a1 + 16));
        if (v24 == -127)
        {
          LOWORD(sizep[0]) = 0;
          _deserializeBytes(sizep, *(v22 + 8), *(v22 + 16), (a1 + 16), 2uLL);
          v25 = bswap32(LOWORD(sizep[0])) >> 16;
          if (v23)
          {
            LOWORD(v24) = v25;
          }

          else
          {
            LOWORD(v24) = sizep[0];
          }
        }

        *a3 = v24;
        return v7;
      }
    }

    v26 = *(a1 + 8);
    v27 = *(a1 + 41);
    v28 = _decodeCharAtCursor(*(v26 + 8), *(v26 + 16), (a1 + 16));
    if (v28 == -121)
    {
      sizep[0] = 0;
      _deserializeBytes(sizep, *(v26 + 8), *(v26 + 16), (a1 + 16), 8uLL);
      v29 = sizep[0];
      v53 = bswap64(sizep[0]);
      if (v27)
      {
        v29 = v53;
      }
    }

    else if (v28 == 130)
    {
      LODWORD(sizep[0]) = 0;
      _deserializeBytes(sizep, *(v26 + 8), *(v26 + 16), (a1 + 16), 4uLL);
      LODWORD(v29) = sizep[0];
      v52 = bswap32(sizep[0]);
      if (v27)
      {
        LODWORD(v29) = v52;
      }

      v29 = v29;
    }

    else if (v28 == 129)
    {
      LOWORD(sizep[0]) = 0;
      _deserializeBytes(sizep, *(v26 + 8), *(v26 + 16), (a1 + 16), 2uLL);
      LOWORD(v29) = sizep[0];
      v30 = bswap32(LOWORD(sizep[0])) >> 16;
      if (v27)
      {
        LOWORD(v29) = v30;
      }

      v29 = v29;
    }

    else
    {
      v29 = v28;
    }

    *a3 = v29;
    return v7;
  }

  if (*a2 <= 0x39u)
  {
    if (*a2 <= 0x24u)
    {
      if (v6 == 33)
      {
        return v7;
      }

      if (v6 != 35)
      {
        goto LABEL_113;
      }

      Name = _decodeClass(a1);
    }

    else
    {
      if (v6 != 37)
      {
        if (v6 == 40)
        {
          sizep[0] = 0;
          v41 = skipAggregateName(a2 + 1);
          v7 = NSGetSizeAndAlignment(v41 - 1, sizep, 0);
          if (sizep[0])
          {
            v42 = 0;
            do
            {
              _decodeValueOfObjCType(a1, "C", (a3 + v42++));
            }

            while (v42 < sizep[0]);
          }

          return v7;
        }

        if (v6 != 42)
        {
          goto LABEL_113;
        }

        alignp = 0;
        sizep[0] = 0;
        if (_decodeNewPtr(*(a1 + 8), &alignp, sizep, *(a1 + 48), (a1 + 72), (a1 + 16), *(a1 + 41) != 0))
        {
          v8 = _decodeReusedCStringUsingTable(*(a1 + 8), *(a1 + 56), (a1 + 16), *(a1 + 41) != 0);
          v9 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004022EE8E53uLL);
          if (v9)
          {
            *v9 = v8;
            v9[8] = 0;
            CFDictionarySetValue(*(a1 + 48), (sizep[0] + 110), v9);
LABEL_99:
            if ((v8 & 0x8000000000000000) == 0)
            {
              if (v8)
              {
                Name = strdup(v8);
                goto LABEL_105;
              }

LABEL_104:
              Name = 0;
              goto LABEL_105;
            }

            v60 = "invalid string";
            v54 = 42;
LABEL_115:
            typeDescriptorError(v54, a2, v60);
          }

          v58 = MEMORY[0x1E695DF30];
          v59 = *MEMORY[0x1E695DA18];
          v57 = @"*** memory allocation failed";
        }

        else
        {
          if (!alignp)
          {
            goto LABEL_104;
          }

          if (!*(alignp + 8))
          {
            v8 = *alignp;
            goto LABEL_99;
          }

          v58 = MEMORY[0x1E695DF30];
          v59 = @"NSArchiverArchiveInconsistency";
          v57 = @"*** reuse label points to invalid type";
        }

LABEL_111:
        objc_exception_throw([v58 exceptionWithName:v59 reason:v57 userInfo:0]);
      }

      v31 = _decodeReusedCStringUsingTable(*(a1 + 8), *(a1 + 56), (a1 + 16), *(a1 + 41) != 0);
      v32 = sel_registerName(v31);
      Name = sel_getName(v32);
    }

LABEL_105:
    *a3 = Name;
    return v7;
  }

  if (*a2 > 0x42u)
  {
    if (v6 != 67)
    {
      if (v6 == 73 || v6 == 76)
      {
        goto LABEL_32;
      }

      goto LABEL_113;
    }

LABEL_60:
    *a3 = _decodeCharAtCursor(*(*(a1 + 8) + 8), *(*(a1 + 8) + 16), (a1 + 16));
    return v7;
  }

  if (v6 == 58)
  {
    v43 = _decodeReusedCStringUsingTable(*(a1 + 8), *(a1 + 56), (a1 + 16), *(a1 + 41) != 0);
    Name = sel_registerName(v43);
    goto LABEL_105;
  }

  if (v6 != 64)
  {
    if (v6 == 66)
    {
      *a3 = _decodeCharAtCursor(*(*(a1 + 8) + 8), *(*(a1 + 8) + 16), (a1 + 16)) != 0;
      return v7;
    }

    goto LABEL_113;
  }

  v49 = _decodeObject_old(a1);
  v50 = v49;
  if (v49)
  {
    v51 = v49;
  }

  *a3 = v50;
  return v7;
}

NSPlaceholderNumber *newDecodedNumber(void *a1)
{
  sizep[128] = *MEMORY[0x1E69E9840];
  typePtr = 0;
  [a1 decodeValueOfObjCType:"*" at:&typePtr size:8];
  v2 = typePtr;
  if (!typePtr)
  {
    return 0;
  }

  v3 = *typePtr;
  if (!*typePtr || typePtr[1])
  {
    goto LABEL_17;
  }

  if (v3 == 108)
  {
    v4 = 105;
  }

  else
  {
    if (v3 != 76)
    {
      goto LABEL_9;
    }

    v4 = 73;
  }

  *typePtr = v4;
  v2 = typePtr;
LABEL_9:
  sizep[0] = 0;
  NSGetSizeAndAlignment(v2, sizep, 0);
  v5 = sizep[0];
  if (sizep[0] < 0x401)
  {
    v6 = sizep;
LABEL_13:
    [a1 decodeValueOfObjCType:typePtr at:v6 size:v5];
    v7 = newNumber(*typePtr, v6, v8);
    if (v6 != sizep)
    {
      free(v6);
    }

    if (v7)
    {
      goto LABEL_16;
    }

LABEL_17:
    v9 = [NSString stringWithFormat:@"*** [NSNumber initWithCoder:] bad objCType: %@", [NSString stringWithUTF8String:?]];
    free(typePtr);
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v9 userInfo:0]);
  }

  v6 = malloc_type_malloc(sizep[0], 0x100004077774924uLL);
  if (v6)
  {
    goto LABEL_13;
  }

  v7 = 0;
LABEL_16:
  free(typePtr);
  return v7;
}

NSPlaceholderNumber *newNumber(unsigned __int8 a1, unsigned int *a2, double a3)
{
  if (a1 <= 0x62u)
  {
    if (a1 > 0x4Bu)
    {
      switch(a1)
      {
        case 'L':
          return [(NSPlaceholderNumber *)&__placeholderNumber initWithUnsignedLong:*a2, a3];
        case 'Q':
          return [(NSPlaceholderNumber *)&__placeholderNumber initWithUnsignedLongLong:*a2, a3];
        case 'S':
          return [(NSPlaceholderNumber *)&__placeholderNumber initWithUnsignedShort:*a2, a3];
      }
    }

    else
    {
      switch(a1)
      {
        case 'B':
          return [(NSPlaceholderNumber *)&__placeholderNumber initWithBool:*a2, a3];
        case 'C':
          return [(NSPlaceholderNumber *)&__placeholderNumber initWithUnsignedChar:*a2, a3];
        case 'I':
          return [(NSPlaceholderNumber *)&__placeholderNumber initWithUnsignedInt:*a2, a3];
      }
    }
  }

  else if (a1 <= 0x68u)
  {
    switch(a1)
    {
      case 'c':
        return [(NSPlaceholderNumber *)&__placeholderNumber initWithChar:*a2, a3];
      case 'd':
        return [(NSPlaceholderNumber *)&__placeholderNumber initWithDouble:*a2];
      case 'f':
        LODWORD(a3) = *a2;
        return [(NSPlaceholderNumber *)&__placeholderNumber initWithFloat:a3];
    }
  }

  else if (a1 > 0x70u)
  {
    if (a1 == 113)
    {
      return [(NSPlaceholderNumber *)&__placeholderNumber initWithLongLong:*a2, a3];
    }

    if (a1 == 115)
    {
      return [(NSPlaceholderNumber *)&__placeholderNumber initWithShort:*a2, a3];
    }
  }

  else
  {
    if (a1 == 105)
    {
      return [(NSPlaceholderNumber *)&__placeholderNumber initWithInt:*a2, a3];
    }

    if (a1 == 108)
    {
      return [(NSPlaceholderNumber *)&__placeholderNumber initWithLong:*a2, a3];
    }
  }

  return 0;
}

void __JSONEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 32) == 255)
  {
    (*(v7 + 16))(v10, v8);
    v11 = specialized __JSONEncoder.wrapGeneric<A, B>(_:for:)(v10, 0, 0, 0, 255, a2, a3);
    if (v4)
    {
      (*(v7 + 8))(v10, a2);
    }

    else
    {
      if (v13 == 255)
      {
        v14 = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v14 = v11;
      }

      if (v13 == 255)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12;
      }

      if (v13 == 255)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      (*(v7 + 8))(v10, a2);
      v17 = *(v3 + 16);
      v18 = *(v3 + 24);
      *(v3 + 16) = v14;
      *(v3 + 24) = v15;
      v19 = *(v3 + 32);
      *(v3 + 32) = v16;
      outlined consume of JSONEncoderValue?(v17, v18, v19);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys()
{
  result = lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys;
  if (!lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys;
  if (!lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys;
  if (!lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys;
  if (!lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys);
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration@<X0>(uint64_t a1@<X8>)
{
  *&v61 = MEMORY[0x1E69E7CC8];
  *(&v61 + 1) = MEMORY[0x1E69E7CC8];
  PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(MEMORY[0x1E69E6530], 0, 0, 1);
  PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(MEMORY[0x1E69E6370], 0, 0, 1);
  PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(MEMORY[0x1E69E63B0], 0, 0, 1);
  PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(MEMORY[0x1E69E6158], 0, 0, 1);
  PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(MEMORY[0x1E69E67B0], 0, 0, 1);
  PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(MEMORY[0x1E69E5EE0], 0, 0, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v2 = Type.partial.getter();
  if (v2)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v2, 0x72412E7466697753, 0xEB00000000796172);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2iGMd, &_sSDyS2iGMR);
  v3 = Type.partial.getter();
  if (v3)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v3, 0xD000000000000010, 0x8000000181482E70);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySiGMd, &_sShySiGMR);
  v4 = Type.partial.getter();
  if (v4)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v4, 0x65532E7466697753, 0xE900000000000074);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v5 = Type.partial.getter();
  if (v5)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v5, 0x704F2E7466697753, 0xEE006C616E6F6974);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySSGMd, &_ss5SliceVySSGMR);
  v6 = Type.partial.getter();
  if (v6)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v6, 0x6C532E7466697753, 0xEB00000000656369);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVySi_QPGMd, &_s10Foundation9PredicateVySi_QPGMR);
  v7 = Type.partial.getter();
  if (v7)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v7, 0xD000000000000014, 0x8000000181482E90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10ExpressionVySi_QPSiGMd, &_s10Foundation10ExpressionVySi_QPSiGMR);
  v8 = Type.partial.getter();
  if (v8)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v8, 0xD000000000000015, 0x8000000181482EB0);
  }

  v9 = type metadata accessor for PredicateExpressions.PredicateRegex(0);
  PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(v9, 0, 0, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10ArithmeticVy_AC5ValueVy_SiGAHGMd, &_s10Foundation20PredicateExpressionsO10ArithmeticVy_AC5ValueVy_SiGAHGMR);
  v10 = Type.partial.getter();
  if (v10)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v10, 0xD00000000000001FLL, 0x8000000181482ED0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ClosedRangeVy_AC5ValueVy_SiGAHGMd, &_s10Foundation20PredicateExpressionsO11ClosedRangeVy_AC5ValueVy_SiGAHGMR);
  v11 = Type.partial.getter();
  if (v11)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v11, 0xD000000000000020, 0x8000000181482EF0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO23RangeExpressionContainsVy_AC5ValueVy_SnySiGGAGy_SiGGMd, &_s10Foundation20PredicateExpressionsO23RangeExpressionContainsVy_AC5ValueVy_SnySiGGAGy_SiGGMR);
  v12 = Type.partial.getter();
  if (v12)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v12, 0xD00000000000002CLL, 0x8000000181482F20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO018CollectionContainsD0Vy_AC5ValueVy_SaySiGGAIGMd, &_s10Foundation20PredicateExpressionsO018CollectionContainsD0Vy_AC5ValueVy_SaySiGGAIGMR);
  v13 = Type.partial.getter();
  if (v13)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v13, 0xD000000000000031, 0x8000000181482F50);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO24CollectionIndexSubscriptVy_AC5ValueVy_SaySiGGAGy_SiGGMd, &_s10Foundation20PredicateExpressionsO24CollectionIndexSubscriptVy_AC5ValueVy_SaySiGGAGy_SiGGMR);
  v14 = Type.partial.getter();
  if (v14)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v14, 0xD00000000000002DLL, 0x8000000181482F90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO24CollectionRangeSubscriptVy_AC5ValueVy_SaySiGGAGy_SnySiGGGMd, &_s10Foundation20PredicateExpressionsO24CollectionRangeSubscriptVy_AC5ValueVy_SaySiGGAGy_SnySiGGGMR);
  v15 = Type.partial.getter();
  if (v15)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v15, 0xD00000000000002DLL, 0x8000000181482FC0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC5ValueVy_SiGAHGMd, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC5ValueVy_SiGAHGMR);
  v16 = Type.partial.getter();
  if (v16)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v16, 0xD00000000000001FLL, 0x8000000181482FF0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConditionalVy_AC5ValueVy_SbGAGy_SiGAIGMd, &_s10Foundation20PredicateExpressionsO11ConditionalVy_AC5ValueVy_SbGAGy_SiGAIGMR);
  v17 = Type.partial.getter();
  if (v17)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v17, 0xD000000000000020, 0x8000000181483010);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5ValueVy_SbGAHGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5ValueVy_SbGAHGMR);
  v18 = Type.partial.getter();
  if (v18)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v18, 0xD000000000000020, 0x8000000181483040);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO34DictionaryKeyDefaultValueSubscriptVy_AC0G0Vy_SDyS2iGGAGy_SiGAJGMd, &_s10Foundation20PredicateExpressionsO34DictionaryKeyDefaultValueSubscriptVy_AC0G0Vy_SDyS2iGGAGy_SiGAJGMR);
  v19 = Type.partial.getter();
  if (v19)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v19, 0xD000000000000037, 0x8000000181483070);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO22DictionaryKeySubscriptVy_AC5ValueVy_SDyS2iGGAGy_SiGSiGMd, &_s10Foundation20PredicateExpressionsO22DictionaryKeySubscriptVy_AC5ValueVy_SDyS2iGGAGy_SiGSiGMR);
  v20 = Type.partial.getter();
  if (v20)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v20, 0xD00000000000002BLL, 0x80000001814830B0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5ValueVy_SbGAHGMd, &_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5ValueVy_SbGAHGMR);
  v21 = Type.partial.getter();
  if (v21)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v21, 0xD000000000000020, 0x80000001814830E0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11IntDivisionVy_AC5ValueVy_SiGAHGMd, &_s10Foundation20PredicateExpressionsO11IntDivisionVy_AC5ValueVy_SiGAHGMR);
  v22 = Type.partial.getter();
  if (v22)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v22, 0xD000000000000020, 0x8000000181483110);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO12IntRemainderVy_AC5ValueVy_SiGAHGMd, &_s10Foundation20PredicateExpressionsO12IntRemainderVy_AC5ValueVy_SiGAHGMR);
  v23 = Type.partial.getter();
  if (v23)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v23, 0xD000000000000021, 0x8000000181483140);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO13FloatDivisionVy_AC5ValueVy_SfGAHGMd, &_s10Foundation20PredicateExpressionsO13FloatDivisionVy_AC5ValueVy_SfGAHGMR);
  v24 = Type.partial.getter();
  if (v24)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v24, 0xD000000000000022, 0x8000000181483170);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC5ValueVy_SiGAHGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC5ValueVy_SiGAHGMR);
  v25 = Type.partial.getter();
  if (v25)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v25, 0xD00000000000001ALL, 0x80000001814831A0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO6FilterVy_AC5ValueVy_SaySiGGAGy_SbGGMd, &_s10Foundation20PredicateExpressionsO6FilterVy_AC5ValueVy_SaySiGGAGy_SbGGMR);
  v26 = Type.partial.getter();
  if (v26)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v26, 0xD00000000000001BLL, 0x80000001814831C0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC5ValueVy_SiGAHGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC5ValueVy_SiGAHGMR);
  v27 = Type.partial.getter();
  if (v27)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v27, 0xD00000000000001DLL, 0x80000001814831E0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8NegationVy_AC5ValueVy_SbGGMd, &_s10Foundation20PredicateExpressionsO8NegationVy_AC5ValueVy_SbGGMR);
  v28 = Type.partial.getter();
  if (v28)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v28, 0xD00000000000001DLL, 0x8000000181483200);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC5ValueVy_SbSgGSbAGy_SbGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC5ValueVy_SbSgGSbAGy_SbGSbGMR);
  v29 = Type.partial.getter();
  if (v29)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v29, 0xD000000000000024, 0x8000000181483220);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC5ValueVy_SbSgGAGy_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC5ValueVy_SbSgGAGy_SbGGMR);
  v30 = Type.partial.getter();
  if (v30)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v30, 0xD000000000000020, 0x8000000181483250);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO12ForcedUnwrapVy_AC5ValueVy_SbSgGSbGMd, &_s10Foundation20PredicateExpressionsO12ForcedUnwrapVy_AC5ValueVy_SbSgGSbGMR);
  v31 = Type.partial.getter();
  if (v31)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v31, 0xD000000000000021, 0x8000000181483280);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5RangeVy_AC5ValueVy_SiGAHGMd, &_s10Foundation20PredicateExpressionsO5RangeVy_AC5ValueVy_SiGAHGMR);
  v32 = Type.partial.getter();
  if (v32)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v32, 0xD00000000000001ALL, 0x80000001814832B0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAGy_SiGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAGy_SiGGMR);
  v33 = Type.partial.getter();
  if (v33)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v33, 0xD000000000000025, 0x80000001814832D0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC5ValueVy_SaySiGGAGy_SbGGMd, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC5ValueVy_SaySiGGAGy_SbGGMR);
  v34 = Type.partial.getter();
  if (v34)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v34, 0xD00000000000002ALL, 0x8000000181483300);
  }

  v35 = Type.partial.getter();
  if (v35)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v35, 0xD000000000000027, 0x8000000181483330);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO18SequenceStartsWithVy_AC5ValueVy_SaySiGGAIGMd, &_s10Foundation20PredicateExpressionsO18SequenceStartsWithVy_AC5ValueVy_SaySiGGAIGMR);
  v36 = Type.partial.getter();
  if (v36)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v36, 0xD000000000000027, 0x8000000181483360);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15SequenceMaximumVy_AC5ValueVy_SaySiGGGMd, &_s10Foundation20PredicateExpressionsO15SequenceMaximumVy_AC5ValueVy_SaySiGGGMR);
  v37 = Type.partial.getter();
  if (v37)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v37, 0xD000000000000024, 0x8000000181483390);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15SequenceMinimumVy_AC5ValueVy_SaySiGGGMd, &_s10Foundation20PredicateExpressionsO15SequenceMinimumVy_AC5ValueVy_SaySiGGGMR);
  v38 = Type.partial.getter();
  if (v38)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v38, 0xD000000000000024, 0x80000001814833C0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15ConditionalCastVy_AC5ValueVy_SiGSiGMd, &_s10Foundation20PredicateExpressionsO15ConditionalCastVy_AC5ValueVy_SiGSiGMR);
  v39 = Type.partial.getter();
  if (v39)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v39, 0xD000000000000024, 0x80000001814833F0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO9ForceCastVy_AC5ValueVy_SiGSiGMd, &_s10Foundation20PredicateExpressionsO9ForceCastVy_AC5ValueVy_SiGSiGMR);
  v40 = Type.partial.getter();
  if (v40)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v40, 0xD00000000000001ELL, 0x8000000181483420);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO9TypeCheckVy_AC5ValueVy_SiGSiGMd, &_s10Foundation20PredicateExpressionsO9TypeCheckVy_AC5ValueVy_SiGSiGMR);
  v41 = Type.partial.getter();
  if (v41)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v41, 0xD00000000000001ELL, 0x8000000181483440);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10UnaryMinusVy_AC5ValueVy_SiGGMd, &_s10Foundation20PredicateExpressionsO10UnaryMinusVy_AC5ValueVy_SiGGMR);
  v42 = Type.partial.getter();
  if (v42)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v42, 0xD00000000000001FLL, 0x8000000181483460);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10NilLiteralVy_SiGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SiGMR);
  v43 = Type.partial.getter();
  if (v43)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v43, 0xD00000000000001FLL, 0x8000000181483480);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0VySi_QPGGAGy_SiG_QPGMd, &_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0VySi_QPGGAGy_SiG_QPGMR);
  v44 = Type.partial.getter();
  if (v44)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v44, 0xD000000000000026, 0x80000001814834A0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO19StringContainsRegexVy_AC5ValueVy_SSGAGy_AC0bF0VGGMd, &_s10Foundation20PredicateExpressionsO19StringContainsRegexVy_AC5ValueVy_SSGAGy_AC0bF0VGGMR);
  v45 = Type.partial.getter();
  if (v45)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v45, 0xD000000000000028, 0x80000001814834D0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO28StringCaseInsensitiveCompareVy_AC5ValueVy_SSGAHGMd, &_s10Foundation20PredicateExpressionsO28StringCaseInsensitiveCompareVy_AC5ValueVy_SSGAHGMR);
  v46 = Type.partial.getter();
  if (v46)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v46, 0xD000000000000031, 0x8000000181483500);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO22StringLocalizedCompareVy_AC5ValueVy_SSGAHGMd, &_s10Foundation20PredicateExpressionsO22StringLocalizedCompareVy_AC5ValueVy_SSGAHGMR);
  v47 = Type.partial.getter();
  if (v47)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v47, 0xD00000000000002BLL, 0x8000000181483540);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO31StringLocalizedStandardContainsVy_AC5ValueVy_SSGAHGMd, &_s10Foundation20PredicateExpressionsO31StringLocalizedStandardContainsVy_AC5ValueVy_SSGAHGMR);
  v48 = Type.partial.getter();
  if (v48)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v48, 0xD000000000000034, 0x8000000181483570);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC5ValueVy_SiGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC5ValueVy_SiGSiGMR);
  v49 = Type.partial.getter();
  if (v49)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v49, 0xD00000000000001CLL, 0x80000001814835B0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMR);
  v50 = Type.partial.getter();
  if (v50)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v50, 0xD00000000000001DLL, 0x80000001814835D0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMR);
  v51 = Type.partial.getter();
  if (v51)
  {
    PredicateCodableConfiguration._allowPartialType(_:identifier:)(v51, 0xD00000000000001ALL, 0x80000001814835F0);
  }

  swift_getKeyPath();

  PredicateCodableConfiguration.allowKeyPath(_:identifier:)(v52, 0xD000000000000012, 0x8000000181483610);

  swift_getKeyPath();

  PredicateCodableConfiguration.allowKeyPath(_:identifier:)(v53, 0xD000000000000015, 0x8000000181483630);

  swift_getKeyPath();

  PredicateCodableConfiguration.allowKeyPath(_:identifier:)(v54, 0xD000000000000014, 0x8000000181483650);

  swift_getKeyPath();

  PredicateCodableConfiguration.allowKeyPath(_:identifier:)(v55, 0xD000000000000017, 0x8000000181483670);

  swift_getKeyPath();

  PredicateCodableConfiguration.allowKeyPath(_:identifier:)(v56, 0xD000000000000012, 0x8000000181483690);

  swift_getKeyPath();

  PredicateCodableConfiguration.allowKeyPath(_:identifier:)(v57, 0xD000000000000015, 0x80000001814836B0);

  swift_getKeyPath();

  PredicateCodableConfiguration.allowKeyPath(_:identifier:)(v58, 0xD000000000000011, 0x80000001814836D0);

  swift_getKeyPath();

  PredicateCodableConfiguration.allowKeyPath(_:identifier:)(v59, 0xD000000000000014, 0x80000001814836F0);

  result = Type.partial.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_109;
  }

  PredicateCodableConfiguration._allowPartialKeyPath(_:identifier:name:constructor:)(result, 0xD000000000000011, 0x8000000181483710, 0x746E756F63, 0xE500000000000000, closure #1 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration, 0);
  result = Type.partial.getter();
  if (!result)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  PredicateCodableConfiguration._allowPartialKeyPath(_:identifier:name:constructor:)(result, 0xD000000000000013, 0x8000000181483730, 0x7974706D457369, 0xE700000000000000, closure #2 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration, 0);
  result = Type.partial.getter();
  if (!result)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  PredicateCodableConfiguration._allowPartialKeyPath(_:identifier:name:constructor:)(result, 0xD000000000000011, 0x8000000181483750, 0x7473726966, 0xE500000000000000, closure #3 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration, 0);
  result = Type.partial.getter();
  if (!result)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  PredicateCodableConfiguration._allowPartialKeyPath(_:identifier:name:constructor:)(result, 0xD000000000000010, 0x8000000181483770, 1953718636, 0xE400000000000000, closure #4 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration, 0);
  result = Type.partial.getter();
  if (!result)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  PredicateCodableConfiguration._allowPartialKeyPath(_:identifier:name:constructor:)(result, 0x65532E7466697753, 0xEF746E756F632E74, 0x746E756F63, 0xE500000000000000, closure #5 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration, 0);
  result = Type.partial.getter();
  if (!result)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  PredicateCodableConfiguration._allowPartialKeyPath(_:identifier:name:constructor:)(result, 0xD000000000000011, 0x8000000181483790, 0x7974706D457369, 0xE700000000000000, closure #6 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration, 0);
  result = Type.partial.getter();
  if (!result)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  PredicateCodableConfiguration._allowPartialKeyPath(_:identifier:name:constructor:)(result, 0xD000000000000016, 0x80000001814837B0, 0x746E756F63, 0xE500000000000000, closure #7 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration, 0);
  result = Type.partial.getter();
  if (result)
  {
    result = PredicateCodableConfiguration._allowPartialKeyPath(_:identifier:name:constructor:)(result, 0xD000000000000018, 0x80000001814837D0, 0x7974706D457369, 0xE700000000000000, closure #8 in closure #1 in variable initialization expression of static PredicateCodableConfiguration.standardConfiguration, 0);
    *a1 = v61;
    *(a1 + 16) = 1;
    return result;
  }

LABEL_115:
  __break(1u);
  return result;
}

uint64_t type metadata completion function for Expression(void *a1)
{
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v17[14] = 0;
  v18 = ExtendedExistentialTypeMetadata;
  v5 = a1[2];
  if (v5 == 1)
  {
    result = type metadata accessor for PredicateExpressions.Variable(319, *(a1[3] & 0xFFFFFFFFFFFFFFFELL), v3, v4);
    if (v7 > 0x3F)
    {
      return result;
    }

    result = swift_checkMetadataState();
    if (v8 > 0x3F)
    {
      return result;
    }

LABEL_9:
    v17[15] = 0;
    v19 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  MEMORY[0x1EEE9AC00](ExtendedExistentialTypeMetadata);
  if (v5)
  {
    v12 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v13 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v14 = v5;
    do
    {
      v15 = *v12++;
      *v13++ = type metadata accessor for PredicateExpressions.Variable(255, v15, v9, v10);
      --v14;
    }

    while (v14);
  }

  result = swift_getTupleTypeMetadata();
  if (v16 <= 0x3F)
  {
    goto LABEL_9;
  }

  return result;
}

void type metadata completion function for PredicateExpressions.PredicateRegex._Storage(uint64_t a1)
{
  type metadata accessor for Regex<AnyRegexOutput>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Regex<AnyRegexOutput>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Regex<AnyRegexOutput>)
  {
    type metadata accessor for AnyRegexOutput();
    v1 = type metadata accessor for Regex();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Regex<AnyRegexOutput>);
    }
  }
}

uint64_t type metadata completion function for PredicateExpressions.Arithmetic(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.Negation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t LocalizedStringResource.nsLocalizedStringResource.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 80);
  v5 = *(v1 + 32);
  v18[3] = *(v1 + 48);
  v18[4] = v3;
  v18[5] = v4;
  v6 = *(v1 + 16);
  v18[0] = *v1;
  v19 = *(v1 + 96);
  v18[1] = v6;
  v18[2] = v5;
  v7 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for _NSLocalizedStringResource, off_1E69EECE8);
  v8 = type metadata accessor for _NSLocalizedStringResourceSwiftWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped];
  v11 = *(v1 + 80);
  *(v10 + 4) = *(v1 + 64);
  *(v10 + 5) = v11;
  *(v10 + 12) = *(v1 + 96);
  v12 = *(v1 + 16);
  *v10 = *v1;
  *(v10 + 1) = v12;
  v13 = *(v1 + 48);
  *(v10 + 2) = *(v1 + 32);
  *(v10 + 3) = v13;
  outlined init with copy of LocalizedStringResource(v18, v17);
  v16.receiver = v9;
  v16.super_class = v8;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  v17[3] = v8;
  v17[0] = v14;
  result = _NSLocalizedStringResource.init(resource:)(v17);
  a1[3] = v7;
  *a1 = result;
  return result;
}

uint64_t _NSLocalizedStringResource.init(resource:)(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    (*(v9 + 16))(&v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v2, v7);
    v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    goto LABEL_4;
  }

  if (*(*(v2 - 8) + 64) == 8)
  {
    v5 = *v3;
    swift_unknownObjectRetain();
LABEL_4:
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithResource_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for predicateArchivingState()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  result = pthread_key_create(v1, 0);
  static _ThreadLocal.Key<A>.predicateArchivingState = v1[0];
  return result;
}

unint64_t PredicateCodableConfiguration._allowPartialType(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          v46 = v86;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v4 = *(v86 + 8);
          v49 = a2;
          v48 = a3;
          result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
          v51 = *(v4 + 16);
          v52 = (v50 & 1) == 0;
          v53 = __OFADD__(v51, v52);
          v54 = v51 + v52;
          if (!v53)
          {
            LOBYTE(v6) = v50;
            if (*(v4 + 24) >= v54)
            {
              goto LABEL_43;
            }

            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, isUniquelyReferenced_nonNull_native);
            v55 = v4;
            result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
            if ((v6 & 1) == (v56 & 1))
            {
LABEL_45:
              if ((v6 & 1) == 0)
              {
                goto LABEL_70;
              }
            }

            else
            {
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_43:
              if (isUniquelyReferenced_nonNull_native)
              {
                v55 = v4;
                goto LABEL_45;
              }

LABEL_54:
              v58 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMR);
              v59 = static _DictionaryStorage.copy(original:)();
              v55 = v59;
              if (*(v4 + 16))
              {
                v60 = (v59 + 64);
                v61 = v4 + 64;
                v62 = ((1 << *(v55 + 32)) + 63) >> 6;
                if (v55 != v4 || v60 >= v61 + 8 * v62)
                {
                  memmove(v60, (v4 + 64), 8 * v62);
                }

                v63 = 0;
                *(v55 + 16) = *(v4 + 16);
                v64 = 1 << *(v4 + 32);
                v65 = *(v4 + 64);
                v66 = -1;
                if (v64 < 64)
                {
                  v66 = ~(-1 << v64);
                }

                v67 = v66 & v65;
                v68 = (v64 + 63) >> 6;
                if ((v66 & v65) != 0)
                {
                  do
                  {
                    v69 = __clz(__rbit64(v67));
                    v67 &= v67 - 1;
LABEL_67:
                    v72 = 16 * (v69 | (v63 << 6));
                    v73 = (*(v4 + 48) + v72);
                    v75 = *v73;
                    v74 = v73[1];
                    v76 = *(v4 + 56) + v72;
                    v77 = *v76;
                    LOBYTE(v76) = *(v76 + 8);
                    v78 = (*(v55 + 48) + v72);
                    *v78 = v75;
                    v78[1] = v74;
                    v79 = *(v55 + 56) + v72;
                    *v79 = v77;
                    *(v79 + 8) = v76;
                  }

                  while (v67);
                }

                v70 = v63;
                while (1)
                {
                  v63 = v70 + 1;
                  if (__OFADD__(v70, 1))
                  {
                    break;
                  }

                  if (v63 >= v68)
                  {
                    goto LABEL_69;
                  }

                  v71 = *(v61 + 8 * v63);
                  ++v70;
                  if (v71)
                  {
                    v69 = __clz(__rbit64(v71));
                    v67 = (v71 - 1) & v71;
                    goto LABEL_67;
                  }
                }

                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                _StringGuts.grow(_:)(75);
                MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181482E00);
                v80 = _typeName(_:qualified:)();
                MEMORY[0x1865CB0E0](v80);

                MEMORY[0x1865CB0E0](0xD000000000000014, 0x8000000181482E20);
                v81 = String.init(cString:)();
                MEMORY[0x1865CB0E0](v81);

                MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181482DE0);
                MEMORY[0x1865CB0E0](a2, a3);
                MEMORY[0x1865CB0E0](39, 0xE100000000000000);
LABEL_76:
                result = _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                return result;
              }

LABEL_69:

              result = v58;
              v49 = a2;
              v48 = a3;
              v46 = v86;
              if ((v6 & 1) == 0)
              {
LABEL_70:
                specialized _NativeDictionary._insert(at:key:value:)(result, v49, v48, a1, 1, v55);

                goto LABEL_71;
              }
            }

            v57 = *(v55 + 56) + 16 * result;
            *v57 = a1;
            *(v57 + 8) = 1;
LABEL_71:
            *(v46 + 8) = v55;
            return result;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v9 = *(v6 + 8 * v13);
        ++v12;
        if (v9)
        {
          v12 = v13;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

LABEL_10:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = (*(v5 + 48) + v14);
    v4 = *v15;
    v16 = v15[1];
    v17 = *(v5 + 56) + v14;
    v18 = *v17;
    v19 = *(v17 + 8);
    if (*v15 == a2 && v16 == a3)
    {
      break;
    }

    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      break;
    }

    v9 &= v9 - 1;
    if (v18 == a1)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    if (v21 == 1)
    {

      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v16);
      v4 = v23;

      if (v4)
      {
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v86 + 8);
        if ((v24 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMR);
          v26 = v25;
          v27 = static _DictionaryStorage.copy(original:)();
          v25 = v27;
          v85 = v26;
          if (*(v26 + 16))
          {
            v28 = (v27 + 64);
            __src = (v26 + 64);
            v29 = ((1 << *(v25 + 32)) + 63) >> 6;
            if (v25 != v26 || v28 >= &__src[8 * v29])
            {
              memmove(v28, __src, 8 * v29);
            }

            v4 = 0;
            *(v25 + 16) = *(v26 + 16);
            v30 = 1 << *(v26 + 32);
            v31 = *(v26 + 64);
            if (v30 < 64)
            {
              v32 = ~(-1 << v30);
            }

            else
            {
              v32 = -1;
            }

            v33 = v32 & v31;
            v34 = (v30 + 63) >> 6;
            if ((v32 & v31) != 0)
            {
              do
              {
                v35 = __clz(__rbit64(v33));
                v33 &= v33 - 1;
LABEL_36:
                v38 = 16 * (v35 | (v4 << 6));
                v39 = (*(v85 + 48) + v38);
                v41 = *v39;
                v40 = v39[1];
                v42 = *(v85 + 56) + v38;
                v43 = *v42;
                LOBYTE(v42) = *(v42 + 8);
                v44 = (*(v25 + 48) + v38);
                *v44 = v41;
                v44[1] = v40;
                v45 = *(v25 + 56) + v38;
                *v45 = v43;
                *(v45 + 8) = v42;
              }

              while (v33);
            }

            v36 = v4;
            while (1)
            {
              v4 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                goto LABEL_73;
              }

              if (v4 >= v34)
              {
                break;
              }

              v37 = *&__src[8 * v4];
              ++v36;
              if (v37)
              {
                v35 = __clz(__rbit64(v37));
                v33 = (v37 - 1) & v37;
                goto LABEL_36;
              }
            }
          }
        }

        result = specialized _NativeDictionary._delete(at:)(v22, v25);
        *(v86 + 8) = v25;
      }
    }
  }

  if (!v19)
  {
    goto LABEL_74;
  }

  if (v18 != a1)
  {
    _StringGuts.grow(_:)(83);
    MEMORY[0x1865CB0E0](0xD000000000000021, 0x8000000181482E40);
    v82 = String.init(cString:)();
    MEMORY[0x1865CB0E0](v82);

    MEMORY[0x1865CB0E0](0xD000000000000014, 0x8000000181482E20);
    v83 = String.init(cString:)();
    MEMORY[0x1865CB0E0](v83);

    MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181482DE0);
    MEMORY[0x1865CB0E0](a2, a3);
    MEMORY[0x1865CB0E0](39, 0xE100000000000000);
    goto LABEL_76;
  }
}

uint64_t type metadata completion function for PredicateExpressions.PredicateRegex(uint64_t a1)
{
  result = type metadata accessor for PredicateExpressions.PredicateRegex._Storage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.CollectionContainsCollection(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.Conditional(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.DictionaryKeyDefaultValueSubscript(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.Filter(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      result = type metadata accessor for PredicateExpressions.Variable(319, AssociatedTypeWitness, v5, v6);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.ForcedUnwrap(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.SequenceMaximum(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.PredicateEvaluate(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v20[14] = 0;
    v21 = result;
    if (a1[2] == 1)
    {
      result = swift_checkMetadataState();
      if (v4 > 0x3F)
      {
        return result;
      }

LABEL_14:
      v20[15] = 0;
      v22 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }

    MEMORY[0x1EEE9AC00](result);
    v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    if (v5)
    {
      v8 = 0;
      v9 = a1[4] & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_11;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_11;
      }

      v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v5 != v8)
      {
LABEL_11:
        v14 = v5 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16++ = v18;
          --v14;
        }

        while (v14);
      }
    }

    result = swift_getTupleTypeMetadata();
    if (v19 <= 0x3F)
    {
      goto LABEL_14;
    }
  }

  return result;
}

unint64_t PredicateCodableConfiguration.allowKeyPath(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AnyKeyPath._validateForPredicateUsage(restrictArguments:)(0);
  v107 = v3;
  v8 = *v3 + 64;
  v9 = 1 << *(*v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(*v3 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v113 = v13;
  v106 = v8;
  v109 = v12;
LABEL_5:
  v15 = v14;
  if (!v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v15;
LABEL_12:
    v17 = __clz(__rbit64(v11)) | (v14 << 6);
    v18 = (*(v113 + 48) + 16 * v17);
    v5 = *v18;
    v19 = v18[1];
    v20 = *(v113 + 56) + 48 * v17;
    v7 = *v20;
    v4 = *(v20 + 16);
    v6 = *(v20 + 24);
    v115 = *(v20 + 8);
    v116 = *(v20 + 32);
    v21 = *(v20 + 40);
    v22 = *v18 == a2 && v19 == a3;
    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v11 &= v11 - 1;
    if (v21)
    {
      v16 = v4;
      v4 = v116;
      outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v7, v115, v16, v6, v116, 1);

      v15 = v14;
      v12 = v109;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      type metadata accessor for AnyKeyPath();
      v23 = v6;
      v24 = v6;
      v6 = v116;
      outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v7, v115, v4, v23, v116, 0);

      if (MEMORY[0x1865CBE20](v7, a1))
      {
        v104 = v4;
        v6 = v7;
        v7 = v24;
        v5 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v19);
        v26 = v25;

        if (v26)
        {
          v12 = v109;
          v8 = v106;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v32 = v7;
            v33 = v6;
            v6 = *v107;
          }

          else
          {
            v35 = *v107;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMR);
            v105 = static _DictionaryStorage.copy(original:)();
            v102 = v35;
            if (*(v35 + 16))
            {
              v36 = (v105 + 64);
              __src = (v35 + 64);
              v37 = ((1 << *(v105 + 32)) + 63) >> 6;
              if (v105 != v35 || v36 >= &__src[8 * v37])
              {
                memmove(v36, __src, 8 * v37);
              }

              v38 = 0;
              *(v105 + 16) = *(v35 + 16);
              v39 = 1 << *(v35 + 32);
              v40 = *(v35 + 64);
              if (v39 < 64)
              {
                v41 = ~(-1 << v39);
              }

              else
              {
                v41 = -1;
              }

              v103 = v41 & v40;
              v4 = (v39 + 63) >> 6;
              if ((v41 & v40) != 0)
              {
                do
                {
                  v42 = __clz(__rbit64(v103));
                  v103 &= v103 - 1;
LABEL_41:
                  v45 = v42 | (v38 << 6);
                  v46 = 16 * v45;
                  v47 = (*(v102 + 48) + 16 * v45);
                  v49 = *v47;
                  v48 = v47[1];
                  v45 *= 48;
                  v50 = *(v102 + 56) + v45;
                  v51 = *v50;
                  v52 = *(v50 + 8);
                  v53 = *(v50 + 16);
                  v100 = *(v50 + 32);
                  v101 = *(v50 + 24);
                  v54 = *(v50 + 40);
                  v99 = v54;
                  v55 = (*(v105 + 48) + v46);
                  *v55 = v49;
                  v55[1] = v48;
                  v56 = *(v105 + 56) + v45;
                  *v56 = v51;
                  *(v56 + 8) = v52;
                  *(v56 + 16) = v53;
                  *(v56 + 24) = v101;
                  *(v56 + 32) = v100;
                  *(v56 + 40) = v54;

                  outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v51, v52, v53, v101, v100, v99);
                }

                while (v103);
              }

              v43 = v38;
              while (1)
              {
                v38 = v43 + 1;
                if (__OFADD__(v43, 1))
                {
                  goto LABEL_76;
                }

                if (v38 >= v4)
                {
                  break;
                }

                v44 = *&__src[8 * v38];
                ++v43;
                if (v44)
                {
                  v42 = __clz(__rbit64(v44));
                  v103 = (v44 - 1) & v44;
                  goto LABEL_41;
                }
              }
            }

            v32 = v7;
            v33 = v6;
            v4 = v104;
            v6 = v105;
            v12 = v109;
            v8 = v106;
          }

          v34 = *(v6 + 56) + 48 * v5;
          outlined consume of PredicateCodableConfiguration.AllowListKeyPath(*v34, *(v34 + 8), *(v34 + 16), *(v34 + 24), *(v34 + 32), *(v34 + 40));
          specialized _NativeDictionary._delete(at:)(v5, v6);
          v13 = outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v33, v115, v4, v32, v116, 0);
          *v107 = v6;
          goto LABEL_5;
        }

        v27 = v6;
        v28 = v115;
        v29 = v116;
        v30 = v4;
        v31 = v24;
      }

      else
      {

        v27 = v7;
        v28 = v115;
        v30 = v4;
        v31 = v24;
        v29 = v116;
      }

      v13 = outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v27, v28, v30, v31, v29, 0);
      v15 = v14;
      v12 = v109;
      v8 = v106;
      if (!v11)
      {
LABEL_9:
        while (1)
        {
          v14 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v14 >= v12)
          {

            type metadata accessor for AnyKeyPath();
            v8 = a3;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_s10AnyKeyPathCXcMd, &_ss8Sendable_s10AnyKeyPathCXcMR);
            swift_dynamicCast();
            v12 = v117;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v5 = *v107;
            v14 = a2;
            v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
            v59 = *(v5 + 16);
            v60 = (v58 & 1) == 0;
            v61 = __OFADD__(v59, v60);
            v62 = v59 + v60;
            if (!v61)
            {
              v4 = v58;
              if (*(v5 + 24) >= v62)
              {
                goto LABEL_48;
              }

              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
              v63 = v5;
              v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
              if ((v4 & 1) == (v64 & 1))
              {
LABEL_50:
                v117 = v12;
                v118 = 0u;
                v119 = 0u;
                v120 = 0;
                if (v4)
                {
                  v65 = v13;

                  outlined assign with take of PredicateCodableConfiguration.AllowListKeyPath(&v117, *(v63 + 56) + 48 * v65);
                }

                else
                {
                  specialized _NativeDictionary._insert(at:key:value:)(v13, v14, v8, &v117, v63);
                }

                *v107 = v63;
                v66 = dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
                PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(v66, 0, 0, 0);
                dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
                return PredicateCodableConfiguration._allowType(_:identifier:preferNewIdentifier:)(v67, 0, 0, 0);
              }

              v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_48:
              if (isUniquelyReferenced_nonNull_native)
              {
                v63 = v5;
                goto LABEL_50;
              }

LABEL_59:
              v110 = v13;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMR);
              v70 = static _DictionaryStorage.copy(original:)();
              v63 = v70;
              if (!*(v5 + 16))
              {
LABEL_74:

                v13 = v110;
                goto LABEL_50;
              }

              v71 = (v70 + 64);
              v72 = (v5 + 64);
              v73 = ((1 << *(v63 + 32)) + 63) >> 6;
              if (v63 != v5 || v71 >= &v72[8 * v73])
              {
                memmove(v71, v72, 8 * v73);
              }

              v74 = 0;
              *(v63 + 16) = *(v5 + 16);
              v75 = 1 << *(v5 + 32);
              v76 = -1;
              if (v75 < 64)
              {
                v76 = ~(-1 << v75);
              }

              v77 = v76 & *(v5 + 64);
              v78 = (v75 + 63) >> 6;
              v114 = v78;
              if (v77)
              {
                do
                {
                  v79 = __clz(__rbit64(v77));
                  v116 = (v77 - 1) & v77;
LABEL_72:
                  v82 = v79 | (v74 << 6);
                  v83 = 16 * v82;
                  v84 = (*(v5 + 48) + 16 * v82);
                  v86 = *v84;
                  v85 = v84[1];
                  v82 *= 48;
                  v87 = *(v5 + 56) + v82;
                  v88 = *v87;
                  v89 = *(v87 + 8);
                  v90 = *(v87 + 16);
                  v6 = *(v87 + 24);
                  v7 = *(v87 + 32);
                  v91 = *(v87 + 40);
                  LODWORD(v115) = v91;
                  v92 = (*(v63 + 48) + v83);
                  *v92 = v86;
                  v92[1] = v85;
                  v93 = *(v63 + 56) + v82;
                  *v93 = v88;
                  *(v93 + 8) = v89;
                  *(v93 + 16) = v90;
                  *(v93 + 24) = v6;
                  *(v93 + 32) = v7;
                  *(v93 + 40) = v91;

                  outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v88, v89, v90, v6, v7, v115);
                  v14 = a2;
                  v8 = a3;
                  v78 = v114;
                  v77 = v116;
                }

                while (v116);
              }

              v80 = v74;
              while (1)
              {
                v74 = v80 + 1;
                if (__OFADD__(v80, 1))
                {
                  break;
                }

                if (v74 >= v78)
                {
                  goto LABEL_74;
                }

                v81 = *(v5 + 64 + 8 * v74);
                ++v80;
                if (v81)
                {
                  v79 = __clz(__rbit64(v81));
                  v116 = (v81 - 1) & v81;
                  goto LABEL_72;
                }
              }

              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v7, v115, v4, v6, v116, 1);
              outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v7, v115, v4, v6, v116, 1);

              v117 = 0;
              *&v118 = 0xE000000000000000;
              _StringGuts.grow(_:)(57);
              MEMORY[0x1865CB0E0](0xD000000000000014, 0x8000000181482DC0);
              v94 = String.init(cString:)();
              MEMORY[0x1865CB0E0](v94);

              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
              MEMORY[0x1865CB0E0](v6, v116);
              MEMORY[0x1865CB0E0](92, 0xE100000000000000);

              MEMORY[0x1865CB0E0](0x2720646E612027, 0xE700000000000000);
              v95 = AnyKeyPath.debugDescription.getter();
              MEMORY[0x1865CB0E0](v95);

              MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181482DE0);
              MEMORY[0x1865CB0E0](a2, a3);
              MEMORY[0x1865CB0E0](39, 0xE100000000000000);
LABEL_79:
              result = _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
              return result;
            }

LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v11 = *(v8 + 8 * v14);
          ++v15;
          if (v11)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_58;
      }
    }
  }

  if (v21)
  {
    goto LABEL_77;
  }

  v117 = v7;
  type metadata accessor for AnyKeyPath();
  outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v7, v115, v4, v6, v116, 0);
  outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v7, v115, v4, v6, v116, 0);
  outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v7, v115, v4, v6, v116, 0);

  v69 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v7, v115, v4, v6, v116, 0);
  if ((v69 & 1) == 0)
  {
    v117 = 0;
    *&v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x1865CB0E0](0xD000000000000014, 0x8000000181482DC0);
    v96 = AnyKeyPath.debugDescription.getter();
    MEMORY[0x1865CB0E0](v96);

    MEMORY[0x1865CB0E0](0x2720646E612027, 0xE700000000000000);
    v97 = AnyKeyPath.debugDescription.getter();
    MEMORY[0x1865CB0E0](v97);

    MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181482DE0);
    MEMORY[0x1865CB0E0](a2, a3);
    MEMORY[0x1865CB0E0](39, 0xE100000000000000);
    goto LABEL_79;
  }

  outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v7, v115, v4, v6, v116, 0);

  return outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v7, v115, v4, v6, v116, 0);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 25) = *(a4 + 25);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 80 * result);
  v7 = a4[4];
  v6[3] = a4[3];
  v6[4] = v7;
  v8 = a4[2];
  v6[1] = a4[1];
  v6[2] = v8;
  *v6 = *a4;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t outlined copy of PredicateCodableConfiguration.AllowListKeyPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of PredicateCodableConfiguration.AllowListKeyPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

uint64_t PredicateCodableConfiguration._allowPartialKeyPath(_:identifier:name:constructor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v123 = a1;
  *(&v123 + 1) = a6;
  v124 = a7;
  v125 = a4;
  v126 = a5;
  v127 = 1;
  v11 = *v7;
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;

  v110 = a5;

  v18 = 0;
  v19 = 48;
  v115 = v11;
  v111 = v16;
  while (1)
  {
    if (!v15)
    {
      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v16)
        {

          v9 = a3;

          v18 = v109;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122 = *v109;
          v15 = *v109;
          v60 = a2;
          v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
          v62 = *(v15 + 16);
          v63 = (v61 & 1) == 0;
          v64 = __OFADD__(v62, v63);
          v65 = v62 + v63;
          if (!v64)
          {
            LOBYTE(v8) = v61;
            if (*(v15 + 24) >= v65)
            {
              goto LABEL_52;
            }

            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, isUniquelyReferenced_nonNull_native);
            v66 = v122;
            v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
            if ((v8 & 1) == (v67 & 1))
            {
LABEL_54:
              if ((v8 & 1) == 0)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v17 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_52:
              if (isUniquelyReferenced_nonNull_native)
              {
                v66 = v15;
                goto LABEL_54;
              }

LABEL_70:
              v117 = v17;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMR);
              v72 = static _DictionaryStorage.copy(original:)();
              v66 = v72;
              if (*(v15 + 16))
              {
                v73 = (v72 + 64);
                v74 = (v15 + 64);
                v75 = ((1 << *(v66 + 32)) + 63) >> 6;
                if (v66 != v15 || v73 >= &v74[8 * v75])
                {
                  memmove(v73, v74, 8 * v75);
                }

                v76 = 0;
                *(v66 + 16) = *(v15 + 16);
                v77 = 1 << *(v15 + 32);
                v78 = -1;
                if (v77 < 64)
                {
                  v78 = ~(-1 << v77);
                }

                v79 = v78 & *(v15 + 64);
                v80 = (v77 + 63) >> 6;
                v119 = v80;
                if (v79)
                {
                  do
                  {
                    v81 = __clz(__rbit64(v79));
                    v121 = (v79 - 1) & v79;
LABEL_83:
                    v84 = v81 | (v76 << 6);
                    v85 = 16 * v84;
                    v86 = *(v15 + 56);
                    v87 = (*(v15 + 48) + 16 * v84);
                    v88 = v87[1];
                    v84 *= 48;
                    v89 = *(v86 + v84);
                    v90 = *(v86 + v84 + 8);
                    v91 = *(v86 + v84 + 16);
                    v92 = *(v86 + v84 + 24);
                    v19 = *(v86 + v84 + 32);
                    v93 = *(v86 + v84 + 40);
                    v94 = (*(v66 + 48) + v85);
                    *v94 = *v87;
                    v94[1] = v88;
                    v95 = *(v66 + 56) + v84;
                    *v95 = v89;
                    *(v95 + 8) = v90;
                    *(v95 + 16) = v91;
                    *(v95 + 24) = v92;
                    *(v95 + 32) = v19;
                    *(v95 + 40) = v93;

                    outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v89, v90, v91, v92, v19, v93);
                    v9 = a3;
                    v18 = v109;
                    v80 = v119;
                    v79 = v121;
                  }

                  while (v121);
                }

                v82 = v76;
                while (1)
                {
                  v76 = v82 + 1;
                  if (__OFADD__(v82, 1))
                  {
                    break;
                  }

                  if (v76 >= v80)
                  {
                    goto LABEL_85;
                  }

                  v83 = *(v15 + 64 + 8 * v76);
                  ++v82;
                  if (v83)
                  {
                    v81 = __clz(__rbit64(v83));
                    v121 = (v83 - 1) & v83;
                    goto LABEL_83;
                  }
                }

                __break(1u);
LABEL_89:
                __break(1u);
LABEL_90:
                _StringGuts.grow(_:)(57);
                MEMORY[0x1865CB0E0](0xD000000000000014, 0x8000000181482DC0);
                v96 = String.init(cString:)();
                MEMORY[0x1865CB0E0](v96);

                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                MEMORY[0x1865CB0E0](v19, v18);
                MEMORY[0x1865CB0E0](92, 0xE100000000000000);

                MEMORY[0x1865CB0E0](0x2720646E612027, 0xE700000000000000);
                v97 = String.init(cString:)();
                MEMORY[0x1865CB0E0](v97);

                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                MEMORY[0x1865CB0E0](a4, v110);
                MEMORY[0x1865CB0E0](92, 0xE100000000000000);

                MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181482DE0);
                MEMORY[0x1865CB0E0](a2, a3);
                MEMORY[0x1865CB0E0](39, 0xE100000000000000);
LABEL_92:
                result = _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                return result;
              }

LABEL_85:

              v17 = v117;
              v60 = a2;
              if ((v8 & 1) == 0)
              {
LABEL_86:
                result = specialized _NativeDictionary._insert(at:key:value:)(v17, v60, v9, &v123, v66);
                goto LABEL_87;
              }
            }

            v68 = v17;

            result = outlined assign with take of PredicateCodableConfiguration.AllowListKeyPath(&v123, *(v66 + 56) + 48 * v68);
LABEL_87:
            *v18 = v66;
            return result;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v15 = *(v12 + 8 * v20);
        ++v18;
        if (v15)
        {
          v18 = v20;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_69;
    }

LABEL_10:
    v21 = __clz(__rbit64(v15)) | (v18 << 6);
    v22 = (*(v115 + 48) + 16 * v21);
    v23 = *v22;
    v9 = v22[1];
    v24 = *(v115 + 56) + 48 * v21;
    v25 = *v24;
    v8 = *(v24 + 16);
    v116 = *(v24 + 8);
    v118 = *(v24 + 24);
    v120 = *(v24 + 32);
    v26 = *(v24 + 40);
    if (*v22 == a2 && v9 == a3)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (v17)
    {
      break;
    }

    v15 &= v15 - 1;
    if (v26)
    {
      outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v25, v116, v8, v118, v120, 1);
      outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v25, v116, v8, v118, v120, 1);

      if (v25 != a1)
      {
        outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v25, v116, v8, v118, v120, 1);

        goto LABEL_18;
      }

      v28 = v8;
      v106 = v25;
      if (v118 == a4 && v120 == v110)
      {

        goto LABEL_26;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
LABEL_26:
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v9);
        v33 = v32;

        v19 = 48;
        if (v33)
        {
          v34 = v106;
          v35 = swift_isUniquelyReferenced_nonNull_native();
          v9 = *v109;
          if (v35)
          {
            v36 = v118;
          }

          else
          {
            v100 = v31;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMd, &_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV16AllowListKeyPathOGMR);
            v107 = static _DictionaryStorage.copy(original:)();
            if (*(v9 + 16))
            {
              v39 = (v107 + 64);
              __src = (v9 + 64);
              v40 = ((1 << *(v107 + 32)) + 63) >> 6;
              if (v107 != v9 || v39 >= &__src[8 * v40])
              {
                memmove(v39, __src, 8 * v40);
              }

              v41 = 0;
              *(v107 + 16) = *(v9 + 16);
              v42 = 1 << *(v9 + 32);
              if (v42 < 64)
              {
                v43 = ~(-1 << v42);
              }

              else
              {
                v43 = -1;
              }

              v105 = v43 & *(v9 + 64);
              v19 = (v42 + 63) >> 6;
              while (v105)
              {
                v44 = __clz(__rbit64(v105));
                v105 &= v105 - 1;
LABEL_45:
                v47 = v44 | (v41 << 6);
                v48 = 16 * v47;
                v49 = (*(v9 + 48) + 16 * v47);
                v51 = *v49;
                v50 = v49[1];
                v47 *= 48;
                v52 = *(v9 + 56) + v47;
                v54 = *v52;
                v53 = *(v52 + 8);
                v55 = *(v52 + 16);
                v103 = *(v52 + 32);
                v104 = *(v52 + 24);
                v56 = *(v52 + 40);
                v102 = v56;
                v57 = (*(v107 + 48) + v48);
                *v57 = v51;
                v57[1] = v50;
                v58 = *(v107 + 56) + v47;
                *v58 = v54;
                *(v58 + 8) = v53;
                *(v58 + 16) = v55;
                *(v58 + 24) = v104;
                *(v58 + 32) = v103;
                *(v58 + 40) = v56;

                outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v54, v53, v55, v104, v103, v102);
              }

              v45 = v41;
              while (1)
              {
                v41 = v45 + 1;
                if (__OFADD__(v45, 1))
                {
                  goto LABEL_89;
                }

                if (v41 >= v19)
                {
                  break;
                }

                v46 = *&__src[8 * v41];
                ++v45;
                if (v46)
                {
                  v44 = __clz(__rbit64(v46));
                  v105 = (v46 - 1) & v46;
                  goto LABEL_45;
                }
              }
            }

            v36 = v118;
            v34 = v106;
            v8 = v28;
            v9 = v107;
            v31 = v100;
          }

          v37 = *(v9 + 56) + 48 * v31;
          outlined consume of PredicateCodableConfiguration.AllowListKeyPath(*v37, *(v37 + 8), *(v37 + 16), *(v37 + 24), *(v37 + 32), *(v37 + 40));
          specialized _NativeDictionary._delete(at:)(v31, v9);
          v38 = v36;
          v19 = 48;
          v17 = outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v34, v116, v8, v38, v120, 1);
          *v109 = v9;
          v16 = v111;
        }

        else
        {
          v17 = outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v106, v116, v8, v118, v120, 1);
          v16 = v111;
        }
      }

      else
      {
        outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v25, v116, v8, v118, v120, 1);
LABEL_18:

        v19 = 48;
        v16 = v111;
      }
    }
  }

  if ((v26 & 1) == 0)
  {
    outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v25, v116, v8, v118, v120, 0);
    outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v25, v116, v8, v118, v120, 0);

    _StringGuts.grow(_:)(57);
    MEMORY[0x1865CB0E0](0xD000000000000014, 0x8000000181482DC0);
    v98 = AnyKeyPath.debugDescription.getter();
    MEMORY[0x1865CB0E0](v98);

    MEMORY[0x1865CB0E0](0x2720646E612027, 0xE700000000000000);
    v99 = String.init(cString:)();
    MEMORY[0x1865CB0E0](v99);

    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](a4, v110);
    MEMORY[0x1865CB0E0](92, 0xE100000000000000);

    MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181482DE0);
    MEMORY[0x1865CB0E0](a2, a3);
    MEMORY[0x1865CB0E0](39, 0xE100000000000000);
    goto LABEL_92;
  }

  v19 = v118;
  v18 = v120;
  outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v25, v116, v8, v118, v120, 1);
  outlined copy of PredicateCodableConfiguration.AllowListKeyPath(v25, v116, v8, v118, v120, 1);

  if (v25 != a1)
  {
    goto LABEL_90;
  }

  if (v118 == a4 && v120 == v110)
  {

    outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v25, v116, v8, a4, v110, 1);
  }

  else
  {
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v71 & 1) == 0)
    {
      goto LABEL_90;
    }

    outlined consume of PredicateCodableConfiguration.AllowListKeyPath(v25, v116, v8, v118, v120, 1);
  }
}

void *_deserializeBytes(void *a1, size_t a2, uint64_t a3, void *a4, size_t __len)
{
  v5 = *a4;
  v6 = __CFADD__(*a4, a2);
  if (v5 == 0x8000000000000000 || *a4 > 0 && v6 || v5 < 0 && a2 < -v5 || !a3 || -a3 < a2 && a3 != 1 || (v9 = v5 + a2, v5 + a2 < a2) || (v10 = a3 - 1 + a2, v10 < v9) || __len && (__len != 1 && v9 > -__len || (v11 = __len + v9 - 1, v11 < a2) || v10 < v11))
  {
    v13 = [NSString stringWithFormat:@"*** End of archive encountered prematurely at %ld", *a4];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSArchiverArchiveInconsistency" reason:v13 userInfo:0]);
  }

  result = memmove(a1, (v5 + a2), __len);
  *a4 += __len;
  return result;
}

uint64_t checkExpected(uint64_t __s, char *__s2)
{
  if (__s != __s2)
  {
    v3 = __s;
    if (!__s)
    {
      v11 = [NSString stringWithFormat:@"*** file inconsistency: read type is null, expecting '%s'", __s2, v12];
      goto LABEL_31;
    }

    v4 = *__s;
    v5 = *__s2;
    if (v4 != v5 || strlen(__s) != 1 || (__s = strlen(__s2), __s != 1))
    {
      __s = strcmp(v3, __s2);
      if (__s)
      {
        if (!v4)
        {
LABEL_28:
          if (!v5)
          {
            return __s;
          }

LABEL_30:
          v11 = [NSString stringWithFormat:@"*** file inconsistency: read '%s', expecting '%s'", v3, __s2];
LABEL_31:
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSArchiverArchiveInconsistency" reason:v11 userInfo:0]);
        }

        if (v4 != 108 || v5 != 105)
        {
          v6 = __s2;
          v7 = v3;
          do
          {
            v8 = *v6;
            if (!*v6)
            {
              goto LABEL_30;
            }

            if (v4 == v8 || v4 == 108 && v8 == 105)
            {
              ++v7;
              ++v6;
            }

            else if (v4 == 63)
            {
              ++v7;
              if (*v6)
              {
                do
                {
                  if (v8 == 61)
                  {
                    break;
                  }

                  v9 = *++v6;
                  v8 = v9;
                }

                while (v9);
              }
            }

            else
            {
              if (v8 != 63)
              {
                goto LABEL_30;
              }

              ++v6;
              if (v4)
              {
                do
                {
                  if (v4 == 61)
                  {
                    break;
                  }

                  v10 = *++v7;
                  v4 = v10;
                }

                while (v10);
              }
            }

            v4 = *v7;
          }

          while (*v7);
          v5 = *v6;
          goto LABEL_28;
        }
      }
    }
  }

  return __s;
}

unint64_t lazy protocol witness table accessor for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys);
  }

  return result;
}

uint64_t PredicateExpressions.Equal<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v6)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t PredicateExpressions.Value<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t PredicateExpressions.Equal.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x1865CB0E0](0x686C286C61757145, 0xEB00000000203A73);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A736872202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.Value.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v3);

  MEMORY[0x1865CB0E0](10302, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_181218E20;
  *(v4 + 56) = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v4 + 32));
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v1, v2);
  debugPrint<A>(_:separator:terminator:to:)();

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);

  return 0x3C65756C6156;
}

uint64_t PredicateExpressions.Variable.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0x656C626169726156;
}

uint64_t _JSONUnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 8);
  v8 = *(*(v7 + 16) + 16);
  type metadata accessor for JSONFuture.RefObject();
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation10JSONFutureOGMd, &_sSDySS10Foundation10JSONFutureOGMR);
  Dictionary.reserveCapacity(_:)(4);
  v10 = *(v7 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    *(v7 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[24 * v13];
  *(v14 + 4) = v9;
  *(v14 + 5) = 0;
  v14[48] = 0x80;
  *(v7 + 16) = v10;
  v15 = *(v4 + 16);
  result = swift_allocObject();
  v18 = result;
  *(result + 16) = v8;
  *(result + 24) = v15;
  if (v15 >> 62)
  {
    v19 = 0;
    if (v15 >> 62 != 1)
    {
      goto LABEL_10;
    }

    v20 = ((v15 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v20 = (v15 + 64);
  }

  v19 = *v20;

LABEL_10:
  if (__OFADD__(v19, 1))
  {
    __break(1u);
  }

  else
  {
    *(v18 + 32) = v19 + 1;
    type metadata accessor for _JSONKeyedEncodingContainer(0, a2, a3, v17);

    swift_getWitnessTable();
    return KeyedEncodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t sub_18098D0F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t PredicateCodableConfiguration._identifier(for:)(uint64_t result)
{
  v2 = 0;
  v3 = *(v1 + 8);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v3 + 64;
  v7 = v5 & *(v3 + 64);
  v8 = (v4 + 63) >> 6;
  while (v7)
  {
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v2 << 6);
    v12 = *(v3 + 56) + 16 * v11;
    if ((*(v12 + 8) & 1) == 0 && *v12 == result)
    {
LABEL_27:
      v22 = *(*(v3 + 48) + 16 * v11);

      return v22;
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v6 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_9;
    }
  }

  result = Type.partial.getter();
  if (!result)
  {
    return result;
  }

  v13 = 0;
  v14 = 1 << *(v3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v3 + 64);
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = v13;
LABEL_22:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v11 = v19 | (v18 << 6);
    v20 = *(v3 + 56) + 16 * v11;
    if (*(v20 + 8) == 1 && *v20 == result)
    {
      goto LABEL_27;
    }
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      return 0;
    }

    v16 = *(v6 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_22;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t PredicateExpressions.Variable.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PredicateExpressions.Variable.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = *v4;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16[3] = v10;
  lazy protocol witness table accessor for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v14);
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID);
  }

  return result;
}

uint64_t closure #1 in KeyedEncodingContainer<>._encode<A, B>(_:variable:predicateConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure();
  result = KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v10)
  {
    return KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure()
{
  result = lazy protocol witness table cache variable for type ExpressionStructure and conformance ExpressionStructure;
  if (!lazy protocol witness table cache variable for type ExpressionStructure and conformance ExpressionStructure)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpressionStructure and conformance ExpressionStructure);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpressionStructure and conformance ExpressionStructure;
  if (!lazy protocol witness table cache variable for type ExpressionStructure and conformance ExpressionStructure)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpressionStructure and conformance ExpressionStructure);
  }

  return result;
}

uint64_t specialized _withPredicateArchivingState<A>(_:_:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t))
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for predicateArchivingState != -1)
  {
    swift_once();
  }

  v8 = static _ThreadLocal.Key<A>.predicateArchivingState;
  v9 = pthread_getspecific(static _ThreadLocal.Key<A>.predicateArchivingState);
  v10 = a3 & 1;
  if (v9)
  {
    v11 = *v9;
    v12 = *(*v9 + 32);
    *(*v9 + 32) = v10;

    v17 = *(v11 + 16);
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    a4(v13);
    *(v11 + 16) = v17;
    *(v11 + 32) = v12;
  }

  else
  {
    type metadata accessor for PredicateArchivingState();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    *(v15 + 32) = v10;
    *(v15 + 40) = MEMORY[0x1E69E7CC8];
    v18[0] = v15;

    if (pthread_getspecific(v8))
    {
      __break(1u);
    }

    v16 = pthread_setspecific(v8, v18);
    a4(v16);
    pthread_setspecific(v8, 0);
  }
}

uint64_t partial apply for closure #1 in KeyedEncodingContainer<>._encode<A, B>(_:variable:predicateConfiguration:)()
{
  return closure #1 in KeyedEncodingContainer<>._encode<A, B>(_:variable:predicateConfiguration:)(v0[7], v0[8], v0[9], v0[10], v0[11], v0[2], v0[3], v0[4], v0[5], v0[6]);
}

{
  return partial apply for closure #1 in KeyedEncodingContainer<>._encode<A, B>(_:variable:predicateConfiguration:)();
}

unint64_t _JSONKeyedEncodingContainer.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v220 = a3;
  v239[5] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v210 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  v224 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v229 = &v210 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v210 - v13;
  v15 = *v3;
  i = v3;
  v16 = v3[2];
  v17 = *(a2 + 24);
  v239[3] = v6;
  v239[4] = v17;
  v232 = v17;
  __swift_allocate_boxed_opaque_existential_0(v239);
  v230 = v7;
  v19 = *(v7 + 16);
  v18 = v7 + 16;
  v223 = a1;
  v222 = v18;
  v221 = v19;
  v19();
  v231 = v15;
  v20 = *(v15 + 152);
  v227 = v16;
  v226 = v6;
  v225 = v10;
  v219 = v9;
  if (!v20)
  {
    v24 = dispatch thunk of CodingKey.stringValue.getter();
    v6 = v34;
    v21 = v14;
    goto LABEL_86;
  }

  v21 = v14;
  if (v20 != 1)
  {
    v18 = *(v231 + 160);

    v35 = __JSONEncoder.codingPath.getter();
    v36 = _CodingPathNode.path.getter(v16);
    v236 = v35;
    specialized Array.append<A>(contentsOf:)(v36);
    v37 = v236;
    outlined init with copy of Hashable & Sendable(v239, &v236);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v217 = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    goto LABEL_117;
  }

  v22 = dispatch thunk of CodingKey.stringValue.getter();
  v24 = v22;
  v6 = v23;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    goto LABEL_86;
  }

  v26 = String.index(after:)();
  v27 = 7;
  if (((v6 >> 60) & ((v24 & 0x800000000000000) == 0)) != 0)
  {
    v27 = 11;
  }

  v28 = (4 * v25);
  if (4 * v25 < v26 >> 14)
  {
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v214 = (v27 | (v25 << 16));
  v29 = String.subscript.getter();
  v33 = v32;
  v217 = v14;
  if ((v29 ^ v30) >= 0x4000)
  {
    v48 = v29;
    v20 = v30;
    v49 = v31;
    v216 = MEMORY[0x1E69E7CC0];
    v18 = 0x700030001;
    v16 = 15;
    v213 = v28;
    while (1)
    {
      v211 = v16;
      v218 = Substring.UnicodeScalarView.index(before:)();
      v50 = Substring.UnicodeScalarView.subscript.getter();
      v51 = v50;
      v52 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v50), 1u);
      v53 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v51, v52, 0x700030001);
      v37 = v48;
      if (!v53)
      {
        break;
      }

LABEL_19:
      v54 = Substring.UnicodeScalarView.index(after:)();

      v57 = v37 >> 14;
      v58 = v211;
      if (v37 >> 14 < v211 >> 14 || v54 >> 14 < v57)
      {
        goto LABEL_141;
      }

      v18 = v216;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
      }

      v60 = *(v18 + 16);
      v59 = *(v18 + 24);
      v54 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v18);
      }

      *(v18 + 16) = v54;
      v61 = v18 + 16 * v60;
      *(v61 + 32) = v58;
      *(v61 + 40) = v37;
      if (v213 < v57)
      {
        goto LABEL_142;
      }

      v216 = v18;
      v62 = String.subscript.getter();
      v66 = v65;
      if ((v62 ^ v63) < 0x4000)
      {
LABEL_74:
        v16 = v37;
        v28 = v213;
        goto LABEL_76;
      }

      v67 = v62;
      v18 = v63;
      v68 = v64;
      v212 = v37 >> 14;
      v69 = Substring.UnicodeScalarView.index(before:)();
      if ((v66 & 0x2000000000000000) != 0)
      {
        v70 = HIBYTE(v66) & 0xF;
      }

      else
      {
        v70 = v68 & 0xFFFFFFFFFFFFLL;
      }

      v218 = v66 & 0xFFFFFFFFFFFFFFLL;
      v215 = (v66 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v71 = v67;
      while (1)
      {
        v72 = Substring.UnicodeScalarView.subscript.getter();
        if (BYTE2(v72) <= 1u)
        {
          v73 = *(&__CFUniCharLowercaseLetterCharacterSetBitmap + BYTE2(v72));
          if (v73)
          {
            if ((*(v73 + (v72 >> 3)) >> (v72 & 7)))
            {
              break;
            }
          }
        }

        if ((v71 ^ v69) < 0x4000)
        {
          goto LABEL_74;
        }

        v20 = _StringGuts.validateInclusiveScalarIndex(_:)(v71, v68, v66) >> 16;
        if (v20 >= v70)
        {
          __break(1u);
          goto LABEL_115;
        }

        if ((v66 & 0x1000000000000000) != 0)
        {
          v71 = String.UnicodeScalarView._foreignIndex(after:)();
        }

        else
        {
          if ((v66 & 0x2000000000000000) != 0)
          {
            v236 = v68;
            v237 = v218;
            v75 = *(&v236 + v20);
          }

          else
          {
            v74 = v215;
            if ((v68 & 0x1000000000000000) == 0)
            {
              v74 = _StringObject.sharedUTF8.getter();
            }

            v75 = *(v74 + v20);
          }

          v76 = v75;
          v77 = __clz(v75 ^ 0xFF) - 24;
          if (v76 >= 0)
          {
            LOBYTE(v77) = 1;
          }

          v71 = ((v20 + v77) << 16) | 5;
        }
      }

      v85 = Substring.UnicodeScalarView.index(after:)();

      if (v85 >> 14 < v71 >> 14)
      {
        goto LABEL_173;
      }

      v86 = v71 >> 14 == String.index(after:)() >> 14;
      v87 = v216;
      v21 = v212;
      if (v86)
      {
        v88 = v37;
      }

      else
      {
        v88 = String.index(before:)();
        if (v21 > v88 >> 14)
        {
          goto LABEL_175;
        }

        v21 = *(v87 + 2);
        v89 = *(v87 + 3);
        if (v21 >= v89 >> 1)
        {
          v94 = v88;
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v21 + 1, 1, v87);
          v88 = v94;
        }

        *(v87 + 2) = v21 + 1;
        v90 = &v87[16 * v21];
        *(v90 + 4) = v37;
        *(v90 + 5) = v88;
      }

      v211 = v88;
      v216 = v87;
      v28 = v213;
      if (v213 < v85 >> 14)
      {
        goto LABEL_174;
      }

      v48 = String.subscript.getter();
      v20 = v91;
      v49 = v92;
      v33 = v93;
      v18 = 0x700030001;
      v16 = v211;
      if ((v48 ^ v91) < 0x4000)
      {
        goto LABEL_76;
      }
    }

    if ((v33 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v33) & 0xF;
    }

    else
    {
      v21 = v49 & 0xFFFFFFFFFFFFLL;
    }

    v215 = v33 & 0xFFFFFFFFFFFFFFLL;
    v212 = (v33 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v37 = v48;
    while ((v37 ^ v218) >= 0x4000)
    {
      v37 = _StringGuts.validateInclusiveScalarIndex(_:)(v37, v49, v33) >> 16;
      if (v37 >= v21)
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      if ((v33 & 0x1000000000000000) != 0)
      {
        v37 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((v33 & 0x2000000000000000) != 0)
        {
          v236 = v49;
          v237 = v215;
          v82 = *(&v236 + v37);
        }

        else
        {
          v81 = v212;
          if ((v49 & 0x1000000000000000) == 0)
          {
            v81 = _StringObject.sharedUTF8.getter();
          }

          v82 = *(v81 + v37);
        }

        v83 = v82;
        v84 = __clz(v82 ^ 0xFF) - 24;
        if (v83 >= 0)
        {
          LOBYTE(v84) = 1;
        }

        v37 = ((v37 + v84) << 16) | 5;
      }

      v78 = Substring.UnicodeScalarView.subscript.getter();
      v79 = v78;
      v18 = 0x700030001;
      v80 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v78), 1u);
      if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v79, v80, 0x700030001))
      {
        goto LABEL_19;
      }
    }

    v28 = v213;
    v16 = v211;
  }

  else
  {
    v16 = 15;
    v216 = MEMORY[0x1E69E7CC0];
  }

LABEL_76:

  if (v28 < v16 >> 14)
  {
    goto LABEL_138;
  }

  v28 = v216;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_139:
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
  }

  v96 = *(v28 + 2);
  v95 = *(v28 + 3);
  v97 = v96 + 1;
  v98 = MEMORY[0x1E69E7CC0];
  if (v96 >= v95 >> 1)
  {
    v172 = v28;
    v173 = MEMORY[0x1E69E7CC0];
    v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v172);
    v98 = v173;
    v28 = v174;
  }

  *(v28 + 2) = v97;
  v99 = &v28[16 * v96];
  v100 = v214;
  *(v99 + 4) = v16;
  *(v99 + 5) = v100;
  v236 = v98;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97, 0);
  v18 = v236;
  v216 = v28;
  v101 = v28 + 40;
  do
  {
    String.subscript.getter();
    v102 = Substring.lowercased()();

    v236 = v18;
    v104 = *(v18 + 16);
    v103 = *(v18 + 24);
    if (v104 >= v103 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
      v18 = v236;
    }

    v101 += 16;
    *(v18 + 16) = v104 + 1;
    *(v18 + 16 * v104 + 32) = v102;
    --v97;
  }

  while (v97);

  v236 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
  v24 = BidirectionalCollection<>.joined(separator:)();
  v106 = v105;

  v6 = v106;
  while (1)
  {
    v21 = v217;
LABEL_86:
    v107 = v229;
    __swift_destroy_boxed_opaque_existential_1(v239);
    v57 = *(i + 8);
    v108 = *(v57 + 16);
    if (*(v108 + 16))
    {

      v109 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v6);
      if (v110)
      {
        v111 = *(v108 + 56) + 24 * v109;
        v18 = *v111;
        v112 = *(v111 + 8);
        LODWORD(v37) = *(v111 + 16);
        outlined copy of JSONFuture(*v111, v112, *(v111 + 16));

        if ((v37 & 0xC0) == 0x40)
        {

          v58 = v18;
          v114 = v227;
LABEL_161:
          v171 = v226;
          v169 = v225;
          v170 = v230;
          goto LABEL_162;
        }

        if (v37 <= 0x3F)
        {
          outlined copy of JSONEncoderValue(v18, v112, v37);
          v58 = JSONEncoderValue.convertedToArrayRef()(v18, v119, v37);
          result = outlined consume of JSONFuture(v18, v112, v37);
          if (v58)
          {
            i = v112;
            swift_retain_n();
            v107 = swift_isUniquelyReferenced_nonNull_native();
            v239[0] = *(v57 + 16);
            v54 = v239[0];
            *(v57 + 16) = 0x8000000000000000;
            v56 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v6);
            v120 = *(v54 + 16);
            v121 = (v55 & 1) == 0;
            v122 = v120 + v121;
            if (__OFADD__(v120, v121))
            {
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
            }

            else
            {
              if (*(v54 + 24) < v122)
              {
                v20 = v55;
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v122, v107);
                v123 = v239[0];
                v124 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v6);
                if ((v20 & 1) == (v125 & 1))
                {
                  v56 = v124;
                  LOBYTE(v55) = v20;
                  goto LABEL_112;
                }

                goto LABEL_105;
              }

              if (v107)
              {
                v123 = v54;
LABEL_112:
                v140 = i;
                v107 = v229;
                if (v55)
                {
LABEL_113:
                  v141 = v56;

                  v142 = *(v123 + 56) + 24 * v141;
                  v143 = *v142;
                  v144 = *(v142 + 8);
                  *v142 = v58;
                  *(v142 + 8) = 0;
                  v145 = *(v142 + 16);
                  *(v142 + 16) = 64;
                  outlined consume of JSONFuture(v143, v144, v145);
LABEL_160:
                  v114 = v227;
                  *(v57 + 16) = v123;
                  outlined consume of JSONFuture(v18, v140, v37);
                  goto LABEL_161;
                }

LABEL_159:
                specialized _NativeDictionary._insert(at:key:value:)(v56, v24, v6, v58, 0, 64, v123);
                goto LABEL_160;
              }
            }

            v212 = v56;
            LODWORD(v213) = v55;
            v217 = v21;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd, &_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMR);
            v175 = static _DictionaryStorage.copy(original:)();
            v123 = v175;
            if (!*(v54 + 16))
            {
LABEL_158:

              v21 = v217;
              v140 = i;
              v107 = v229;
              v56 = v212;
              if (v213)
              {
                goto LABEL_113;
              }

              goto LABEL_159;
            }

            result = v175 + 64;
            v176 = 1 << *(v123 + 32);
            v214 = (v54 + 64);
            v177 = (v176 + 63) >> 6;
            if (v123 != v54 || result >= v214 + 8 * v177)
            {
              result = memmove(result, v214, 8 * v177);
            }

            v178 = 0;
            *(v123 + 16) = *(v54 + 16);
            v179 = 1 << *(v54 + 32);
            v180 = -1;
            if (v179 < 64)
            {
              v180 = ~(-1 << v179);
            }

            v218 = v180 & *(v54 + 64);
            v211 = (v179 + 63) >> 6;
            while (v218)
            {
              v181 = __clz(__rbit64(v218));
              v218 &= v218 - 1;
LABEL_157:
              v184 = v181 | (v178 << 6);
              v185 = 16 * v184;
              v186 = (*(v54 + 48) + 16 * v184);
              v188 = *v186;
              v187 = v186[1];
              v184 *= 24;
              v189 = *(v54 + 56) + v184;
              v191 = *(v189 + 8);
              v216 = *v189;
              v190 = v216;
              v215 = v191;
              v192 = (*(v123 + 48) + v185);
              v193 = *(v189 + 16);
              *v192 = v188;
              v192[1] = v187;
              v194 = *(v123 + 56) + v184;
              *v194 = v190;
              *(v194 + 8) = v191;
              *(v194 + 16) = v193;

              result = outlined copy of JSONFuture(v216, v215, v193);
            }

            v182 = v178;
            while (1)
            {
              v178 = v182 + 1;
              if (__OFADD__(v182, 1))
              {
                break;
              }

              if (v178 >= v211)
              {
                goto LABEL_158;
              }

              v183 = *(v214 + v178);
              ++v182;
              if (v183)
              {
                v181 = __clz(__rbit64(v183));
                v218 = (v183 - 1) & v183;
                goto LABEL_157;
              }
            }

            __break(1u);
          }
        }

        __break(1u);
        goto LABEL_179;
      }

      v115 = *(v57 + 16);
      if (*(v115 + 16))
      {
        break;
      }
    }

LABEL_102:
    type metadata accessor for JSONFuture.RefArray();
    v58 = swift_allocObject();
    v126 = MEMORY[0x1E69E7CC0];
    *(v58 + 16) = MEMORY[0x1E69E7CC0];
    *(v58 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 10, 0, v126);

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v239[0] = *(v57 + 16);
    v20 = v239[0];
    *(v57 + 16) = 0x8000000000000000;
    v127 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v6);
    v129 = *(v20 + 16);
    v130 = (v128 & 1) == 0;
    v131 = __OFADD__(v129, v130);
    v132 = v129 + v130;
    if (!v131)
    {
      LOBYTE(v18) = v128;
      if (*(v20 + 24) >= v132)
      {
LABEL_106:
        if ((v37 & 1) == 0)
        {
          v217 = v21;
          v215 = v127;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd, &_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMR);
          v146 = static _DictionaryStorage.copy(original:)();
          v133 = v146;
          if (*(v20 + 16))
          {
            v147 = (v146 + 64);
            v148 = (v20 + 64);
            v149 = ((1 << *(v133 + 32)) + 63) >> 6;
            v214 = (v20 + 64);
            if (v133 != v20 || v147 >= &v148[8 * v149])
            {
              memmove(v147, v148, 8 * v149);
            }

            v150 = 0;
            *(v133 + 16) = *(v20 + 16);
            v151 = 1 << *(v20 + 32);
            v152 = -1;
            if (v151 < 64)
            {
              v152 = ~(-1 << v151);
            }

            v153 = v152 & *(v20 + 64);
            v154 = (v151 + 63) >> 6;
            v216 = v154;
            if (!v153)
            {
              goto LABEL_126;
            }

            while (1)
            {
              v155 = __clz(__rbit64(v153));
              for (i = (v153 - 1) & v153; ; i = (v157 - 1) & v157)
              {
                v158 = v155 | (v150 << 6);
                v159 = 16 * v158;
                v160 = (*(v20 + 48) + 16 * v158);
                v162 = *v160;
                v161 = v160[1];
                v158 *= 24;
                v163 = *(v20 + 56) + v158;
                v165 = *v163;
                v218 = *(v163 + 8);
                v164 = v218;
                v166 = (*(v133 + 48) + v159);
                v167 = *(v163 + 16);
                *v166 = v162;
                v166[1] = v161;
                v168 = *(v133 + 56) + v158;
                *v168 = v165;
                *(v168 + 8) = v164;
                *(v168 + 16) = v167;

                outlined copy of JSONFuture(v165, v218, v167);
                v153 = i;
                v107 = v229;
                v154 = v216;
                if (i)
                {
                  break;
                }

LABEL_126:
                v156 = v150;
                do
                {
                  v150 = v156 + 1;
                  if (__OFADD__(v156, 1))
                  {
                    goto LABEL_176;
                  }

                  if (v150 >= v154)
                  {
                    goto LABEL_133;
                  }

                  v157 = *(v214 + v150);
                  ++v156;
                }

                while (!v157);
                v155 = __clz(__rbit64(v157));
              }
            }
          }

LABEL_133:

          v127 = v215;
          v21 = v217;
          if (v18)
          {
            goto LABEL_109;
          }

          goto LABEL_134;
        }

        v133 = v20;
LABEL_108:
        if (v18)
        {
LABEL_109:
          v135 = v127;

          v136 = *(v133 + 56) + 24 * v135;
          v137 = *v136;
          v138 = *(v136 + 8);
          *v136 = v58;
          *(v136 + 8) = 0;
          v139 = *(v136 + 16);
          *(v136 + 16) = 64;
          outlined consume of JSONFuture(v137, v138, v139);
          goto LABEL_135;
        }

LABEL_134:
        specialized _NativeDictionary._insert(at:key:value:)(v127, v24, v6, v58, 0, 64, v133);
LABEL_135:
        *(v57 + 16) = v133;
LABEL_136:
        v114 = v227;
        v169 = v225;
        v170 = v230;

        v171 = v226;
LABEL_162:
        v195 = v224;
        (v221)(v21, v223, v171);
        (*(v170 + 56))(v21, 0, 1, v171);
        (*(v195 + 16))(v107, v21, v169);
        if ((*(v170 + 48))(v107, 1, v171) == 1)
        {
          v196 = *(v195 + 8);
          v197 = v231;

          v196(v21, v169);
          v196(v107, v169);

LABEL_170:
          v209 = v220;
          v220[3] = &unk_1EEEE7918;
          v209[4] = lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer();

          *v209 = v197;
          v209[1] = v58;
          v209[2] = v114;
          return result;
        }

        v198 = *(v170 + 32);
        v199 = v107;
        v200 = v21;
        v201 = v219;
        v198(v219, v199, v171);
        v202 = swift_allocObject();
        v203 = v232;
        v202[5] = v171;
        v202[6] = v203;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v202 + 2);
        v198(boxed_opaque_existential_0, v201, v171);
        v205 = *(v195 + 8);
        v197 = v231;

        v205(v200, v169);
        v202[7] = v114;
        if (v114 >> 62)
        {
          if (v114 >> 62 != 1)
          {
            v208 = 1;
LABEL_169:
            v202[8] = v208;
            v114 = v202;
            goto LABEL_170;
          }

          v206 = ((v114 & 0x3FFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v206 = (v114 + 64);
        }

        v207 = *v206;

        v208 = v207 + 1;
        if (__OFADD__(v207, 1))
        {
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
        }

        goto LABEL_169;
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v132, v37);
      v133 = v239[0];
      v127 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v6);
      if ((v18 & 1) == (v134 & 1))
      {
        goto LABEL_108;
      }

LABEL_105:
      v127 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_106;
    }

LABEL_116:
    __break(1u);
LABEL_117:
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1, v37);
LABEL_14:
    v40 = *(v37 + 16);
    v39 = *(v37 + 24);
    if (v40 >= v39 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
    }

    v41 = __swift_mutable_project_boxed_opaque_existential_1(&v236, v238);
    v42 = MEMORY[0x1EEE9AC00](v41);
    v44 = &v210 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v44, v42);
    v234 = v6;
    v235 = v232;
    v46 = __swift_allocate_boxed_opaque_existential_0(&v233);
    (*(v230 + 32))(v46, v44, v6);
    *(v37 + 16) = v40 + 1;
    outlined init with take of Equatable(&v233, v37 + 40 * v40 + 32);
    __swift_destroy_boxed_opaque_existential_1(&v236);
    (v20)(&v236, v37);

    __swift_project_boxed_opaque_existential_1(&v236, v238);
    v24 = dispatch thunk of CodingKey.stringValue.getter();
    v6 = v47;
    sub_1807A5C7C(v20, v18);
    __swift_destroy_boxed_opaque_existential_1(&v236);
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(v24, v6);
  if ((v116 & 1) == 0 || (v117 = *(v115 + 56) + 24 * result, (v118 = *(v117 + 16) >> 6) == 0))
  {

    goto LABEL_102;
  }

  if (v118 == 1)
  {
    v58 = *v117;

    goto LABEL_136;
  }

LABEL_179:
  __break(1u);
  return result;
}