id Device_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Device_Impl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Device_Impl(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static PDRDevicePropertyKey.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance PDRDevicePropertyKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance PDRDevicePropertyKey(uint64_t *a1, void *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    v8 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance PDRDevicePropertyKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    v8 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance PDRDevicePropertyKey(uint64_t *a1, void *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t PDRDevice.lastActiveDate()@<X0>(uint64_t a1@<X8>)
{
  if ([v1 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v3 = type metadata accessor for Date();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    outlined destroy of UUID?(v9, &_sypSgMd, &_sypSgMR);
    v6 = type metadata accessor for Date();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t PDRDevice.bluetoothIdentifier()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  if ([v2 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    v10 = type metadata accessor for UUID();
    v11 = swift_dynamicCast();
    v12 = *(v10 - 8);
    (*(v12 + 56))(v9, v11 ^ 1u, 1, v10);
    if ((*(v12 + 48))(v9, 1, v10) != 1)
    {
      return (*(v12 + 32))(a1, v9, v10);
    }
  }

  else
  {
    outlined destroy of UUID?(v17, &_sypSgMd, &_sypSgMR);
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  outlined destroy of UUID?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  UUID.init(uuidString:)();
  type metadata accessor for UUID();
  v13 = *(v10 - 8);
  result = (*(v13 + 48))(v7, 1, v10);
  if (result != 1)
  {
    return (*(v13 + 32))(a1, v7, v10);
  }

  __break(1u);
  return result;
}

id PDRDevice.advertisedName.getter()
{
  result = [v0 valueForProperty_];
  if (result)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v3, &v4);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo20PDRDevicePropertyKeyaGMd, &_ss23_ContiguousArrayStorageCySo20PDRDevicePropertyKeyaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for PDRDevicePropertyKey(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for Device_Impl(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PDRDevicePropertyKey(0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
      {

LABEL_5:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v9;
      result = v9[1];
      *v9 = result;
      v9[1] = v16;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v6 = *v104;
    if (!*v104)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v94 = v5;
      v95 = *(v8 + 2);
      if (v95 >= 2)
      {
        while (*a3)
        {
          v5 = v95 - 1;
          v96 = *&v8[16 * v95];
          v97 = *&v8[16 * v95 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v96), (*a3 + 8 * *&v8[16 * v95 + 16]), (*a3 + 8 * v97), v6);
          if (v94)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v95 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v98 = &v8[16 * v95];
          *v98 = v96;
          *(v98 + 1) = v97;
          result = specialized Array.remove(at:)(v95 - 1);
          v95 = *(v8 + 2);
          if (v95 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      v15 = v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14;
      v100 = v5;
      if (v15)
      {
        v107 = 0;
      }

      else
      {
        v107 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v102 = v9;
      v16 = v10 + 8 * v9 + 16;
      v105 = 8 * v9;
      v17 = 8 * v9 + 8;
      do
      {
        v5 = v7;
        v20 = v17;
        if (++v7 >= v6)
        {
          break;
        }

        v21 = v8;
        v22 = v6;
        v23 = v7;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
        v28 = v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27;
        v18 = v28 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v19 = v107 ^ v18;
        v16 += 8;
        v17 = v20 + 8;
        v7 = v23;
        v6 = v22;
        v8 = v21;
      }

      while ((v19 & 1) == 0);
      if (v107)
      {
        v29 = v102;
        if (v7 < v102)
        {
          goto LABEL_134;
        }

        if (v102 >= v7)
        {
          v5 = v100;
          v9 = v102;
          goto LABEL_31;
        }

        v30 = v105;
        do
        {
          if (v29 != v5)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v33 = *(v32 + v30);
            *(v32 + v30) = *(v32 + v20);
            *(v32 + v20) = v33;
          }

          ++v29;
          v20 -= 8;
          v30 += 8;
        }

        while (v29 < v5--);
      }

      v5 = v100;
      v9 = v102;
    }

LABEL_31:
    v34 = a3[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_73:
          if (v57)
          {
            goto LABEL_121;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_124;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_128;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_87:
        if (v75)
        {
          goto LABEL_123;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_126;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_94:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v92 = *&v8[16 * v91 + 32];
        v6 = *&v8[16 * v53 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v92), (*a3 + 8 * *&v8[16 * v53 + 32]), (*a3 + 8 * v6), v52);
        if (v5)
        {
        }

        if (v6 < v92)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v8[16 * v91];
        *(v93 + 4) = v92;
        *(v93 + 5) = v6;
        result = specialized Array.remove(at:)(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_119;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_120;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_122;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_125;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v35 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v35)
  {
    goto LABEL_53;
  }

  v101 = v5;
  v103 = v9;
  v36 = *a3;
  v6 = *a3 + 8 * v7 - 8;
  v37 = v9 - v7;
  v106 = v35;
LABEL_42:
  v108 = v7;
  v38 = v37;
  v39 = v6;
  while (1)
  {
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
    {

LABEL_41:
      v7 = v108 + 1;
      v6 += 8;
      --v37;
      if (v108 + 1 == v106)
      {
        v7 = v106;
        v5 = v101;
        v9 = v103;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v45 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v36)
    {
      break;
    }

    v46 = *v39;
    *v39 = v39[1];
    v39[1] = v46;
    --v39;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
      v20 = v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19;
      if (v20)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v6;
      v20 = v7 == v6;
      v6 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v20 = v7 == v4;
    v4 += 8;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v32 = v6;
      v22 = v6 - 8;
      v5 -= 8;
      v23 = v14;
      while (1)
      {
        v23 -= 8;
        v6 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
        v28 = v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27;
        v29 = v28 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v30 = v5 + 8;
        if (v29)
        {
          break;
        }

        v22 = v6;
        if (v30 != v14)
        {
          *v5 = *v23;
        }

        v5 -= 8;
        v14 = v23;
        if (v23 <= v4)
        {
          v14 = v23;
          v6 = v32;
          goto LABEL_47;
        }
      }

      if (v30 != v32)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_47:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void PDRDeviceSizeForProductType_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22DF91000, a2, OS_LOG_TYPE_ERROR, "IMPORTANT! Unsupported ProductType (%@) falling back to generic size (which won't behave correctly in UI)!", &v2, 0xCu);
}

void PDRDeviceSizeForArtworkDeviceSubType_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_22DF91000, a2, OS_LOG_TYPE_ERROR, "IMPORTANT! Unsupported ArtworkDeviceSubType (%lu) falling back to generic size (which won't behave correctly in UI)!", &v2, 0xCu);
}