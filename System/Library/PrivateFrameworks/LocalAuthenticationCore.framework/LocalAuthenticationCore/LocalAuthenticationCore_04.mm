Swift::Bool __swiftcall LACMechanismTree.isSatisfiable(withValue:)(Swift::Int withValue)
{
  v2 = &selRef_cancelAuthenticationForRequestIdentifier_;
  v3 = [v1 children];
  type metadata accessor for LACMechanismTree(v3);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    LOBYTE(v6) = [v1 isAnd];
    v7 = [v1 *(v2 + 768)];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v4 = MEMORY[0x1B2722F00](v13);
      if (v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_6:
        v2 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1B2722E50](v2, v8);
          }

          else
          {
            if (v2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = *(v8 + 8 * v2 + 32);
          }

          v10 = v9;
          v11 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            if (v4 < 0)
            {
              v12 = v4;
            }

            else
            {
              v12 = v4 & 0xFFFFFFFFFFFFFF8;
            }

            v5 = MEMORY[0x1B2722F00](v12);
            goto LABEL_3;
          }

          if ([v1 isAnd])
          {
            if ((v6 & 1) == 0)
            {
              LOBYTE(v6) = 0;
              goto LABEL_8;
            }
          }

          else if (v6)
          {
            LOBYTE(v6) = 1;
            goto LABEL_8;
          }

          LOBYTE(v6) = [v10 isSatisfiableWithValue_];
LABEL_8:

          ++v2;
        }

        while (v11 != v4);
      }
    }
  }

  else
  {
    return [v1 value] == withValue;
  }

  return v6;
}

Swift::Bool __swiftcall LACMechanismTree.isValue(_:replaceableByValue:)(Swift::Int _, Swift::Int replaceableByValue)
{
  if ([v2 isSatisfiableWithValue_])
  {
    return [v2 isSatisfiableWithValue_];
  }

  v5 = [v2 children];
  type metadata accessor for LACMechanismTree(v5);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x1B2722F00](v24))
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v25 = v6 & 0xFFFFFFFFFFFFFF8;
    v26 = v6;
    v10 = &selRef_cancelAuthenticationForRequestIdentifier_;
    while (1)
    {
      if (v9)
      {
        v12 = MEMORY[0x1B2722E50](v8, v6);
      }

      else
      {
        if (v8 >= *(v25 + 16))
        {
          goto LABEL_24;
        }

        v12 = *(v6 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (([v2 v10[97]] & 1) != 0 || ((v15 = i, v16 = v2, v17 = v9, v18 = v10, v19 = replaceableByValue, v20 = objc_msgSend(v13, sel_children), v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v20, v21 >> 62) ? (v21 < 0 ? (v23 = v21) : (v23 = v21 & 0xFFFFFFFFFFFFFF8), v22 = MEMORY[0x1B2722F00](v23)) : (v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10)), , replaceableByValue = v19, v10 = v18, v9 = v17, v2 = v16, i = v15, v6 = v26, v22))
      {
        v11 = [v13 isValue:_ replaceableByValue:{replaceableByValue, v25}];

        if ((v11 & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
      }

      ++v8;
      if (v14 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    if (v6 < 0)
    {
      v24 = v6;
    }

    else
    {
      v24 = v6 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_29:

  return 1;
}

Swift::Bool __swiftcall LACMechanismTree.isValueRequired(_:)(Swift::Int a1)
{
  v2 = &selRef_cancelAuthenticationForRequestIdentifier_;
  v3 = [v1 children];
  type metadata accessor for LACMechanismTree(v3);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    LODWORD(v6) = [v1 isAnd] ^ 1;
    v7 = [v1 *(v2 + 768)];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v4 = MEMORY[0x1B2722F00](v13);
      if (v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_6:
        v2 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1B2722E50](v2, v8);
          }

          else
          {
            if (v2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = *(v8 + 8 * v2 + 32);
          }

          v10 = v9;
          v11 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            if (v4 < 0)
            {
              v12 = v4;
            }

            else
            {
              v12 = v4 & 0xFFFFFFFFFFFFFF8;
            }

            v5 = MEMORY[0x1B2722F00](v12);
            goto LABEL_3;
          }

          if ([v1 isAnd])
          {
            if (v6)
            {
              LOBYTE(v6) = 1;
              goto LABEL_8;
            }
          }

          else if ((v6 & 1) == 0)
          {
            LOBYTE(v6) = 0;
            goto LABEL_8;
          }

          LOBYTE(v6) = [v10 isValueRequired_];
LABEL_8:

          ++v2;
        }

        while (v11 != v4);
      }
    }
  }

  else
  {
    return [v1 value] == a1;
  }

  return v6;
}

id static LACMechanismTree.parse(tree:index:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  v7 = *a3;
  if (v7 < String.count.getter())
  {
    v8 = 0;
    while (1)
    {
      String.index(_:offsetBy:)();
      v12 = String.subscript.getter();
      v14 = v13;
      v15 = v12 == 40 && v13 == 0xE100000000000000;
      if (v15 || (v16 = v12, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        *a3 = v7 + 1;
        v17 = static LACMechanismTree.parse(tree:index:)(a1, a2, a3);
        if (v17)
        {
          v18 = v17;
          MEMORY[0x1B2722B30]();
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v19 = 0;
          v6 = v32;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        if ((v16 != 41 || v14 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v16 == 124 && v14 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v9 = closure #1 in static LACMechanismTree.parse(tree:index:)(0, 0xE000000000000000);

            if (!v9)
            {
              v8 = 0;
              goto LABEL_8;
            }

            v10 = v9;
            MEMORY[0x1B2722B30]();
            if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v8 = 0;
          }

          else
          {
            if ((v16 != 38 || v14 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              MEMORY[0x1B2722A80](v16, v14);

              goto LABEL_8;
            }

            v22 = closure #1 in static LACMechanismTree.parse(tree:index:)(0, 0xE000000000000000);

            if (!v22)
            {
              v8 = 1;
              goto LABEL_8;
            }

            v23 = v22;
            MEMORY[0x1B2722B30]();
            if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v8 = 1;
          }

          v6 = v32;
LABEL_8:
          *a3 = ++v7;
          v11 = String.count.getter();
          goto LABEL_9;
        }

        v20 = closure #1 in static LACMechanismTree.parse(tree:index:)(0, 0xE000000000000000);

        if (v20)
        {
          v21 = v20;
          MEMORY[0x1B2722B30]();
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v6 = v32;
        }

        *a3 = v7 + 1;
        v19 = 1;
      }

      v7 = *a3;
      v11 = String.count.getter();
      if (v19)
      {
        goto LABEL_44;
      }

LABEL_9:
      if (v7 >= v11)
      {
        goto LABEL_44;
      }
    }
  }

  v8 = 0;
LABEL_44:

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_46;
    }

LABEL_61:

    return 0;
  }

  if (v6 < 0)
  {
    v31 = v6;
  }

  else
  {
    v31 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x1B2722F00](v31);
  if (!result)
  {
    goto LABEL_61;
  }

LABEL_46:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1B2722E50](0, v6);
LABEL_49:
    v26 = v25;
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v30 = v6;
      }

      else
      {
        v30 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x1B2722F00](v30) != 1)
      {
        goto LABEL_51;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
LABEL_51:
      v27 = objc_allocWithZone(LACMechanismTree);
      type metadata accessor for LACMechanismTree(v27);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v29 = [v27 initWithChildren:isa isAndNode:v8 & 1];

      return v29;
    }

    return v26;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v6 + 32);
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

id static LACMechanismTree.make(from:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = [v14 userInfo];

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_8;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v6, v15);

  if (swift_dynamicCast())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = MEMORY[0x1B27229A0](a1);

    v11 = [ObjCClassFromMetadata mechanismTreeFromSerializedTree_];

    return v11;
  }

  return 0;
}

id LACMechanismTree.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t closure #1 in static LACMechanismTree.parse(tree:index:)(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v25 = result;

    v7 = specialized _parseInteger<A, B>(ascii:radix:)(v25, a2, 10);
    v27 = v26;

    if (v27)
    {
      return 0;
    }

    return [objc_allocWithZone(LACMechanismTree) initWithValue_];
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_61;
            }

            v7 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v7 = 0;
      LOBYTE(v3) = 1;
LABEL_62:
      v29 = v3;
      if (v3)
      {
        return 0;
      }

      return [objc_allocWithZone(LACMechanismTree) initWithValue_];
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        v7 = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_61;
            }

            v7 = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        v7 = 0;
        v22 = v28;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        v7 = 0;
        v11 = v28 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v3)
  {
    if (--v3)
    {
      v7 = 0;
      v17 = v28 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if ((v7 * 10) >> 64 != (10 * v7) >> 63)
        {
          break;
        }

        v7 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B2722AB0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *LACMutablePasscodeVerificationRequest.passcode.getter()
{
  v1 = *(v0 + OBJC_IVAR___LACMutablePasscodeVerificationRequest_passcode);
  v2 = v1;
  return v1;
}

uint64_t LACMutablePasscodeVerificationRequest.acmContext.getter()
{
  v1 = *(v0 + OBJC_IVAR___LACMutablePasscodeVerificationRequest_acmContext);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR___LACMutablePasscodeVerificationRequest_acmContext + 8));
  return v1;
}

void *LACMutablePasscodeVerificationRequest.userId.getter()
{
  v1 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_userId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LACMutablePasscodeVerificationRequest.userId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_userId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t LACMutablePasscodeVerificationRequest.policy.getter()
{
  v1 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_policy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACMutablePasscodeVerificationRequest.policy.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_policy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LACMutablePasscodeVerificationRequest.options.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_options;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void key path getter for LACMutablePasscodeVerificationRequest.options : LACMutablePasscodeVerificationRequest(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 options];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for LACMutablePasscodeVerificationRequest.options : LACMutablePasscodeVerificationRequest(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setOptions_];
}

uint64_t LACMutablePasscodeVerificationRequest.bioLockoutRecovery.getter()
{
  v1 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_bioLockoutRecovery;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACMutablePasscodeVerificationRequest.bioLockoutRecovery.setter(char a1)
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_bioLockoutRecovery;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id LACMutablePasscodeVerificationRequest.init(passcode:acmContext:auditToken:)(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v8 initWithPasscode:a1 acmContext:isa auditToken:a4];

  outlined consume of Data._Representation(a2, a3);
  return v10;
}

id LACMutablePasscodeVerificationRequest.init(passcode:acmContext:auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_userId] = 0;
  *&v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_policy] = 0;
  v9 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_options;
  *&v4[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_bioLockoutRecovery] = 0;
  *&v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_passcode] = a1;
  v10 = &v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_acmContext];
  *v10 = a2;
  v10[1] = a3;
  *&v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_auditToken] = a4;
  v12.receiver = v4;
  v12.super_class = LACMutablePasscodeVerificationRequest;
  return objc_msgSendSuper2(&v12, sel_init);
}

id LACMutablePasscodeVerificationRequest.init(passcode:acmContext:rawAuditToken:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = HIDWORD(a4);
  v13 = HIDWORD(a5);
  v14 = HIDWORD(a6);
  v19 = HIDWORD(a7);
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22[0] = v10;
  v22[1] = v12;
  v22[2] = v9;
  v22[3] = v13;
  v22[4] = v8;
  v22[5] = v14;
  v22[6] = v7;
  v22[7] = v19;
  v17 = [v15 initWithPasscode:a1 acmContext:isa rawAuditToken:v22];

  outlined consume of Data._Representation(a2, a3);
  return v17;
}

{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = HIDWORD(a4);
  v13 = HIDWORD(a5);
  v14 = HIDWORD(a6);
  v15 = HIDWORD(a7);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v23[0] = v10;
  v23[1] = v12;
  v23[2] = v9;
  v23[3] = v13;
  v23[4] = v8;
  v23[5] = v14;
  v23[6] = v7;
  v23[7] = v15;
  v17 = [objc_allocWithZone(LACAuditToken) initWithRawValue_];
  v18 = [v22 initWithPasscode:a1 acmContext:isa auditToken:v17];
  outlined consume of Data._Representation(a2, a3);

  return v18;
}

uint64_t LACMutablePasscodeVerificationRequest.description.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B0343580;
  strcpy(v26, "auditToken: ");
  BYTE5(v26[1]) = 0;
  HIWORD(v26[1]) = -5120;
  v3 = [v0 auditToken];
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x1B2722A80](v5, v7);

  v8 = v26[1];
  *(v2 + 32) = v26[0];
  *(v2 + 40) = v8;
  strcpy(v26, "userId: ");
  BYTE1(v26[1]) = 0;
  WORD1(v26[1]) = 0;
  HIDWORD(v26[1]) = -402653184;
  v9 = [v1 userId];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x1B2722A80](v10);

  v11 = v26[1];
  *(v2 + 48) = v26[0];
  *(v2 + 56) = v11;
  MEMORY[0x1B2722A80](0x203A7963696C6F70, 0xE800000000000000);
  [v1 policy];
  type metadata accessor for LACPolicy(0);
  _print_unlocked<A, B>(_:_:)();
  *(v2 + 64) = 0;
  *(v2 + 72) = 0xE000000000000000;
  strcpy(v26, "options: ");
  WORD1(v26[1]) = 0;
  HIDWORD(v26[1]) = -385875968;
  v12 = [v1 options];
  if (v12)
  {
    v13 = v12;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
  v14 = String.init<A>(describing:)();
  MEMORY[0x1B2722A80](v14);

  v15 = v26[1];
  *(v2 + 80) = v26[0];
  *(v2 + 88) = v15;
  _StringGuts.grow(_:)(22);

  v26[0] = 0xD000000000000014;
  v26[1] = 0x80000001B0357470;
  v16 = [v1 bioLockoutRecovery];
  v17 = v16 == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x1B2722A80](v18, v19);

  v20 = v26[1];
  *(v2 + 96) = v26[0];
  *(v2 + 104) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;

  MEMORY[0x1B2722A80](60, 0xE100000000000000);
  swift_getObjectType();
  v24 = _typeName(_:qualified:)();
  MEMORY[0x1B2722A80](v24);

  MEMORY[0x1B2722A80](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2722A80](8251, 0xE200000000000000);
  MEMORY[0x1B2722A80](v21, v23);

  MEMORY[0x1B2722A80](62, 0xE100000000000000);
  return 0;
}

id LACMutablePasscodeVerificationRequest.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for LACMutablePasscodeVerificationRequest()
{
  result = lazy cache variable for type metadata for LACMutablePasscodeVerificationRequest;
  if (!lazy cache variable for type metadata for LACMutablePasscodeVerificationRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACMutablePasscodeVerificationRequest);
  }

  return result;
}

id @objc static LACPreboardErrorBuilder.passcodeVerificationError(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = specialized static LACPreboardErrorBuilder.error(code:message:)(*a4, a3, v6);

  v8 = _convertErrorToNSError(_:)();

  return v8;
}

id LACPreboardErrorBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACPreboardErrorBuilder.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LACPreboardErrorBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static LACPreboardErrorBuilder.genericError(with:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0342820;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  v6 = @"LAPreboardErrorDomain";
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v8 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v6 code:2 userInfo:isa];

  return v8;
}

id specialized static LACPreboardErrorBuilder.error(code:message:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0342820;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v7;
    *(inited + 48) = a2;
    *(inited + 56) = a3;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    v8 = @"LAPreboardErrorDomain";
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8 = @"LAPreboardErrorDomain";
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v8 code:a1 userInfo:v9.super.isa];

  return v10;
}

id specialized static LACPreboardErrorBuilder.notSupportedError()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0342820;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000015;
  *(inited + 56) = 0x80000001B03576D0;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  v2 = @"LAPreboardErrorDomain";
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v2 code:2 userInfo:isa];

  return v4;
}

BOOL specialized static LACPreboardErrorBuilder.hasCode(_:code:)(uint64_t a1, id a2)
{
  v3 = _convertErrorToNSError(_:)();
  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  v12 = [v3 code];

  return v12 == a2;
}

id specialized static LACPreboardErrorBuilder.error(code:underlyingError:)(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0342820;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v4;
    swift_getErrorValue();
    *(inited + 72) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    v6 = @"LAPreboardErrorDomain";
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6 = @"LAPreboardErrorDomain";
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v6 code:a1 userInfo:v7.super.isa];

  return v8;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static LACEvaluationRequestProcessorFactory.makeProcessor(withSubprocessors:)(uint64_t a1)
{
  v2 = type metadata accessor for LACEvaluationRequestCompoundProcessor();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = 0;
  v4 = &v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex];
  *v4 = 0;
  v4[8] = 1;
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors] = a1;
  v6.receiver = v3;
  v6.super_class = v2;

  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t protocol witness for LACPreboardLaunching.launchPreboard() in conformance LACPreboardLauncher()
{
  *(v1 + 144) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for LACPreboardLaunching.launchPreboard() in conformance LACPreboardLauncher, 0, 0);
}

{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = protocol witness for LACPreboardLaunching.launchPreboard() in conformance LACPreboardLauncher;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_17;
  v0[14] = v2;
  [v1 launchPreboardWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t protocol witness for LACPreboardLaunching.launchPreboard() in conformance LACPreboardLauncher(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

LACCompanionAuthenticationEnvironment __swiftcall LACCompanionAuthenticationEnvironment.init(featureAvailable:featureSupported:)(Swift::Bool featureAvailable, Swift::Bool featureSupported)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v4 initWithFeatureAvailable:featureAvailable featureSupported:featureSupported];
  result.isFeatureAvailable = v5;
  result.isFeatureSupported = HIBYTE(v5);
  return result;
}

id LACCompanionAuthenticationEnvironment.init(featureAvailable:featureSupported:)(char a1, char a2)
{
  *(v2 + OBJC_IVAR___LACCompanionAuthenticationEnvironment_isFeatureAvailable) = a1;
  *(v2 + OBJC_IVAR___LACCompanionAuthenticationEnvironment_isFeatureSupported) = a2;
  v4.super_class = LACCompanionAuthenticationEnvironment;
  return objc_msgSendSuper2(&v4, sel_init);
}

LACCompanionAuthenticationEnvironment __swiftcall LACCompanionAuthenticationEnvironment.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.isFeatureAvailable = v1;
  result.isFeatureSupported = HIBYTE(v1);
  return result;
}

unint64_t type metadata accessor for LACCompanionAuthenticationEnvironment()
{
  result = lazy cache variable for type metadata for LACCompanionAuthenticationEnvironment;
  if (!lazy cache variable for type metadata for LACCompanionAuthenticationEnvironment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACCompanionAuthenticationEnvironment);
  }

  return result;
}

Swift::Bool __swiftcall LACConcurrentEvaluationHelper.isConcurrentEvaluationEnabled(for:)(LACClientInfo a1)
{
  if ([v1 isClientAllowListedWithClientInfo_])
  {
    return 1;
  }

  else
  {
    return [v1 isConcurrentEvaluationEnabled];
  }
}

Swift::Bool __swiftcall LACConcurrentEvaluationHelper.isClientAllowListed(with:)(LACClientInfo with)
{
  isa = with.super.isa;
  v3 = [v1 allowList];
  v4 = *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_bundleIdentifiers];

  v5 = [(objc_class *)isa bundleId];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v13[0] = v7;
  v13[1] = v9;
  MEMORY[0x1EEE9AC00](v5);
  v12[2] = v13;
  v10 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, v4);

  return v10 & 1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
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

uint64_t LACPreboardStorage.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LACPreboardStorage.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return LACPreboardStorage.delegate.modify;
}

void LACPreboardStorage.delegate.modify(uint64_t a1, char a2)
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

char *LACPreboardStorage.init(secureStorage:sysUtility:)(uint64_t a1, uint64_t a2)
{
  UUID.init()();
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_storage] = a1;
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_sysUtility] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for LACPreboardStorage(0);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_storage];
  v7 = v5;
  [v6 setDelegate_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t type metadata accessor for LACPreboardStorage(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACPreboardStorage;
  if (!type metadata singleton initialization cache for LACPreboardStorage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Swift.AnyObject?, @unowned NSError?) -> () with result type Any?(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      ObjectType = swift_getObjectType();
      *&v12 = a2;
      outlined init with take of Any(&v12, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = *(*(v5 + 64) + 40);
    v10 = v15;
    *v9 = v14;
    v9[1] = v10;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }
}

uint64_t LACPreboardStorage.enableBatch(for:)()
{
  v1 = v0[5];
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(40);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1B2722A80](0xD000000000000016, 0x80000001B03577C0);
  MEMORY[0x1B2722A80](0xD000000000000011, 0x80000001B03577E0);
  MEMORY[0x1B2722A80](0x65737520726F6620, 0xEE00206573616320);
  v0[4] = v1;
  type metadata accessor for LACPreboardUseCase(0);
  _print_unlocked<A, B>(_:_:)();
  v3 = MEMORY[0x1B27229A0](v0[2], v0[3]);

  [v2 errorWithCode:-1000 debugDescription:v3];

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t LACPreboardStorage.exchange(data:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for Logger();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardStorage.exchange(data:for:), 0, 0);
}

uint64_t LACPreboardStorage.exchange(data:for:)()
{
  v1 = v0[38];
  v2 = *(v0[39] + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_storage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[45] = isa;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = LACPreboardStorage.exchange(data:for:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyypSgs5Error_pGMd, &_sSccyypSgs5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Swift.AnyObject?, @unowned NSError?) -> () with result type Any?;
  v0[13] = &block_descriptor_22;
  v0[14] = v4;
  [v2 setObject:isa forRequest:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = LACPreboardStorage.exchange(data:for:);
  }

  else
  {
    v2 = LACPreboardStorage.exchange(data:for:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 192);
  *(v0 + 144) = *(v0 + 176);
  *(v0 + 160) = v2;

  v4 = LACLogPreboard(v3);
  Logger.init(_:)();
  outlined init with copy of (String, Any)(v0 + 144, v0 + 208, &_sypSgMd, _sypSgMR);
  swift_unknownObjectRetain_n();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 352);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v11 = *(v0 + 304);
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
    v26 = v8;
    v14 = Optional.debugDescription.getter();
    v25 = v10;
    v16 = v15;
    outlined destroy of AsyncStream<()>.Continuation?(v0 + 208, &_sypSgMd, _sypSgMR);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    v18 = [v11 key];
    swift_unknownObjectRelease();
    *(v12 + 14) = v18;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1B0233000, v5, v6, "Did exchange data: %s for key: %ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B27246A0](v13, -1, -1);
    MEMORY[0x1B27246A0](v12, -1, -1);

    (*(v9 + 8))(v26, v25);
  }

  else
  {
    swift_unknownObjectRelease_n();

    outlined destroy of AsyncStream<()>.Continuation?(v0 + 208, &_sypSgMd, _sypSgMR);
    (*(v9 + 8))(v8, v10);
  }

  v19 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v19;
  if (*(v0 + 264))
  {
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = *(v0 + 272);
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = *(v0 + 280);
    }

    else
    {
      v22 = 0xF000000000000000;
    }
  }

  else
  {
    outlined destroy of AsyncStream<()>.Continuation?(v0 + 240, &_sypSgMd, _sypSgMR);
    v21 = 0;
    v22 = 0xF000000000000000;
  }

  v23 = *(v0 + 8);

  return v23(v21, v22);
}

uint64_t LACPreboardStorage.exchange(data:for:)(uint64_t a1)
{
  v2 = v1[45];
  v3 = v1[38];
  swift_willThrow();

  v4 = [v3 key];
  if (v4 == 13 && (v5 = objc_opt_self(), v6 = _convertErrorToNSError(_:)(), LODWORD(v5) = [v5 error:v6 hasCode:3], v6, v5) && (v4 = objc_msgSend(*(v1[39] + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_sysUtility), sel_hasPPL), v4))
  {
    v7 = v1[46];
    v8 = LACLogPreboard(v4);
    Logger.init(_:)();
    swift_unknownObjectRetain();
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v1[46];
    v14 = v1[38];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      v17 = v13;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      *(v15 + 12) = 2048;
      *(v15 + 14) = [v14 key];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0233000, v10, v11, "Data exchange returned error: %@ for key: %ld but we return nil for compatibility reasons", v15, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v16, -1, -1);
      MEMORY[0x1B27246A0](v15, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v1[41] + 8))(v1[43], v1[40]);

    v32 = v1[1];

    return v32(0, 0xF000000000000000);
  }

  else
  {
    v19 = v1[46];
    v20 = LACLogPreboard(v4);
    Logger.init(_:)();
    swift_unknownObjectRetain();
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v1[46];
      v25 = v1[38];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 134218242;
      *(v26 + 4) = [v25 key];
      swift_unknownObjectRelease();
      *(v26 + 12) = 2112;
      v28 = v24;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1B0233000, v22, v23, "Data exchange for key: %ld failed: %@", v26, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v27, -1, -1);
      MEMORY[0x1B27246A0](v26, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v1[41] + 8))(v1[42], v1[40]);
    swift_willThrow();

    v30 = v1[1];

    return v30();
  }
}

uint64_t LACPreboardStorage.enableVariable(for:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](LACPreboardStorage.enableVariable(for:), 0, 0);
}

{
  v2 = v1[27];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[24];
  swift_willThrow();
  outlined consume of Data._Representation(v3, v4);

  v6 = v1[1];

  return v6();
}

uint64_t LACPreboardStorage.enableVariable(for:)()
{
  v1 = specialized LACPreboardStorage.storageRequest(for:operation:)(v0[22]);
  v0[24] = v1;
  v2 = v1;
  v3 = v0[23];
  v0[25] = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #0 of LACPreboardStorage.enableVariable(for:));
  v0[26] = v4;
  v5 = *(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_storage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[27] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = LACPreboardStorage.enableVariable(for:);
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyypSgs5Error_pGMd, &_sSccyypSgs5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Swift.AnyObject?, @unowned NSError?) -> () with result type Any?;
  v0[13] = &block_descriptor_18;
  v0[14] = v7;
  [v5 setObject:isa forRequest:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = LACPreboardStorage.enableVariable(for:);
  }

  else
  {
    v2 = LACPreboardStorage.enableVariable(for:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[24];
  outlined consume of Data._Representation(v0[25], v0[26]);

  outlined destroy of AsyncStream<()>.Continuation?((v0 + 18), &_sypSgMd, _sypSgMR);
  v3 = v0[1];

  return v3();
}

uint64_t LACPreboardStorage.exchangeUPPSignature(for:useCase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](LACPreboardStorage.exchangeUPPSignature(for:useCase:), 0, 0);
}

uint64_t LACPreboardStorage.exchangeUPPSignature(for:useCase:)()
{
  v1 = v0[7];
  if (v1 == 3)
  {
    v2 = specialized LACPreboardStorage.storageRequest(for:operation:)(3);
    v0[9] = v2;
    v3 = v2;
    v5 = v0[5];
    v4 = v0[6];
    v6 = objc_opt_self();
    v7 = MEMORY[0x1B27229A0](v5, v4);
    v8 = [v6 createUPPControlForTeamID_];

    if (v8)
    {
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v0[10] = v9;
      v0[11] = v11;
      v12 = v3;
      v13 = swift_task_alloc();
      v0[12] = v13;
      *v13 = v0;
      v13[1] = LACPreboardStorage.exchangeUPPSignature(for:useCase:);

      return LACPreboardStorage.exchange(data:for:)(v9, v11, v12);
    }

    v18 = objc_opt_self();
    v19 = MEMORY[0x1B27229A0](0xD00000000000001DLL, 0x80000001B0357850);
    [v18 errorWithCode:-1000 debugDescription:v19];

    swift_willThrow();
  }

  else
  {
    v15 = objc_opt_self();
    _StringGuts.grow(_:)(40);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x1B2722A80](0xD000000000000016, 0x80000001B03577C0);
    MEMORY[0x1B2722A80](0xD000000000000022, 0x80000001B0357820);
    MEMORY[0x1B2722A80](0x65737520726F6620, 0xEE00206573616320);
    v0[4] = v1;
    type metadata accessor for LACPreboardUseCase(0);
    _print_unlocked<A, B>(_:_:)();
    v16 = MEMORY[0x1B27229A0](v0[2], v0[3]);

    [v15 errorWithCode:-1000 debugDescription:v16];

    swift_willThrow();
  }

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[9];
  outlined consume of Data._Representation(v0[10], v0[11]);

  v2 = v0[1];
  v4 = v0[14];
  v3 = v0[15];

  return v2(v3, v4);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  outlined consume of Data._Representation(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t LACPreboardStorage.exchangeUPPSignature(for:useCase:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = LACPreboardStorage.exchangeUPPSignature(for:useCase:);
  }

  else
  {

    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = LACPreboardStorage.exchangeUPPSignature(for:useCase:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

id LACPreboardStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACPreboardStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACPreboardStorage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for LACPreboardStorageType.delegate.modify in conformance LACPreboardStorage(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  return protocol witness for LACPreboardStorageType.delegate.modify in conformance LACPreboardStorage;
}

void protocol witness for LACPreboardStorageType.delegate.modify in conformance LACPreboardStorage(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for LACPreboardStorageType.batchOptions(for:) in conformance LACPreboardStorage(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.batchOptions(for:);

  return v7(a1);
}

uint64_t protocol witness for LACPreboardStorageType.clean(for:) in conformance LACPreboardStorage(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v7(a1);
}

uint64_t protocol witness for LACPreboardStorageType.enableBatch(for:) in conformance LACPreboardStorage(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v7(a1);
}

uint64_t protocol witness for LACPreboardStorageType.enableVariable(for:) in conformance LACPreboardStorage(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v7(a1);
}

uint64_t protocol witness for LACPreboardStorageType.exchangeUPPSignature(for:useCase:) in conformance LACPreboardStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xB0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for LACPreboardStorageType.exchangeUPPSignature(for:useCase:) in conformance LACPreboardStorage;

  return v11(a1, a2, a3);
}

uint64_t protocol witness for LACPreboardStorageType.exchangeUPPSignature(for:useCase:) in conformance LACPreboardStorage(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t LACPreboardStorage.acmContext(for:)(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for UUID();
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - v13;
  if (!(*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))(v12))
  {
    goto LABEL_10;
  }

  v16 = v15;
  ObjectType = swift_getObjectType();
  v33 = (*(v16 + 8))(v1, &protocol witness table for LACPreboardStorage, ObjectType, v16);
  v19 = v18;
  swift_unknownObjectRelease();
  if (v19 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v31 = v11;
  v20 = v36;
  (*(v36 + 16))(v14, v2 + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_uuid, v3);
  (*(v20 + 56))(v14, 0, 1, v3);
  v21 = *(v5 + 48);
  outlined init with copy of (String, Any)(v14, v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v32 = v21;
  outlined init with copy of (String, Any)(v35, &v7[v21], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(v20 + 48);
  if (v22(v7, 1, v3) != 1)
  {
    v23 = v31;
    outlined init with copy of (String, Any)(v7, v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v22(&v7[v32], 1, v3) != 1)
    {
      v27 = v36;
      v28 = v34;
      (*(v36 + 32))(v34, &v7[v32], v3);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      LODWORD(v35) = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v27 + 8);
      v29(v28, v3);
      outlined destroy of AsyncStream<()>.Continuation?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v29(v23, v3);
      outlined destroy of AsyncStream<()>.Continuation?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v35)
      {
        return v33;
      }

      outlined consume of Data?(v33, v19);
LABEL_10:
      v24 = objc_opt_self();
      v25 = MEMORY[0x1B27229A0](0x63204D4341206F4ELL, 0xEE00747865746E6FLL);
      [v24 errorWithCode:-1000 debugDescription:v25];

      return swift_willThrow();
    }

    outlined consume of Data?(v33, v19);
    outlined destroy of AsyncStream<()>.Continuation?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v36 + 8))(v23, v3);
LABEL_9:
    outlined destroy of AsyncStream<()>.Continuation?(v7, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_10;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v22(&v7[v32], 1, v3) != 1)
  {
    outlined consume of Data?(v33, v19);
    goto LABEL_9;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v33;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

id specialized LACPreboardStorage.storageRequest(for:operation:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 4)
  {
    v7 = &LACStorageKeyDeveloperMode;
LABEL_5:
    v8 = *v7;
    (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_uuid);
    v9 = objc_allocWithZone(type metadata accessor for LACPreboardStorageRequest(0));
    return LACPreboardStorageRequest.init(for:contextID:options:)(v8, v6, 0);
  }

  if (a1 == 3)
  {
    v7 = &LACStorageKeyUPP;
    goto LABEL_5;
  }

  v11 = objc_opt_self();
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x1B2722A80](0xD00000000000001DLL, 0x80000001B0357910);
  v13[1] = a1;
  type metadata accessor for LACPreboardUseCase(0);
  _print_unlocked<A, B>(_:_:)();
  v12 = MEMORY[0x1B27229A0](v14, v15);

  [v11 errorWithCode:-1000 debugDescription:v12];

  return swift_willThrow();
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t type metadata completion function for LACPreboardStorage(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of LACPreboardStorage.batchOptions(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.batchOptions(for:);

  return v7(a1);
}

uint64_t dispatch thunk of LACPreboardStorage.clean(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v7(a1);
}

uint64_t dispatch thunk of LACPreboardStorage.enableBatch(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v7(a1);
}

uint64_t dispatch thunk of LACPreboardStorage.enableVariable(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v7(a1);
}

uint64_t dispatch thunk of LACPreboardStorage.exchangeUPPSignature(for:useCase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xB0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of LACPreboardStorageType.exchangeUPPSignature(for:useCase:);

  return v11(a1, a2, a3);
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

void specialized LACPreboardPasscodeVerifier.verifyPasscode(_:in:)()
{
  v14 = type metadata accessor for Logger();
  v0 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = Data._bridgeToObjectiveC()().super.isa;
  v5 = Data._bridgeToObjectiveC()().super.isa;
  v6 = MKBVerifyPasswordWithContext();

  if (v6)
  {
    v8 = LACLogPreboard(v7);
    Logger.init(_:)();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v6;
      _os_log_impl(&dword_1B0233000, v9, v10, "Passcode verification failed with code: %d", v11, 8u);
      MEMORY[0x1B27246A0](v11, -1, -1);
    }

    (*(v0 + 8))(v2, v14);
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v15 = 0xD00000000000001FLL;
    v16 = 0x80000001B0357970;
    v17 = v6;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2722A80](v12);

    specialized static LACPreboardErrorBuilder.error(code:message:)(0, v15, v16);

    swift_willThrow();
  }
}

id LACFileAttribute.nsFileAttribute.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      v5 = *MEMORY[0x1E696A370];
      *(a1 + 24) = MEMORY[0x1E69E75F8];
      *a1 = a2;
      return v5;
    }

    v3 = MEMORY[0x1E696A320];
  }

  else
  {
    v3 = MEMORY[0x1E696A358];
  }

  v4 = *v3;
  *(a1 + 24) = MEMORY[0x1E69E6810];
  *a1 = a2;
  return v4;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LACFileAttribute(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LACFileAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id LACOnenessController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:uiPresenter:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAuthenticator:a1 clientInfoProvider:a2 environmentProvider:a3 sessionMonitor:a4 uiPresenter:a5 replyQueue:a6];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v7;
}

{
  *(v6 + OBJC_IVAR___LACOnenessController_uiPresenter) = a5;
  v14.super_class = LACOnenessController;
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v14, sel_initWithAuthenticator_clientInfoProvider_environmentProvider_sessionMonitor_replyQueue_, a1, a2, a3, a4, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

void LACOnenessController.canAuthenticateRequest(_:availabilityError:)(void *a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Logger();
  v53 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v52 - v9;
  if (a2)
  {
    v11 = _convertErrorToNSError(_:)();
  }

  else
  {
    v11 = 0;
  }

  v55.receiver = v2;
  v55.super_class = LACOnenessController;
  v56[0] = 0;
  v12 = objc_msgSendSuper2(&v55, sel_canAuthenticateRequest_availabilityError_error_, a1, v11, v56);

  if (!v12)
  {
    v21 = v56[0];
    _convertNSErrorToError(_:)();

    goto LABEL_13;
  }

  v52 = v5;
  v13 = v56[0];
  v14 = [a1 options];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = 1084;
  type metadata accessor for LACPolicyOption(0);
  lazy protocol witness table accessor for type LACPolicyOption and conformance LACPolicyOption();
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v56), (v18 & 1) == 0))
  {

    outlined destroy of AnyHashable(v56);
LABEL_15:
    v57 = 0u;
    v58 = 0u;
    goto LABEL_16;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, &v57);
  outlined destroy of AnyHashable(v56);

  if (!*(&v58 + 1))
  {
LABEL_16:
    outlined destroy of AsyncStream<()>.Continuation?(&v57, &_sypSgMd, _sypSgMR);
    goto LABEL_17;
  }

  if (swift_dynamicCast() && (v56[0] & 1) != 0)
  {
    v19 = objc_opt_self();
    v20 = MEMORY[0x1B27229A0](0xD000000000000053, 0x80000001B0357990);
    [v19 errorWithCode:-1 subcode:33 debugDescription:v20];

LABEL_13:
    swift_willThrow();
    return;
  }

LABEL_17:
  if (a2)
  {
    v56[0] = a2;
    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v23 = v57;
      v24 = objc_opt_self();
      v25 = v23;
      v26 = _convertErrorToNSError(_:)();

      LODWORD(v24) = [v24 error:v26 hasCode:-1004];
      if (v24)
      {
        v27 = specialized LACOnenessController.isContinuityUnlockAvailable(nonInteractiveError:)(v25);
        if (!v27)
        {
          v30 = LACLogABM(v27);
          Logger.init(_:)();
          swift_unknownObjectRetain_n();
          v31 = v25;
          v32 = v2;
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.default.getter();

          v35 = os_log_type_enabled(v33, v34);
          v36 = v52;
          if (v35)
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            *v37 = 138543874;
            *(v37 + 4) = v32;
            *v38 = v32;
            *(v37 + 12) = 1026;
            v39 = v32;
            v40 = [a1 identifier];
            swift_unknownObjectRelease();
            *(v37 + 14) = v40;
            swift_unknownObjectRelease();
            *(v37 + 18) = 2112;
            *(v37 + 20) = v31;
            v38[1] = v31;
            v41 = v31;
            _os_log_impl(&dword_1B0233000, v33, v34, "%{public}@ Continuity unlock not available for request: %{public}u error: %@", v37, 0x1Cu);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            MEMORY[0x1B27246A0](v38, -1, -1);
            MEMORY[0x1B27246A0](v37, -1, -1);
          }

          else
          {

            swift_unknownObjectRelease_n();
          }

          (*(v53 + 8))(v8, v36);
          goto LABEL_13;
        }

        v28 = specialized LACOnenessController.isRequestSatisfiable(with:)(v25);
        v29 = v52;
        if ((v28 & 1) == 0)
        {
          v42 = LACLogABM(v28);
          Logger.init(_:)();
          swift_unknownObjectRetain_n();
          v43 = v25;
          v44 = v2;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *v47 = 138543874;
            *(v47 + 4) = v44;
            *v48 = v44;
            *(v47 + 12) = 1026;
            v49 = v44;
            v50 = [a1 identifier];
            swift_unknownObjectRelease();
            *(v47 + 14) = v50;
            swift_unknownObjectRelease();
            *(v47 + 18) = 2112;
            *(v47 + 20) = v43;
            v48[1] = v43;
            v51 = v43;
            _os_log_impl(&dword_1B0233000, v45, v46, "%{public}@ Continuity unlock not satisfiable for request: %{public}u error: %@", v47, 0x1Cu);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            MEMORY[0x1B27246A0](v48, -1, -1);
            MEMORY[0x1B27246A0](v47, -1, -1);
          }

          else
          {

            swift_unknownObjectRelease_n();
          }

          (*(v53 + 8))(v10, v29);
          goto LABEL_13;
        }
      }
    }
  }
}

void LACOnenessController.postProcessRequest(_:result:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = a3;
  v11[5] = a4;
  aBlock[4] = partial apply for closure #1 in LACOnenessController.postProcessRequest(_:result:completion:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  aBlock[3] = &block_descriptor_19;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v13.receiver = v5;
  v13.super_class = LACOnenessController;
  objc_msgSendSuper2(&v13, sel_postProcessRequest_result_completion_, a1, a2, v12);
  _Block_release(v12);
}

void closure #1 in LACOnenessController.postProcessRequest(_:result:completion:)(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 options];
  if (!v13)
  {
    goto LABEL_10;
  }

  v37 = v10;
  v14 = v13;
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = 1039;
  AnyHashable.init<A>(_:)();
  if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v17 & 1) == 0))
  {

    outlined destroy of AnyHashable(aBlock);
LABEL_10:
    v40 = 0u;
    v41 = 0u;
    goto LABEL_11;
  }

  outlined init with copy of Any(*(v15 + 56) + 32 * v16, &v40);
  outlined destroy of AnyHashable(aBlock);

  if (!*(&v41 + 1))
  {
LABEL_11:
    outlined destroy of AsyncStream<()>.Continuation?(&v40, &_sypSgMd, _sypSgMR);
    goto LABEL_12;
  }

  v18 = swift_dynamicCast();
  if (v18 && (aBlock[0] & 1) != 0)
  {
    v19 = LACLogABM(v18);
    Logger.init(_:)();

    swift_unknownObjectRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v22 = 138543618;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v22 + 4) = Strong;
      v24 = v36;
      *v36 = Strong;
      *(v22 + 12) = 1026;
      *(v22 + 14) = [a2 identifier];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0233000, v20, v21, "%{public}@ Skipping presentation of failure UI for rid: %{public}u. No failure UI option.", v22, 0x12u);
      outlined destroy of AsyncStream<()>.Continuation?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v24, -1, -1);
      MEMORY[0x1B27246A0](v22, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v37 + 8))(v12, v9);
    goto LABEL_17;
  }

LABEL_12:
  v25 = [a1 error];
  if (!v25)
  {
LABEL_17:
    a4(a1);
    return;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = _convertErrorToNSError(_:)();
  LODWORD(v27) = [v27 error:v28 hasCode:-1 subcode:33];

  if (!v27)
  {

    goto LABEL_17;
  }

  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 uiPresenter];

    v32 = swift_allocObject();
    v32[2] = a4;
    v32[3] = a5;
    v32[4] = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in LACOnenessController.postProcessRequest(_:result:completion:);
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_20_0;
    v33 = _Block_copy(aBlock);

    v34 = a1;

    [v31 presentUIForIdentifier:3 request:a2 completion:v33];
    swift_unknownObjectRelease();

    _Block_release(v33);
  }

  else
  {
  }
}

id LACOnenessController.mapError(_:)(uint64_t a1)
{
  v2 = _convertErrorToNSError(_:)();
  v12.receiver = v1;
  v12.super_class = LACOnenessController;
  v3 = objc_msgSendSuper2(&v12, sel_mapError_, v2);

  v4 = objc_opt_self();
  v5 = _convertErrorToNSError(_:)();
  v6 = [v4 error:v5 hasCode:-1004];

  if (v6)
  {
    v7 = _convertErrorToNSError(_:)();
    if (specialized LACOnenessController.isRequestSatisfiable(with:)(v7))
    {
      if (specialized LACOnenessController.isContinuityUnlockAvailable(nonInteractiveError:)(v7))
      {
LABEL_7:

        return v3;
      }

      v8 = MEMORY[0x1B27229A0](0xD000000000000041, 0x80000001B0357A50);
      v9 = [v4 errorWithCode:-11 debugDescription:v8];
    }

    else
    {
      v8 = MEMORY[0x1B27229A0](0xD000000000000059, 0x80000001B03579F0);
      v9 = [v4 errorWithCode:-1 subcode:33 debugDescription:v8];
    }

    v10 = v9;

    v7 = v3;
    v3 = v10;
    goto LABEL_7;
  }

  return v3;
}

id LACOnenessController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAuthenticator:a1 clientInfoProvider:a2 environmentProvider:a3 sessionMonitor:a4 replyQueue:a5];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

BOOL specialized LACOnenessController.isContinuityUnlockAvailable(nonInteractiveError:)(void *a1)
{
  v1 = [a1 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  outlined init with copy of Any(*(v2 + 56) + 32 * v5, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v8 = v16;
LABEL_8:
  v9 = *(v8 + 16);
  v10 = 32;
  do
  {
    v11 = v9;
    if (v9-- == 0)
    {
      break;
    }

    v13 = *(v8 + v10);
    v10 += 8;
  }

  while (v13 != 13);
  v14 = v11 != 0;

  return v14;
}

id specialized LACOnenessController.isRequestSatisfiable(with:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = _convertErrorToNSError(_:)();
  v8 = [v6 mechanismTreeFromError_];

  if (v8)
  {
    v10 = [v8 isSatisfiableWithValue_];
  }

  else
  {
    v11 = LACLogABM(v9);
    Logger.init(_:)();
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = [v12 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = Dictionary.description.getter();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1B0233000, v13, v14, "Could not parse tree: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B27246A0](v16, -1, -1);
      MEMORY[0x1B27246A0](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type LACPolicyOption and conformance LACPolicyOption()
{
  result = lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption;
  if (!lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption)
  {
    type metadata accessor for LACPolicyOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption);
  }

  return result;
}

uint64_t objectdestroy_2Tm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t static LACLocalization.faceID()(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = MEMORY[0x1B27229A0](a1, a2);
  v6 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v7 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v8 = [ObjCClassFromMetadata localizedStringWithKey:v5 value:v6 tableSuffix:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

uint64_t static LACLocalization.errorAuthenticationFailure()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000016, 0x80000001B0357BE0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorAuthenticationCanceled()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000017, 0x80000001B0357C00);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryNotAvailable()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000016, 0x80000001B0357C20);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryNotEnrolled()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000015, 0x80000001B0357C40);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryLockedOut()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000013, 0x80000001B0357C60);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorPasscodeNotSet()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001ALL, 0x80000001B0357C80);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorNotInteractive()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001ALL, 0x80000001B0357CA0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryNotPaired()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001DLL, 0x80000001B0357CC0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryDisconnected()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000020, 0x80000001B0357CE0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorInvalidDimensions()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001DLL, 0x80000001B0357D10);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorRecoveryUserNotFound()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000020, 0x80000001B0357D30);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorTimeout()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000013, 0x80000001B0357D60);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorDenied()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000012, 0x80000001B0357D80);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorOperationNotAllowed()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001FLL, 0x80000001B0357DA0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorNoAuthenticationRequired()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000024, 0x80000001B0357DC0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryDeniedForApp()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000020, 0x80000001B0357DF0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorNotFound()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000014, 0x80000001B0357E20);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorCompanionNotAvailable()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000021, 0x80000001B0357E40);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

id static LACLocalization.dtoSecurityDelayEndedText(_:duration:)(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 <= 0.0)
  {

    return a1;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v6 setUnitsStyle_];
  result = [v6 stringFromTimeInterval_];
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, _ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B0342810;
    v13 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = v9;
    *(v12 + 80) = v11;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v16 = MEMORY[0x1B27229A0](0xD00000000000001DLL, 0x80000001B0357E70);
    v17 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
    v18 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
    v19 = [ObjCClassFromMetadata localizedStringWithKey:v16 value:v17 tableSuffix:v18];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a1 = String.init(format:_:)();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t static LACLocalization.dtoErrorPasscodeNotSet()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001ALL, 0x80000001B0357E90);
  v2 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v3 tableSuffix:v2];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.dtoErrorBiometryNotEnrolled()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001FLL, 0x80000001B0357EB0);
  v2 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v3 tableSuffix:v2];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.dtoErrorDeviceTypeNotSupported()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000023, 0x80000001B0357ED0);
  v2 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v3 tableSuffix:v2];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC_SD6ValuesVySSAF_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC23LocalAuthenticationCore012LACCompanionI24ControllerPendingRequestC_Tt1g5Tm(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of [UUID : LACCompanionAuthenticationControllerPendingRequest].Iterator._Variant(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t LACDTOPendingPolicyEvaluationStore.pendingEvaluationsDict.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);
  *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict) = a1;

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt1g5(v4, a1);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(result);
    v9 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup);
    v10 = swift_allocObject();
    v10[2] = v1;
    v10[3] = v8;
    v10[4] = ObjectType;
    v11 = *(*v9 + 120);
    v12 = v1;
    v11(&closure #1 in LACDTOPendingPolicyEvaluationStore.persist()partial apply, v10);
  }

  return result;
}

void *LACDTOPendingPolicyEvaluationStore.pendingEvaluations.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC23LocalAuthenticationCore012LACCompanionI24ControllerPendingRequestC_Tt1g5Tm(*(v1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v7, v3 + 4, v2, v1);
  v5 = v7;

  outlined consume of [UUID : LACCompanionAuthenticationControllerPendingRequest].Iterator._Variant(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

id LACDTOPendingPolicyEvaluationStore.__allocating_init(persistentStore:workQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v2);
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup;
  type metadata accessor for SerialTask(0);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  SerialTask.start()();
  *&v6[v7] = v8;
  v11 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict;
  *&v6[v11] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_store] = a1;
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_workQueue] = a2;
  v13.receiver = v6;
  v13.super_class = v3;
  return objc_msgSendSuper2(&v13, sel_init);
}

id LACDTOPendingPolicyEvaluationStore.init(persistentStore:workQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup;
  type metadata accessor for SerialTask(0);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  SerialTask.start()();
  *&v3[v6] = v7;
  v10 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict;
  *&v3[v10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_store] = a1;
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_workQueue] = a2;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for LACDTOPendingPolicyEvaluationStore();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a1;
  v9[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:), v9);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[25] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:), 0, 0);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xA0);
    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[35] = v3;
    *v3 = v0;
    v3[1] = closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:);

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[36];
    v3 = v0[33];
    v4 = v0[30];
    v15 = v0[32];
    v16 = v0[31];
    v5 = v0[28];
    v6 = v0[29];
    v8 = v0[26];
    v7 = v0[27];
    v9 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_workQueue);

    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v7;
    v10[4] = v2;
    v0[12] = partial apply for closure #1 in closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:);
    v0[13] = v10;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[11] = &block_descriptor_70;
    v11 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[24] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B2722CF0](0, v3, v4, v11);
    _Block_release(v11);

    (*(v6 + 8))(v4, v5);
    (*(v15 + 8))(v3, v16);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 264);
    v4 = *(v0 + 240);
    v16 = *(v0 + 256);
    v17 = *(v0 + 248);
    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    v9 = Strong;
    v15 = *(Strong + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_workQueue);

    v10 = swift_allocObject();
    v10[2] = v7;
    v10[3] = v8;
    v10[4] = v2;
    *(v0 + 48) = partial apply for closure #2 in closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:);
    *(v0 + 56) = v10;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(v0 + 40) = &block_descriptor_20;
    v11 = _Block_copy((v0 + 16));

    v12 = v2;
    static DispatchQoS.unspecified.getter();
    *(v0 + 184) = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B2722D20](0, v3, v4, v11);
    _Block_release(v11);

    (*(v6 + 8))(v4, v5);
    (*(v16 + 8))(v3, v17);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v4 = closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:);
  }

  else
  {

    v4 = closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ()(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t LACDTOPendingPolicyEvaluationStore.load()()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACDTOPendingPolicyEvaluationStore.load(), 0, 0);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = LACDTOPendingPolicyEvaluationStore.load();
  }

  else
  {
    v2 = LACDTOPendingPolicyEvaluationStore.load();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LACDTOPendingPolicyEvaluationStore.load()(uint64_t a1)
{
  v2 = LACLogDTOEvaluation(a1);
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Loading pending evaluations", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v6 = v1[7];
  v7 = v1[4];
  v8 = v1[5];

  v9 = *(v8 + 8);
  v1[8] = v9;
  v9(v6, v7);
  ObjectType = swift_getObjectType();
  v11 = swift_task_alloc();
  v1[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
  v13 = lazy protocol witness table accessor for type [LACDTOMutablePendingPolicyEvaluation] and conformance <A> [A](&lazy protocol witness table cache variable for type [LACDTOMutablePendingPolicyEvaluation] and conformance <A> [A], &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation, &protocol conformance descriptor for LACDTOMutablePendingPolicyEvaluation, MEMORY[0x1E69E6330]);
  *v11 = v1;
  v11[1] = LACDTOPendingPolicyEvaluationStore.load();

  return LACPersistentStore.object<A>(forKey:)((v1 + 2), 0xD000000000000012, 0x80000001B0354A00, ObjectType, v12, v13);
}

{
  v21 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = LACLogDTOEvaluation(a1);
    Logger.init(_:)();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v1[8];
    v8 = v1[6];
    v9 = v1[4];
    if (v6)
    {
      v19 = v1[8];
      v10 = swift_slowAlloc();
      v18 = v8;
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      v12 = type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
      v13 = MEMORY[0x1B2722B60](v2, v12);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1B0233000, v4, v5, "Loaded pending evaluations %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B27246A0](v11, -1, -1);
      MEMORY[0x1B27246A0](v10, -1, -1);

      v19(v18, v9);
    }

    else
    {

      v7(v8, v9);
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v16 = v1[1];

  return v16(v2);
}

uint64_t @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load();

  return LACDTOPendingPolicyEvaluationStore.load()();
}

uint64_t @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load()(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

Swift::Void __swiftcall LACDTOPendingPolicyEvaluationStore.persistEvaluations()()
{
  ObjectType = swift_getObjectType();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  v3 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup);
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v2;
  v4[4] = ObjectType;
  v5 = *(*v3 + 120);
  v6 = v0;
  v5(&async function pointer to partial apply for closure #1 in LACDTOPendingPolicyEvaluationStore.persist(), v4);
}

uint64_t LACDTOPendingPolicyEvaluationStore.addPendingEvaluation(_:)(char *a1)
{
  v2 = v1;
  v4 = *&a1[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier];
  v5 = *&a1[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier + 8];
  v6 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v4, v5, isUniquelyReferenced_nonNull_native);

  return LACDTOPendingPolicyEvaluationStore.pendingEvaluationsDict.setter(v6);
}

void *LACDTOPendingPolicyEvaluationStore.pendingEvaluation(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = *(*(v3 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

Swift::Void __swiftcall LACDTOPendingPolicyEvaluationStore.removePendingEvaluation(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);

  LACDTOPendingPolicyEvaluationStore.pendingEvaluationsDict.setter(v4);
}

id LACDTOPendingPolicyEvaluationStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACDTOPendingPolicyEvaluationStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACDTOPendingPolicyEvaluationStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.persist()(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in LACDTOPendingPolicyEvaluationStore.persist(), 0, 0);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.persist()()
{
  v1 = v0[4];
  ObjectType = swift_getObjectType();
  v0[2] = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
  v5 = lazy protocol witness table accessor for type [LACDTOMutablePendingPolicyEvaluation] and conformance <A> [A](&lazy protocol witness table cache variable for type [LACDTOMutablePendingPolicyEvaluation] and conformance <A> [A], &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation, &protocol conformance descriptor for LACDTOMutablePendingPolicyEvaluation, MEMORY[0x1E69E6300]);
  *v3 = v0;
  v3[1] = closure #1 in LACDTOPendingPolicyEvaluationStore.persist();

  return LACPersistentStore.set<A>(object:for:)((v0 + 2), 0xD000000000000012, 0x80000001B0354A00, ObjectType, v4, v5);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #1 in LACDTOPendingPolicyEvaluationStore.persist();
  }

  else
  {
    v2 = closure #1 in LACDTOPendingPolicyEvaluationStore.persist();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.persist()(uint64_t a1)
{
  v19 = v1;
  v2 = LACLogDTOEvaluation(a1);
  Logger.init(_:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[8];
  v7 = v1[5];
  v8 = v1[6];
  if (v5)
  {
    v9 = v1[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
    v13 = MEMORY[0x1B2722B60](v9, v12);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1B0233000, v3, v4, "Persisted pending evaluations %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B27246A0](v11, -1, -1);
    MEMORY[0x1B27246A0](v10, -1, -1);
  }

  (*(v8 + 8))(v6, v7);

  v16 = v1[1];

  return v16();
}

{
  v2 = v1[10];
  v3 = LACLogDTOEvaluation(a1);
  Logger.init(_:)();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[10];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B0233000, v5, v6, "Failed to persist pending evaluations with error %{public}@", v9, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v10, -1, -1);
    MEMORY[0x1B27246A0](v9, -1, -1);
  }

  else
  {
  }

  (*(v1[6] + 8))(v1[7], v1[5]);

  v13 = v1[1];

  return v13();
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        return;
      }
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
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of AsyncStream<()>.Continuation?(a3, &_sScPSgMd, &_sScPSgMR);

    return v21;
  }

LABEL_8:
  outlined destroy of AsyncStream<()>.Continuation?(a3, &_sScPSgMd, &_sScPSgMR);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC23LocalAuthenticationCore012LACCompanionI24ControllerPendingRequestC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
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

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v8);
  *v3 = v8;
  return v9;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v10 = v9;
      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + v3);
        v18 = (v16 + v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMd, &_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGGMd, &_ss18_DictionaryStorageCySSSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
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
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
        goto LABEL_27;
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

LABEL_27:
  __break(1u);
  return result;
}

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
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
        goto LABEL_27;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in LACDTOPendingPolicyEvaluationStore.persist()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #1 in LACDTOPendingPolicyEvaluationStore.persist()(v2, v3);
}

uint64_t dispatch thunk of LACDTOPendingPolicyEvaluationStore.load()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of LACDTOPendingPolicyEvaluationStore.load();

  return v5();
}

uint64_t dispatch thunk of LACDTOPendingPolicyEvaluationStore.load()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t partial apply for @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load()(v2, v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t objectdestroy_2Tm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_8Tm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t lazy protocol witness table accessor for type [LACDTOMutablePendingPolicyEvaluation] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
    lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation(a2, type metadata accessor for LACDTOMutablePendingPolicyEvaluation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_62Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

LocalAuthenticationCore::LACConcurrentEvaluationAllowListBundleID_optional __swiftcall LACConcurrentEvaluationAllowListBundleID.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LACConcurrentEvaluationAllowListBundleID.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t LACConcurrentEvaluationAllowListBundleID.rawValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LACConcurrentEvaluationAllowListBundleID(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "com.apple.iWork.Keynote";
  v4 = 0xD000000000000015;
  if (v2 == 1)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v2 == 1)
  {
    v6 = "com.apple.iWork.Keynote";
  }

  else
  {
    v6 = "com.apple.iWork.Numbers";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ler.osinstallersetupd";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = "com.apple.iWork.Numbers";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ler.osinstallersetupd";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LACConcurrentEvaluationAllowListBundleID()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LACConcurrentEvaluationAllowListBundleID(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACConcurrentEvaluationAllowListBundleID()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LACConcurrentEvaluationAllowListBundleID(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "com.apple.iWork.Keynote";
  v4 = 0xD000000000000015;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = "com.apple.iWork.Numbers";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ler.osinstallersetupd";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t LACConcurrentEvaluationAllowListBinaryPath.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LACConcurrentEvaluationAllowListBinaryPath.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LACConcurrentEvaluationAllowListBinaryPath()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACConcurrentEvaluationAllowListBinaryPath()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LACConcurrentEvaluationAllowListBinaryPath@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance LACConcurrentEvaluationAllowListBinaryPath, *a1);

  *a2 = v3 != 0;
  return result;
}

id LACConcurrentEvaluationAllowList.__allocating_init(bundleIdentifiers:binaryPaths:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_bundleIdentifiers] = a1;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_binaryPaths] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id LACConcurrentEvaluationAllowList.init(bundleIdentifiers:binaryPaths:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_bundleIdentifiers] = a1;
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_binaryPaths] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LACConcurrentEvaluationAllowList();
  return objc_msgSendSuper2(&v4, sel_init);
}

id LACConcurrentEvaluationAllowList.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACConcurrentEvaluationAllowList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACConcurrentEvaluationAllowList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static LACConcurrentEvaluationAllowList.default.getter()
{
  v0 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v1 = v21;
  v3 = *(v21 + 16);
  v2 = *(v21 + 24);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1);
    v1 = v21;
    v2 = *(v21 + 24);
    v4 = v2 >> 1;
  }

  *(v1 + 16) = v5;
  v6 = v1 + 16 * v3;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x80000001B03542F0;
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 2, 1);
    v1 = v21;
  }

  *(v1 + 16) = v7;
  v8 = v1 + 16 * v5;
  *(v8 + 32) = 0xD000000000000017;
  *(v8 + 40) = 0x80000001B0354310;
  v9 = *(v1 + 24);
  v10 = v3 + 3;
  if ((v3 + 3) > (v9 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v3 + 3, 1);
  }

  v11 = v21;
  *(v21 + 16) = v10;
  v12 = v11 + 16 * v7;
  *(v12 + 32) = 0xD000000000000015;
  *(v12 + 40) = 0x80000001B0354330;
  v21 = v0;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v13 = v0;
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  if (v15 >= v14 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    v13 = v21;
  }

  *(v13 + 16) = v15 + 1;
  v16 = v13 + 16 * v15;
  *(v16 + 32) = 0xD000000000000015;
  *(v16 + 40) = 0x80000001B0354350;
  v17 = type metadata accessor for LACConcurrentEvaluationAllowList();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_bundleIdentifiers] = v11;
  *&v18[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_binaryPaths] = v13;
  v20.receiver = v18;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, sel_init);
}

unint64_t lazy protocol witness table accessor for type LACConcurrentEvaluationAllowListBundleID and conformance LACConcurrentEvaluationAllowListBundleID()
{
  result = lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBundleID and conformance LACConcurrentEvaluationAllowListBundleID;
  if (!lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBundleID and conformance LACConcurrentEvaluationAllowListBundleID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBundleID and conformance LACConcurrentEvaluationAllowListBundleID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LACConcurrentEvaluationAllowListBinaryPath and conformance LACConcurrentEvaluationAllowListBinaryPath()
{
  result = lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBinaryPath and conformance LACConcurrentEvaluationAllowListBinaryPath;
  if (!lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBinaryPath and conformance LACConcurrentEvaluationAllowListBinaryPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBinaryPath and conformance LACConcurrentEvaluationAllowListBinaryPath);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [LACConcurrentEvaluationAllowListBundleID] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LACConcurrentEvaluationAllowListBundleID(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LACConcurrentEvaluationAllowListBundleID(uint64_t result, unsigned int a2, unsigned int a3)
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

id LACPreboardACMContextProviderFactory.makeProvider()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LACACMContextProvider();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(LACACMHelper) init];
  if (result)
  {
    *(v3 + 16) = result;
    v5 = &protocol witness table for LACACMContextProvider;
  }

  else
  {
    result = swift_deallocPartialClassInstance();
    v3 = 0;
    v2 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v2;
  a1[4] = v5;
  return result;
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = deserializeParameters(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = deserializeParameters(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t getRequirementDataSizeForVersion(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    getRequirementDataSizeForVersion_cold_2();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    getRequirementDataSizeForVersion_cold_1();
  }

  return qword_1B0343CD8[v2];
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return getLengthOfParameters(a2, a3, &a11);
}

__n128 OUTLINED_FUNCTION_12_0(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

uint64_t deserializeParameters(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  p_opt_inst_meths = &OBJC_PROTOCOL___LACGlobalDomainDTO.opt_inst_meths;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = checkParameter(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      p_opt_inst_meths = (&OBJC_PROTOCOL___LACGlobalDomainDTO + 40);
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  p_opt_inst_meths = (&OBJC_PROTOCOL___LACGlobalDomainDTO + 40);
LABEL_24:
  if (v11 >= *(p_opt_inst_meths + 2088))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t checkCCError(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

uint64_t generateRandom(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = platform_rng_state;
  if (platform_rng_state)
  {
    v3 = 0;
  }

  else
  {
    platform_rng_state = ccrng();
    v3 = checkCCError(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = platform_rng_state;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    checkCCError(v8, "platform_rng");
    OUTLINED_FUNCTION_11();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void crypto_encryptText_version1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v22 = *MEMORY[0x1E69E9840];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 32;
            if (v1 != -32)
            {
              if (v14 > *v0 || (OUTLINED_FUNCTION_2_0(), v15 = ccgcm_init(), !checkCCError(v15, "ccgcm_init")) && !generateRandom(v3, 16) && (OUTLINED_FUNCTION_0_10(), v16 = ccgcm_set_iv(), !checkCCError(v16, "ccgcm_set_iv")) && (OUTLINED_FUNCTION_2_0(), v17 = ccgcm_update(), !checkCCError(v17, "ccgcm_update")) && (OUTLINED_FUNCTION_0_10(), v18 = ccgcm_finalize(), !checkCCError(v18, "ccgcm_finalize")))
              {
                *v0 = v14;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v21, v22, v23);
  }

  OUTLINED_FUNCTION_15();
}

void crypto_encryptText_version2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v26 = *MEMORY[0x1E69E9840];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v24);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 33;
            if (v1 != -33)
            {
              if (v14 > *v0 || (OUTLINED_FUNCTION_2_0(), v15 = ccgcm_init(), !checkCCError(v15, "ccgcm_init")) && (*v3 = 2, v16 = (v3 + 1), OUTLINED_FUNCTION_13_0(), !v17) && !generateRandom(v16, 16) && (OUTLINED_FUNCTION_0_10(), v18 = ccgcm_set_iv(), !checkCCError(v18, "ccgcm_set_iv")) && (v19 = v16 + 16, OUTLINED_FUNCTION_13_0(), !v20) && (OUTLINED_FUNCTION_2_0(), v21 = ccgcm_update(), !checkCCError(v21, "ccgcm_update")) && !__CFADD__(v19, v1) && (OUTLINED_FUNCTION_0_10(), v22 = ccgcm_finalize(), !checkCCError(v22, "ccgcm_finalize")))
              {
                *v0 = v14;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v23)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v25, v26, v27);
  }

  OUTLINED_FUNCTION_15();
}

void crypto_decryptText_version1()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0(v11, v12, v13, v14, v15, v16, v17, v18, v25);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v19 = v5 >= 0x20;
            v20 = v5 - 32;
            if (v19)
            {
              if (*v1 < v20 || (OUTLINED_FUNCTION_2_0(), v21 = ccgcm_init(), !checkCCError(v21, "ccgcm_init")) && (OUTLINED_FUNCTION_0_10(), v22 = ccgcm_set_iv(), !checkCCError(v22, "ccgcm_set_iv")) && (OUTLINED_FUNCTION_2_0(), v23 = ccgcm_update(), !checkCCError(v23, "ccgcm_update")) && (OUTLINED_FUNCTION_0_10(), ccgcm_finalize(), v24 = cc_cmp_safe(), !checkCCError(v24, "cc_cmp_safe")))
              {
                *v1 = v20;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v26, 0, 0);
  }

  OUTLINED_FUNCTION_15();
}

void crypto_decryptText_version2()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0(v11, v12, v13, v14, v15, v16, v17, v18, v27);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            if (v5 >= 0x22)
            {
              v19 = v5 - 33;
              if (*v1 < v19 || (OUTLINED_FUNCTION_13_0(), !v20) && *v7 == 2 && (OUTLINED_FUNCTION_2_0(), v21 = ccgcm_init(), !checkCCError(v21, "ccgcm_init")) && (OUTLINED_FUNCTION_0_10(), v22 = ccgcm_set_iv(), !checkCCError(v22, "ccgcm_set_iv")) && (OUTLINED_FUNCTION_13_0(), !v23) && (OUTLINED_FUNCTION_2_0(), v24 = ccgcm_update(), !checkCCError(v24, "ccgcm_update")) && !__CFADD__(v7 + 17, v19) && (OUTLINED_FUNCTION_0_10(), ccgcm_finalize(), v25 = cc_cmp_safe(), !checkCCError(v25, "cc_cmp_safe")))
              {
                *v1 = v19;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v28, 0, 0);
  }

  OUTLINED_FUNCTION_15();
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v19 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v18, 0x2000uLL);
  v17 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v18, &v17);
  if (v3)
  {
    if (v17)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  return v13;
}

uint64_t LibCall_ACMSEPControl_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[128] = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl_Block");
  }

  bzero(v24, 0x400uLL);
  LibCall_ACMSEPControl(a1, a2, a3, a4, a5, a6, a7, v24, &v23, v21, v22, 1024, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8]);
  v17 = v16;
  if (a8)
  {
    if (v23)
    {
      v18 = v24;
    }

    else
    {
      v18 = 0;
    }

    (*(a8 + 16))(a8, v18);
  }

  if (v17)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl_Block", v17);
  }

  return v17;
}

int *LibCall_ACMGlobalContextVerifyPolicy_Block(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  v15 = 0;
  result = LibCall_ACMContextCreate(a1, a2, &v15, 0, 0, 1);
  if (result)
  {
    if (a7)
    {
      result = (*(a7 + 16))(a7, result, 0, 0);
    }
  }

  else
  {
    result = LibCall_ACMContextVerifyPolicyEx_Block(a1, a2, v15, a3, a4, a5, a6, 0xFFFFFFFFLL, a7);
  }

  if (v15)
  {
    result = LibCall_ACMContextDelete(a1, a2, v15, 1);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetAclAuthMethod_Block(uint64_t result, uint64_t a2, __n128 *a3, uint64_t a4)
{
  v7 = result;
  v14 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  memset(v13, 0, sizeof(v13));
  v11 = 256;
  if (v7 && a3 && a4)
  {
    v12 = 0uLL;
    v10 = 16;
    AclAuthMethod_Serialize = LibSer_GetAclAuthMethod_Serialize(a3, &v12, &v10);
    if (!v9 && v10 == 16)
    {
      v7(a2, 31, 0, &v12, 16, v13, &v11, AclAuthMethod_Serialize);
    }

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_9:
    result = (*(a4 + 16))(a4);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  return result;
}

uint64_t verifyAclConstraintForOperationCommandInternal(uint64_t result, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, uint64_t a10, int a11, int a12, uint64_t a13)
{
  v20 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  v25 = 0;
  v24 = 0;
  if (a4 && a5 && a6 && a13)
  {
    v21 = verifyAclConstraintInternal(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v24, &v25);
    v22 = v25;
    v23 = v24;
  }

  else
  {
    if (!a13)
    {
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0;
    v21 = 4294967293;
  }

  (*(a13 + 16))(a13, v21, v23, v22);
  result = v25;
  if (v25)
  {
    result = Util_DeallocRequirement(v25);
  }

LABEL_10:
  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  return result;
}

uint64_t Util_GetBitCount(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

BOOL Util_isNullOrZeroMemory(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  return memcmp(a1, a1 + 1, a2 - 1) == 0;
}

BOOL Util_isNonNullEqualMemory(void *__s1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return memcmp(__s1, __s2, __n) == 0;
    }
  }

  return result;
}

char *Util_hexDumpToStrHelper(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result && a2)
  {
    Util_hexDumpToStrHelper_cold_2();
  }

  if (!a3 && a4)
  {
    Util_hexDumpToStrHelper_cold_1();
  }

  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    v5 = (a3 + 1);
    do
    {
      *(v5 - 1) = a0123456789abcd[*result >> 4];
      v6 = *result++;
      *v5 = a0123456789abcd[v6 & 0xF];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t Util_KeybagLockStateToEnvVar(unsigned int a1)
{
  v1 = 0x2010103020201uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 3;
}

void Util_SafeDeallocParameters(unsigned int *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1 + 4;
      v5 = a2;
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          v7 = *v4;
          acm_mem_free_info("<data>", *(v4 - 1), v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 118, "Util_SafeDeallocParameters");
          acm_mem_free_data(v6, v7);
        }

        v4 += 6;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMParameter", a1, 24 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 121, "Util_SafeDeallocParameters");

    acm_mem_free(a1, 24 * v3);
  }
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreate(ioKitTransport, &v8, a1, a2, &_logLevel, 1);
  if (v4)
  {
    updateLogLevelFromKext();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && _logLevel <= 0x28u)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v10 = "ACMLib";
        v11 = 2080;
        v12 = "ACMContextCreateWithFlags";
        v13 = 1024;
        LODWORD(v14[0]) = v6;
        WORD2(v14[0]) = 1024;
        *(v14 + 6) = a2;
        _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    v13 = 2048;
    v14[0] = v4;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(ioKitTransport, &v8, a1, a2, &_logLevel, 1);
  if (v4)
  {
    if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v10 = "ACMLib";
      v11 = 2080;
      v12 = "ACMContextCreateWithExternalForm";
      v13 = 1024;
      LODWORD(v14) = v5;
      _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    updateLogLevelFromKext();
    v6 = 70;
  }

  if (v6 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = _logLevel;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = _logLevel;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v12 = "ACMLib";
    v14 = "ACMContextDelete";
    v13 = 2080;
    if (v2)
    {
      v6 = "YES";
    }

    v15 = 1024;
    LODWORD(v16[0]) = v5;
    WORD2(v16[0]) = 2080;
    *(v16 + 6) = v6;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v10 = a1;
  v7 = LibCall_ACMContextDelete(ioKitTransport, &v10, a1, v2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    v15 = 2048;
    v16[0] = v7;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v7;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v4, 0x16u);
  }

  if (a1 && a2)
  {
    if (!init() && !performCommand(a1, 19, 0, a1, 0x10uLL, 0, 0))
    {
      (*(a2 + 16))(a2, a1, 16);
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  ACMContextGetExternalForm_cold_1(a2);
LABEL_9:
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v4, 0x16u);
  }
}

uint64_t ACMContextRemoveCredentialsByType(_OWORD *a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextRemoveCredentialsByType";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextRemoveCredentialsByTypeAndScope(a1, v2, 1);
}

uint64_t ACMContextContainsCredentialType(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextContainsCredentialType";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextContainsCredentialTypeEx(a1, a2, 0);
}

uint64_t ACMContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextVerifyPolicy_Block(ioKitTransport, &v9, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

uint64_t ACMContextVerifyPolicyWithPreflight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = a1;
  v8 = LibCall_ACMContextVerifyPolicyWithPreflight_Block(ioKitTransport, &v11, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v8;
}

void ACMGlobalContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = 0;
  v10 = ACMContextCreateWithFlags(&v11, 0);
  if (v10)
  {
    if (a5)
    {
      (*(a5 + 16))(a5, v10, 0, 0);
    }
  }

  else
  {
    ACMContextVerifyPolicyEx(v11, a1, a2, a3, a4, 0xFFFFFFFFLL, a5);
  }

  if (v11)
  {
    ACMContextDelete(v11, 1);
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMParseAclAndCopyConstraintCharacteristics(const void *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  __n = 4096;
  size = 0;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 4294967293;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_28;
  }

  SerializedProcessAclSize = init();
  if (SerializedProcessAclSize || (SerializedProcessAclSize = GetSerializedProcessAclSize(0, a1, a2, 0, 0, 0, 0, 0, &size), SerializedProcessAclSize))
  {
    v6 = SerializedProcessAclSize;
LABEL_28:
    (*(a3 + 16))(a3, v6, 0, 4096);
    goto LABEL_19;
  }

  v8 = size;
  v9 = acm_mem_alloc_data(size);
  acm_mem_alloc_info("<data>", v9, v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 727, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v9)
  {
    v6 = 4294967292;
    goto LABEL_28;
  }

  v10 = SerializeProcessAcl(0, a1, a2, 0, 0, 0, 0, 0, v9, &size);
  if (v10)
  {
    v6 = v10;
    v12 = 0;
    v14 = 0;
    v11 = 4096;
    goto LABEL_15;
  }

  v11 = 4096;
  v12 = acm_mem_alloc_data(0x1000uLL);
  acm_mem_alloc_info("<data>", v12, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 733, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v12)
  {
    v14 = 0;
LABEL_31:
    v6 = 4294967292;
    goto LABEL_15;
  }

  v13 = performCommand(0, 20, 0, v9, size, v12, &__n);
  v11 = __n;
  if (v13)
  {
    v6 = v13;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = acm_mem_alloc_data(__n);
  acm_mem_alloc_info("<data>", v14, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 739, "ACMParseAclAndCopyConstraintCharacteristics");
  v11 = __n;
  if (!v14)
  {
    goto LABEL_31;
  }

  memcpy(v14, v12, __n);
  v6 = 0;
  v11 = __n;
LABEL_15:
  (*(a3 + 16))(a3, v6, v14, v11);
  v15 = size;
  acm_mem_free_info("<data>", v9, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 750, "ACMParseAclAndCopyConstraintCharacteristics");
  acm_mem_free_data(v9, v15);
  if (v12)
  {
    acm_mem_free_info("<data>", v12, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 753, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v12, 0x1000uLL);
  }

  if (v14)
  {
    v16 = __n;
    acm_mem_free_info("<data>", v14, __n, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 756, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v14, v16);
  }

LABEL_19:
  if (v6)
  {
    v17 = 70;
  }

  else
  {
    v17 = 10;
  }

  if (v17 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void ACMGetAclAuthMethod(__n128 *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v4 = a1;
  LibCall_ACMGetAclAuthMethod_Block(ioKitTransport, &v4, a1, a2);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMSetEnvironmentVariable(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariable";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariable";
    v10 = 2048;
    v11 = v3;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v3;
}

uint64_t ACMKernelControl(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v2 = LibCall_ACMKernelControl_Block(ioKitTransport);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    v9 = 2048;
    v10 = v2;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, code=%u.\n", buf, 0x26u);
  }

  return v2;
}

void ACMGlobalContextCredentialGetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v11 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 0;
  LibCall_ACMGlobalContextCredentialGetProperty_Block(ioKitTransport, &v6, v5, v4, a3);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMContextCredentialGetProperty(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v30 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextCredentialGetProperty";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = 256;
  if (a4)
  {
    v9 = a1;
    v8 = LibCall_ACMContextCredentialGetProperty(ioKitTransport, &v9, a1, v6, v5, buf, &v10);
    (*(a4 + 16))(a4, v8, buf, v10);
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextCredentialGetProperty";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", v11, 0x16u);
  }
}

uint64_t ACMContextSetData(uint64_t a1, int a2, int a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  v8 = ACMContextSetDataEx(a1, a2, 0, 0, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return v8;
}

uint64_t ACMContextSetDataEx(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = LibCall_ACMContextSetData(ioKitTransport, &v16, a1, a2, a3, a4, a5, a6, v15, a1, *buf, *&buf[8], *&buf[16], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (v12)
  {
    v13 = 70;
  }

  else
  {
    v13 = 10;
  }

  if (v13 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    *&buf[22] = 2048;
    v18 = v12;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v12;
}

uint64_t ACMContextGetData(uint64_t a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v9, 0x16u);
  }

  Data = ACMContextGetDataEx(a1, a2, 0, 0, a3);
  if (Data)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    v13 = 2048;
    v14 = Data;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v9, 0x20u);
  }

  return Data;
}

uint64_t ACMContextGetDataProperty(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  Data = ACMContextGetData(a1, a2 | (a3 << 16), a4);
  if (Data)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    v15 = 2048;
    v16 = Data;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return Data;
}

uint64_t ACMContextCopyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "ACMLib";
    v16 = 2080;
    v17 = "ACMContextCopyData";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v13 = 0;
  v10 = LibCall_ACMContextCopyData(ioKitTransport, &v13, a1, a2, a3, a4);
  if (v10)
  {
    v11 = 70;
  }

  else
  {
    v11 = 10;
  }

  if (v11 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "ACMLib";
    v16 = 2080;
    v17 = "ACMContextCopyData";
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v10;
}

uint64_t ACMContextGetInfo(__int128 *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextGetInfo(ioKitTransport, &v9, a1, v4, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void updateLogLevelFromKext()
{
  v7 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_1EB6D62A4, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  _logLevel = output;
  if (output <= 0x1EuLL && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    updateLogLevelFromKext_cold_1();
LABEL_12:
    v0 = _logLevel;
  }

  if (v0 <= 0xA && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void updateLogLevelFromKext_cold_1()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_8_1();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

uint64_t LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v20[1] = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    a1 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a5 != 0;
  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  if (v14)
  {
LABEL_16:
    v18 = 70;
    v17 = 4294967293;
  }

  else
  {
    v20[0] = v20;
    MEMORY[0x1EEE9AC00](a1);
    v15 = (v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, a5 + 4);
    *v15 = a3;
    v16 = v15 + 1;
    if (a5)
    {
      memcpy(v15 + 1, a4, a5);
      v16 = (v16 + a5);
    }

    if (v16 != (v15 + a5 + 4))
    {
      LibCall_ACMKernelControl_cold_1();
    }

    v17 = v13(a2, 26, 0, v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
    if (v17)
    {
      v18 = 70;
    }

    else
    {
      v18 = 10;
    }
  }

  if (v18 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v17);
  }

  return v17;
}

void OUTLINED_FUNCTION_37()
{

  LibCall_ACMSetEnvironmentVariable();
}

uint64_t processAclCommandInternal(uint64_t (*a1)(uint64_t, void, void, void *, size_t, _DWORD *, unint64_t *), uint64_t a2, int a3, _OWORD *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, const void *a9, unsigned int a10, unsigned int a11, _DWORD *a12, BOOL *a13, void *a14, unint64_t *a15)
{
  v19 = gACMLoggingLevel;
  v20 = "processAclCommandInternal";
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "processAclCommandInternal");
    v19 = gACMLoggingLevel;
  }

  if (v19 <= 0x14)
  {
    printf("%s: %s: command = %u.\n", "ACM", "processAclCommandInternal", a3);
    OUTLINED_FUNCTION_10_2();
    if (!(!v28 & v21))
    {
      printf("%s: %s: context = %p.\n", "ACM", "processAclCommandInternal", a4);
      OUTLINED_FUNCTION_10_2();
      if (!(!v28 & v21))
      {
        printf("%s: %s: acl = %p, aclLength = %zu.\n", "ACM", "processAclCommandInternal", a5, a6);
        OUTLINED_FUNCTION_10_2();
        if (!(!v28 & v21))
        {
          printf("%s: %s (len=%u): acl:", "ACM", "processAclCommandInternal", a6);
          v19 = gACMLoggingLevel;
        }
      }
    }
  }

  if (a6)
  {
    v22 = a6;
    v23 = a5;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v23);
        v19 = gACMLoggingLevel;
      }

      ++v23;
      --v22;
    }

    while (v22);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    OUTLINED_FUNCTION_10_2();
    if (!(!v28 & v21))
    {
      printf("%s: %s: operation = %p, operationLength = %zu.\n", "ACM", "processAclCommandInternal", a7, a8);
      OUTLINED_FUNCTION_10_2();
      if (!(!v28 & v21))
      {
        printf("%s: %s (len=%u): operation:", "ACM", "processAclCommandInternal", a8);
        v19 = gACMLoggingLevel;
      }
    }
  }

  v42 = a3;
  if (a8)
  {
    v24 = a8;
    v25 = a7;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v25);
        v19 = gACMLoggingLevel;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    OUTLINED_FUNCTION_10_2();
    if (!(!v28 & v21))
    {
      printf("%s: %s: parameters = %p, parameterCount = %u.\n", "ACM", "processAclCommandInternal", a9, a10);
      OUTLINED_FUNCTION_10_2();
      if (!(!v28 & v21))
      {
        printf("%s: %s: maxGlobalCredentialAge = %u.\n", "ACM", "processAclCommandInternal", a11);
        OUTLINED_FUNCTION_10_2();
        if (!(!v28 & v21))
        {
          printf("%s: %s: constraintState = %p.\n", "ACM", "processAclCommandInternal", a12);
          OUTLINED_FUNCTION_10_2();
          if (!(!v28 & v21))
          {
            printf("%s: %s: requirePasscode = %p.\n", "ACM", "processAclCommandInternal", a13);
          }
        }
      }
    }
  }

  if (a7 || a9 || a12)
  {
    if (a5)
    {
      v28 = a6 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v28;
    OUTLINED_FUNCTION_31_0();
    if (!a7)
    {
      goto LABEL_79;
    }

    if (!a8)
    {
      goto LABEL_79;
    }

    if (v29)
    {
      goto LABEL_79;
    }

    v20 = 4294967293;
    if ((a9 != 0) == (a10 == 0) || !a12)
    {
      goto LABEL_79;
    }

    v48 = 0;
    v47 = 4096;
    if (gACMLoggingLevel <= 0xAu)
    {
      printf("%s: %s: called.\n", "ACM", "processAclInternal");
    }

    SerializedProcessAclSize = GetSerializedProcessAclSize(a4, a5, a6, a7, a8, a11, a9, a10, &v48);
    if (SerializedProcessAclSize)
    {
      v20 = SerializedProcessAclSize;
      v40 = 70;
      goto LABEL_74;
    }

    v31 = v48;
    v32 = acm_mem_alloc_data(v48);
    acm_mem_alloc_info("<data>", v32, v31, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1841, "processAclInternal");
    if (!v32)
    {
      v40 = 70;
      v20 = 4294967292;
      goto LABEL_74;
    }

    v47 = 4096;
    v33 = acm_mem_alloc_data(0x1000uLL);
    acm_mem_alloc_info("<data>", v33, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1845, "processAclInternal");
    if (!v33)
    {
      v37 = 0;
      v36 = 0;
      v20 = 4294967292;
      goto LABEL_68;
    }

    v34 = SerializeProcessAcl(a4, a5, a6, a7, a8, a11, a9, a10, v32, &v48);
    if (v34 || (v34 = a1(a2, v42, 0, v32, v48, v33, &v47), v34))
    {
      v20 = v34;
      v36 = 0;
      v37 = 0;
      goto LABEL_67;
    }

    v35 = v47;
    if (v47 >= 8)
    {
      *a12 = *v33;
      if (a13)
      {
        *a13 = v33[1] != 0;
      }

      v20 = 0;
      v36 = 0;
      if (v42 != 30 || !a14)
      {
        v37 = 0;
        goto LABEL_67;
      }

      v37 = 0;
      if (!a15)
      {
LABEL_67:
        acm_mem_free_info("<data>", v33, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1882, "processAclInternal");
        acm_mem_free_data(v33, 0x1000uLL);
LABEL_68:
        acm_mem_free_info("<data>", v32, v48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1886, "processAclInternal");
        v38 = OUTLINED_FUNCTION_18_1();
        acm_mem_free_data(v38, v39);
        if (v20 && v37)
        {
          acm_mem_free_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1890, "processAclInternal");
          acm_mem_free_data(v37, v36);
          v40 = 70;
        }

        else if (v20)
        {
          v40 = 70;
        }

        else
        {
          v40 = 10;
        }

LABEL_74:
        if (v40 >= gACMLoggingLevel)
        {
          printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclInternal", v20);
        }

        goto LABEL_76;
      }

      if (v35 >= 0xC)
      {
        v36 = v33[2];
        if (v36)
        {
          if (v35 >= v36 + 12)
          {
            v37 = acm_mem_alloc_data(v33[2]);
            acm_mem_alloc_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1870, "processAclInternal");
            if (v37)
            {
              memcpy(v37, v33 + 3, v36);
              v20 = 0;
              *a14 = v37;
              *a15 = v36;
            }

            else
            {
              v20 = 4294967292;
            }

            goto LABEL_67;
          }

          goto LABEL_84;
        }

        v36 = 0;
        v37 = 0;
        v20 = 0;
        goto LABEL_67;
      }
    }

    v36 = 0;
LABEL_84:
    v37 = 0;
    v20 = 4294967291;
    goto LABEL_67;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_31_0();
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_31_0();
  if (a5 && a13 && a6)
  {
    aclRequiresPasscodeInternal();
    v20 = v27;
LABEL_76:
    if (v20)
    {
      v26 = 70;
    }

    else
    {
      v26 = 10;
    }
  }

LABEL_79:
  if (v26 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclCommandInternal", v20);
  }

  return v20;
}

void aclRequiresPasscodeInternal()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 4;
  v10 = v2;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - ((v10 + 19) & 0x1FFFFFFF0));
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "aclRequiresPasscodeInternal");
  }

  bzero(&v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4);
  v12 = -3;
  if (v5 && v1)
  {
    *v11 = v3;
    memcpy(v11 + 1, v5, v10);
    v13 = v9(v7, 17, 0, &v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4, &v17, &v16);
    if (v13)
    {
      v12 = v13;
    }

    else if (v16 == 4)
    {
      v12 = 0;
      *v1 = 1;
    }

    else
    {
      v12 = -5;
    }
  }

  OUTLINED_FUNCTION_1_10();
  if (v14)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "aclRequiresPasscodeInternal", v12);
  }

  OUTLINED_FUNCTION_15();
}

uint64_t lib_platform_rng()
{
  v0 = ccrng();
  REQUIRE_func(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  REQUIRE_func(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t lib_platform_read_random(uint64_t a1, unsigned int a2)
{
  v4 = platform_rng();
  v5 = (*v4)(v4, a2, a1) == 0;

  return REQUIRE_func(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t rfc3394_wrap(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v43 = a1;
  v44 = a3;
  v47 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v36 - v15;
  bzero(&v36 - v15, v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  bzero(&v36 - v17, v17);
  v19 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v38 = &v36;
  v39 = a8;
  v40 = a6;
  v37 = a7;
  if (!a4)
  {
    v20 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v20 || !a8 || *a8 < a6 + 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v39 >= v40 + 8)
  {
LABEL_15:
    v21 = v40 >> 3;
    if (v40 >> 3 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = 8;
    v24 = v22;
    do
    {
      v25 = *a5++;
      *(__s + v23) = v25;
      v23 += 16;
      --v24;
    }

    while (v24);
    v26 = 0;
    *&__s[0] = v44;
    v27 = 1;
    v41 = v21;
    v42 = v22;
    do
    {
      v43 = v27;
      v44 = v26;
      v28 = __s;
      v29 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &firebloom_null_iv, v28, v28, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          cccbc_clear_iv();
          firebloom_cbc_update_f(v14, v45, v18, 0x10uLL);
        }

        v30 = *v28;
        v28 += 2;
        *&__s[v29 % v21] = v30 ^ bswap64(v27++);
        ++v29;
        --v22;
      }

      while (v22);
      v26 = v44 + 1;
      v22 = v42;
      v27 = v43 + v41;
    }

    while (v44 != 5);
    v31 = v37;
    *v37 = *&__s[0];
    v32 = v31 + 1;
    v33 = __s + 1;
    do
    {
      v34 = *v33;
      v33 += 2;
      *v32++ = v34;
      --v22;
    }

    while (v22);
    v19 = 0;
    *v39 = (v40 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v19;
    }

LABEL_32:
    cc_clear();
    return v19;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  return 0xFFFFFFFFLL;
}