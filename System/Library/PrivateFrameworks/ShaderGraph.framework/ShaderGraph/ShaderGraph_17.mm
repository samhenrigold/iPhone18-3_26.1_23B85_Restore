unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_58;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v38 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v34 = isUniquelyReferenced_nonNull_bridgeObject;
    v35 = v1;
    v36 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v38)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x266772030](v3, v34);
      }

      else
      {
        if (v3 >= *(v37 + 16))
        {
          goto LABEL_53;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v36 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v3, 1);
      v7 = v3 + 1;
      if (v6)
      {
LABEL_52:
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
        v33 = isUniquelyReferenced_nonNull_bridgeObject;
        v1 = __CocoaSet.count.getter();
        isUniquelyReferenced_nonNull_bridgeObject = v33;
        goto LABEL_3;
      }

      v40 = v7;
      v8 = isUniquelyReferenced_nonNull_bridgeObject + OBJC_IVAR___SGOutput__edges;
      swift_beginAccess();
      v9 = *(v8 + 8);
      v10 = MEMORY[0x277D84F90];
      v42[0] = MEMORY[0x277D84F90];
      v11 = *(v9 + 16);
      if (v11)
      {
        v41 = v2;
        v12 = v9 + 32;

        v13 = 0;
        while (v13 < *(v9 + 16))
        {
          outlined init with copy of WeakBox<SGEdge>(v12, v43);
          Strong = swift_unknownObjectWeakLoadStrong();
          isUniquelyReferenced_nonNull_bridgeObject = outlined destroy of [Input](v43, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
          if (Strong)
          {
            MEMORY[0x266771770](isUniquelyReferenced_nonNull_bridgeObject);
            if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            isUniquelyReferenced_nonNull_bridgeObject = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v10 = v42[0];
          }

          ++v13;
          v12 += 8;
          if (v11 == v13)
          {

            v2 = v41;
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_52;
      }

LABEL_21:
      v15 = v10 >> 62;
      v16 = v10 >> 62 ? __CocoaSet.count.getter() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v2 >> 62;
      if (v2 >> 62)
      {
        v31 = __CocoaSet.count.getter();
        v19 = v31 + v16;
        if (__OFADD__(v31, v16))
        {
LABEL_49:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 + v16;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_49;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v17)
      {
        goto LABEL_30;
      }

LABEL_31:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = isUniquelyReferenced_nonNull_bridgeObject;
      v20 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_32:
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v15)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v23 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          v4 = v35;
          v3 = v40;
          if (v16 > 0)
          {
            goto LABEL_54;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          goto LABEL_5;
        }
      }

      if (((v22 >> 1) - v21) < v16)
      {
        goto LABEL_55;
      }

      v39 = v16;
      v24 = v20 + 8 * v21 + 32;
      if (v15)
      {
        if (v23 < 1)
        {
          goto LABEL_57;
        }

        lazy protocol witness table accessor for type [SGNode] and conformance [A](&lazy protocol witness table cache variable for type [SGEdge] and conformance [A], &_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
        for (i = 0; i != v23; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
          v26 = specialized protocol witness for Collection.subscript.read in conformance [A](v42, i, v10);
          v28 = *v27;
          (v26)(v42, 0);
          *(v24 + 8 * i) = v28;
        }
      }

      else
      {
        type metadata accessor for SGEdge();
        swift_arrayInitWithCopy();
      }

      v3 = v40;
      v4 = v35;
      if (v39 >= 1)
      {
        v29 = *(v20 + 16);
        v6 = __OFADD__(v29, v39);
        v30 = v29 + v39;
        if (v6)
        {
          goto LABEL_56;
        }

        *(v20 + 16) = v30;
      }

LABEL_6:
      if (v3 == v4)
      {
        return v2;
      }
    }

    if (!v17)
    {
      v20 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_30:
    __CocoaSet.count.getter();
    goto LABEL_31;
  }

  return v2;
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

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

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

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

char *specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[8 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 40, 8 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void SGGraph.remove(edge:)(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  specialized OrderedSet.remove(_:)(v11, v10);
  swift_endAccess();
  outlined destroy of [Input](v11, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  outlined destroy of [Input](v10, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMR);
  v3 = OBJC_IVAR___SGGraph_edges;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v5 = specialized Collection<>.firstIndex(of:)(a1, v4);
  v7 = v6;

  if (v7)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v8 = 0xD000000000000032;
    *(v8 + 8) = 0x8000000265F33020;
    *(v8 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v9 = specialized Array.remove(at:)(v5, specialized _ArrayBuffer._consumeAndCreateNew());
    swift_endAccess();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.insert(_:)(Swift::OpaquePointer_optional a1)
{
  if (!a1.value._rawValue)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v17 = swift_allocError();
    *v18 = xmmword_265F26E20;
    *(v18 + 16) = 1;
    swift_willThrow();
LABEL_31:
    type metadata accessor for SGError();
    v41 = v17;
    SGError.__allocating_init(_:)(v17);
    swift_willThrow();

    return;
  }

  rawValue = a1.value._rawValue;
  v3 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v74 = v1;
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x277D84F90];
    v69 = rawValue;
    if (i)
    {
      v75 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        goto LABEL_72;
      }

      v7 = 0;
      v8 = v75;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x266772030](v7, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = &v9[OBJC_IVAR___SGNode_name];
        swift_beginAccess();
        v13 = *v11;
        v12 = *(v11 + 1);

        v75 = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
          v8 = v75;
        }

        ++v7;
        *(v8 + 16) = v15 + 1;
        v16 = v8 + 16 * v15;
        *(v16 + 32) = v13;
        *(v16 + 40) = v12;
      }

      while (i != v7);

      rawValue = v69;
      v6 = MEMORY[0x277D84F90];
    }

    v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

    v76 = v19;
    v75 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
    v20 = v75;
    v22 = *(v75 + 16);
    v21 = *(v75 + 24);
    v23 = v21 >> 1;
    v24 = v22 + 1;
    if (v21 >> 1 <= v22)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v20 = v75;
      v21 = *(v75 + 24);
      v23 = v21 >> 1;
    }

    *(v20 + 16) = v24;
    v25 = v20 + 16 * v22;
    *(v25 + 32) = 0x656D756772615F5FLL;
    *(v25 + 40) = 0xEB0000000073746ELL;
    v26 = v22 + 2;
    if (v23 <= v24)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v26, 1);
      v20 = v75;
    }

    *(v20 + 16) = v26;
    v27 = v20 + 16 * v24;
    *(v27 + 32) = 0x746C757365725F5FLL;
    *(v27 + 40) = 0xE900000000000073;
    v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

    specialized Set.formUnion<A>(_:)(v28);
    v70 = rawValue >> 62;
    if (rawValue >> 62)
    {
      break;
    }

    v29 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_36;
    }

LABEL_21:
    v30 = 0;
    v72 = rawValue & 0xFFFFFFFFFFFFFF8;
    v73 = rawValue & 0xC000000000000001;
    while (1)
    {
      if (v73)
      {
        v31 = MEMORY[0x266772030](v30, rawValue);
      }

      else
      {
        if (v30 >= *(v72 + 16))
        {
          goto LABEL_33;
        }

        v31 = *(rawValue + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v4 = &v31[OBJC_IVAR___SGNode_name];
      v35 = *&v31[OBJC_IVAR___SGNode_name];
      v34 = *&v31[OBJC_IVAR___SGNode_name + 8];
      v36 = v76;

      v37 = specialized Set.contains(_:)(v35, v34, v36);

      if (v37)
      {

        v39 = *v4;
        v38 = *(v4 + 8);
        lazy protocol witness table accessor for type APIError and conformance APIError();
        v17 = swift_allocError();
        *v40 = v39;
        *(v40 + 8) = v38;
        *(v40 + 16) = 9;
        swift_willThrow();

        goto LABEL_31;
      }

      specialized Set._Variant.insert(_:)(&v75, v35, v34);

      ++v30;
      rawValue = v69;
      if (v33 == v29)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v29 = __CocoaSet.count.getter();
  if (v29)
  {
    goto LABEL_21;
  }

LABEL_36:
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v42);
  swift_endAccess();
  if (v70)
  {
    v43 = __CocoaSet.count.getter();
    if (!v43)
    {
LABEL_67:

      return;
    }
  }

  else
  {
    v43 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
      goto LABEL_67;
    }
  }

  v44 = 0;
  v45 = (v74 + OBJC_IVAR___SGGraph_nodeMap);
  v71 = v43;
  while (2)
  {
    if ((v69 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x266772030](v44, v69);
    }

    else
    {
      if (v44 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v49 = v69[v44 + 4];
    }

    v50 = v49;
    if (!__OFADD__(v44++, 1))
    {
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v52 = *&v50[OBJC_IVAR___SGNode_name];
      v53 = *&v50[OBJC_IVAR___SGNode_name + 8];
      swift_beginAccess();
      v54 = *v45;
      v55 = v45[1];
      v56 = *(v55 + 16);
      if (*v45)
      {
        v57 = v50;

        v58 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v52, v53, v55 + 32, v56, (v54 + 16), v54 + 32);
        v60 = v59;
        v47 = v61;

        if ((v60 & 1) == 0)
        {
          goto LABEL_61;
        }

LABEL_42:
        specialized OrderedSet._appendNew(_:in:)(v52, v53, v47);
        v48 = v50;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
        if (!v56)
        {
LABEL_41:
          v46 = v50;
          v47 = 0;
          goto LABEL_42;
        }

        v58 = 0;
        v62 = (v55 + 40);
        while (1)
        {
          v63 = *(v62 - 1) == v52 && *v62 == v53;
          if (v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v58;
          v62 += 2;
          if (v56 == v58)
          {
            goto LABEL_41;
          }
        }

        v64 = v50;
LABEL_61:
        v65 = v45[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45[2] = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v65);
          v45[2] = v65;
        }

        if ((v58 & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        if (v58 >= *(v65 + 16))
        {
          goto LABEL_71;
        }

        v67 = v65 + 8 * v58;
        v68 = *(v67 + 32);
        *(v67 + 32) = v50;

        specialized ContiguousArray._endMutation()();
      }

      swift_endAccess();

      if (v44 == v71)
      {
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void SGGraph.connect(_:to:)(char *a1, char *a2)
{
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    v22 = xmmword_265F26E40;
LABEL_11:
    *v21 = v22;
    *(v21 + 16) = 1;
    swift_willThrow();
    return;
  }

  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    v22 = xmmword_265F26E30;
    goto LABEL_11;
  }

  v5 = &a1[OBJC_IVAR___SGOutput_attachment];
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  v8 = &a2[OBJC_IVAR___SGInput_attachment];
  swift_beginAccess();
  v9 = v8[1];
  if (!v6)
  {
    if (!v9)
    {
      v41 = *&a2[OBJC_IVAR___SGInput_name];
      v42 = *&a2[OBJC_IVAR___SGInput_name + 8];

      MEMORY[0x266771550](8236, 0xE200000000000000);
      MEMORY[0x266771550](*&a1[OBJC_IVAR___SGOutput_name], *&a1[OBJC_IVAR___SGOutput_name + 8]);
      lazy protocol witness table accessor for type APIError and conformance APIError();
      v19 = swift_allocError();
      *v31 = v41;
      *(v31 + 8) = v42;
      v32 = 5;
      goto LABEL_25;
    }

    v24 = *&a1[OBJC_IVAR___SGOutput_name];
    v23 = *&a1[OBJC_IVAR___SGOutput_name + 8];
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v19 = swift_allocError();
    *v25 = v24;
    *(v25 + 8) = v23;
    v26 = 6;
LABEL_15:
    *(v25 + 16) = v26;
    swift_willThrow();

LABEL_26:
    type metadata accessor for SGError();
    v38 = v19;
    SGError.__allocating_init(_:)(v19);
    swift_willThrow();

    return;
  }

  if (!v9)
  {
    v28 = *&a2[OBJC_IVAR___SGInput_name];
    v27 = *&a2[OBJC_IVAR___SGInput_name + 8];
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v19 = swift_allocError();
    *v25 = v28;
    *(v25 + 8) = v27;
    v26 = 7;
    goto LABEL_15;
  }

  v10 = *v8;
  swift_bridgeObjectRetain_n();

  v11 = SGGraph.node(named:)(v7, v6);

  v39 = v2;
  v12 = SGGraph.node(named:)(v10, v9);

  v40 = v11;
  if (!v11)
  {
    if (v12)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_265F1F670;
      *(v29 + 32) = v7;
      *(v29 + 40) = v6;
      lazy protocol witness table accessor for type APIError and conformance APIError();
      v19 = swift_allocError();
      *v30 = v29;
      *(v30 + 8) = 0;
      *(v30 + 16) = 8;
      swift_willThrow();

      goto LABEL_26;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_265F21D90;
    *(v37 + 32) = v10;
    *(v37 + 40) = v9;
    *(v37 + 48) = v7;
    *(v37 + 56) = v6;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v19 = swift_allocError();
    *v31 = v37;
    *(v31 + 8) = 0;
    v32 = 8;
LABEL_25:
    *(v31 + 16) = v32;
    swift_willThrow();
    goto LABEL_26;
  }

  if (!v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_265F1F670;
    *(v33 + 32) = v10;
    *(v33 + 40) = v9;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v19 = swift_allocError();
    *v34 = v33;
    *(v34 + 8) = 0;
    *(v34 + 16) = 8;
    swift_willThrow();
    goto LABEL_20;
  }

  v13 = v12;

  v14 = type metadata accessor for SGEdge();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___SGEdge_from] = a1;
  *&v15[OBJC_IVAR___SGEdge_to] = a2;
  v43.receiver = v15;
  v43.super_class = v14;
  v16 = a2;
  a1;
  v17 = objc_msgSendSuper2(&v43, sel_init);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    lazy protocol witness table accessor for type APIError and conformance APIError();
    v19 = swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 24;
    swift_willThrow();

LABEL_20:
    goto LABEL_26;
  }

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  specialized OrderedSet._append(_:)(v44);
  swift_endAccess();
  outlined destroy of [Input](v44, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  v35 = OBJC_IVAR___SGGraph_edges;
  swift_beginAccess();
  v36 = v17;
  MEMORY[0x266771770]();
  if (*((*(v39 + v35) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v39 + v35) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t SGGraph.node(containing:)(uint64_t a1)
{
  return SGGraph.node(containing:)(a1, &OBJC_IVAR___SGOutput_attachment);
}

{
  return SGGraph.node(containing:)(a1, &OBJC_IVAR___SGInput_attachment);
}

uint64_t SGGraph.topologicalSort()@<X0>(uint64_t a1@<X8>)
{
  v45 = MEMORY[0x277D84F90];
  specialized SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(*(v1 + OBJC_IVAR___SGGraph_resultsNode), 1, protocol witness for static Equatable.== infix(_:_:) in conformance MaterialXDataType.Kind.SetCodingKeys, 0, partial apply for closure #1 in SGGraph.topologicalSort());
  if (v2)
  {
  }

  v5 = v45;
  v6 = *(v45 + 2);
  if (!v6)
  {
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v19 = 6;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x8000000000000000;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0;
    swift_willThrow();
  }

  v43 = a1;
  v7 = &v45[40 * v6];
  v8 = *(v7 - 1);
  v9 = *v7;
  v41 = *(v7 + 2);
  v42 = *(v7 + 1);
  v40 = v7[24];
  v10 = v42;

  v39 = v8;
  v38 = v9;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
LABEL_5:
  v13 = 40 * v11 + 32;
  while (v6 != v11)
  {
    if (v11 >= *(v5 + 2))
    {
      __break(1u);
      goto LABEL_35;
    }

    v14 = *&v5[v13];
    ++v11;
    v13 += 40;
    if ((*(v14 + OBJC_IVAR___SGNode_data + 80) & 0xC0) == 0x40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[16 * v16];
      *(v17 + 4) = v14;
      *(v17 + 5) = v11 - 1;
      goto LABEL_5;
    }
  }

  if (*(v12 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSiGMd, &_ss18_DictionaryStorageCySOSiGMR);
    v18 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v44 = v18;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v12, 1, &v44);

  v20 = v44;
  v21 = *(v5 + 2);
  v22 = v5;
  if (!v21)
  {
LABEL_33:

    *v43 = v22;
    *(v43 + 8) = v39;
    *(v43 + 16) = v38;
    *(v43 + 24) = v42;
    *(v43 + 32) = v41;
    *(v43 + 40) = v40;
    return result;
  }

  v23 = 0;
  v22 = v5;
LABEL_20:
  v37 = v22;
  v24 = 40 * v23 + 64;
  while (v23 < *(v5 + 2))
  {
    v25 = &v5[v24];
    v26 = *&v5[v24 - 16];
    if (v26)
    {
      if (*(v20 + 16))
      {
        v27 = *(v25 - 4);
        v28 = *(v25 - 3);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(*&v5[v24 - 16]);
        if (v30)
        {
          v35 = *(*(v20 + 56) + 8 * v29);
          v36 = v27;
          v34 = v28;
          v31 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
          }

          if (v23 >= *(v37 + 2))
          {
            goto LABEL_36;
          }

          v32 = &v37[v24];
          *(v32 - 1) = v35;
          *v32 = 0;

          v45 = v37;
          v33 = v21 - 1 == v23++;
          v22 = v37;
          if (v33)
          {
            goto LABEL_33;
          }

          goto LABEL_20;
        }
      }
    }

    ++v23;
    v24 += 40;
    if (v21 == v23)
    {
      v22 = v37;
      goto LABEL_33;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t key path getter for SGInput.edge : SGInput@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.collapseConstantAndPassthroughNodes()()
{
  SGGraph.topologicalSort()(v189);
  if (v0)
  {
    return;
  }

  v2 = v189[0];
  v1 = v189[1];
  v194 = v189[0];
  v3 = v189[3];

  v193 = v3;
  outlined destroy of [Input](&v193, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
  v4 = *(v2 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v120 = v2 + 8;
  v5 = MEMORY[0x277D84F90];
  v126 = v2;
  do
  {
    v122 = v5;
    v6 = v120 + 40 * v4--;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_17:
        v5 = v122;
        goto LABEL_18;
      }

      v7 = *(v6 - 16);
      v8 = &v7[OBJC_IVAR___SGNode_data];
      v9 = v7[OBJC_IVAR___SGNode_data + 80];
      if (v9 <= 0x3F)
      {
        break;
      }

LABEL_5:
      --v4;
      v6 -= 40;
      if (v4 == -1)
      {
        goto LABEL_17;
      }
    }

    v138 = *(v6 + 16);
    v169 = *(v6 - 8);
    v11 = *(v8 + 8);
    v10 = *(v8 + 9);
    v179 = *(v8 + 7);
    v175 = *(v8 + 6);
    v153 = *(v8 + 5);
    v149 = *(v8 + 4);
    v12 = *(v8 + 2);
    v146 = *(v8 + 3);
    v14 = *v8;
    v13 = *(v8 + 1);
    v130 = *v6;
    v134 = *(v6 + 8);
    v142 = *v6;
    v165 = v7;
    v170 = v169;
    outlined copy of NodeData(v14, v13, v12, v146, v149, v153, v175, v179, v11, v10, v9);

    outlined copy of MaterialXAvailability(v149, v153);
    v15._countAndFlagsBits = 0x5F746F645F444ELL;
    v15._object = 0xE700000000000000;
    v157 = String.hasPrefix(_:)(v15);

    outlined consume of MaterialXAvailability(v149, v153);
    outlined consume of NodeData(v14, v13, v12, v146, v149, v153, v175, v179, v11, v10, v9);
    if (!v157)
    {

      v2 = v126;
      goto LABEL_5;
    }

    v5 = v122;
    v188[0] = v122;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 16) + 1, 1);
      v5 = v188[0];
    }

    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      v5 = v188[0];
    }

    *(v5 + 16) = v17 + 1;
    v18 = v5 + 40 * v17;
    *(v18 + 32) = v165;
    *(v18 + 40) = v170;
    *(v18 + 48) = v130;
    *(v18 + 56) = v134;
    *(v18 + 64) = v138;
    v2 = v126;
  }

  while (v4);
LABEL_18:
  outlined destroy of [Input](&v194, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
  v19 = *(v5 + 16);
  v123 = v5;
  if (!v19)
  {
LABEL_59:

    SGGraph.topologicalSort()(v190);
    v56 = v190[0];
    v55 = v190[1];
    v192 = v190[0];
    v57 = v190[3];

    v191 = v57;
    outlined destroy of [Input](&v191, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
    v58 = *(v56 + 16);
    if (!v58)
    {
LABEL_124:
      v59 = MEMORY[0x277D84F90];
      goto LABEL_77;
    }

    v121 = v56 + 8;
    v59 = MEMORY[0x277D84F90];
    v128 = v56;
LABEL_61:
    v124 = v59;
    v60 = v121 + 40 * v58--;
    while (1)
    {
      if (v58 >= *(v56 + 16))
      {
        __break(1u);
LABEL_76:
        v59 = v124;
        goto LABEL_77;
      }

      v61 = *(v60 - 16);
      v62 = &v61[OBJC_IVAR___SGNode_data];
      v63 = v61[OBJC_IVAR___SGNode_data + 80];
      if (v63 <= 0x3F)
      {
        v140 = *(v60 + 16);
        v172 = *(v60 - 8);
        v65 = *(v62 + 8);
        v64 = *(v62 + 9);
        v181 = *(v62 + 7);
        v177 = *(v62 + 6);
        v155 = *(v62 + 5);
        v151 = *(v62 + 4);
        v66 = *(v62 + 2);
        v147 = *(v62 + 3);
        v67 = *v62;
        v68 = *(v62 + 1);
        v132 = *v60;
        v136 = *(v60 + 8);
        v144 = *v60;
        v167 = v61;
        v173 = v172;
        outlined copy of NodeData(v67, v68, v66, v147, v151, v155, v177, v181, v65, v64, v63);

        outlined copy of MaterialXAvailability(v151, v155);
        v69._countAndFlagsBits = 0x74736E6F635F444ELL;
        v69._object = 0xEC0000005F746E61;
        v159 = String.hasPrefix(_:)(v69);

        outlined consume of MaterialXAvailability(v151, v155);
        outlined consume of NodeData(v67, v68, v66, v147, v151, v155, v177, v181, v65, v64, v63);
        if (v159)
        {
          v59 = v124;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v187 = v124;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v124 + 16) + 1, 1);
            v59 = v187;
          }

          v72 = *(v59 + 16);
          v71 = *(v59 + 24);
          if (v72 >= v71 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
            v59 = v187;
          }

          *(v59 + 16) = v72 + 1;
          v73 = v59 + 40 * v72;
          *(v73 + 32) = v167;
          *(v73 + 40) = v173;
          *(v73 + 48) = v132;
          *(v73 + 56) = v136;
          *(v73 + 64) = v140;
          v56 = v128;
          if (!v58)
          {
LABEL_77:
            outlined destroy of [Input](&v192, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
            v76 = *(v59 + 16);
            if (!v76)
            {
LABEL_118:

              return;
            }

            v77 = 0;
            v78 = v59 + 32;
            v125 = v59;
            v129 = *(v59 + 16);
            v141 = v59 + 32;
            while (2)
            {
              if (v77 >= *(v59 + 16))
              {
                goto LABEL_129;
              }

              v81 = (v78 + 40 * v77);
              v80 = *v81;
              v160 = v81[1];
              v82 = v81[2];
              v83 = *&(*v81)[OBJC_IVAR___SGNode_inputs];
              if (!(v83 >> 62))
              {
                if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_85;
                }

LABEL_81:
                if (++v77 == v76)
                {
                  goto LABEL_118;
                }

                continue;
              }

              break;
            }

            v114 = v77;
            v115 = __CocoaSet.count.getter();
            v78 = v141;
            v77 = v114;
            if (!v115)
            {
              goto LABEL_81;
            }

LABEL_85:
            *v156 = v77;
            if ((v83 & 0xC000000000000001) != 0)
            {
              v116 = v82;
              v117 = v80;
              v118 = v160;
              v86 = MEMORY[0x266772030](0, v83);
            }

            else
            {
              if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_130;
              }

              v84 = *(v83 + 32);
              v85 = v82;
              v86 = v84;
              v87 = v80;
              v88 = v160;
            }

            v89 = *&v80[OBJC_IVAR___SGNode_outputs];
            if (v89 >> 62)
            {
              if (!__CocoaSet.count.getter())
              {
                goto LABEL_79;
              }

LABEL_90:
              if ((v89 & 0xC000000000000001) != 0)
              {
                v90 = MEMORY[0x266772030](0, v89);
              }

              else
              {
                if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_131;
                }

                v90 = *(v89 + 32);
              }

              v91 = v90;
              v92 = SGOutput.edges.getter();
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              v152 = Strong;
              if (Strong)
              {
                v94 = OBJC_IVAR___SGEdge_from;
                v95 = Strong;
                swift_beginAccess();
                v96 = *&v95[v94];
                v97 = v95;
                SGGraph.remove(edge:)(v97);
              }

              else
              {
                v96 = 0;
              }

              v145 = v91;
              v148 = v86;
              if (v92 >> 62)
              {
                v98 = __CocoaSet.count.getter();
              }

              else
              {
                v98 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v99 = OBJC_IVAR___SGGraph_edges;
              swift_beginAccess();
              if (v98)
              {
                v133 = v80;
                v137 = v82;
                v100 = 0;
                v174 = v92 & 0xFFFFFFFFFFFFFF8;
                v178 = v92 & 0xC000000000000001;
                v101 = v160;
                v164 = v99;
                v168 = v92;
                *v162 = v98;
                while (1)
                {
                  if (v178)
                  {
                    v102 = MEMORY[0x266772030](v100, v92);
                  }

                  else
                  {
                    if (v100 >= *(v174 + 16))
                    {
                      goto LABEL_128;
                    }

                    v102 = *(v92 + 8 * v100 + 32);
                  }

                  v103 = v102;
                  v182 = v100 + 1;
                  if (__OFADD__(v100, 1))
                  {
                    goto LABEL_127;
                  }

                  v104 = v96;
                  v105 = OBJC_IVAR___SGEdge_to;
                  swift_beginAccess();
                  swift_unknownObjectWeakAssign();
                  swift_unknownObjectWeakInit();
                  swift_unknownObjectWeakAssign();
                  swift_beginAccess();
                  specialized OrderedSet.remove(_:)(v183, v184);
                  swift_endAccess();
                  outlined destroy of [Input](v183, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
                  outlined destroy of [Input](v184, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMR);
                  v106 = *&v101[v164];

                  v107 = specialized Collection<>.firstIndex(of:)(v103, v106);
                  v108 = v101;
                  v110 = v109;

                  if (v110)
                  {

                    lazy protocol witness table accessor for type APIError and conformance APIError();
                    swift_allocError();
                    *v119 = 0xD000000000000032;
                    *(v119 + 8) = 0x8000000265F33020;
                    *(v119 + 16) = 1;
                    swift_willThrow();

                    v75 = v137;
                    goto LABEL_74;
                  }

                  swift_beginAccess();
                  v111 = specialized Array.remove(at:)(v107, specialized _ArrayBuffer._consumeAndCreateNew());
                  swift_endAccess();

                  v101 = v108;
                  v96 = v104;
                  if (v104)
                  {
                    v112 = *&v103[v105];
                    v113 = v104;
                    SGGraph.connect(_:to:)(v104, v112);
                  }

                  ++v100;
                  v92 = v168;
                  if (v182 == *v162)
                  {
                    v80 = v133;
                    v82 = v137;
                    break;
                  }
                }
              }

              v59 = v125;
              v76 = v129;
              v86 = v148;
              v79 = v152;
            }

            else
            {
              if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_90;
              }

LABEL_79:
              v79 = v80;
              v80 = v160;
            }

            v77 = *v156;
            v78 = v141;
            goto LABEL_81;
          }

          goto LABEL_61;
        }

        v56 = v128;
      }

      --v58;
      v60 -= 40;
      if (v58 == -1)
      {
        goto LABEL_76;
      }
    }
  }

  v20 = 0;
  v21 = v5 + 32;
  v135 = v5 + 32;
  v127 = *(v5 + 16);
  while (1)
  {
    if (v20 >= *(v123 + 16))
    {
      __break(1u);
      goto LABEL_124;
    }

    v24 = (v21 + 40 * v20);
    v23 = *v24;
    v158 = v24[1];
    v25 = v24[2];
    v26 = *&(*v24)[OBJC_IVAR___SGNode_inputs];
    if (v26 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_22;
      }
    }

    else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    if ((v26 & 0xC000000000000001) == 0)
    {
      break;
    }

    v52 = v25;
    v53 = v23;
    v54 = v158;
    v29 = MEMORY[0x266772030](0, v26);
LABEL_29:
    v32 = *&v23[OBJC_IVAR___SGNode_outputs];
    if (v32 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_31:
        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x266772030](0, v32);
        }

        else
        {
          if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v33 = *(v32 + 32);
        }

        v34 = v33;
        v35 = SGOutput.edges.getter();
        swift_beginAccess();
        v36 = swift_unknownObjectWeakLoadStrong();
        v176 = v35;
        v154 = v36;
        if (v36)
        {
          v37 = OBJC_IVAR___SGEdge_from;
          v38 = v36;
          swift_beginAccess();
          v171 = *&v38[v37];
          v39 = v38;
          SGGraph.remove(edge:)(v39);

          v35 = v176;
        }

        else
        {
          v171 = 0;
        }

        v150 = v29;
        if (v35 >> 62)
        {
          v40 = __CocoaSet.count.getter();
        }

        else
        {
          v40 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v41 = OBJC_IVAR___SGGraph_edges;
        swift_beginAccess();
        if (v40)
        {
          v131 = v20;
          v139 = v23;
          v143 = v25;
          v42 = 0;
          v166 = v35 & 0xC000000000000001;
          *v161 = v41;
          v163 = v35 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v166)
            {
              v43 = MEMORY[0x266772030](v42, v35);
            }

            else
            {
              if (v42 >= *(v163 + 16))
              {
                goto LABEL_122;
              }

              v43 = *(v35 + 8 * v42 + 32);
            }

            v19 = v43;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            v180 = (v42 + 1);
            v41 = v40;
            v44 = OBJC_IVAR___SGEdge_to;
            swift_beginAccess();
            swift_unknownObjectWeakAssign();
            swift_unknownObjectWeakInit();
            swift_unknownObjectWeakAssign();
            swift_beginAccess();
            specialized OrderedSet.remove(_:)(v185, v186);
            swift_endAccess();
            outlined destroy of [Input](v185, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
            outlined destroy of [Input](v186, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMR);
            v25 = *v161;
            v45 = *&v158[*v161];

            v46 = specialized Collection<>.firstIndex(of:)(v19, v45);
            v48 = v47;

            if (v48)
            {

              lazy protocol witness table accessor for type APIError and conformance APIError();
              swift_allocError();
              *v74 = 0xD000000000000032;
              *(v74 + 8) = 0x8000000265F33020;
              *(v74 + 16) = 1;
              swift_willThrow();

              v75 = v143;
LABEL_74:

              return;
            }

            swift_beginAccess();
            v49 = specialized Array.remove(at:)(v46, specialized _ArrayBuffer._consumeAndCreateNew());
            swift_endAccess();

            v23 = v171;
            if (v171)
            {
              v50 = *&v19[v44];
              v51 = v171;
              SGGraph.connect(_:to:)(v171, v50);
            }

            v35 = v176;

            ++v42;
            v40 = v41;
            if (v180 == v41)
            {
              v23 = v139;
              v25 = v143;
              v19 = v127;
              v20 = v131;
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_122:
          __break(1u);

          return;
        }

LABEL_51:

        v21 = v135;
        v29 = v150;
        v22 = v154;
        goto LABEL_21;
      }
    }

    else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v22 = v23;
    v23 = v158;
LABEL_21:

LABEL_22:
    if (++v20 == v19)
    {
      goto LABEL_59;
    }
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v26 + 32);
    v28 = v25;
    v29 = v27;
    v30 = v23;
    v31 = v158;
    goto LABEL_29;
  }

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
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.removeUnconnectedNodesAndEdges()()
{
  v2 = v1;
  v3 = specialized SGGraph.connectedUpstreamSubgraph(rootedAt:)(*(v0 + OBJC_IVAR___SGGraph_resultsNode));
  v51 = v4;

  v5 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_67;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= 2)
  {
    while (1)
    {
      if ((v6 & 0xC000000000000001) == 0 || v8 == 2)
      {
      }

      else
      {
        type metadata accessor for SGNode();

        v10 = 2;
        do
        {
          v11 = v10 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v10);
          v10 = v11;
        }

        while (v8 != v11);
      }

      if (v7)
      {

        v6 = _CocoaArrayWrapper.subscript.getter();
        v54 = v13;
        v12 = v14;
        v8 = v15 >> 1;
      }

      else
      {
        v6 &= 0xFFFFFFFFFFFFFF8uLL;
        v54 = v6 + 32;
        v12 = 2;
      }

      swift_endAccess();
      swift_unknownObjectRetain();
      if (v12 == v8)
      {
LABEL_14:

        swift_unknownObjectRelease_n();
        return;
      }

      v60 = v51 + 32;
      v58 = v3 + 32;
      v55 = v3;
      v53 = v6;
      v52 = v8;
      while (1)
      {
        if (v12 >= v8)
        {
          goto LABEL_64;
        }

        v17 = *(v54 + 8 * v12);
        v57 = v17;
        if (v3)
        {
          break;
        }

        v7 = *(v51 + 16);
        v32 = v17;
        if (!v7)
        {
          goto LABEL_17;
        }

        v16 = v32;
        type metadata accessor for SGNode();
        v33 = (v51 + 32);
        while (1)
        {
          v34 = *v33;
          v35 = static NSObject.== infix(_:_:)();

          if (v35)
          {
            break;
          }

          ++v33;
          if (!--v7)
          {
            goto LABEL_17;
          }
        }

LABEL_18:

        v3 = v55;
LABEL_19:
        v6 = v53;
        if (++v12 == v8)
        {
          goto LABEL_14;
        }
      }

      v6 = *(v3 + 16);
      v18 = v17;

      v19 = NSObject._rawHashValue(seed:)(v6);
      v20 = 1 << *(v3 + 16);
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      if (v21)
      {
        goto LABEL_66;
      }

      v56 = v2;
      v23 = v22 & v19;
      v24 = _HashTable.UnsafeHandle._startIterator(bucket:)(v22 & v19, (v3 + 16), v58);
      if (!v24)
      {
        break;
      }

      v6 = v25;
      v2 = v26;
      v27 = -1 << *(v3 + 16);
      v28 = (v27 ^ ~v24) + (*(v3 + 24) >> 6);
      if (v28 >= ~v27)
      {
        v29 = ~v27;
      }

      else
      {
        v29 = 0;
      }

      v7 = v28 - v29;
      type metadata accessor for SGNode();
      v30 = *(v60 + 8 * v7);
      v31 = static NSObject.== infix(_:_:)();

      if (v31)
      {
        v3 = v55;
LABEL_60:

        v2 = v56;
        v8 = v52;
        goto LABEL_19;
      }

      v59 = 0;
      v3 = v55;
LABEL_35:
      ++v23;
      v36 = *(v55 + 16) & 0x3FLL;
      v37 = 1 << *(v55 + 16);
      if (v23 == v37)
      {
        if (v59)
        {
          goto LABEL_74;
        }

        v23 = 0;
        v59 = 1;
      }

      if (v2 >= v36)
      {
        v45 = (v37 - 1) & v6;
        v6 >>= v36;
        v2 -= v36;
        if (!v45)
        {
          break;
        }

LABEL_56:
        v46 = -1 << v36;
        v47 = (v46 ^ ~v45) + (*(v55 + 24) >> 6);
        if (v47 >= ~v46)
        {
          v48 = ~v46;
        }

        else
        {
          v48 = 0;
        }

        v49 = *(v60 + 8 * (v47 - v48));
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {
          goto LABEL_60;
        }

        goto LABEL_35;
      }

      v38 = (v23 * v36) >> 6;
      if (v2)
      {
        if (__OFADD__(v36 << v36, 64))
        {
          goto LABEL_65;
        }

        v39 = (v36 << v36) + 126;
        if ((v36 << v36) + 64 >= 1)
        {
          v39 = (v36 << v36) + 63;
        }

        if (v38 + 1 == v39 >> 6)
        {
          v38 = 0;
        }

        else
        {
          ++v38;
        }
      }

      v40 = v36 - v2;
      if (!__OFSUB__(v36, v2))
      {
        v41 = v38 == 2 && v36 == 5;
        v42 = 64;
        if (v41)
        {
          v42 = 32;
        }

        v21 = __OFSUB__(v42, v40);
        v43 = v42 - v40;
        if (v21)
        {
          goto LABEL_63;
        }

        v44 = *(v58 + 8 * v38);
        v45 = ((v44 << v2) | v6) & (v37 - 1);
        v6 = v44 >> v40;
        v2 = v43;
        if (!v45)
        {
          break;
        }

        goto LABEL_56;
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v50 = __CocoaSet.count.getter();
      if (v50 < 2)
      {
        goto LABEL_72;
      }

      v8 = v50;
      if (__CocoaSet.count.getter() < 2)
      {
        goto LABEL_73;
      }

      if (__CocoaSet.count.getter() < v8)
      {
        __break(1u);
        goto LABEL_71;
      }
    }

    v2 = v56;
    v8 = v52;
LABEL_17:
    v16 = v57;
    SGGraph.remove(node:)(v57);
    if (v2)
    {

      swift_unknownObjectRelease_n();

      return;
    }

    goto LABEL_18;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double TopologicalSort.surfaceNodeElement(ofType:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  specialized TopologicalSort.surfaceNodeElement(ofType:)(a1 & 1, *v2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v8;
  }

  return result;
}

void mapUniforms(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0VySiGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0VySiGGMR);
  inited = swift_initStackObject();
  *(inited + 16) = partial apply for closure #1 in mapUniforms(_:);
  *(inited + 24) = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v21 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v21;
    swift_beginAccess();
    v6 = 0;
    v7 = (a1 + 56);
    while (1)
    {
      v9 = *(v7 - 3);
      v8 = *(v7 - 2);
      v20 = *(v7 - 8);
      v19 = *v7;
      if (v20 == 1)
      {
        v10 = v6;
        outlined copy of TextureSource(v9, v8);
        outlined copy of TextureSource(v9, v8);

        v6 = v10;
        v11 = v9;
        v12 = v8;
      }

      else
      {
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          return;
        }

        *(v2 + 16) = v13;
        outlined copy of TextureSource(v9, v8);

        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v14);

        v11 = 0x65727574786574;
        v12 = 0xE700000000000000;
        v6 = v13;
      }

      v22 = v5;
      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v6 = v18;
        v5 = v22;
      }

      *(v5 + 16) = v16 + 1;
      v17 = v5 + 48 * v16;
      *(v17 + 32) = v11;
      *(v17 + 40) = v12;
      *(v17 + 48) = v19;
      *(v17 + 56) = v9;
      *(v17 + 64) = v8;
      *(v17 + 72) = v20;
      v7 += 4;
      if (!--v4)
      {

        goto LABEL_12;
      }
    }
  }

LABEL_12:
}

void SGGraph.remove(node:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v5 = *(v1 + v4);

  v6 = specialized Collection<>.firstIndex(of:)(a1, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    v30 = v6;
    v33 = specialized Sequence.flatMap<A>(_:)(*(a1 + OBJC_IVAR___SGNode_outputs));
    v31 = a1;
    v9 = *(a1 + OBJC_IVAR___SGNode_inputs);
    v38[0] = MEMORY[0x277D84F90];
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
LABEL_34:
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v35 = MEMORY[0x277D84F90];
    while (v11 != v12)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x266772030](v12, v9);
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_31;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();

      ++v12;
      if (Strong)
      {
        MEMORY[0x266771770]();
        if (*((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v35 = v38[0];
        v12 = v15;
      }
    }

    v34 = v2;
    v38[0] = v33;
    specialized Array.append<A>(contentsOf:)(v35);
    v2 = v38[0];
    if (v38[0] >> 62)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = OBJC_IVAR___SGGraph_edges;
    swift_beginAccess();
    if (v10)
    {
      v18 = 0;
      v33 = v2 & 0xC000000000000001;
      v32 = v17;
      do
      {
        if (v33)
        {
          v19 = MEMORY[0x266772030](v18, v2);
        }

        else
        {
          if (v18 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v19 = *(v2 + 8 * v18 + 32);
        }

        v20 = v19;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_32;
        }

        v36 = v18 + 1;
        swift_beginAccess();
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        swift_beginAccess();
        specialized OrderedSet.remove(_:)(v39, v37);
        swift_endAccess();
        outlined destroy of [Input](v39, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
        outlined destroy of [Input](v37, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGSgMR);
        v9 = v34;
        v21 = *(v34 + v32);

        v22 = specialized Collection<>.firstIndex(of:)(v20, v21);
        v24 = v23;

        if (v24)
        {

          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v29 = 0xD000000000000032;
          *(v29 + 8) = 0x8000000265F33020;
          *(v29 + 16) = 1;
          swift_willThrow();

          return;
        }

        swift_beginAccess();
        v25 = specialized Array.remove(at:)(v22, specialized _ArrayBuffer._consumeAndCreateNew());
        swift_endAccess();

        ++v18;
      }

      while (v36 != v10);
    }

    swift_beginAccess();
    v26 = specialized Array.remove(at:)(v30, specialized _ArrayBuffer._consumeAndCreateNew());
    swift_endAccess();

    v27 = *(v31 + OBJC_IVAR___SGNode_name);
    v28 = *(v31 + OBJC_IVAR___SGNode_name + 8);
    swift_beginAccess();

    specialized OrderedDictionary.subscript.setter(0, v27, v28);
    swift_endAccess();
  }
}

uint64_t SGGraph.nodeWithOutput(_:)(char *a1, void *a2, const char *a3, ...)
{
  v5 = &a1[*a2];
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;

    v8 = SGGraph.node(named:)(v7, v6);

    result = v8;
    if (v8)
    {
      return result;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = static os_log_type_t.error.getter();
    v12 = a1;
    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v11))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v12;
      *v15 = v12;
      v16 = v12;
      _os_log_impl(&dword_265D7D000, v13, v11, a3, v14, 0xCu);
      outlined destroy of [Input](v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v15, -1, -1);
      MEMORY[0x266773120](v14, -1, -1);
    }
  }

  return 0;
}

unint64_t _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfCSo11MTLFunction_p_Tt0g5Tm(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
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

uint64_t SGGraph.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGGraph_name);

  return v1;
}

Class @objc SGGraph.childNodes.getter(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void, __n128))
{
  swift_beginAccess();
  (a4)(0);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t @objc SGGraph.edges.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  (a4)(0, a2);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *a5;
  swift_beginAccess();
  *(a1 + v8) = v7;
}

id SGGraph.init(name:inputs:outputs:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    v11 = a1;
    v12 = a2;
  }

  else
  {
    v12 = 0xE800000000000000;
    v11 = 0x64656C7469746E55;
  }

  v13 = &v4[OBJC_IVAR___SGGraph_name];
  *v13 = v11;
  v13[1] = v12;
  if (a3 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  v57 = v4;
  if (v14)
  {
    v60 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_33;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        v19 = (MEMORY[0x266772030]() + OBJC_IVAR___SGInput_attachment);
        swift_beginAccess();
        *v19 = a1;
        v19[1] = a2;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v17 = v18;
      }

      while (v14 != v18);
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = *(a3 + v21);
        v23 = &v22[OBJC_IVAR___SGInput_attachment];
        swift_beginAccess();
        *v23 = a1;
        *(v23 + 1) = a2;
        v24 = v22;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v21 += 8;
        --v14;
      }

      while (v14);
    }

    v20 = v60;
    v4 = v57;
    v15 = MEMORY[0x277D84F90];
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  *&v4[OBJC_IVAR___SGGraph_inputs] = v20;
  if (!(a4 >> 62))
  {
    v25 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_20;
    }

LABEL_30:

    v33 = MEMORY[0x277D84F90];
LABEL_31:
    *&v57[OBJC_IVAR___SGGraph_outputs] = v33;
    *&v57[OBJC_IVAR___SGGraph_edges] = v15;
    swift_beginAccess();

    v35 = specialized static SGGraph.generateArgumentsNode(inputs:)(v34);

    v36 = OBJC_IVAR___SGGraph_argumentsNode;
    *&v57[OBJC_IVAR___SGGraph_argumentsNode] = v35;
    swift_beginAccess();

    v38 = specialized static SGGraph.generateResultsNode(outputs:)(v37);

    v39 = OBJC_IVAR___SGGraph_resultsNode;
    *&v57[OBJC_IVAR___SGGraph_resultsNode] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_265F24070;
    v41 = *&v57[v36];
    *(v40 + 32) = v41;
    *(v40 + 40) = v38;
    *&v57[OBJC_IVAR___SGGraph_nodes] = v40;
    v42 = v41;
    v43 = v38;
    v44 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_AA6SGNodeCSaySS_AItGTt0g5Tf4g_n(v15);
    v45 = &v57[OBJC_IVAR___SGGraph_nodeMap];
    *v45 = v44;
    *(v45 + 1) = v46;
    *(v45 + 2) = v47;
    v48 = *&v57[v36];
    v49 = *&v48[OBJC_IVAR___SGNode_name];
    v50 = *&v48[OBJC_IVAR___SGNode_name + 8];
    swift_beginAccess();

    v51 = v48;
    specialized OrderedDictionary.subscript.setter(v48, v49, v50);
    v52 = *&v57[v39];
    v53 = *&v52[OBJC_IVAR___SGNode_name];
    v54 = *&v52[OBJC_IVAR___SGNode_name + 8];

    v55 = v52;
    specialized OrderedDictionary.subscript.setter(v52, v53, v54);
    swift_endAccess();
    v58.receiver = v57;
    v58.super_class = ObjectType;
    v56 = objc_msgSendSuper2(&v58, sel_init);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    return v56;
  }

  v25 = __CocoaSet.count.getter();
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_20:
  v59[0] = v15;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v25 & 0x8000000000000000) == 0)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v26 = 0;
      do
      {
        v27 = v26 + 1;
        v28 = (MEMORY[0x266772030]() + OBJC_IVAR___SGOutput_attachment);
        swift_beginAccess();
        *v28 = a1;
        v28[1] = a2;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v26 = v27;
      }

      while (v25 != v27);
    }

    else
    {
      v29 = 32;
      do
      {
        v30 = *(a4 + v29);
        v31 = &v30[OBJC_IVAR___SGOutput_attachment];
        swift_beginAccess();
        *v31 = a1;
        *(v31 + 1) = a2;
        v32 = v30;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v29 += 8;
        --v25;
      }

      while (v25);
    }

    v33 = v59[0];
    v15 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

LABEL_33:
  __break(1u);
  return result;
}

ShaderGraph::SGGraph::CodingKeys_optional __swiftcall SGGraph.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGGraph.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t SGGraph.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x7365646F6ELL;
  v2 = 0x737475706E69;
  v3 = 0x7374757074756FLL;
  if (a1 != 3)
  {
    v3 = 1701667182;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7365676465;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGGraph.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7365646F6ELL;
  v3 = *a1;
  v4 = *a2;
  v5 = 0xE600000000000000;
  v6 = 0x737475706E69;
  v7 = 0xE700000000000000;
  v8 = 0x7374757074756FLL;
  if (v3 != 3)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7365676465;
  if (!*a1)
  {
    v9 = 0x7365646F6ELL;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v3 <= 1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = v5;
  }

  v12 = 0xE600000000000000;
  v13 = 0x737475706E69;
  v14 = 0xE700000000000000;
  v15 = 0x7374757074756FLL;
  if (v4 != 3)
  {
    v15 = 1701667182;
    v14 = 0xE400000000000000;
  }

  if (v4 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (*a2)
  {
    v2 = 0x7365676465;
  }

  if (*a2 <= 1u)
  {
    v16 = v2;
  }

  else
  {
    v16 = v13;
  }

  if (*a2 <= 1u)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = v12;
  }

  if (v10 == v16 && v11 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGGraph.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SGGraph.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGGraph.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGGraph.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SGGraph.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SGGraph.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7365646F6ELL;
  v5 = 0xE600000000000000;
  v6 = 0x737475706E69;
  v7 = 0xE700000000000000;
  v8 = 0x7374757074756FLL;
  if (v2 != 3)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7365676465;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SGGraph.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7365646F6ELL;
  v3 = 0x737475706E69;
  v4 = 0x7374757074756FLL;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7365676465;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGGraph.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SGGraph.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGGraph.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGGraph.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SGGraph.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph7SGGraphC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph7SGGraphC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v151 - v7;
  v9 = a1[3];
  v169 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10 = v2;
  if (v2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_4;
  }

  LOBYTE(v179) = 4;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  v20 = &v3[OBJC_IVAR___SGGraph_name];
  *v20 = v11;
  v20[1] = v18;
  v21 = v11;

  v22._countAndFlagsBits = v21;
  v22._object = v19;
  v23._countAndFlagsBits = 1701667182;
  v23._object = 0xE400000000000000;
  validate(_:named:)(v22, v23);
  v10 = v24;
  if (v24)
  {
    (*(v6 + 8))(v8, v5);

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 1;
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
  v178[0] = 2;
  lazy protocol witness table accessor for type [SGInput] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v3[OBJC_IVAR___SGGraph_inputs] = v179;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph8SGOutputCGMd, &_sSay11ShaderGraph8SGOutputCGMR);
  v178[0] = 3;
  lazy protocol witness table accessor for type [SGOutput] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v3[OBJC_IVAR___SGGraph_outputs] = v179;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGNodeCGMd, &_sSay11ShaderGraph6SGNodeCGMR);
  v178[0] = 0;
  lazy protocol witness table accessor for type [SGNode] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v179;
  swift_beginAccess();
  v26 = v25;

  v28 = specialized static SGGraph.generateArgumentsNode(inputs:)(v27);

  v168 = OBJC_IVAR___SGGraph_argumentsNode;
  *&v3[OBJC_IVAR___SGGraph_argumentsNode] = v28;
  swift_beginAccess();

  v30 = specialized static SGGraph.generateResultsNode(outputs:)(v29);

  v165 = OBJC_IVAR___SGGraph_resultsNode;
  *&v3[OBJC_IVAR___SGGraph_resultsNode] = v30;
  if (v26 >> 62)
  {
    goto LABEL_153;
  }

  v31 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v161 = v6;
  v160 = v5;
  v164 = v8;
  v32 = v168;
  v167 = v26;
  if (!v31)
  {
    goto LABEL_29;
  }

  v176 = MEMORY[0x277D84F90];
  v166 = v31;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 & ~(v31 >> 63), 0);
  if ((v166 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v35 = v176;
    v36 = v26 & 0xC000000000000001;
    do
    {
      if (v36)
      {
        v37 = MEMORY[0x266772030](v34, v167);
      }

      else
      {
        v37 = v167[v34 + 4];
      }

      v38 = v37;
      v39 = &v37[OBJC_IVAR___SGNode_name];
      swift_beginAccess();
      v41 = *v39;
      v40 = *(v39 + 1);

      v176 = v35;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        v35 = v176;
      }

      v34 = (v34 + 1);
      *(v35 + 16) = v43 + 1;
      v44 = v35 + 16 * v43;
      *(v44 + 32) = v41;
      *(v44 + 40) = v40;
      v32 = v168;
    }

    while (v166 != v34);
    v6 = v161;
    v5 = v160;
    v8 = v164;
LABEL_29:
    v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

    v46 = (*&v3[v32] + OBJC_IVAR___SGNode_name);
    v48 = *v46;
    v47 = v46[1];

    v49 = v32;
    v50 = specialized Set.contains(_:)(v48, v47, v45);

    if (v50)
    {
    }

    else
    {
      v49 = v165;
      v51 = (*&v3[v165] + OBJC_IVAR___SGNode_name);
      v53 = *v51;
      v52 = v51[1];

      v54 = specialized Set.contains(_:)(v53, v52, v45);

      if ((v54 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v61 = swift_allocObject();
        v62 = *&v3[v168];
        *(v61 + 16) = xmmword_265F24070;
        v63 = *&v3[v49];
        *(v61 + 32) = v62;
        *(v61 + 40) = v63;
        v176 = v61;
        v64 = v62;
        v65 = v63;
        specialized Array.append<A>(contentsOf:)(v167);
        v33 = v176;
        v152 = OBJC_IVAR___SGGraph_nodes;
        *&v3[OBJC_IVAR___SGGraph_nodes] = v176;
        if (!(v33 >> 62))
        {
          v26 = v33;
          v66 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_35;
        }

        goto LABEL_159;
      }
    }

    v176 = 0;
    *&v177 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v176 = 0xD000000000000017;
    *&v177 = 0x8000000265F33060;
    v55 = (*&v3[v49] + OBJC_IVAR___SGNode_name);
    v56 = *v55;
    v57 = v55[1];

    MEMORY[0x266771550](v56, v57);

    v58 = v176;
    v59 = v177;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v10 = swift_allocError();
    *v60 = v58;
    *(v60 + 8) = v59;
    *(v60 + 16) = 14;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
LABEL_4:
    type metadata accessor for SGError();
    v16 = v10;
    SGError.__allocating_init(_:)(v10);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(v169);
    if (v12)
    {

      if (!v13)
      {
        goto LABEL_6;
      }
    }

    else if (!v13)
    {
      goto LABEL_6;
    }

LABEL_6:
    if (v14)
    {

      if (!v15)
      {
        goto LABEL_9;
      }
    }

    else if (!v15)
    {
LABEL_9:
      swift_deallocPartialClassInstance();
      return v3;
    }

    goto LABEL_9;
  }

  while (1)
  {
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    v26 = v33;
    v66 = __CocoaSet.count.getter();
LABEL_35:
    v67 = MEMORY[0x277D84F90];
    if (v66)
    {
      v176 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66 & ~(v66 >> 63), 0);
      if (v66 < 0)
      {
        __break(1u);
        goto LABEL_161;
      }

      v68 = 0;
      v69 = v176;
      v166 = v26 & 0xC000000000000001;
      v167 = v66;
      v70 = v26;
      do
      {
        if (v166)
        {
          v71 = MEMORY[0x266772030](v68, v26);
        }

        else
        {
          v71 = *(v26 + 8 * v68 + 32);
        }

        v72 = v71;
        v73 = *&v71[OBJC_IVAR___SGNode_name];
        v74 = *&v71[OBJC_IVAR___SGNode_name + 8];
        v176 = v69;
        v75 = *(v69 + 16);
        v76 = *(v69 + 24);
        v168 = v75 + 1;

        if (v75 >= v76 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v168, 1);
          v69 = v176;
        }

        v68 = (v68 + 1);
        *(v69 + 16) = v168;
        v77 = (v69 + 24 * v75);
        v77[4] = v73;
        v77[5] = v74;
        v77[6] = v72;
        v8 = v164;
        v26 = v70;
      }

      while (v167 != v68);

      v67 = MEMORY[0x277D84F90];
    }

    v78 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfCSo11MTLFunction_p_Tt0g5Tm(v67, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5, specialized Array._copyContents(initializing:));
    v176 = 0;
    *&v177 = v67;
    *(&v177 + 1) = v78;

    specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(v79, specialized closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:), 0, &v176);
    v80 = v10;
    if (v10)
    {
      goto LABEL_182;
    }

    swift_bridgeObjectRelease_n();
    v81 = v177;
    v82 = &v3[OBJC_IVAR___SGGraph_nodeMap];
    *v82 = v176;
    *(v82 + 8) = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
    LOBYTE(v172) = 1;
    lazy protocol witness table accessor for type [SGEdge] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v153 = v176;
    v83 = v152;
    swift_beginAccess();
    v26 = *&v3[v83];
    if (!(v26 >> 62))
    {
      v6 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_48;
    }

LABEL_161:
    v6 = __CocoaSet.count.getter();
LABEL_48:

    v5 = MEMORY[0x277D84F90];
    v154 = v26;
    if (v6)
    {
      v84 = 0;
      v158 = v26 & 0xC000000000000001;
      v157 = v26 & 0xFFFFFFFFFFFFFF8;
      v156 = v26 + 32;
      v85 = MEMORY[0x277D84F90];
      v155 = v6;
      while (1)
      {
        if (v158)
        {
          v86 = MEMORY[0x266772030](v84, v154);
        }

        else
        {
          if (v84 >= *(v157 + 16))
          {
            goto LABEL_142;
          }

          v86 = *(v156 + 8 * v84);
        }

        v163 = v86;
        v87 = __OFADD__(v84, 1);
        v88 = v84 + 1;
        if (v87)
        {
          break;
        }

        v89 = *&v163[OBJC_IVAR___SGNode_inputs];
        if (v89 >> 62)
        {
          v108 = *&v163[OBJC_IVAR___SGNode_inputs];
          v109 = __CocoaSet.count.getter();
          v89 = v108;
          v8 = v109;
        }

        else
        {
          v8 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v162 = v88;
        if (v8)
        {
          v26 = v89;
          v159 = v85;
          v171 = v5;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
          if (v8 < 0)
          {
            goto LABEL_149;
          }

          v90 = 0;
          v91 = v171;
          v166 = &v163[OBJC_IVAR___SGNode_name];
          v92 = v26;
          v165 = v26 & 0xC000000000000001;
          v168 = v26;
          v167 = v8;
          do
          {
            if (v165)
            {
              v93 = MEMORY[0x266772030](v90, v92);
            }

            else
            {
              v93 = *(v92 + 8 * v90 + 32);
            }

            v94 = v93;
            v95 = *(v166 + 8);
            v172 = *v166;
            v173 = v95;

            MEMORY[0x266771550](58, 0xE100000000000000);
            MEMORY[0x266771550](*&v94[OBJC_IVAR___SGInput_name], *&v94[OBJC_IVAR___SGInput_name + 8]);
            v96 = v172;
            v97 = v173;
            v171 = v91;
            v99 = v91[2];
            v98 = v91[3];
            if (v99 >= v98 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
              v91 = v171;
            }

            v90 = (v90 + 1);
            v91[2] = v99 + 1;
            v100 = &v91[3 * v99];
            v100[4] = v96;
            v100[5] = v97;
            v100[6] = v94;
            v92 = v168;
          }

          while (v167 != v90);

          v85 = v159;
          v6 = v155;
          v5 = MEMORY[0x277D84F90];
        }

        else
        {

          v91 = v5;
        }

        v8 = v91;
        v101 = v91[2];
        v26 = v85[2];
        v102 = v26 + v101;
        if (__OFADD__(v26, v101))
        {
          goto LABEL_143;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v102 > v85[3] >> 1)
        {
          if (v26 <= v102)
          {
            v104 = v26 + v101;
          }

          else
          {
            v104 = v26;
          }

          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v104, 1, v85);
        }

        if (*(v8 + 16))
        {
          v105 = v85[2];
          if ((v85[3] >> 1) - v105 < v101)
          {
            goto LABEL_150;
          }

          v26 = &v85[3 * v105];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph7SGInputCtMd, &_sSS_11ShaderGraph7SGInputCtMR);
          swift_arrayInitWithCopy();

          if (v101)
          {
            v106 = v85[2];
            v87 = __OFADD__(v106, v101);
            v107 = v106 + v101;
            if (v87)
            {
              goto LABEL_155;
            }

            v85[2] = v107;
          }
        }

        else
        {

          if (v101)
          {
            goto LABEL_144;
          }
        }

        v84 = v162;
        if (v162 == v6)
        {
          goto LABEL_84;
        }
      }

      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      v31 = __CocoaSet.count.getter();
      goto LABEL_19;
    }

    v85 = MEMORY[0x277D84F90];
LABEL_84:

    if (v85[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMR);
      v110 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v110 = MEMORY[0x277D84F98];
    }

    v172 = v110;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v85, 1, &v172, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
    v151 = v10;
    if (v10)
    {
      goto LABEL_183;
    }

    v154 = v172;
    v26 = *&v3[v152];
    if (v26 >> 62)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v111 = MEMORY[0x277D84F90];
    v152 = v26;
    if (v10)
    {
      v8 = 0;
      v158 = v26 & 0xC000000000000001;
      v157 = v26 & 0xFFFFFFFFFFFFFF8;
      v156 = v26 + 32;
      v6 = MEMORY[0x277D84F90];
      v155 = v10;
      while (1)
      {
        if (v158)
        {
          v112 = MEMORY[0x266772030](v8, v152);
          v87 = __OFADD__(v8++, 1);
          if (v87)
          {
            goto LABEL_145;
          }
        }

        else
        {
          if (v8 >= *(v157 + 16))
          {
            goto LABEL_146;
          }

          v112 = *(v156 + 8 * v8);
          v87 = __OFADD__(v8++, 1);
          if (v87)
          {
            goto LABEL_145;
          }
        }

        v168 = *&v112[OBJC_IVAR___SGNode_outputs];
        v26 = v168;
        if (v168 >> 62)
        {
          v123 = v112;
          v5 = __CocoaSet.count.getter();
          v112 = v123;
          v26 = v168;
          if (!v5)
          {
LABEL_112:

            v5 = v111;
            goto LABEL_113;
          }
        }

        else
        {
          v5 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v5)
          {
            goto LABEL_112;
          }
        }

        v163 = v112;
        v159 = v8;
        v162 = v6;
        v171 = v111;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
        v167 = v5;
        if (v5 < 0)
        {
          goto LABEL_151;
        }

        v113 = 0;
        v5 = v171;
        v166 = &v163[OBJC_IVAR___SGNode_name];
        v114 = v26;
        v165 = v26 & 0xC000000000000001;
        do
        {
          if (v165)
          {
            v115 = MEMORY[0x266772030](v113, v114);
          }

          else
          {
            v115 = *(v114 + 8 * v113 + 32);
          }

          v116 = v115;
          v117 = *(v166 + 8);
          v172 = *v166;
          v173 = v117;

          MEMORY[0x266771550](58, 0xE100000000000000);
          MEMORY[0x266771550](*&v116[OBJC_IVAR___SGOutput_name], *&v116[OBJC_IVAR___SGOutput_name + 8]);
          v118 = v172;
          v119 = v173;
          v171 = v5;
          v121 = *(v5 + 16);
          v120 = *(v5 + 24);
          if (v121 >= v120 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1);
            v5 = v171;
          }

          v113 = (v113 + 1);
          *(v5 + 16) = v121 + 1;
          v122 = (v5 + 24 * v121);
          v122[4] = v118;
          v122[5] = v119;
          v122[6] = v116;
          v114 = v168;
        }

        while (v167 != v113);

        v111 = MEMORY[0x277D84F90];
        v6 = v162;
        v10 = v155;
        v8 = v159;
LABEL_113:
        v124 = *(v5 + 16);
        v26 = *(v6 + 16);
        v125 = v26 + v124;
        if (__OFADD__(v26, v124))
        {
          goto LABEL_147;
        }

        v126 = swift_isUniquelyReferenced_nonNull_native();
        if (!v126 || v125 > *(v6 + 24) >> 1)
        {
          if (v26 <= v125)
          {
            v127 = v26 + v124;
          }

          else
          {
            v127 = v26;
          }

          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v126, v127, 1, v6);
        }

        if (*(v5 + 16))
        {
          v128 = *(v6 + 16);
          if ((*(v6 + 24) >> 1) - v128 < v124)
          {
            goto LABEL_152;
          }

          v26 = v6 + 24 * v128;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph8SGOutputCtMd, &_sSS_11ShaderGraph8SGOutputCtMR);
          swift_arrayInitWithCopy();

          if (v124)
          {
            v129 = *(v6 + 16);
            v87 = __OFADD__(v129, v124);
            v130 = v129 + v124;
            if (v87)
            {
              goto LABEL_156;
            }

            *(v6 + 16) = v130;
          }
        }

        else
        {

          if (v124)
          {
            goto LABEL_148;
          }
        }

        if (v8 == v10)
        {
          goto LABEL_126;
        }
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_126:

    if (*(v6 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMR);
      v131 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v131 = MEMORY[0x277D84F98];
    }

    v80 = v153;
    v172 = v131;
    v132 = v151;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v6, 1, &v172, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
    v8 = v132;
    if (v132)
    {
      break;
    }

    v133 = v172;
    if (v80 >> 62)
    {
      v134 = __CocoaSet.count.getter();
      if (!v134)
      {
LABEL_164:

        v138 = MEMORY[0x277D84F90];
LABEL_165:
        v139 = v161;
        v140 = v160;
        *&v3[OBJC_IVAR___SGGraph_edges] = v138;
        v174.receiver = v3;
        v174.super_class = ObjectType;
        v3 = objc_msgSendSuper2(&v174, sel_init, v151);
        v141 = OBJC_IVAR___SGGraph_nodes;
        swift_beginAccess();
        v142 = *&v3[v141];
        if (v142 >> 62)
        {
          goto LABEL_180;
        }

        for (i = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
        {
          v3 = v3;

          if (!i)
          {
            break;
          }

          v144 = 0;
          ObjectType = (v142 & 0xC000000000000001);
          v145 = v142;
          v146 = v142 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (ObjectType)
            {
              v142 = i;
              v147 = MEMORY[0x266772030](v144, v145);
            }

            else
            {
              if (v144 >= *(v146 + 16))
              {
                goto LABEL_179;
              }

              v142 = i;
              v147 = *(v145 + 8 * v144 + 32);
            }

            v148 = v147;
            v140 = (v144 + 1);
            if (__OFADD__(v144, 1))
            {
              break;
            }

            swift_beginAccess();
            swift_unknownObjectWeakAssign();

            ++v144;
            i = v142;
            v149 = v140 == v142;
            v139 = v161;
            v140 = v160;
            if (v149)
            {
              goto LABEL_177;
            }
          }

          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          ;
        }

LABEL_177:

        (*(v139 + 8))(v164, v140);
        __swift_destroy_boxed_opaque_existential_1Tm(v169);

        return v3;
      }
    }

    else
    {
      v134 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v134)
      {
        goto LABEL_164;
      }
    }

    v172 = v111;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v134 < 0)
    {
      __break(1u);
LABEL_182:

      __break(1u);
LABEL_183:

      v150 = v151;
      goto LABEL_185;
    }

    v10 = 0;
    v168 = v80 & 0xC000000000000001;
    v33 = &v181;
    v167 = (v80 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v135 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v168)
      {
        v136 = MEMORY[0x266772030](v10, v80);
      }

      else
      {
        if (v10 >= v167[2])
        {
          goto LABEL_158;
        }

        v136 = *(v80 + 8 * v10 + 32);
      }

      v137 = v136;
      v180 = v136;
      closure #7 in SGGraph.init(from:)(&v180, v154, v133, &v175, &v171);
      v8 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v80 = v153;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v10;
      if (v135 == v134)
      {

        v138 = v172;
        goto LABEL_165;
      }
    }

    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
  }

  v150 = v132;
LABEL_185:

  __break(1u);
  return result;
}

uint64_t closure #7 in SGGraph.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t **a5@<X8>)
{
  v8 = 0xD000000000000012;
  v9 = *a1;
  v10 = OBJC_IVAR___SGEdge_to;
  v11 = (*(*a1 + OBJC_IVAR___SGEdge_to) + OBJC_IVAR___SGInput_attachment);
  swift_beginAccess();
  v12 = v11[1];
  v13 = "Invalid uniform type: ";
  if (v12)
  {
    v42 = a5;
    v43 = a3;
    v44 = a4;
    v14 = *v11;
    v15 = OBJC_IVAR___SGEdge_from;
    v16 = (*(v9 + OBJC_IVAR___SGEdge_from) + OBJC_IVAR___SGOutput_attachment);
    swift_beginAccess();
    v17 = v16[1];
    if (!v17)
    {
      v8 = 0xD00000000000001ELL;
LABEL_13:
      a4 = v44;
      goto LABEL_14;
    }

    v18 = *v16;

    MEMORY[0x266771550](58, 0xE100000000000000);
    v19 = (*(v9 + v10) + OBJC_IVAR___SGInput_name);
    v21 = *v19;
    v20 = v19[1];

    MEMORY[0x266771550](v21, v20);

    v46 = v18;
    MEMORY[0x266771550](58, 0xE100000000000000);
    v22 = (*(v9 + v15) + OBJC_IVAR___SGOutput_name);
    v24 = *v22;
    v23 = v22[1];

    MEMORY[0x266771550](v24, v23);

    if (*(a2 + 16))
    {
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v12);
      v27 = v26;

      if ((v27 & 1) != 0 && *(v43 + 16))
      {
        v28 = *(*(a2 + 56) + 8 * v25);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v17);
        v31 = v30;

        if (v31)
        {
          v32 = *(*(v43 + 56) + 8 * v29);
          v33 = type metadata accessor for SGEdge();
          v34 = objc_allocWithZone(v33);
          *&v34[OBJC_IVAR___SGEdge_from] = v32;
          *&v34[OBJC_IVAR___SGEdge_to] = v28;
          v47.receiver = v34;
          v47.super_class = v33;
          v35 = v32;
          v36 = v28;
          v37 = v35;
          v38 = objc_msgSendSuper2(&v47, sel_init);
          swift_beginAccess();
          swift_unknownObjectWeakAssign();
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          swift_beginAccess();
          specialized OrderedSet._append(_:)(v48);
          swift_endAccess();

          result = outlined destroy of [Input](v48, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
          *v42 = v38;
          return result;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_12:
    v13 = "Unable to decode IO attachment";
    goto LABEL_13;
  }

  v8 = 0xD00000000000001ELL;
LABEL_14:
  lazy protocol witness table accessor for type APIError and conformance APIError();
  v40 = swift_allocError();
  *v41 = v8;
  *(v41 + 8) = v13 | 0x8000000000000000;
  *(v41 + 16) = 14;
  result = swift_willThrow();
  *a4 = v40;
  return result;
}

void SGGraph.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph7SGGraphC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph7SGGraphC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v33 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
    type metadata accessor for SGError();
    v25 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();
  }

  else
  {
    v9 = OBJC_IVAR___SGGraph_inputs;
    swift_beginAccess();
    v32 = *(v3 + v9);
    LOBYTE(v31) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
    lazy protocol witness table accessor for type [SGInput] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = OBJC_IVAR___SGGraph_outputs;
    swift_beginAccess();
    v31 = *(v3 + v10);
    LOBYTE(v34) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph8SGOutputCGMd, &_sSay11ShaderGraph8SGOutputCGMR);
    lazy protocol witness table accessor for type [SGOutput] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = OBJC_IVAR___SGGraph_nodes;
    swift_beginAccess();
    v12 = *(v3 + v11);
    if (!(v12 >> 62))
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= 2)
      {
LABEL_4:
        v29 = v12 >> 62;
        if ((v12 & 0xC000000000000001) == 0 || v13 == 2)
        {

          if (!v29)
          {
LABEL_9:
            v12 &= 0xFFFFFFFFFFFFFF8uLL;
            v16 = v12 + 32;
            v13 = (2 * v13) | 1;
            v17 = 2;
            goto LABEL_12;
          }
        }

        else
        {
          type metadata accessor for SGNode();

          v14 = 2;
          do
          {
            v15 = v14 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v14);
            v14 = v15;
          }

          while (v13 != v15);
          if (!v29)
          {
            goto LABEL_9;
          }
        }

        v12 = _CocoaArrayWrapper.subscript.getter();
        v16 = v18;
        v17 = v19;
        v13 = v20;
LABEL_12:
        swift_endAccess();
        if ((v13 & 1) == 0)
        {
LABEL_13:
          specialized _copyCollectionToContiguousArray<A>(_:)(v12, v16, v17, v13);
          v22 = v21;
          goto LABEL_20;
        }

        v28 = v16;
        v29 = v17;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v23 = swift_dynamicCastClass();
        if (!v23)
        {
          swift_unknownObjectRelease();
          v23 = MEMORY[0x277D84F90];
        }

        v24 = *(v23 + 16);

        if (!__OFSUB__(v13 >> 1, v29))
        {
          if (v24 == (v13 >> 1) - v29)
          {
            v22 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v22)
            {
LABEL_21:
              v31 = v22;
              LOBYTE(v34) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGNodeCGMd, &_sSay11ShaderGraph6SGNodeCGMR);
              lazy protocol witness table accessor for type [SGNode] and conformance <A> [A]();
              KeyedEncodingContainer.encode<A>(_:forKey:)();

              v26 = OBJC_IVAR___SGGraph_edges;
              swift_beginAccess();
              v34 = *(v3 + v26);
              v30 = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
              lazy protocol witness table accessor for type [SGEdge] and conformance <A> [A]();
              KeyedEncodingContainer.encode<A>(_:forKey:)();
              (*(v6 + 8))(v8, v5);
              return;
            }

            v22 = MEMORY[0x277D84F90];
LABEL_20:
            swift_unknownObjectRelease();
            goto LABEL_21;
          }

          goto LABEL_29;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        swift_unknownObjectRelease();
        v16 = v28;
        v17 = v29;
        goto LABEL_13;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v27 = __CocoaSet.count.getter();
    if (v27 < 2)
    {
      __break(1u);
    }

    else
    {
      v13 = v27;
      if (__CocoaSet.count.getter() >= 2)
      {
        if (__CocoaSet.count.getter() >= v13)
        {
          goto LABEL_4;
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    __break(1u);
  }
}

void SGGraph.bodyNodes.getter()
{
  v1 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    if (v7 < 2)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v3 = v7;
    if (__CocoaSet.count.getter() < 2)
    {
LABEL_19:
      __break(1u);
      return;
    }

    if (__CocoaSet.count.getter() >= v3)
    {
      goto LABEL_3;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 < 2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) == 0 || v3 == 2)
  {
  }

  else
  {
    type metadata accessor for SGNode();

    v5 = 2;
    do
    {
      v6 = v5 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v5);
      v5 = v6;
    }

    while (v3 != v6);
  }

  if (v2 >> 62)
  {

    _CocoaArrayWrapper.subscript.getter();
  }

  swift_endAccess();
}

id SGGraph.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGGraph.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *protocol witness for Decodable.init(from:) in conformance SGGraph@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SGGraph.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SGGraph.node(named:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5._countAndFlagsBits = 1701667182;
    v5._object = 0xE400000000000000;
    validate(_:named:)(*&a1, v5);
    v7 = v6;
    if (!v6)
    {
      v8 = (v2 + OBJC_IVAR___SGGraph_nodeMap);
      swift_beginAccess();
      v9 = specialized OrderedDictionary.subscript.getter(a1, a2, *v8, v8[1], v8[2]);
      swift_endAccess();
      return v9;
    }
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v7 = swift_allocError();
    *v11 = xmmword_265F20CE0;
    *(v11 + 16) = 1;
    swift_willThrow();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  v13 = static os_log_type_t.error.getter();
  v14 = v7;
  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v13))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22[0] = v17;
    *v16 = 136315138;
    v22[3] = v7;
    v18 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v22);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_265D7D000, v15, v13, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266773120](v17, -1, -1);
    MEMORY[0x266773120](v16, -1, -1);
  }

  else
  {
  }

  return 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.connect(outputInputPairs:)(Swift::OpaquePointer_optional outputInputPairs)
{
  if (outputInputPairs.value._rawValue)
  {
    v2 = v1;
    rawValue = outputInputPairs.value._rawValue;
    v4 = outputInputPairs.value._rawValue & 0xFFFFFFFFFFFFFF8;
    if (outputInputPairs.value._rawValue >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((outputInputPairs.value._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); (i & 1) == 0; i = __CocoaSet.count.getter())
    {
      if (i < 2)
      {
        v6 = 0x8000000265F33120;
        lazy protocol witness table accessor for type APIError and conformance APIError();
        swift_allocError();
        v8 = 0xD000000000000032;
        goto LABEL_38;
      }

      v10 = 0;
      v11 = rawValue & 0xC000000000000001;
      while (1)
      {
        if (v11)
        {
          MEMORY[0x266772030](v10, rawValue);
          goto LABEL_12;
        }

        if (v10 < 0)
        {
          break;
        }

        if (v10 >= *(v4 + 16))
        {
          goto LABEL_35;
        }

        swift_unknownObjectRetain();
LABEL_12:
        type metadata accessor for SGOutput();
        v12 = swift_dynamicCastClass();
        if (!v12)
        {
          swift_unknownObjectRelease();
          _StringGuts.grow(_:)(44);
          MEMORY[0x266771550](0xD00000000000001ALL, 0x8000000265F330E0);
          v16 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x266771550](v16);

          MEMORY[0x266771550](0x6F66207475622027, 0xED00002720646E75);
          if (v11)
          {
            MEMORY[0x266772030](v10, rawValue);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          _print_unlocked<A, B>(_:_:)();
          swift_unknownObjectRelease();
          MEMORY[0x266771550](39, 0xE100000000000000);
          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v7 = 0;
          *(v7 + 8) = 0xE000000000000000;
          v9 = 6;
          goto LABEL_39;
        }

        v13 = v12;
        if (v10 + 1 >= i)
        {
          goto LABEL_33;
        }

        if (v11)
        {
          MEMORY[0x266772030]();
        }

        else
        {
          if (v10 < 0)
          {
            __break(1u);
LABEL_41:
            __break(1u);
            return;
          }

          if (v10 + 1 >= *(v4 + 16))
          {
            goto LABEL_41;
          }

          swift_unknownObjectRetain();
        }

        type metadata accessor for SGInput();
        v14 = swift_dynamicCastClass();
        if (!v14)
        {
          swift_unknownObjectRelease();
          _StringGuts.grow(_:)(43);
          MEMORY[0x266771550](0xD000000000000019, 0x8000000265F33100);
          v17 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x266771550](v17);

          MEMORY[0x266771550](0x6F66207475622027, 0xED00002720646E75);
          if ((rawValue & 0xC000000000000001) != 0)
          {
            MEMORY[0x266772030](v10 + 1, rawValue);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          _print_unlocked<A, B>(_:_:)();
          swift_unknownObjectRelease();
          MEMORY[0x266771550](39, 0xE100000000000000);
          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v18 = 0;
          *(v18 + 8) = 0xE000000000000000;
          *(v18 + 16) = 7;
          swift_willThrow();
LABEL_33:
          swift_unknownObjectRelease();
          return;
        }

        v15 = v14;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        SGGraph.connect(_:to:)(v13, v15);
        if (v2)
        {
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease_n();
          return;
        }

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease_n();
        v10 += 2;
        v11 = rawValue & 0xC000000000000001;
        if (v10 >= i)
        {
          return;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

    v6 = 0x8000000265F330A0;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    v8 = 0xD00000000000003BLL;
LABEL_38:
    *v7 = v8;
    *(v7 + 8) = v6;
    v9 = 5;
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v7 = xmmword_265F26E50;
    v9 = 1;
  }

LABEL_39:
  *(v7 + 16) = v9;
  swift_willThrow();
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      specialized Set._Variant.insert(_:)(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t SGGraph.node(containing:)(uint64_t a1, void *a2)
{
  v2 = (a1 + *a2);
  swift_beginAccess();
  v3 = v2[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *v2;

  v5 = SGGraph.node(named:)(v4, v3);

  return v5;
}

uint64_t SGGraph.node(connectedTo:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = (*(Strong + OBJC_IVAR___SGEdge_from) + OBJC_IVAR___SGOutput_attachment);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v2;

    v7 = SGGraph.node(named:)(v5, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t closure #1 in SGGraph.connectedUpstreamSubgraph(rootedAt:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized OrderedSet._append(_:)(a1);
  v5 = *&a1[OBJC_IVAR___SGNode_inputs];
  v15 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_17:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x266772030](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    ++v7;
    if (Strong)
    {
      MEMORY[0x266771770]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v15;
      v7 = v11;
    }
  }

  specialized Sequence.forEach(_:)(v8, a4);
}

uint64_t SGGraph.nodesUpstreamOf(node:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___SGNode_inputs);
  v12 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_22:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v3 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v11 = result;
    for (i = v3; ; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x266772030](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v1 + 8 * i + 32);
      }

      v7 = v6;
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_6:
      if (v3 == v2)
      {
        return v11;
      }
    }

    v9 = Strong;
    swift_beginAccess();
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();

    if (!v10)
    {
      goto LABEL_6;
    }

    MEMORY[0x266771770]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v12;
  }

  while (v3 != v2);
  return result;
}

void *TopologicalSort.Element.nodeGraphCallNode.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TopologicalSort.Element.nodeGraphCallElementIndex.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t TopologicalSort.Element.init(node:graph:nodeGraphCallNode:nodeGraphCallElementIndex:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

id TopologicalSort.rootElement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v5 = *(v1 + 24);
  *(a1 + 16) = v5;
  v9 = v5;
  *(a1 + 32) = v4;
  v6 = v2;
  v7 = v3;

  return v9;
}

__n128 TopologicalSort.init(_:root:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  *a3 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3 & 1;
  return result;
}

uint64_t closure #1 in SGGraph.topologicalSort()(char *a1, void *a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *a3;
    v9 = a2;
    v10 = a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    if (v13 >= v12 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    *(v8 + 16) = v13 + 1;
    v14 = v8 + 40 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v7;
    *(v14 + 48) = a2;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
  }

  else
  {
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v15 = 6;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x8000000000000000;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t inboundEdgeIterator #1 (for:) in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(uint64_t a1, uint64_t (*a2)(id), unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(a1 + OBJC_IVAR___SGNode_inputs);
    v29 = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      goto LABEL_44;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    if (v6)
    {
      v7 = 0;
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x266772030](v7, v5);
        }

        else
        {
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_41;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          v6 = __CocoaSet.count.getter();
          goto LABEL_4;
        }

        if (a2(v9))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v8 = v5 & 0xFFFFFFFFFFFFFF8;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v7;
      }

      while (v11 != v6);
      v12 = v29;
      v30 = MEMORY[0x277D84F90];
      if (v29 < 0)
      {
LABEL_45:
        a2 = __CocoaSet.count.getter();
        if (!a2)
        {
          goto LABEL_46;
        }

LABEL_25:
        v18 = v12 & 0xC000000000000001;
        v17 = MEMORY[0x277D84F90];
        v5 = 0;
        if ((v12 & 0xC000000000000001) != 0)
        {
LABEL_39:
          v19 = MEMORY[0x266772030](v5, v12);
          goto LABEL_32;
        }

        while (1)
        {
          if (v5 >= *(v12 + 16))
          {
            goto LABEL_43;
          }

          v19 = *(v12 + 8 * v5 + 32);
LABEL_32:
          v20 = v19;
          v21 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_42;
          }

          swift_beginAccess();
          v22 = swift_unknownObjectWeakLoadStrong();
          if (v22)
          {
            v23 = v22;
            v24 = *(v22 + OBJC_IVAR___SGEdge_from);

            swift_beginAccess();
            v25 = swift_unknownObjectWeakLoadStrong();

            if (v25)
            {
              MEMORY[0x266771770](v26);
              if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v17 = v30;
              if (v21 == a2)
              {
                goto LABEL_47;
              }

              ++v5;
              if (v18)
              {
                goto LABEL_39;
              }

              continue;
            }
          }

          else
          {
          }

          ++v5;
          if (v21 == a2)
          {
            goto LABEL_47;
          }

          if (v18)
          {
            goto LABEL_39;
          }
        }
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      v30 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }
    }

    if ((v12 & 0x4000000000000000) != 0)
    {
      goto LABEL_45;
    }

    a2 = *(v12 + 16);
    if (a2)
    {
      goto LABEL_25;
    }

LABEL_46:
    v17 = MEMORY[0x277D84F90];
LABEL_47:
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_265D7D000, v14, v15, "Node isn't contained in a graph.", v16, 2u);
      MEMORY[0x266773120](v16, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v17;
}

void closure #1 in mapUniforms(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v4 + 1;
    *a2 = v4;
    *(a2 + 8) = 0;
  }
}

id createCustomUniformsType(graph:textureAssignments:)(uint64_t a1, uint64_t a2)
{
  result = SGGraph.createCustomUniformsType(named:textureAssignments:)(0x736D726F66696E55, 0xE800000000000000, a2);
  v4 = result;
  if (!v2)
  {
    v5 = type metadata accessor for SGPropertyDescription();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___SGPropertyDescription_name];
    *v7 = 0x736D726F66696E55;
    v7[1] = 0xE800000000000000;
    *&v6[OBJC_IVAR___SGPropertyDescription_type] = v4;
    v6[OBJC_IVAR___SGPropertyDescription_visible] = 1;
    v8.receiver = v6;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

id SGGraph.createCustomUniformsType(named:textureAssignments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = OBJC_IVAR___SGNode_outputs;
  v79 = *(v3 + OBJC_IVAR___SGGraph_argumentsNode);
  v5 = *(v79 + OBJC_IVAR___SGNode_outputs);
  v95 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v32)
  {
    v77 = a3;

    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v8 = 0;
    v83 = v5 & 0xFFFFFFFFFFFFFF8;
    v85 = v5 & 0xC000000000000001;
    v74 = v5;
    v80 = i;
    v81 = (v5 + 32);
    v5 = &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR;
    while (1)
    {
      if (v85)
      {
        v9 = MEMORY[0x266772030](v8, v74);
        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v8 >= *(v83 + 16))
        {
          goto LABEL_43;
        }

        v9 = *&v81[8 * v8];
        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_42;
        }
      }

      v92 = v9;
      v11 = &v9[OBJC_IVAR___SGOutput__edges];
      swift_beginAccess();
      v12 = *(v11 + 1);
      v101[0] = v7;
      v13 = *(v12 + 16);
      if (v13)
      {
        break;
      }

LABEL_19:
      if (v7 >> 62)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v7 = MEMORY[0x277D84F90];
      if (v8 == i)
      {
        v19 = v95;
        goto LABEL_29;
      }
    }

    v88 = v8;
    v14 = v12 + 32;

    v15 = 0;
    while (v15 < *(v12 + 16))
    {
      outlined init with copy of WeakBox<SGEdge>(v14, &v102);
      Strong = swift_unknownObjectWeakLoadStrong();
      v17 = outlined destroy of [Input](&v102, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      if (Strong)
      {
        MEMORY[0x266771770](v17);
        if (*((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v101[0];
      }

      ++v15;
      v14 += 8;
      if (v13 == v15)
      {

        i = v80;
        v8 = v88;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a3;
    v32 = __CocoaSet.count.getter();
    a3 = v31;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_29:

  if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      goto LABEL_32;
    }

LABEL_46:

    v87 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

    v33 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v34 = *(v77 + 16);
    if (v34)
    {
      v95 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
      v33 = v95;
      v35 = v77 + 40;
      do
      {
        v37 = *(v35 - 8);
        v36 = *v35;
        v38 = *(v35 + 8);
        v39 = *(v35 + 32);
        v95 = v33;
        v41 = *(v33 + 2);
        v40 = *(v33 + 3);

        if (v41 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
          v33 = v95;
        }

        *(v33 + 2) = v41 + 1;
        v42 = &v33[48 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v36;
        *(v42 + 6) = v38;
        *(v42 + 7) = MEMORY[0x277D84F90];
        v42[64] = v39;
        *(v42 + 9) = 0;
        v35 += 48;
        --v34;
      }

      while (v34);
    }

    specialized Array.append<A>(contentsOf:)(v33);
    v43 = *(v79 + v78);
    if (v43 >> 62)
    {
      goto LABEL_82;
    }

    for (j = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = __CocoaSet.count.getter())
    {
      v44 = v91;

      v45 = MEMORY[0x277D84F90];
      if (j)
      {
        v46 = 0;
        v84 = v43 & 0xFFFFFFFFFFFFFF8;
        v86 = v43 & 0xC000000000000001;
        v82 = v43;
        while (1)
        {
          if (v86)
          {
            v48 = MEMORY[0x266772030](v46, v43);
          }

          else
          {
            if (v46 >= *(v84 + 16))
            {
              goto LABEL_79;
            }

            v48 = *(v43 + 8 * v46 + 32);
          }

          v49 = v48;
          v50 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          v100 = v48;
          closure #3 in SGGraph.createCustomUniformsType(named:textureAssignments:)(&v100, v87, &v95);

          if (v96)
          {
            v93 = v96;
            v91 = v44;
            v51 = v95;
            v53 = v97;
            v52 = v98;
            v54 = v99;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
            }

            v56 = *(v45 + 2);
            v55 = *(v45 + 3);
            v57 = v93;
            if (v56 >= v55 >> 1)
            {
              v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v45);
              v57 = v93;
              v45 = v58;
            }

            *(v45 + 2) = v56 + 1;
            v47 = &v45[48 * v56];
            *(v47 + 4) = v51;
            *(v47 + 40) = v57;
            *(v47 + 7) = v53;
            v47[64] = v52 & 1;
            *(v47 + 9) = v54;
            v44 = v91;
            v43 = v82;
          }

          ++v46;
          if (v50 == j)
          {
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
      }

      else
      {
LABEL_67:

        specialized Array.append<A>(contentsOf:)(v45);
        v95 = v102;
        v87 = v102;

        v4 = v44;
        specialized MutableCollection<>.sort(by:)(&v95, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
        if (v44)
        {
          goto LABEL_84;
        }

        specialized MutableCollection<>.sort(by:)(&v95, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

        v59 = v95;
        v60 = *(v95 + 2);
        if (!v60)
        {

          v43 = MEMORY[0x277D84F90];
LABEL_77:
          type metadata accessor for MetalDataType.Struct();
          swift_allocObject();

          v70 = MetalDataType.Struct.init(note:typeName:fields:)(0, 0, a1, a2, v43);
          v71 = objc_allocWithZone(type metadata accessor for SGTypeDescription());
          v72 = specialized SGTypeDescription.init(_:)(v70);

          return v72;
        }

        v95 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60, 0);
        v61 = 0;
        v43 = v95;
        v91 = v59;
        v94 = *(v59 + 2);
        v62 = v59 + 64;
        v90 = v60;
        while (v94 != v61)
        {
          if (v61 >= *(v59 + 2))
          {
            goto LABEL_81;
          }

          v63 = *(v62 - 4);
          v64 = *(v62 - 3);
          v65 = *(v62 - 2);
          v66 = *v62;
          v95 = v43;
          v68 = *(v43 + 16);
          v67 = *(v43 + 24);

          if (v68 >= v67 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
            v43 = v95;
          }

          *(v43 + 16) = v68 + 1;
          v69 = (v43 + 48 * v68);
          *(v69 + 9) = v61;
          *(v69 + 4) = v63;
          *(v69 + 5) = v64;
          *(v69 + 6) = v65;
          *(v69 + 7) = MEMORY[0x277D84F90];
          v69[64] = v66;
          v62 += 48;
          ++v61;
          v59 = v91;
          if (v90 == v61)
          {

            goto LABEL_77;
          }
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      ;
    }
  }

  v20 = __CocoaSet.count.getter();
  if (!v20)
  {
    goto LABEL_46;
  }

LABEL_32:
  v95 = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = v95;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x266772030](v21, v19);
      }

      else
      {
        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = &v23[OBJC_IVAR___SGOutput_name];
      swift_beginAccess();
      v27 = *v25;
      v26 = *(v25 + 1);

      v95 = v22;
      v29 = *(v22 + 2);
      v28 = *(v22 + 3);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v22 = v95;
      }

      ++v21;
      *(v22 + 2) = v29 + 1;
      v30 = &v22[16 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
    }

    while (v20 != v21);
    goto LABEL_46;
  }

  __break(1u);
LABEL_84:

  __break(1u);
  return result;
}

double closure #3 in SGGraph.createCustomUniformsType(named:textureAssignments:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = (*a1 + OBJC_IVAR___SGOutput_name);
  if (specialized Set.contains(_:)(*v5, v5[1], a2))
  {
    v6 = OBJC_IVAR___SGOutput_type;
    swift_beginAccess();
    v7 = *(v4 + v6);
    if (v7 != 13)
    {
      v8 = SGDataType.metalDataType.getter(v7);
      if (v8)
      {
        v9 = v5[1];
        v10 = MEMORY[0x277D84F90];
        *a3 = *v5;
        *(a3 + 8) = v9;
        *(a3 + 16) = v8;
        *(a3 + 24) = v10;
        *(a3 + 32) = xmmword_265F23D80;

        return result;
      }

      _StringGuts.grow(_:)(24);

      v19[0] = 0xD000000000000016;
      v19[1] = 0x8000000265F33240;
      v12 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v12);

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19[0] = v17;
        *v16 = 136315138;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000265F33240, v19);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_265D7D000, v14, v15, "%s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x266773120](v17, -1, -1);
        MEMORY[0x266773120](v16, -1, -1);
      }

      else
      {
      }
    }
  }

  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

NSString __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.createDotRepresentation()()
{
  v2 = createDotText(representing:)(v0);
  if (v1)
  {
    type metadata accessor for SGError();
    v3 = v1;
    SGError.__allocating_init(_:)(v1);
    swift_willThrow();
  }

  else
  {
    v5 = MEMORY[0x266771450](v2);

    return v5;
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3 - 48;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 48 * a3 + 16);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (*(*(v9 + 16) + 60) >= *(v7 + 60))
      {
LABEL_4:
        ++a3;
        v5 += 48;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *(v9 + 48);
      v11 = *(v9 + 56);
      v12 = *(v9 + 72);
      result = *(v9 + 80);
      v13 = *(v9 + 88);
      v14 = *(v9 + 16);
      *(v9 + 48) = *v9;
      *(v9 + 64) = v14;
      *(v9 + 80) = *(v9 + 32);
      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v7;
      *(v9 + 24) = v12;
      *(v9 + 32) = result;
      *(v9 + 40) = v13;
      v9 -= 48;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 48 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 48);
      v14 = *(v12 + 72);
      v15 = *(v12 + 80);
      v16 = *(v12 + 88);
      v17 = *(v12 + 56);
      v18 = *(v12 + 16);
      *(v12 + 48) = *v12;
      *(v12 + 64) = v18;
      *(v12 + 80) = *(v12 + 32);
      *v12 = result;
      *(v12 + 8) = v17;
      *(v12 + 24) = v14;
      v10 = v17;
      *(v12 + 32) = v15;
      *(v12 + 40) = v16;
      v12 -= 48;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      result = *(v9 + 40);
      v12 = result == *(*v11 + 40) && *(v9 + 48) == *(*v11 + 48);
      if (v12 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v13;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v96 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v7 = *v96;
    if (!*v96)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v91 = *(v9 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = *&v9[16 * v91];
        v93 = *&v9[16 * v91 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v92), (*a3 + 48 * *&v9[16 * v91 + 16]), (*a3 + 48 * v93), v7);
        if (v5)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v91 - 2 >= *(v9 + 2))
        {
          goto LABEL_114;
        }

        v94 = &v9[16 * v91];
        *v94 = v92;
        *(v94 + 1) = v93;
        result = specialized Array.remove(at:)(v91 - 1);
        v91 = *(v9 + 2);
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *a3 + 48 * v10;
      v12 = *(*(*a3 + 48 * v8 + 16) + 60);
      v13 = *(*(v11 + 16) + 60);
      v14 = v10 + 2;
      v15 = (v11 + 112);
      v16 = v12;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 6;
        v18 = (v13 < v12) ^ (v16 >= *(v17 + 60));
        ++v14;
        v16 = *(v17 + 60);
        if ((v18 & 1) == 0)
        {
          v8 = v14 - 1;
          if (v13 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v13 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v19 = 48 * v8 - 24;
        v20 = 48 * v10 + 40;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v23 = (v32 + v20);
            v24 = *(v32 + v20 - 40);
            v25 = v32 + v19;
            v26 = *(v23 - 2);
            v27 = *(v23 - 8);
            v28 = *v23;
            v29 = *(v23 - 2);
            v30 = *(v25 + 8);
            v31 = *(v25 - 8);
            *(v23 - 5) = *(v25 - 24);
            *(v23 - 3) = v31;
            *(v23 - 1) = v30;
            *(v25 - 24) = v24;
            *(v25 - 16) = v29;
            *v25 = v26;
            *(v25 + 8) = v27;
            *(v25 + 16) = v28;
          }

          ++v22;
          v19 -= 48;
          v20 += 48;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v46 = *(v9 + 2);
    v45 = *(v9 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v47;
    v48 = &v9[16 * v46];
    *(v48 + 4) = v10;
    *(v48 + 5) = v8;
    v49 = *v96;
    if (!*v96)
    {
      goto LABEL_125;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v9 + 4);
          v52 = *(v9 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_104;
          }

          v67 = &v9[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_107;
          }

          v73 = &v9[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_111;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v77 = &v9[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_71:
        if (v72)
        {
          goto LABEL_106;
        }

        v80 = &v9[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_109;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_78:
        v7 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v88 = *&v9[16 * v7 + 32];
        v89 = *&v9[16 * v50 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v88), (*a3 + 48 * *&v9[16 * v50 + 32]), (*a3 + 48 * v89), v49);
        if (v5)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v7 >= *(v9 + 2))
        {
          goto LABEL_101;
        }

        v90 = &v9[16 * v7];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        result = specialized Array.remove(at:)(v50);
        v47 = *(v9 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v9[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_102;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_103;
      }

      v62 = &v9[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_105;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_108;
      }

      if (v66 >= v58)
      {
        v84 = &v9[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_112;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v33 = *a3;
  v34 = *a3 + 48 * v8 - 48;
  v35 = v10 - v8;
LABEL_30:
  v36 = *(v33 + 48 * v8 + 16);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    if (*(*(v38 + 16) + 60) >= *(v36 + 60))
    {
LABEL_29:
      ++v8;
      v34 += 48;
      --v35;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v33)
    {
      break;
    }

    v39 = *(v38 + 48);
    v40 = *(v38 + 56);
    v41 = *(v38 + 72);
    v42 = *(v38 + 80);
    result = *(v38 + 88);
    v43 = *(v38 + 16);
    *(v38 + 48) = *v38;
    *(v38 + 64) = v43;
    *(v38 + 80) = *(v38 + 32);
    *v38 = v39;
    *(v38 + 8) = v40;
    *(v38 + 16) = v36;
    *(v38 + 24) = v41;
    *(v38 + 32) = v42;
    *(v38 + 40) = result;
    v38 -= 48;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v108 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v108 = *v108;
    if (!v108)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v99 = v8 + 16;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (1)
      {
        v101 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v102 = &v8[16 * v100];
        v5 = *v102;
        v103 = &v99[2 * v100];
        v104 = v103[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((v101 + 48 * *v102), (v101 + 48 * *v103), (v101 + 48 * v104), v108);
        if (v4)
        {
        }

        if (v104 < v5)
        {
          goto LABEL_129;
        }

        if (v100 - 2 >= *v99)
        {
          goto LABEL_130;
        }

        *v102 = v5;
        *(v102 + 1) = v104;
        v105 = *v99 - v100;
        if (*v99 < v100)
        {
          goto LABEL_131;
        }

        v100 = *v99 - 1;
        result = memmove(v103, v103 + 2, 16 * v105);
        *v99 = v100;
        v5 = a3;
        if (v100 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 48 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 48 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 48 * v9 + 56);
        v17 = v16;
        do
        {
          result = v16[5];
          v19 = v17[6];
          v17 += 6;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 48 * v7 - 24;
          v22 = 48 * v9 + 40;
          v23 = v7;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v34 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v34 + v22);
              v26 = *(v34 + v22 - 40);
              v27 = v34 + v21;
              v28 = *(v25 - 2);
              v29 = *(v25 - 8);
              v30 = *v25;
              v31 = *(v25 - 2);
              v32 = *(v27 + 8);
              v33 = *(v27 - 8);
              *(v25 - 5) = *(v27 - 24);
              *(v25 - 3) = v33;
              *(v25 - 1) = v32;
              *(v27 - 24) = v26;
              *(v27 - 16) = v31;
              *v27 = v28;
              *(v27 + 8) = v29;
              *(v27 + 16) = v30;
            }

            ++v24;
            v21 -= 48;
            v22 += 48;
          }

          while (v24 < v23);
        }
      }
    }

    v35 = v5[1];
    if (v7 < v35)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v35)
        {
          v36 = v5[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v36)
        {
          break;
        }
      }
    }

LABEL_54:
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

    v53 = *(v8 + 2);
    v52 = *(v8 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v54;
    v55 = &v8[16 * v53];
    *(v55 + 4) = v9;
    *(v55 + 5) = v7;
    v56 = *v108;
    if (!*v108)
    {
      goto LABEL_142;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v8 + 4);
          v59 = *(v8 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_74:
          if (v61)
          {
            goto LABEL_120;
          }

          v74 = &v8[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_123;
          }

          v80 = &v8[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_127;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v84 = &v8[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_88:
        if (v79)
        {
          goto LABEL_122;
        }

        v87 = &v8[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_125;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_95:
        v95 = v57 - 1;
        if (v57 - 1 >= v54)
        {
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

        if (!*v5)
        {
          goto LABEL_139;
        }

        v96 = *&v8[16 * v95 + 32];
        v97 = *&v8[16 * v57 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 48 * v96), (*v5 + 48 * *&v8[16 * v57 + 32]), (*v5 + 48 * v97), v56);
        if (v4)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v95 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v98 = &v8[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        result = specialized Array.remove(at:)(v57);
        v54 = *(v8 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v8[16 * v54 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_118;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_119;
      }

      v69 = &v8[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_121;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_124;
      }

      if (v73 >= v65)
      {
        v91 = &v8[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_128;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v37 = *v5;
  v38 = *v5 + 48 * v7 - 48;
  v106 = v9;
  v39 = v9 - v7;
LABEL_43:
  v40 = (v37 + 48 * v7);
  v41 = *v40;
  v42 = v40[1];
  v43 = v39;
  v44 = v38;
  while (1)
  {
    v45 = v41 == *v44 && v42 == *(v44 + 8);
    if (v45 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v38 += 48;
      --v39;
      if (v7 != v36)
      {
        goto LABEL_43;
      }

      v7 = v36;
      v5 = a3;
      v9 = v106;
      goto LABEL_54;
    }

    if (!v37)
    {
      break;
    }

    v41 = *(v44 + 48);
    v46 = *(v44 + 72);
    v47 = *(v44 + 80);
    v48 = *(v44 + 88);
    v49 = *(v44 + 56);
    v50 = *(v44 + 16);
    *(v44 + 48) = *v44;
    *(v44 + 64) = v50;
    *(v44 + 80) = *(v44 + 32);
    *v44 = v41;
    *(v44 + 8) = v49;
    *(v44 + 24) = v46;
    v42 = v49;
    *(v44 + 32) = v47;
    *(v44 + 40) = v48;
    v44 -= 48;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_42;
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
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(*(v4 + 2) + 60) < *(*(v6 + 2) + 60))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 48;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v5 -= 48;
    do
    {
      v17 = v5 + 48;
      if (*(*(v6 - 4) + 60) < *(*(v12 - 4) + 60))
      {
        v21 = v6 - 48;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 48, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 48;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 48;
      v12 -= 48;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v25 = (v24 >> 3) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[48 * v25])
  {
    memmove(v6, v4, 48 * v25);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v16 = v7 == v4;
      v4 += 48;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v16 = v7 == v6;
    v6 += 48;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 48;
    v5 -= 48;
    v18 = v12;
    do
    {
      v19 = *(v18 - 6);
      v20 = *(v18 - 5);
      v18 -= 48;
      v21 = v19 == *(v6 - 6) && v20 == *(v6 - 5);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 48 != v6)
        {
          v24 = *v17;
          v25 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v25;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 48, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v5 + 48 != v12)
      {
        v22 = *v18;
        v23 = *(v18 + 2);
        *(v5 + 1) = *(v18 + 1);
        *(v5 + 2) = v23;
        *v5 = v22;
      }

      v5 -= 48;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_39:
  v26 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v26])
  {
    memmove(v6, v4, 48 * v26);
  }

  return 1;
}

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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 40) == *(*v4 + 40) && *(*v6 + 48) == *(*v4 + 48);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
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

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
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
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 48);
      v21 = *(v19 + 40) == *(*v17 + 40) && v20 == *(*v17 + 48);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SGNode] and conformance [A](&lazy protocol witness table cache variable for type [SGEdge] and conformance [A], &_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SGEdge();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SGNode] and conformance [A](&lazy protocol witness table cache variable for type [SGNode] and conformance [A], &_sSay11ShaderGraph6SGNodeCGMd, &_sSay11ShaderGraph6SGNodeCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph6SGNodeCGMd, &_sSay11ShaderGraph6SGNodeCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SGNode();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SGNode] and conformance [A](&lazy protocol witness table cache variable for type [MTLLibrary] and conformance [A], &_sSaySo10MTLLibrary_pGMd, &_sSaySo10MTLLibrary_pGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10MTLLibrary_pGMd, &_sSaySo10MTLLibrary_pGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10MTLLibrary_pMd, &_sSo10MTLLibrary_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SGNode] and conformance [A](&lazy protocol witness table cache variable for type [MetalFunctionDefinitionNode] and conformance [A], &_sSay11ShaderGraph27MetalFunctionDefinitionNodeCGMd, &_sSay11ShaderGraph27MetalFunctionDefinitionNodeCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph27MetalFunctionDefinitionNodeCGMd, &_sSay11ShaderGraph27MetalFunctionDefinitionNodeCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MetalFunctionDefinitionNode();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SGNode] and conformance [A](&lazy protocol witness table cache variable for type [MTLFunction] and conformance [A], &_sSaySo11MTLFunction_pGMd, &_sSaySo11MTLFunction_pGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11MTLFunction_pGMd, &_sSaySo11MTLFunction_pGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11MTLFunction_pMd, &_sSo11MTLFunction_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SGNode] and conformance [A](&lazy protocol witness table cache variable for type [MTLFunctionStitchingNode] and conformance [A], &_sSaySo24MTLFunctionStitchingNode_pGMd, "4");
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24MTLFunctionStitchingNode_pGMd, "4");
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MTLFunctionStitchingNode_pMd, &_sSo24MTLFunctionStitchingNode_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id specialized closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

BOOL specialized static TopologicalSort.Element.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = 0;
  if (a1 == a4 && a2 == a5)
  {
    result = (a3 | a6) == 0;
    if (a3)
    {
      if (a6)
      {
        type metadata accessor for SGNode();
        v10 = a6;
        v11 = a3;
        v12 = static NSObject.== infix(_:_:)();

        return v12 & 1;
      }
    }
  }

  return result;
}

uint64_t specialized SGGraph.edgeConnected(toInputNamed:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR___SGNode_inputs);
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x266772030](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v5 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = *&v8[OBJC_IVAR___SGInput_name] == a1 && *&v8[OBJC_IVAR___SGInput_name + 8] == a2;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();

        return Strong;
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

uint64_t specialized SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(char *, id))
{
  v156 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7SGGraphC15depthFirstVisit4from16includeSubgraphs14inputPredicate_yAC6SGNodeC_S2bAC7SGInputCXEyAK_AKSgtKXEtKF7ContextL_VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7SGGraphC15depthFirstVisit4from16includeSubgraphs14inputPredicate_yAC6SGNodeC_S2bAC7SGInputCXEyAK_AKSgtKXEtKF7ContextL_VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_265F20CD0;
  *(v7 + 32) = a1;
  v8 = a1;
  v9 = MEMORY[0x277D84F90];
  v10 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSO_SaySOGTt0g5(MEMORY[0x277D84F90]);
  v12 = v11;
  v13 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSO_SaySOGTt0g5(v9);
  v15 = v14;
  v16 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSO_s16IndexingIteratorVySayAA6SGNodeCGGSaySO_AMtGTt0g5Tf4g_n(v9);
  *(inited + 32) = v7;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  *(inited + 80) = v17;
  *(inited + 88) = v18;
  v133 = (inited + 16);
  v135 = inited;
  v19 = *(inited + 16);
  if (!v19)
  {
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_122;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = v138;
  while (2)
  {
    v25 = v19 - 1;
    v26 = &v135[64 * v25];
    v27 = *(v26 + 4);
    v152 = *(v26 + 40);
    v28 = v152;
    v29 = *(v26 + 7);
    v30 = *(v26 + 8);
    v31 = *(v26 + 9);
    v32 = *(v26 + 10);
    v33 = *(v26 + 11);
    *(v135 + 2) = v25;
    *&v153[8] = v28;
    *v153 = v27;
    v126 = v30;
    v128 = v29;
    *&v153[24] = v29;
    *&v154 = v30;
    *(&v154 + 1) = v31;
    *&v155 = v32;
    v139 = v24;
    v140 = v32;
    *(&v155 + 1) = v33;
    v125 = v30 + 32;
    while (1)
    {
      while (1)
      {
        v143 = v27 >> 62;
        if (v27 >> 62)
        {
          v34 = __CocoaSet.count.getter();
          if (!v34)
          {
LABEL_111:
            v148 = *v153;
            v149 = *&v153[16];
            v150 = v154;
            v151 = v155;
            outlined destroy of Context #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(&v148);
            goto LABEL_117;
          }
        }

        else
        {
          v34 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v34)
          {
            goto LABEL_111;
          }
        }

        v35 = v34 - 1;
        if (__OFSUB__(v34, 1))
        {
          goto LABEL_127;
        }

        if ((v27 & 0xC000000000000001) != 0)
        {

          v36 = MEMORY[0x266772030](v35, v27);
        }

        else
        {
          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_128;
          }

          if (v35 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
          }

          v36 = *(v27 + 8 * v35 + 32);
        }

        v37 = swift_allocObject();
        v37[2] = a3;
        v37[3] = a4;
        v37[4] = v36;
        v38 = v36;
        _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v23, v22);
        v39 = swift_allocObject();
        *(v39 + 16) = partial apply for implicit closure #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:);
        *(v39 + 24) = v37;
        v142 = v37;
        v145 = v39;
        _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v21, v20);
        v40 = *(v140 + 16);
        v146 = v38;
        if (*(&v154 + 1))
        {
          v41 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v38, v140 + 32, v40, (*(&v154 + 1) + 16), *(&v154 + 1) + 32);
          v42 = v38;
          if ((v43 & 1) == 0)
          {
            v44 = v41;
            goto LABEL_25;
          }

          goto LABEL_20;
        }

        if (!v40)
        {
          v42 = v38;
LABEL_20:
          v45 = specialized OrderedSet._appendNew(_:in:)(v42, v40);
          v140 = v155;
          v46 = *(v155 + 16);
          v47 = (*(v145 + 16))(v45);
          v49 = v48;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(&v155 + 1) = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1);
            v33 = *(&v155 + 1);
          }

          v52 = v33[2];
          v51 = v33[3];
          if (v52 >= v51 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
            v33 = *(&v155 + 1);
          }

          v44 = v46 - 1;
          v33[2] = v52 + 1;
          v53 = &v33[2 * v52];
          v53[4] = v47;
          v53[5] = v49;
          v42 = v38;
          goto LABEL_25;
        }

        v44 = 0;
        v42 = v38;
        while (*(v140 + 8 * v44 + 32) != v38)
        {
          if (v40 == ++v44)
          {
            v40 = 0;
            goto LABEL_20;
          }
        }

LABEL_25:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v33);
        }

        v54 = &v33[2 * v44];
        v55 = v54[4];
        v56 = v54[5];
        *(&v155 + 1) = v33;
        if (v55 >> 62)
        {
          if (v56 == __CocoaSet.count.getter())
          {
LABEL_29:
            v57 = 0;
            goto LABEL_39;
          }
        }

        else if (v56 == *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        if ((v55 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x266772030](v56, v55);
        }

        else
        {
          if ((v56 & 0x8000000000000000) != 0)
          {
            goto LABEL_130;
          }

          if (v56 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_132;
          }

          v58 = *(v55 + 8 * v56 + 32);
        }

        v57 = v58;
        v59 = __OFADD__(v56++, 1);
        if (v59)
        {
          goto LABEL_131;
        }

LABEL_39:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v33);
        }

        v60 = &v33[2 * v44];
        v60[4] = v55;
        v60[5] = v56;
        *(&v155 + 1) = v33;
        if (!v57)
        {
          break;
        }

        if (v143)
        {
          v61 = __CocoaSet.count.getter();
          if (v61)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v61 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v61)
          {
LABEL_50:
            v68 = 0;
            do
            {
              if ((v27 & 0xC000000000000001) != 0)
              {
                v69 = MEMORY[0x266772030](v68, v27);
                v59 = __OFADD__(v68++, 1);
                if (v59)
                {
                  __break(1u);
LABEL_125:
                  __break(1u);
LABEL_126:
                  __break(1u);
LABEL_127:
                  __break(1u);
LABEL_128:
                  __break(1u);
                  goto LABEL_129;
                }

                v70 = v69;
                swift_unknownObjectRelease();
                if (v70 == v57)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                if ((v68 & 0x8000000000000000) != 0)
                {
                  goto LABEL_125;
                }

                if (v68 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_126;
                }

                if (*(v27 + 32 + 8 * v68) == v57)
                {
LABEL_119:

                  lazy protocol witness table accessor for type APIError and conformance APIError();
                  swift_allocError();
                  *v115 = xmmword_265F26E60;
                  *(v115 + 16) = 24;
                  swift_willThrow();

                  v148 = *v153;
                  v149 = *&v153[16];
                  v150 = v154;
                  v151 = v155;
                  outlined destroy of Context #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(&v148);
                  goto LABEL_120;
                }

                ++v68;
              }
            }

            while (v68 != v61);
          }
        }

        v71 = v57;
        MEMORY[0x266771770]();
        if (*((*v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v21 = partial apply for thunk for @callee_guaranteed () -> (@owned IndexingIterator<[SGNode]>);
        v23 = partial apply for implicit closure #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:);
        v27 = *v153;
        v22 = v142;
        v20 = v145;
      }

      v62 = *&v153[8];
      v63 = *&v153[16];
      v64 = (*&v153[16] + 32);
      v65 = *(*&v153[16] + 16);
      if (*&v153[8])
      {
        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v42, *&v153[16] + 32, v65, (*&v153[8] + 16), *&v153[8] + 32);
        if ((v66 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v72 = (*&v153[16] + 32);
        if (v65)
        {
          while (*v72 != v42)
          {
            ++v72;
            if (!--v65)
            {
              goto LABEL_66;
            }
          }

LABEL_47:
          if (v143)
          {
            v67 = __CocoaSet.count.getter();
          }

          else
          {
            v67 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v67)
          {
            goto LABEL_135;
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v143 || !isUniquelyReferenced_nonNull_bridgeObject)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew()();
          }

          v82 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v82)
          {
            goto LABEL_136;
          }

          v83 = v82 - 1;
          v84 = *((v27 & 0xFFFFFFFFFFFFFF8) + 8 * v83 + 0x20);
          *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) = v83;

          goto LABEL_109;
        }
      }

LABEL_66:
      if (a2)
      {
        v73 = &v42[OBJC_IVAR___SGNode_data];
        v74 = v42[OBJC_IVAR___SGNode_data + 80];
        if ((v74 & 0xC0) == 0x40)
        {
          break;
        }
      }

LABEL_70:
      v79 = *(v63 + 16);
      if (v62)
      {
        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v42, v64, v79, (v62 + 16), v62 + 32);
        if (v80)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (!v79)
        {
LABEL_83:
          specialized OrderedSet._appendNew(_:in:)(v42, v79);
          goto LABEL_84;
        }

        while (*v64 != v42)
        {
          ++v64;
          if (!--v79)
          {
            goto LABEL_83;
          }
        }
      }

LABEL_84:
      if (*v133)
      {
        v85 = *&v135[64 * *v133 - 32];
        if (v85 >> 62)
        {
          v86 = __CocoaSet.count.getter();
          if (v86)
          {
LABEL_87:
            v87 = v86 - 1;
            if (__OFSUB__(v86, 1))
            {
              goto LABEL_137;
            }

            if ((v85 & 0xC000000000000001) != 0)
            {

              v88 = MEMORY[0x266772030](v87, v85);
            }

            else
            {
              if ((v87 & 0x8000000000000000) != 0)
              {
                goto LABEL_138;
              }

              if (v87 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_139;
              }

              v88 = *(v85 + 8 * v87 + 32);
            }

            goto LABEL_99;
          }
        }

        else
        {
          v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v86)
          {
            goto LABEL_87;
          }
        }
      }

      v88 = 0;
LABEL_99:
      a5(v42, v88);
      if (v139)
      {

        v148 = *v153;
        v149 = *&v153[16];
        v150 = v154;
        v151 = v155;
        outlined destroy of Context #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(&v148);

LABEL_120:
      }

      if (v143)
      {
        v90 = __CocoaSet.count.getter();
      }

      else
      {
        v90 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v90)
      {
        goto LABEL_133;
      }

      v91 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v143 || !v91)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      v92 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v92)
      {
        goto LABEL_134;
      }

      v93 = v92 - 1;
      v94 = *((v27 & 0xFFFFFFFFFFFFFF8) + 8 * v93 + 0x20);
      *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) = v93;

LABEL_109:
      *v153 = v27;
      v21 = partial apply for thunk for @callee_guaranteed () -> (@owned IndexingIterator<[SGNode]>);
      v23 = partial apply for implicit closure #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:);
      v22 = v142;
      v20 = v145;
    }

    v75 = *v73;
    v123 = *(v73 + 2);
    v124 = *(v73 + 1);
    v122 = *(v73 + 3);
    v120 = *(v73 + 5);
    v121 = *(v73 + 4);
    v118 = *(v73 + 7);
    v119 = *(v73 + 6);
    v76 = *(v73 + 9);
    v117 = *(v73 + 8);
    v77 = *(v126 + 16);
    if (v128)
    {
      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v42, v125, v77, (v128 + 16), v128 + 32);
      if (v78)
      {
        goto LABEL_112;
      }

      goto LABEL_70;
    }

    v89 = v125;
    if (v77)
    {
      while (*v89 != v42)
      {
        ++v89;
        if (!--v77)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_70;
    }

LABEL_112:
    outlined copy of NodeData(v75, v124, v123, v122, v121, v120, v119, v118, v117, v76, v74);
    specialized OrderedSet._append(_:)(v42);
    v148 = *v153;
    v149 = *&v153[16];
    v150 = v154;
    v151 = v155;
    outlined init with copy of Context #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(&v148, v147);
    v95 = *v133;
    v96 = *(v135 + 3);
    v97 = *v133 + 1;
    if (*v133 >= v96 >> 1)
    {
      v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), *v133 + 1, 1, v135);
    }

    *(v135 + 2) = v97;
    v98 = &v135[64 * v95];
    v99 = v148;
    v100 = v149;
    v101 = v151;
    *(v98 + 4) = v150;
    *(v98 + 5) = v101;
    *(v98 + 2) = v99;
    *(v98 + 3) = v100;
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_265F20CD0;
    v103 = *&v75[OBJC_IVAR___SGGraph_resultsNode];
    *(v102 + 32) = v103;
    v104 = v103;
    v105 = MEMORY[0x277D84F90];
    v144 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSO_SaySOGTt0g5(MEMORY[0x277D84F90]);
    v141 = v106;
    v134 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSO_SaySOGTt0g5(v105);
    v130 = v107;
    v108 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSO_s16IndexingIteratorVySayAA6SGNodeCGGSaySO_AMtGTt0g5Tf4g_n(v105);
    v127 = v109;
    v129 = v108;
    v111 = v110;
    v113 = *(v135 + 2);
    v112 = *(v135 + 3);
    if (v113 >= v112 >> 1)
    {
      v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v135);
    }

    outlined consume of NodeData(v75, v124, v123, v122, v121, v120, v119, v118, v117, v76, v74);

    *(v135 + 2) = v113 + 1;
    v114 = &v135[64 * v113];
    *(v114 + 4) = v102;
    *(v114 + 5) = v144;
    *(v114 + 6) = v141;
    *(v114 + 7) = v134;
    *(v114 + 8) = v130;
    *(v114 + 9) = v129;
    *(v114 + 10) = v111;
    *(v114 + 11) = v127;
    v147[0] = *v153;
    v147[1] = *&v153[16];
    v147[2] = v154;
    v147[3] = v155;
    outlined destroy of Context #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(v147);
    v21 = partial apply for thunk for @callee_guaranteed () -> (@owned IndexingIterator<[SGNode]>);
    v23 = partial apply for implicit closure #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:);
    v22 = v142;
    v20 = v145;
LABEL_117:
    v19 = *(v135 + 2);
    v133 = (v135 + 16);
    v24 = v139;
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_122:

  _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v23, v22);
  return _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v21, v20);
}

unint64_t specialized SGGraph.connectedUpstreamSubgraph(rootedAt:)(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v4 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGNodeC_SayAHGTt0g5(MEMORY[0x277D84F90]);
  _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGEdgeC_SayAHGTt0g5(v2);
  specialized SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(a1, 0, protocol witness for static Equatable.== infix(_:_:) in conformance MaterialXDataType.Kind.SetCodingKeys, 0, partial apply for closure #1 in SGGraph.connectedUpstreamSubgraph(rootedAt:));
  return v4;
}

unint64_t lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError()
{
  result = lazy protocol witness table cache variable for type SGInternalError and conformance SGInternalError;
  if (!lazy protocol witness table cache variable for type SGInternalError and conformance SGInternalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGInternalError and conformance SGInternalError);
  }

  return result;
}

uint64_t specialized TopologicalSort.surfaceNodeElement(ofType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = result;
  v3 = *(a2 + 16);
  if (!v3)
  {
    v5 = 0;
    v7 = 0;
    v9 = 0;
    v19 = 0uLL;
    goto LABEL_45;
  }

  v20 = a3;
  v4 = a2 + 40 * v3;
  do
  {
    v5 = *(v4 - 8);
    v6 = &v5[OBJC_IVAR___SGNode_data];
    if (v5[OBJC_IVAR___SGNode_data + 80] > 0x3Fu)
    {
      goto LABEL_4;
    }

    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(v4 + 24);
    v11 = *v6;
    v10 = *(v6 + 1);
    if (*v6 == 0xD000000000000021 && 0x8000000265F2BC10 == v10)
    {
      goto LABEL_3;
    }

    v21 = *(v4 + 8);
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = v21;
    if (result)
    {
      goto LABEL_3;
    }

    if (v11 == 0xD00000000000001FLL && 0x8000000265F2BC40 == v10)
    {
      goto LABEL_3;
    }

    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = v21;
    if (result)
    {
      goto LABEL_3;
    }

    result = 0xD000000000000022;
    if (v11 == 0xD000000000000022 && 0x8000000265F2BBE0 == v10)
    {
      goto LABEL_3;
    }

    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = v21;
    if (result)
    {
      goto LABEL_3;
    }

    if (v11 == 0xD000000000000021 && 0x8000000265F2D740 == v10)
    {
      goto LABEL_4;
    }

    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = v21;
    if (result)
    {
      goto LABEL_4;
    }

    result = 0xD00000000000002BLL;
    if (v11 != 0xD00000000000002BLL || 0x8000000265F2D770 != v10)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8 = v21;
      if ((result & 1) == 0)
      {
        result = 0xD00000000000002FLL;
        if (v11 != 0xD00000000000002FLL || 0x8000000265F2D7A0 != v10)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v8 = v21;
          if ((result & 1) == 0)
          {
            if (v11 != 0xD000000000000021 || 0x8000000265F332A0 != v10)
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              v8 = v21;
              if ((result & 1) == 0)
              {
                result = 0xD000000000000010;
                if (v11 != 0xD000000000000010 || 0x8000000265F332D0 != v10)
                {
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v8 = v21;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_4;
                  }
                }
              }
            }

LABEL_3:
            if ((v23 & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }
        }
      }
    }

    if (v23)
    {
LABEL_43:
      v22 = v8;
      v17 = v8;
      v18 = v5;
      result = v7;
      v19 = v22;
      goto LABEL_44;
    }

LABEL_4:
    v4 -= 40;
    --v3;
  }

  while (v3);
  v5 = 0;
  v7 = 0;
  v9 = 0;
  v19 = 0uLL;
LABEL_44:
  a3 = v20;
LABEL_45:
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v19;
  *(a3 + 32) = v9;
  return result;
}

char *specialized static SGGraph.generateArgumentsNode(inputs:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      v5 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    *&v45 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v5 = v45;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x266772030](v6, v1);
        v9 = *(v7 + OBJC_IVAR___SGInput_name);
        v8 = *(v7 + OBJC_IVAR___SGInput_name + 8);
        v10 = OBJC_IVAR___SGInput_type;
        swift_beginAccess();
        v11 = *(v7 + v10);

        swift_unknownObjectRelease();
        *&v45 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v5 = v45;
        }

        ++v6;
        *(v5 + 16) = v13 + 1;
        v14 = (v5 + 24 * v13);
        v14[4] = v9;
        v14[5] = v8;
        v14[6] = v11;
      }

      while (i != v6);
    }

    else
    {
      v15 = (v1 + 32);
      do
      {
        v16 = *v15;
        v17 = (*v15 + OBJC_IVAR___SGInput_name);
        v19 = *v17;
        v18 = v17[1];
        v20 = OBJC_IVAR___SGInput_type;
        swift_beginAccess();
        v21 = *(v16 + v20);
        *&v45 = v5;
        v23 = *(v5 + 16);
        v22 = *(v5 + 24);

        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v5 = v45;
        }

        *(v5 + 16) = v23 + 1;
        v24 = (v5 + 24 * v23);
        v24[4] = v19;
        v24[5] = v18;
        v24[6] = v21;
        ++v15;
        --i;
      }

      while (i);
    }

    v3 = MEMORY[0x277D84F90];
LABEL_17:
    v45 = xmmword_265F26E70;
    *&v46 = v3;
    *(&v46 + 1) = v5;
    v47 = xmmword_265F1F680;
    v50 = 0;
    v25 = type metadata accessor for SGNode();
    v26 = objc_allocWithZone(v25);
    swift_unknownObjectWeakInit();
    v27 = &v26[OBJC_IVAR___SGNode_name];
    *v27 = 0x746E656D75677241;
    *(v27 + 1) = 0xE900000000000073;
    *&v26[OBJC_IVAR___SGNode_inputs] = recreateInputs(from:nodeName:)(&v45, 0x746E656D75677241, 0xE900000000000073);
    *&v26[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v45, 0x746E656D75677241, 0xE900000000000073);
    v28 = &v26[OBJC_IVAR___SGNode_data];
    v29 = v46;
    *v28 = v45;
    *(v28 + 1) = v29;
    v28[80] = v50;
    v30 = v49;
    *(v28 + 3) = v48;
    *(v28 + 4) = v30;
    *(v28 + 2) = v47;
    v44.receiver = v26;
    v44.super_class = v25;

    v31 = objc_msgSendSuper2(&v44, sel_init);
    v32 = *&v31[OBJC_IVAR___SGNode_inputs];
    if (v32 >> 62)
    {
      v43 = v31;
      v1 = __CocoaSet.count.getter();
      v31 = v43;
    }

    else
    {
      v1 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v31;

    if (v1)
    {
      v34 = 0;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x266772030](v34, v32);
        }

        else
        {
          if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v35 = *(v32 + 8 * v34 + 32);
        }

        v36 = v35;
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        swift_beginAccess();
        swift_unknownObjectWeakAssign();

        ++v34;
        if (v37 == v1)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
    }

    else
    {
LABEL_28:

      v38 = *&v33[OBJC_IVAR___SGNode_outputs];
      if (v38 >> 62)
      {
        v1 = __CocoaSet.count.getter();
      }

      else
      {
        v1 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v1)
      {
LABEL_39:

        return v33;
      }

      v39 = 0;
      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x266772030](v39, v38);
        }

        else
        {
          if (v39 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v40 = *(v38 + 8 * v39 + 32);
        }

        v41 = v40;
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        swift_beginAccess();
        swift_unknownObjectWeakAssign();

        ++v39;
        if (v42 == v1)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  __break(1u);
  return result;
}

char *specialized static SGGraph.generateResultsNode(outputs:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      v5 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    *&v45 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v5 = v45;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x266772030](v6, v1);
        v9 = *(v7 + OBJC_IVAR___SGOutput_name);
        v8 = *(v7 + OBJC_IVAR___SGOutput_name + 8);
        v10 = OBJC_IVAR___SGOutput_type;
        swift_beginAccess();
        v11 = *(v7 + v10);

        swift_unknownObjectRelease();
        *&v45 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v5 = v45;
        }

        ++v6;
        *(v5 + 16) = v13 + 1;
        v14 = v5 + 32 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v8;
        *(v14 + 48) = v11;
        *(v14 + 56) = 0;
      }

      while (i != v6);
    }

    else
    {
      v15 = (v1 + 32);
      do
      {
        v16 = *v15;
        v17 = (*v15 + OBJC_IVAR___SGOutput_name);
        v19 = *v17;
        v18 = v17[1];
        v20 = OBJC_IVAR___SGOutput_type;
        swift_beginAccess();
        v21 = *(v16 + v20);
        *&v45 = v5;
        v23 = *(v5 + 16);
        v22 = *(v5 + 24);

        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v5 = v45;
        }

        *(v5 + 16) = v23 + 1;
        v24 = v5 + 32 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v18;
        *(v24 + 48) = v21;
        *(v24 + 56) = 0;
        ++v15;
        --i;
      }

      while (i);
    }

    v3 = MEMORY[0x277D84F90];
LABEL_17:
    v45 = xmmword_265F26E80;
    *&v46 = v5;
    *(&v46 + 1) = v3;
    v47 = xmmword_265F1F680;
    v50 = 0;
    v25 = type metadata accessor for SGNode();
    v26 = objc_allocWithZone(v25);
    swift_unknownObjectWeakInit();
    v27 = &v26[OBJC_IVAR___SGNode_name];
    *v27 = 0x746C75736552;
    *(v27 + 1) = 0xE600000000000000;
    *&v26[OBJC_IVAR___SGNode_inputs] = recreateInputs(from:nodeName:)(&v45, 0x746C75736552, 0xE600000000000000);
    *&v26[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v45, 0x746C75736552, 0xE600000000000000);
    v28 = &v26[OBJC_IVAR___SGNode_data];
    v29 = v46;
    *v28 = v45;
    *(v28 + 1) = v29;
    v28[80] = v50;
    v30 = v49;
    *(v28 + 3) = v48;
    *(v28 + 4) = v30;
    *(v28 + 2) = v47;
    v44.receiver = v26;
    v44.super_class = v25;

    v31 = objc_msgSendSuper2(&v44, sel_init);
    v32 = *&v31[OBJC_IVAR___SGNode_inputs];
    if (v32 >> 62)
    {
      v43 = v31;
      v1 = __CocoaSet.count.getter();
      v31 = v43;
    }

    else
    {
      v1 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v31;

    if (v1)
    {
      v34 = 0;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x266772030](v34, v32);
        }

        else
        {
          if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v35 = *(v32 + 8 * v34 + 32);
        }

        v36 = v35;
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        swift_beginAccess();
        swift_unknownObjectWeakAssign();

        ++v34;
        if (v37 == v1)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
    }

    else
    {
LABEL_28:

      v38 = *&v33[OBJC_IVAR___SGNode_outputs];
      if (v38 >> 62)
      {
        v1 = __CocoaSet.count.getter();
      }

      else
      {
        v1 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v1)
      {
LABEL_39:

        return v33;
      }

      v39 = 0;
      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x266772030](v39, v38);
        }

        else
        {
          if (v39 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v40 = *(v38 + 8 * v39 + 32);
        }

        v41 = v40;
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        swift_beginAccess();
        swift_unknownObjectWeakAssign();

        ++v39;
        if (v42 == v1)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  __break(1u);
  return result;
}

unint64_t specialized SGGraph.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGGraph.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGraph.CodingKeys and conformance SGGraph.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SGInput] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SGInput] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SGInput] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
    lazy protocol witness table accessor for type SGInput and conformance SGInput(&lazy protocol witness table cache variable for type SGInput and conformance SGInput, type metadata accessor for SGInput, &protocol conformance descriptor for SGInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SGInput] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SGInput] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SGInput] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
    lazy protocol witness table accessor for type SGInput and conformance SGInput(&lazy protocol witness table cache variable for type SGInput and conformance SGInput, type metadata accessor for SGInput, &protocol conformance descriptor for SGInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SGInput] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SGOutput] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SGOutput] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SGOutput] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph8SGOutputCGMd, &_sSay11ShaderGraph8SGOutputCGMR);
    lazy protocol witness table accessor for type SGInput and conformance SGInput(&lazy protocol witness table cache variable for type SGOutput and conformance SGOutput, type metadata accessor for SGOutput, &protocol conformance descriptor for SGOutput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SGOutput] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SGOutput] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SGOutput] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph8SGOutputCGMd, &_sSay11ShaderGraph8SGOutputCGMR);
    lazy protocol witness table accessor for type SGInput and conformance SGInput(&lazy protocol witness table cache variable for type SGOutput and conformance SGOutput, type metadata accessor for SGOutput, &protocol conformance descriptor for SGOutput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SGOutput] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SGNode] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SGNode] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SGNode] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph6SGNodeCGMd, &_sSay11ShaderGraph6SGNodeCGMR);
    lazy protocol witness table accessor for type SGInput and conformance SGInput(&lazy protocol witness table cache variable for type SGNode and conformance SGNode, type metadata accessor for SGNode, &protocol conformance descriptor for SGNode);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SGNode] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SGNode] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SGNode] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph6SGNodeCGMd, &_sSay11ShaderGraph6SGNodeCGMR);
    lazy protocol witness table accessor for type SGInput and conformance SGInput(&lazy protocol witness table cache variable for type SGNode and conformance SGNode, type metadata accessor for SGNode, &protocol conformance descriptor for SGNode);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SGNode] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SGEdge] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SGEdge] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SGEdge] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
    lazy protocol witness table accessor for type SGInput and conformance SGInput(&lazy protocol witness table cache variable for type SGEdge and conformance SGEdge, type metadata accessor for SGEdge, &protocol conformance descriptor for SGEdge);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SGEdge] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SGEdge] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SGEdge] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph6SGEdgeCGMd, &_sSay11ShaderGraph6SGEdgeCGMR);
    lazy protocol witness table accessor for type SGInput and conformance SGInput(&lazy protocol witness table cache variable for type SGEdge and conformance SGEdge, type metadata accessor for SGEdge, &protocol conformance descriptor for SGEdge);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SGEdge] and conformance <A> [A]);
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, unint64_t *a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v5 = a1[2];
  if (!v5)
  {
    return;
  }

  LOBYTE(v7) = a2;
  v8 = a1;
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = *a3;

  v13 = v11;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
  v16 = v12[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(i) = v15;
  if (v12[3] < v19)
  {
    a5(v19, v7 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
    if ((i & 1) == (v21 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v7)
  {
LABEL_7:
    v22 = *a3;
    if (i)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22[(v14 >> 6) + 8] |= 1 << v14;
    v29 = (v22[6] + 16 * v14);
    *v29 = v10;
    v29[1] = v9;
    *(v22[7] + 8 * v14) = v13;
    v30 = v22[2];
    v18 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v18)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v22[2] = v31;
    v10 = v5 - 1;
    if (v5 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v27 = v13;
  v28 = v14;
  a4();
  v14 = v28;
  v13 = v27;
  v22 = *a3;
  if ((i & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = v13;
  v13 = v14;
  v24 = *(v22[7] + 8 * v14);

  v25 = v22[7];
  v26 = *(v25 + 8 * v13);
  *(v25 + 8 * v13) = v24;

  v10 = v5 - 1;
  if (v5 != 1)
  {
LABEL_14:
    for (i = (v8 + 9); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v36 = *i;
      v37 = *a3;

      v9 = v36;
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      v40 = v37[2];
      v41 = (v39 & 1) == 0;
      v18 = __OFADD__(v40, v41);
      v42 = v40 + v41;
      if (v18)
      {
        break;
      }

      v5 = v39;
      if (v37[3] < v42)
      {
        a5(v42, 1);
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
        if ((v5 & 1) != (v43 & 1))
        {
          goto LABEL_5;
        }
      }

      v13 = *a3;
      if (v5)
      {
        v32 = v38;
        v33 = *(*(v13 + 56) + 8 * v38);

        v34 = *(v13 + 56);
        v35 = *(v34 + 8 * v32);
        *(v34 + 8 * v32) = v33;
      }

      else
      {
        *(v13 + 8 * (v38 >> 6) + 64) |= 1 << v38;
        v44 = (*(v13 + 48) + 16 * v38);
        *v44 = v7;
        v44[1] = v8;
        *(*(v13 + 56) + 8 * v38) = v9;
        v45 = *(v13 + 16);
        v18 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v18)
        {
          goto LABEL_24;
        }

        *(v13 + 16) = v46;
      }

      if (!--v10)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}