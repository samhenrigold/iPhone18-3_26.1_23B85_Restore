uint64_t getEnumTagSinglePayload for NavigationState.UpdateResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 313))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 136) >> 1;
  if (v3 > 0x80000000)
  {
    v4 = -v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationState.UpdateResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 297) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      *(result + 120) = 0u;
      *(result + 104) = 0u;
      *(result + 136) = 2 * (-2 - a2);
      *(result + 144) = 0;
    }
  }

  return result;
}

uint64_t getEnumTag for NavigationState.UpdateResult(uint64_t a1)
{
  if ((*(a1 + 136) >> 1) > 0x80000000)
  {
    return -(*(a1 + 136) >> 1);
  }

  else
  {
    return 0;
  }
}

double destructiveInjectEnumTag for NavigationState.UpdateResult(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 312) = 0;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 136) = 2 * -a2;
    *(a1 + 144) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationState.ListKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for NavigationState.ListKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationState.StackContent.Views.ViewsSequence.Index(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent.Views.ViewsSequence.Index(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void type metadata accessor for (NavigationState.Base, NavigationState.Base?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (NavigationState.Base, NavigationState.Base?))
  {
    type metadata accessor for Binding<NavigationSplitViewColumn>(255, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationState.Base, NavigationState.Base?));
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityActivationPoint.InteractionKind and conformance AccessibilityActivationPoint.InteractionKind()
{
  result = lazy protocol witness table cache variable for type AccessibilityActivationPoint.InteractionKind and conformance AccessibilityActivationPoint.InteractionKind;
  if (!lazy protocol witness table cache variable for type AccessibilityActivationPoint.InteractionKind and conformance AccessibilityActivationPoint.InteractionKind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityActivationPoint.InteractionKind, &type metadata for AccessibilityActivationPoint.InteractionKind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityActivationPoint.InteractionKind and conformance AccessibilityActivationPoint.InteractionKind);
  }

  return result;
}

uint64_t AccessibilityActivationPointAccumulator.cache.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
    *(v0 + 32) = MEMORY[0x1E69E7CC8];
  }

  return v1;
}

void *AccessibilityActivationPointAccumulator.visit(node:)(char *a1)
{
  v2 = v1;
  AccessibilityNode.visibility.getter(&v91);
  v95[0] = v91;
  result = AccessibilityNullableOptionSet<>.resolved.getter();
  if (v88 == 3)
  {
    return result;
  }

  v84 = a1;
  HIDWORD(v78) = *v1;
  if ((v78 & 0x100000000) == 0)
  {
    AccessibilityNode.attachment.getter(&v91);
    outlined init with copy of AccessibilityProperties(&v91, v95);
    outlined destroy of AccessibilityAttachment(&v91);
    AccessibilityProperties.activationPointStorage.getter();
    result = outlined destroy of AccessibilityProperties(v95);
    v6 = v93;
    if (v93)
    {
      v15 = *(&v91 + 1);
      v14 = v92;
      v16 = v91;

      v10 = v16;
      v11 = v15;
      v12 = v14;
      v13 = v6;
      goto LABEL_7;
    }

LABEL_57:
    v72 = 0;
    if ((*(v2 + 1) & 4) == 0)
    {
      return result;
    }

    goto LABEL_62;
  }

  AccessibilityNode.attachment.getter(&v91);
  outlined init with copy of AccessibilityProperties(&v91, v95);
  outlined destroy of AccessibilityAttachment(&v91);
  AccessibilityProperties.activationPointStorage.getter();
  result = outlined destroy of AccessibilityProperties(v95);
  v5 = v93;
  if (!v93)
  {
    goto LABEL_57;
  }

  v6 = v94;
  v8 = *(&v91 + 1);
  v7 = v92;
  v9 = v91;

  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v5;
LABEL_7:
  outlined consume of AccessibilityActivationPointStorage?(v10, v11, v12, v13);
  v82 = *(v6 + 16);
  if (v82)
  {
    LODWORD(v78) = 0;
    v17 = 0;
    v81 = *(v2 + 1);
    v79 = v6;
    v80 = v6 + 32;
    v87 = v2;
    while (1)
    {
      while (1)
      {
        if (v17 >= *(v6 + 16))
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          result = __CocoaSet.count.getter();
          v74 = result;
          if (!result)
          {
            return result;
          }

LABEL_65:
          if (v74 < 1)
          {
            __break(1u);
LABEL_79:
            type metadata accessor for CGPoint(0);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }

          else
          {

            for (i = 0; i != v74; ++i)
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v76 = MEMORY[0x18D00E9C0](i, v6);
              }

              else
              {
                v76 = *(v6 + 8 * i + 32);
              }

              v77 = v76;
              AccessibilityActivationPointAccumulator.visit(node:)(v76);
            }
          }

          return result;
        }

        v18 = (v80 + 56 * v17);
        v85 = v18[1];
        v86 = *v18;
        v19 = *(v18 + 16);
        v21 = v18[3];
        v20 = v18[4];
        v22 = *(v18 + 40);
        v23 = v18[6];
        ++v17;
        v83 = *(v18 + 16);
        if ((v81 & 2) == 0)
        {
          outlined copy of Text.Storage(v21, v20, v22);
          v6 = v23;
          v29 = v22;
          v30 = v20;

          goto LABEL_51;
        }

        v24 = *(v2 + 2);
        v25 = AccessibilityActivationPointAccumulator.cache.getter();
        if (v19 >= 2)
        {
          outlined copy of Text.Storage(v21, v20, v22);
          v6 = v23;

          AccessibilityNode.attachment.getter(&v91);
          outlined init with copy of AccessibilityProperties(&v91, v95);
          outlined destroy of AccessibilityAttachment(&v91);
          AccessibilityProperties.activationPoint.getter();
          outlined destroy of AccessibilityProperties(v95);
          if (v92 == 255)
          {
            *&v26 = COERCE_DOUBLE(AccessibilityNode.childActivationPoint(implicit:options:)(0, 0));
          }

          else
          {
            v88 = v91;
            v89 = v92;
            *&v26 = COERCE_DOUBLE(AccessibilityNode.resolvedActivationPoint(for:)(&v88));
          }

          v29 = v22;
          v30 = v20;
          if (v31 == -1)
          {
            AccessibilityNode.implicitActivationPoint(options:)(0);
            if (v32 == -1)
            {
              [v84 accessibilityFrame];
              x = v96.origin.x;
              y = v96.origin.y;
              width = v96.size.width;
              height = v96.size.height;
              if (CGRectIsEmpty(v96))
              {
                v37 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
                NSClassFromString(v37);
              }

              v97.origin.x = x;
              v97.origin.y = y;
              v97.size.width = width;
              v97.size.height = height;
              *&v38 = x + CGRectGetWidth(v97) * 0.5;
              v98.origin.x = x;
              v98.origin.y = y;
              v98.size.width = width;
              v98.size.height = height;
              v39 = CGRectGetHeight(v98);
              v26 = v38;
              v27 = y + v39 * 0.5;
            }
          }
        }

        else
        {
          *&v91 = v86;
          *(&v91 + 1) = v85;
          LOBYTE(v92) = v19;
          outlined copy of Text.Storage(v21, v20, v22);
          v6 = v23;

          *&v26 = COERCE_DOUBLE(AccessibilityNode.resolvedActivationPoint(for:)(&v91));
          if (v28 == -1)
          {

            *(v2 + 4) = v25;
            v29 = v22;
            v30 = v20;
            goto LABEL_11;
          }

          v29 = v22;
          v30 = v20;
        }

        v40 = *&v26;
        v41 = v27;
        v42 = [v24 window];
        if (v42)
        {
          v43 = v42;
          [v42 convertPoint:0 fromWindow:{v40, v41}];
          [v24 convertPoint:v43 fromCoordinateSpace:?];
          v40 = v44;
          v41 = v45;
        }

        if (!v25[2])
        {
          break;
        }

        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
        if ((v47 & 1) == 0)
        {
          break;
        }

        v48 = *(v25[7] + v46);

        *(v2 + 4) = v25;
        if (v48)
        {
          goto LABEL_51;
        }

LABEL_11:
        outlined consume of Text.Storage(v21, v30, v29);

        v2 = v87;
        v6 = v79;
        if (v17 == v82)
        {

          v72 = v78;
          goto LABEL_61;
        }
      }

      v49 = [v24 window];
      if (v49)
      {
        v50 = v49;
        [v49 convertPoint:v24 fromCoordinateSpace:{v40, v41}];
        v51 = [v50 hitTest:0 withEvent:?];
        if (v51)
        {
          v52 = v51;
          while (v52 != v24)
          {
            v53 = [v52 superview];

            v52 = v53;
            if (!v53)
            {
              goto LABEL_41;
            }
          }

          LOBYTE(v53) = 1;
          v50 = v52;
        }

        else
        {
          LOBYTE(v53) = 0;
        }

LABEL_41:
      }

      else
      {
        LOBYTE(v53) = 0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v91 = v25;
      v55 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
      v57 = v25[2];
      v58 = (v56 & 1) == 0;
      v59 = __OFADD__(v57, v58);
      v60 = v57 + v58;
      if (v59)
      {
        goto LABEL_74;
      }

      v61 = v56;
      if (v25[3] < v60)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_47;
      }

      v71 = v55;
      specialized _NativeDictionary.copy()();
      v55 = v71;
      v63 = v91;
      if (v61)
      {
LABEL_9:
        *(v63[7] + v55) = v53;
        goto LABEL_10;
      }

LABEL_48:
      v63[(v55 >> 6) + 8] |= 1 << v55;
      v64 = (v63[6] + 16 * v55);
      *v64 = v40;
      v64[1] = v41;
      *(v63[7] + v55) = v53;
      v65 = v63[2];
      v59 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v59)
      {
        goto LABEL_75;
      }

      v63[2] = v66;
LABEL_10:

      *(v87 + 4) = v63;
      if ((v53 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_51:
      v67 = v87[24];
      v68 = type metadata accessor for PlatformAccessibilityLocationDescriptor();
      v69 = objc_allocWithZone(v68);
      swift_unknownObjectWeakInit();
      v70 = &v69[OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_activationPoint];
      *v70 = v86;
      *(v70 + 1) = v85;
      v70[16] = v83;
      *(v70 + 3) = v21;
      *(v70 + 4) = v30;
      v70[40] = v29;
      *(v70 + 6) = v6;
      v69[OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_kind] = BYTE4(v78);
      v69[OBJC_IVAR____TtC7SwiftUI39PlatformAccessibilityLocationDescriptor_resolveLabel] = v67;
      v2 = v87;
      swift_unknownObjectWeakAssign();
      outlined copy of Text.Storage(v21, v30, v29);
      v90.receiver = v69;
      v90.super_class = v68;

      objc_msgSendSuper2(&v90, sel_init);
      MEMORY[0x18D00CC30]();
      if (*((*(v2 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = v87;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      outlined consume of Text.Storage(v21, v30, v29);

      LODWORD(v78) = 1;
      v6 = v79;
      if (v17 == v82)
      {
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, isUniquelyReferenced_nonNull_native);
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
    if ((v61 & 1) != (v62 & 1))
    {
      goto LABEL_79;
    }

LABEL_47:
    v63 = v91;
    if (v61)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

  v72 = 0;
LABEL_61:
  a1 = v84;
  if ((*(v2 + 1) & 4) == 0)
  {
    return result;
  }

LABEL_62:
  if ((v72 & 1) == 0)
  {
    v2[24] = 1;
    v73 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
    result = swift_beginAccess();
    v6 = *&a1[v73];
    if (v6 >> 62)
    {
      goto LABEL_76;
    }

    v74 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v74)
    {
      goto LABEL_65;
    }
  }

  return result;
}

uint64_t AccessibilityActivationPoint.resolvedDescription(for:in:kind:resolveLabel:)(uint64_t a1, __int128 *a2, char a3, char a4)
{
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  if (a4 & 1) == 0 || (*(v4 + 40))
  {
    goto LABEL_17;
  }

  v19 = *a2;

  if (v5 == static AccessibilityActivationKind.defaultDescriptor.getter() && v6 == v9)
  {
    outlined consume of Text.Storage(v5, v6, 0);
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of Text.Storage(v5, v6, 0);

    if ((v11 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  AccessibilityNode.attachment.getter(v20);
  outlined init with copy of AccessibilityProperties(v20, &v21);
  outlined destroy of AccessibilityAttachment(v20);
  v12 = v22;

  outlined destroy of AccessibilityProperties(&v21);
  if (!v12)
  {
LABEL_17:
    outlined copy of Text.Storage(v5, v6, v7);

    return v5;
  }

  v20[0] = v19;
  static AccessibilityCore.TextResolutionOptions.defaultPlainText.getter();
  static _GraphInputs.defaultInterfaceIdiom.getter();
  v13 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();
  v15 = v14;

  if (!v15)
  {
LABEL_20:
    outlined copy of Text.Storage(v5, v6, 0);

    return v5;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_20;
  }

  if (a3)
  {
    v17 = 1886351940;
  }

  else
  {
    v17 = 1734439492;
  }

  v5 = _s7SwiftUI4TextV13AccessibilityO4dragyACxSyRzlFZSS_Tt0g5Tm(v13, v15, v17 & 0xFFFF0000FFFFFFFFLL | 0x2000000000);

  return v5;
}

uint64_t _s7SwiftUI4TextV13AccessibilityO4dragyACxSyRzlFZSS_Tt0g5Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = a3;
  v4._object = 0xE500000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);

  v5._countAndFlagsBits = String.init<A>(_:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v5);

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t AccessibilityNode.resolvedDragDropOptions(filter:view:)(char a1, id a2)
{
  if (a1)
  {
    v2 = [a2 window];
    if (!v2 || (v3 = v2, v4 = [v2 isHidden], v3, (v4 & 1) != 0))
    {
      v5 = 0;
      v6 = 1;
      return v5 | (v6 << 16);
    }

    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  AccessibilityNode.visibility.getter(&v10);
  AccessibilityNullableOptionSet<>.resolved.getter();
  v8 = v7 | 4;
  if (v11)
  {
    v8 = v7;
  }

  if (v11 == 4)
  {
    v8 = v7;
  }

  if (v11 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v8;
  }

  v6 = v11 == 3;
  return v5 | (v6 << 16);
}

uint64_t outlined consume of AccessibilityActivationPointStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t View.accessibilityLabel(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v18 = v10;
  v19 = v11;
  v14 = v13 & 1;
  v20 = v13 & 1;
  v21 = v15;
  View.accessibility(isEnabled:body:)(a5, partial apply for closure #1 in View.accessibilityLabel(_:isEnabled:), v17, a6, a7);
  outlined consume of Text.Storage(v10, v12, v14);
}

uint64_t View.accessibilityLabel<A>(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v21 = v12;
  v22 = v13;
  v16 = v15 & 1;
  v23 = v15 & 1;
  v24 = v17;
  View.accessibility(isEnabled:body:)(a2, partial apply for closure #1 in View.accessibilityLabel(_:isEnabled:), v20, a3, a5);
  outlined consume of Text.Storage(v12, v14, v16);
}

uint64_t closure #1 in View.accessibilityLabel(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  type metadata accessor for _ContiguousArrayStorage<Text>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18CD63400;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4 & 1;
  *(v10 + 56) = a5;
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  *(a1 + 24) = v10;
  *(a1 + 32) = 2;
  return result;
}

uint64_t ModifiedContent<>.accessibilityLabel(_:isEnabled:)@<X0>(char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13 & 1;
  ModifiedContent<>.update(isEnabled:body:)(a5, partial apply for closure #1 in ModifiedContent<>.accessibilityLabel(_:isEnabled:), a6, a7);
  outlined consume of Text.Storage(v10, v12, v14);
}

uint64_t ModifiedContent<>.accessibilityLabel<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v19[4] = v12;
  v19[5] = v13;
  v16 = v15 & 1;
  v20 = v15 & 1;
  v21 = v17;
  ModifiedContent<>.update(isEnabled:body:)(a2, partial apply for closure #1 in ModifiedContent<>.accessibilityLabel(_:isEnabled:), a3, a6);
  outlined consume of Text.Storage(v12, v14, v16);
}

uint64_t closure #1 in View.accessibilityLabel<A>(content:)(uint64_t a1)
{
  AccessibilityProperties.init()();
  outlined init with copy of AccessibilityAttachment.Tree(a1, v38);
  if (!v39)
  {
    memcpy(v37, v38, 0x128uLL);
    AccessibilityAttachment.mergedProperties.getter(v32);
    outlined destroy of AccessibilityAttachment(v37);
    if (!*(&v32[17] + 1))
    {
      outlined destroy of AccessibilityProperties(v40);
      return outlined destroy of AccessibilityProperties?(v32, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    }

    outlined destroy of AccessibilityAttachment.Tree(a1);
    memcpy(v33, v32, 0x120uLL);
    v23 = v33[3];
    v24 = v33[4];

    v25 = v33;
    goto LABEL_65;
  }

  if (v39 != 1)
  {
    return outlined destroy of AccessibilityProperties(v40);
  }

  result = outlined destroy of AccessibilityAttachment.Tree(a1);
  v3 = v38[0];
  v4 = *(v38[0] + 16);
  if (!v4)
  {
LABEL_61:

    v6 = MEMORY[0x1E69E7CC0];
LABEL_64:
    static AccessibilityChildBehavior.defaultCombine(childProperties:createsCustomActions:)(v6, 0, v37);

    v23 = v37[3];
    v24 = v37[4];

    v25 = v37;
LABEL_65:
    outlined destroy of AccessibilityProperties(v25);

    v41 = v23;
    v42 = v24;
    outlined init with copy of AccessibilityProperties(v40, v38);
    AccessibilityAttachment.init(properties:)();
    result = outlined destroy of AccessibilityProperties(v40);
    *(a1 + 296) = 0;
    return result;
  }

  v26 = a1;
  v5 = 0;
  v29 = v38[0] + 32;
  v6 = MEMORY[0x1E69E7CC0];
  a1 = 296;
  v27 = *(v38[0] + 16);
  v28 = v38[0];
  while (v5 < *(v3 + 16))
  {
    outlined init with copy of AccessibilityAttachment.Tree(v29 + 304 * v5, v37);
    outlined init with copy of AccessibilityAttachment.Tree(v37, v33);
    if (v34)
    {
      if (v34 != 1)
      {
        memset(v35, 0, 296);
LABEL_6:
        outlined destroy of AccessibilityAttachment.Tree(v37);
        outlined destroy of AccessibilityProperties?(v35, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
        memset(v36, 0, sizeof(v36));
        goto LABEL_7;
      }

      v7 = *(v33[0] + 16);
      if (v7)
      {
        v8 = v6;
        v9 = v33[0] + 32;
        v10 = MEMORY[0x1E69E7CC0];
        do
        {
          outlined init with copy of AccessibilityAttachment.Tree(v9, v32);
          AccessibilityAttachment.Tree.attachment.getter(__src);
          memcpy(__dst, __src, sizeof(__dst));
          outlined destroy of AccessibilityAttachment.Tree(v32);
          if (__dst[35])
          {
            memcpy(__src, __dst, sizeof(__src));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
            }

            v12 = *(v10 + 2);
            v11 = *(v10 + 3);
            if (v12 >= v11 >> 1)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
            }

            *(v10 + 2) = v12 + 1;
            memcpy(&v10[296 * v12 + 32], __src, 0x128uLL);
          }

          else
          {
            outlined destroy of AccessibilityProperties?(__dst, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
          }

          v9 += 304;
          --v7;
        }

        while (v7);

        v6 = v8;
      }

      else
      {

        v10 = MEMORY[0x1E69E7CC0];
      }

      v13 = *(v10 + 2);
      if (v13 == 1)
      {
        outlined init with copy of AccessibilityAttachment((v10 + 32), v35);
      }

      else
      {
        if (v13)
        {
          v18 = v6;
          v19 = &v10[296 * v13];
          outlined init with copy of AccessibilityAttachment((v19 - 264), v32);

          v20 = v13 - 2;
          v21 = (v19 - 560);
          do
          {
            if (v20 >= v13 - 1)
            {
              __break(1u);
              goto LABEL_61;
            }

            outlined init with copy of AccessibilityAttachment(v21, __src);
            AccessibilityProperties.merge(with:)(__src);
            v22 = AccessibilityAttachment.platformElement.getter();
            if (v22)
            {
            }

            else if (AccessibilityAttachment.platformElement.getter())
            {
              AccessibilityAttachment.platformElement.setter();
            }

            outlined destroy of AccessibilityAttachment(__src);
            --v20;
            v21 -= 296;
          }

          while (v20 != -1);

          memcpy(v35, v32, 0x128uLL);

          v4 = v27;
          v3 = v28;
          v6 = v18;
          if (v35[35])
          {
            goto LABEL_31;
          }

          goto LABEL_6;
        }

        AccessibilityAttachment.init()();
      }

      v4 = v27;
      v3 = v28;
      if (!v35[35])
      {
        goto LABEL_6;
      }
    }

    else
    {
      memcpy(v35, v33, 0x128uLL);
      if (!v35[35])
      {
        goto LABEL_6;
      }
    }

LABEL_31:
    outlined init with copy of AccessibilityProperties(v35, v33);
    AGGraphClearUpdate();
    lazy protocol witness table accessor for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey();
    AccessibilityProperties.subscript.getter();
    v14 = *&v32[0];
    if (*&v32[0])
    {
      ObjectType = swift_getObjectType();
      PlatformAccessibilityElementProtocol<>.bridgedProperties.getter(ObjectType, v32);
    }

    else
    {
      memset(v32, 0, 288);
    }

    AGGraphSetUpdate();
    outlined init with copy of AccessibilityProperties?(v32, __src);
    if (*&__src[280])
    {
      memcpy(__dst, __src, 0x120uLL);
      AccessibilityProperties.merge(with:)(__dst);
      AccessibilityProperties.subscript.setter();
      outlined destroy of AccessibilityProperties(__dst);
    }

    outlined destroy of AccessibilityProperties?(v32, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    outlined destroy of AccessibilityAttachment.Tree(v37);
    if ((v33[15] & 1) != 0 || (v33[14] & 4) == 0 && ((v33[14] & 0x400000000) != 0 || (v33[14] & 8) == 0))
    {
      memcpy(v36, v33, sizeof(v36));
    }

    else
    {
      outlined destroy of AccessibilityProperties(v33);
      memset(v36, 0, sizeof(v36));
    }

    outlined destroy of AccessibilityAttachment(v35);
    if (v36[35])
    {
      memcpy(v33, v36, 0x120uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v6);
      }

      *(v6 + 2) = v17 + 1;
      result = memcpy(&v6[288 * v17 + 32], v33, 0x120uLL);
      goto LABEL_8;
    }

LABEL_7:
    result = outlined destroy of AccessibilityProperties?(v36, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
LABEL_8:
    if (++v5 == v4)
    {

      a1 = v26;
      goto LABEL_64;
    }
  }

  __break(1u);
  return result;
}

uint64_t TabContent.accessibilityLabel(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v9 = a5;
  type metadata accessor for _ContiguousArrayStorage<Text>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18CD63400;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  a3 &= 1u;
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v18);
  outlined copy of Text.Storage(a1, a2, a3);

  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  TabContent.accessibility(_:isEnabled:)(v17, v9, a6, x8_0);
  return outlined destroy of AccessibilityProperties(v17);
}

uint64_t TabContent.accessibilityLabel(_:isEnabled:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{

  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  TabContent.accessibilityLabel(_:isEnabled:)(v11, v12, v14 & 1, v16, a5, a6, x8_0);
  outlined consume of Text.Storage(v11, v13, v15 & 1);
}

uint64_t TabContent.accessibilityLabel<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  TabContent.accessibilityLabel(_:isEnabled:)(v13, v14, v16 & 1, v18, a2, a3, x8_0);
  outlined consume of Text.Storage(v13, v15, v17 & 1);
}

uint64_t ModifiedContent<>.accessibilityLabel(_:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  ModifiedContent<>.accessibilityLabel(_:)(v8, v9, v11 & 1, v13, a5, a6);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t closure #1 in View.accessibilityLabel<A>(_:label:)(_BYTE *a1, char a2)
{
  AccessibilityAttachment.Tree.mergedProperties.getter(a1);
  outlined destroy of AccessibilityAttachment.Tree(a1);
  outlined init with copy of AccessibilityProperties?(v8, __src);
  if (!__src[35])
  {
    outlined destroy of AccessibilityProperties?(__src, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    a2 = 0;
    goto LABEL_5;
  }

  v4 = __src[3];
  v5 = __src[4];

  outlined destroy of AccessibilityProperties(__src);
  if (!v4)
  {
    a2 = v5;
LABEL_5:
    v4 = 0;
  }

  AccessibilityAttachment.init()();
  outlined destroy of AccessibilityProperties?(v8, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);

  __src[3] = v4;
  LOBYTE(__src[4]) = a2;
  memcpy(a1, __src, 0x128uLL);
  a1[296] = 0;
}

uint64_t outlined init with copy of AccessibilityProperties?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<Text>(0, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ResolvedNavigationDestinations.popDestinationStack(_:)(uint64_t a1)
{
  if (a1 >= 1)
  {
    v2 = v1;
    v3 = v1[3];
    v4 = v3 - a1;
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_55;
    }

    if (v3 >= v4)
    {
      if (v4 == v3)
      {
LABEL_5:
        v2[3] = v4;
        return;
      }

      if (v4 >= v3)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v5 = 0;
      v6 = v4;
      v51 = v4;
      v52 = v1[3];
      while (1)
      {
        v7 = v2[2];
        if (*(v7 + 16))
        {
          v53 = v5;
          v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
          if (v9)
          {
            v10 = *(*(v7 + 56) + 8 * v8);
            swift_bridgeObjectRetain_n();
            specialized Dictionary._Variant.removeValue(forKey:)(v6);

            v54 = *(v10 + 16);
            if (v54)
            {
              v11 = 0;
              v12 = v10 + 32;
              while (v11 < *(v10 + 16))
              {
                v13 = *(v12 + 8 * v11);
                if (v6 == -1)
                {
                  v27 = v2[1];
                  if (*(v27 + 16))
                  {
                    v28 = specialized __RawDictionaryStorage.find<A>(_:)(*(v12 + 8 * v11));
                    if (v29)
                    {
                      v30 = *(**(*(v27 + 56) + 8 * v28) + 96);

                      v32 = v30(v31);
                      v34 = v33;
                      v12 = v10 + 32;

                      if (v34)
                      {
                        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v34);
                        if (v36)
                        {
                          v37 = v35;
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v39 = v2[4];
                          if (!isUniquelyReferenced_nonNull_native)
                          {
                            specialized _NativeDictionary.copy()();
                          }

                          specialized _NativeDictionary._delete(at:)(v37, v39);

                          v2[4] = v39;
                        }

                        else
                        {
                        }

                        v12 = v10 + 32;
                      }
                    }
                  }

                  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
                  if (v46)
                  {
                    v47 = v45;
                    v48 = swift_isUniquelyReferenced_nonNull_native();
                    v49 = v2[1];
                    if (!v48)
                    {
                      specialized _NativeDictionary.copy()();
                    }

                    specialized _NativeDictionary._delete(at:)(v47, v49);

                    v2[1] = v49;
                  }
                }

                else
                {
                  v14 = *v2;
                  if (*(*v2 + 16))
                  {
                    v15 = specialized __RawDictionaryStorage.find<A>(_:)(*(v12 + 8 * v11));
                    if (v16)
                    {
                      v17 = *(**(*(v14 + 56) + 8 * v15) + 96);

                      v19 = v17(v18);
                      v21 = v20;
                      v12 = v10 + 32;

                      if (v21)
                      {
                        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v21);
                        if (v23)
                        {
                          v24 = v22;
                          v25 = swift_isUniquelyReferenced_nonNull_native();
                          v26 = v2[4];
                          if (!v25)
                          {
                            specialized _NativeDictionary.copy()();
                          }

                          specialized _NativeDictionary._delete(at:)(v24, v26);

                          v2[4] = v26;
                        }

                        else
                        {
                        }

                        v12 = v10 + 32;
                      }
                    }
                  }

                  v40 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
                  if (v41)
                  {
                    v42 = v40;
                    v43 = swift_isUniquelyReferenced_nonNull_native();
                    v44 = *v2;
                    v55 = *v2;
                    if (!v43)
                    {
                      specialized _NativeDictionary.copy()();
                      v44 = v55;
                    }

                    specialized _NativeDictionary._delete(at:)(v42, v44);

                    *v2 = v44;
                  }
                }

                if (v54 == ++v11)
                {
                  goto LABEL_46;
                }
              }

LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
              break;
            }

LABEL_46:

            v4 = v51;
          }

          else
          {
            v10 = 0;
          }

          ++v6;
          if (!v53)
          {
LABEL_43:
            if (v10)
            {
              v50 = *(v10 + 16);

              v5 = v50 != 0;
            }

            else
            {
              v5 = 0;
            }

            goto LABEL_50;
          }
        }

        else
        {
          v10 = 0;
          ++v6;
          if (!v5)
          {
            goto LABEL_43;
          }
        }

        v5 = 1;
LABEL_50:
        if (v6 == v52)
        {
          goto LABEL_5;
        }

        if (v6 < v4 || v6 >= v52)
        {
          goto LABEL_53;
        }
      }
    }

    __break(1u);
  }
}

uint64_t ResolvedNavigationDestinations.validateValue(_:)(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = v6;
  if (*(v3 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else if (*(v2 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v7), (v10 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error();
    swift_allocError();
    *v11 = v7;
    v11[1] = 0x4000000000000000;
    swift_willThrow();
  }

  return v9 & 1;
}

uint64_t ResolvedNavigationDestinations.view<A, B>(presenting:at:applying:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v28 = a4;
  v29 = a7;
  v27 = a1;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v16);
  v17 = *v7;
  v18 = v8[1];
  if (*(v17 + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if (v20)
    {
      goto LABEL_6;
    }
  }

  if (*(v18 + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if (v21)
    {
      v17 = v18;
LABEL_6:
      v22 = *(**(*(v17 + 56) + 8 * v19) + 112);
      swift_retain_n();
      v23 = v22(v27, a2, a3, v28, a5, a6, v29);

      return v23;
    }
  }

  specialized Image.init(systemName:)(0xD00000000000001DLL, 0x800000018CD3DF80);
  LOBYTE(v31) = 1;
  v25 = Image.symbolRenderingMode(_:)();

  v31 = v25;
  (a3)(a2);
  v26 = MEMORY[0x1E6981710];
  MEMORY[0x18D00A570](v15, MEMORY[0x1E6981748], a6, MEMORY[0x1E6981710]);
  (*(v13 + 8))(v15, a6);

  v30[0] = v26;
  v30[1] = v29;
  swift_getWitnessTable(MEMORY[0x1E697E858], v16, v30);
  return AnyView.init<A>(_:)();
}

void ResolvedNavigationDestinations.pushResolvers<A>(for:pathIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  if (*(v6 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v10 & 1) != 0))
  {
    v11 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = *(**(*(v6 + 56) + 8 * v9) + 120);

      v12(v4, a1, v11, a3);
    }
  }

  else
  {
    lazy protocol witness table accessor for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error();
    swift_allocError();
    *v13 = a3;
    v13[1] = 0x4000000000000000;
    swift_willThrow();
  }
}

unint64_t ResolvedNavigationDestinations.possibilities<A>(from:depth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 48);
  v62[2] = *(v4 + 32);
  v62[3] = v13;
  v62[4] = *(v4 + 64);
  v63 = *(v4 + 80);
  v14 = *(v4 + 16);
  v62[0] = *v4;
  v62[1] = v14;
  if (a2 == -1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v10);
  v47[-4] = a3;
  v47[-3] = a4;
  v47[-2] = a1;
  MEMORY[0x1EEE9AC00](v15);
  v47[-4] = a3;
  v47[-3] = a4;
  v47[-2] = a1;
  v47[-1] = v62;
  v17 = NavigationHostingControllerCache_UIKit.prerenderHostingController(configureExisting:makeNew:)(partial apply for closure #1 in ResolvedNavigationDestinations.possibilities<A>(from:depth:), v16, partial apply for closure #2 in ResolvedNavigationDestinations.possibilities<A>(from:depth:));
  v55 = direct field offset for UIHostingController.host;
  v18 = *&v17[direct field offset for UIHostingController.host];
  type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  v20 = v19;
  v21 = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v56 = v17;
  v22 = v17;
  v23 = v18;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  v24 = v60;
  static Log.navigation.getter();
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    outlined destroy of Logger?(v12);
    v28 = v55;
    v27 = v56;
  }

  else
  {
    v54 = v26;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    v53 = v30;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v50 = v32;
      *v31 = 134218242;
      *(v31 + 4) = a2;
      v51 = v31;
      *(v31 + 12) = 2080;
      v59 = v32;
      v60 = 91;
      v61 = 0xE100000000000000;
      if (v24 >> 62)
      {
        goto LABEL_25;
      }

      v33 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      v52 = v29;
      if (v33)
      {
        v47[0] = v25;
        v47[1] = v21;
        v47[2] = v20;
        v48 = v22;
        v49 = v12;
        v21 = 0;
        v12 = (v24 & 0xC000000000000001);
        v20 = v24 & 0xFFFFFFFFFFFFFF8;
        v25 = 0xE200000000000000;
        while (1)
        {
          if (v12)
          {
            v34 = MEMORY[0x18D00E9C0](v21, v24);
            v22 = (v21 + 1);
            if (__OFADD__(v21, 1))
            {
LABEL_17:
              __break(1u);
LABEL_18:
              v36 = v60;
              v37 = v61;
              v12 = v49;
              v22 = v48;
              v25 = v47[0];
              goto LABEL_20;
            }
          }

          else
          {
            if (v21 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_25:
              v33 = __CocoaSet.count.getter();
              goto LABEL_8;
            }

            v34 = *(v24 + 8 * v21 + 32);

            v22 = (v21 + 1);
            if (__OFADD__(v21, 1))
            {
              goto LABEL_17;
            }
          }

          v35 = (*(*v34 + 128))();
          v57 = 2314;
          v58 = 0xE200000000000000;
          MEMORY[0x18D00C9B0](v35);

          v29 = &v60;
          MEMORY[0x18D00C9B0](v57, v58);

          ++v21;
          if (v22 == v33)
          {
            goto LABEL_18;
          }
        }
      }

      v36 = 91;
      v37 = 0xE100000000000000;
LABEL_20:
      v60 = 93;
      v61 = 0xE100000000000000;
      v57 = v36;
      v58 = v37;
      v57 = String.init<A>(_:)();
      v58 = v38;
      String.append<A>(contentsOf:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v59);

      v40 = v51;
      *(v51 + 14) = v39;
      v29 = v52;
      _os_log_impl(&dword_18BD4A000, v52, v53, "Extracting pre-render navigation destinations at depth: %ld\nReader: NascentViewDestinationsExtractor\nDestinations: %s", v40, 0x16u);
      v41 = v50;
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x18D0110E0](v41, -1, -1);
      MEMORY[0x18D0110E0](v40, -1, -1);
    }

    v28 = v55;
    v27 = v56;
    (*(v54 + 8))(v12, v25);
  }

  v42 = AnyView.init<A>(_:)();
  v43 = *&v27[v28];
  v44 = *((*MEMORY[0x1E69E7D40] & *v43) + 0x60);
  swift_beginAccess();
  *(v43 + v44) = v42;
  v45 = v43;

  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  return v24;
}

void closure #1 in ResolvedNavigationDestinations.possibilities<A>(from:depth:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for ModifiedContent();
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x18D00A570](v8);
  v13[0] = a5;
  v13[1] = &protocol witness table for NascentViewDestinationsExtractor;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v13);
  v9 = AnyView.init<A>(_:)();
  v10 = *(a1 + direct field offset for UIHostingController.host);
  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x60);
  swift_beginAccess();
  *(v10 + v11) = v9;
  v12 = v10;

  type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

char *closure #2 in ResolvedNavigationDestinations.possibilities<A>(from:depth:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for ModifiedContent();
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x18D00A570](v8);
  v26[0] = a5;
  v26[1] = &protocol witness table for NascentViewDestinationsExtractor;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v26);
  v9 = AnyView.init<A>(_:)();
  v10 = MEMORY[0x1E6981910];
  v11 = MEMORY[0x1E6981900];
  type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
  v13 = objc_allocWithZone(v12);
  v14 = MEMORY[0x1E69E7D40];
  v15 = v13 + *((*MEMORY[0x1E69E7D40] & *v13) + 0x3F8);
  *v15 = 1542;
  v15[2] = 0;
  *(v13 + *((*v14 & *v13) + 0x400)) = 0;
  type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>.HostingView, v10, v11, type metadata accessor for NavigationStackHostingController.HostingView);
  v17 = objc_allocWithZone(v16);
  v18 = specialized _UIHostingView.init(rootView:)(v9);
  v19 = specialized UIHostingController.init(_hostingView:)(v18);
  v27 = *(a3 + 40);
  v20 = *&v19[direct field offset for UIHostingController.host];
  v24 = v27;
  v25 = 0;
  outlined init with copy of PropertyList(&v27, v23);

  v21 = v20;
  UIHostingViewBase.inheritedEnvironment.setter();

  return v19;
}

uint64_t NavigationDestinationResolver.view<A, B>(for:at:applying:)(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v45 = a7;
  v42 = a3;
  v43 = a4;
  v41 = a2;
  v46 = a1;
  v9 = *(*v7 + 144);
  v10 = *(*v7 + 152);
  v38 = *(*v7 + 160);
  v39 = v10;
  v11 = type metadata accessor for ParameterizedLazyView(0, v9, v10, v38);
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Optional();
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v36 - v26;
  (*(v28 + 16))(v19, v46, a5, v25);
  v29 = swift_dynamicCast();
  v30 = *(v20 + 56);
  if (v29)
  {
    v30(v16, 0, 1, v9);
    (*(v20 + 32))(v27, v16, v9);
    (*(v20 + 16))(v23, v27, v9);
    ParameterizedLazyView.init(value:content:)(v23, v7[2], v7[3], v9, v13, v39, v38);

    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ParameterizedLazyView<A, B>, v11);
    v32 = specialized static ResolvedNavigationDestinations.prepareToPresent<A, B>(view:at:shouldUpdateDestinations:applying:)(v13, v41, v42, v43, v11, v44, WitnessTable, v45);
    (*(v40 + 8))(v13, v11);
    (*(v20 + 8))(v27, v9);
    return v32;
  }

  else
  {
    v30(v16, 1, 1, v9);
    (*(v36 + 8))(v16, v37);
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v48 = 0x100000000000001BLL;
    v49 = 0x800000018CD3E060;
    DynamicType = v9;
    swift_getMetatypeMetadata();
    v34 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v34);

    MEMORY[0x18D00C9B0](0x746F67202C9D80E2, 0xAC0000009C80E220);
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v35 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v35);

    MEMORY[0x18D00C9B0](10322146, 0xA300000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t NavigationDestinationResolver.pushDestinationResolvers<A>(onto:for:depth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v43 = a2;
  v7 = *(*v4 + 144);
  v8 = *(*v4 + 152);
  v41 = *(*v4 + 160);
  v42 = v8;
  v9 = type metadata accessor for ParameterizedLazyView(0, v7, v8, v41);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v38 - v10;
  v11 = type metadata accessor for Optional();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  (*(v25 + 16))(v16, v43, a4, v22);
  if (swift_dynamicCast())
  {
    (*(v17 + 56))(v13, 0, 1, v7);
    (*(v17 + 32))(v24, v13, v7);
    (*(v17 + 16))(v20, v24, v7);
    v26 = v44;
    ParameterizedLazyView.init(value:content:)(v20, v4[2], v4[3], v7, v44, v42, v41);
    v27 = *(a1 + 48);
    v28 = *(a1 + 16);
    v55 = *(a1 + 32);
    v56 = v27;
    v29 = *(a1 + 48);
    v57 = *(a1 + 64);
    v30 = *(a1 + 16);
    v54[0] = *a1;
    v54[1] = v30;
    v50 = v55;
    v51 = v29;
    v52 = *(a1 + 64);
    v58 = *(a1 + 80);
    v53 = *(a1 + 80);
    v48 = v54[0];
    v49 = v28;

    outlined init with copy of ResolvedNavigationDestinations(v54, v59);
    v31 = v46;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ParameterizedLazyView<A, B>, v46);
    v33 = v47;
    v34 = ResolvedNavigationDestinations.possibilities<A>(from:depth:)(v26, v47, v31, WitnessTable);
    v59[2] = v50;
    v59[3] = v51;
    v59[4] = v52;
    v60 = v53;
    v59[0] = v48;
    v59[1] = v49;
    outlined destroy of ResolvedNavigationDestinations(v59);
    ResolvedNavigationDestinations.setPossibilities(_:depth:)(v34, v33);

    (*(v45 + 8))(v26, v31);
    return (*(v17 + 8))(v24, v7);
  }

  else
  {
    (*(v17 + 56))(v13, 1, 1, v7);
    (*(v39 + 8))(v13, v40);
    *&v59[0] = 0;
    *(&v59[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    *&v59[0] = 0x100000000000001BLL;
    *(&v59[0] + 1) = 0x800000018CD3E060;
    *&v54[0] = v7;
    swift_getMetatypeMetadata();
    v36 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v36);

    MEMORY[0x18D00C9B0](0x746F67202C9D80E2, 0xAC0000009C80E220);
    *&v54[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v37 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v37);

    MEMORY[0x18D00C9B0](10322146, 0xA300000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t NavigationDestinationResolver.description.getter()
{
  _StringGuts.grow(_:)(32);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0x100000000000001CLL, 0x800000018CD3E010);
  swift_getMetatypeMetadata();
  v0 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v0);

  return 0;
}

uint64_t NavigationDestinationResolver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static NascentViewDestinationsExtractor._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v31 = *a1;
  v32 = v4;
  v33 = a1[2];
  v5 = *(a1 + 6);
  v6 = *(a1 + 14);
  *&v34[12] = *(a1 + 60);
  *&v34[28] = *(a1 + 76);
  PreferenceKeys.init()();
  *&v23 = *&v29[0];
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  GraphHost.intern<A>(_:for:id:)();

  *v34 = v5;
  *&v34[8] = v6;
  _ViewInputs.withoutGeometryDependencies.getter();
  PreferencesInputs.init(hostKeys:)();

  *&v26 = v31;
  DWORD2(v26) = DWORD2(v31);
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.setter();
  _ViewInputs.disableNavigationDestination.setter();
  LOBYTE(v31) = 1;
  lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations();
  PropertyList.subscript.setter();
  v29[2] = v25;
  v29[3] = v26;
  v29[4] = v27;
  v30 = v28;
  v29[0] = v23;
  v29[1] = v24;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v14 = v23;
  v15 = v24;
  v7 = outlined init with copy of _ViewInputs(v29, &v31);
  a2(&v20, v7, &v14);
  v33 = v16;
  *v34 = v17;
  *&v34[16] = v18;
  *&v34[32] = v19;
  v31 = v14;
  v32 = v15;
  outlined destroy of _ViewInputs(&v31);
  v8 = v20;
  v9 = v21;
  *&v14 = v20;
  DWORD2(v14) = v21;
  v10 = PreferencesOutputs.subscript.getter();
  if ((v10 & 0x100000000) != 0)
  {
    v16 = v25;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v14 = v23;
    v15 = v24;
    result = outlined destroy of _ViewInputs(&v14);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);

    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

    v16 = v25;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v14 = v23;
    v15 = v24;
    result = outlined destroy of _ViewInputs(&v14);
    v8 = v20;
    v9 = v21;
  }

  v12 = v22;
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 12) = v12;
  return result;
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance NascentViewDestinationsExtractor.Key@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static NascentViewDestinationsExtractor.Key.defaultValue;

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error()
{
  result = lazy protocol witness table cache variable for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error;
  if (!lazy protocol witness table cache variable for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationPath.Error, &type metadata for AnyNavigationPath.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error);
  }

  return result;
}

uint64_t specialized static ResolvedNavigationDestinations.prepareToPresent<A, B>(view:at:shouldUpdateDestinations:applying:)(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v36 = a4;
  v37 = a3;
  v11 = a2[1];
  v34 = *a2;
  v35 = a1;
  v32 = *(a2 + 16);
  v33 = v11;
  v12 = a2[4];
  v31 = a2[3];
  v30 = v12;
  v29 = *(a2 + 40);
  v28 = a6;
  v38 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(255, &lazy cache variable for type metadata for ReadDestinationsModifier<ResolvedNavigationDestinations>, &type metadata for ResolvedNavigationDestinations, &protocol witness table for ResolvedNavigationDestinations, type metadata accessor for ReadDestinationsModifier);
  v15 = type metadata accessor for ModifiedContent();
  type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
  v16 = type metadata accessor for ModifiedContent();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v20 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v20);
  v43[0] = v34;
  v43[1] = v33;
  v43[2] = v32;
  v43[3] = v31;
  v43[4] = v30;
  v44 = v29 & 1;
  View.readNavigationDestinations<A>(position:isActive:reader:)(v43, 1, &type metadata for ResolvedNavigationDestinations, a5, &type metadata for ResolvedNavigationDestinations, a7, &protocol witness table for ResolvedNavigationDestinations);
  v37(a2);
  v42[0] = a7;
  v42[1] = &protocol witness table for ReadDestinationsModifier<A>;
  v21 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v42);
  v23 = lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>();
  v41[0] = WitnessTable;
  v41[1] = v23;
  v24 = swift_getWitnessTable(v21, v16, v41);
  v25 = v28;
  MEMORY[0x18D00A570](v14, v16, v28, v24);
  (*(v38 + 8))(v14, v25);
  (*(v17 + 8))(v19, v16);
  v40[0] = v24;
  v40[1] = v39;
  swift_getWitnessTable(v21, v20, v40);
  return AnyView.init<A>(_:)();
}

uint64_t assignWithCopy for ResolvedNavigationDestinations(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for ResolvedNavigationDestinations(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvedNavigationDestinations.ChangeRequest(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ResolvedNavigationDestinations.ChangeRequest(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ResolvedNavigationDestinations.ChangeRequest(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ResolvedNavigationDestinations.ChangeRequest(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of ResolvedNavigationDestinations.ChangeRequest(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ResolvedNavigationDestinations.ChangeRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of ResolvedNavigationDestinations.ChangeRequest(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedNavigationDestinations.ChangeRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ResolvedNavigationDestinations.ChangeRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double static SensoryFeedback.success.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -0.0;
  *a1 = xmmword_18CD68310;
  return result;
}

double static SensoryFeedback.warning.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000001;
  *a1 = xmmword_18CD68320;
  return result;
}

double static SensoryFeedback.error.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000002;
  *a1 = xmmword_18CD68330;
  return result;
}

double static SensoryFeedback.selection.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000001;
  *a1 = xmmword_18CD68340;
  return result;
}

double static SensoryFeedback.increase.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000003;
  *a1 = xmmword_18CD68350;
  return result;
}

double static SensoryFeedback.decrease.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -0.0;
  *a1 = xmmword_18CD68360;
  return result;
}

double static SensoryFeedback.start.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -0.0;
  *a1 = xmmword_18CD68370;
  return result;
}

double static SensoryFeedback.stop.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000001;
  *a1 = xmmword_18CD68380;
  return result;
}

double static SensoryFeedback.alignment.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000002;
  *a1 = xmmword_18CD68390;
  return result;
}

double static SensoryFeedback.levelChange.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000003;
  *a1 = xmmword_18CD683A0;
  return result;
}

double static SensoryFeedback.pathComplete.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000002;
  *a1 = xmmword_18CD683B0;
  return result;
}

unsigned __int8 *static SensoryFeedback.impact(weight:intensity:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 8) = a3;
  return result;
}

double static SensoryFeedback.impact.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CD683C0;
  return result;
}

unsigned __int8 *static SensoryFeedback.impact(flexibility:intensity:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result | 0x4000000000000000;
  *(a2 + 8) = a3;
  return result;
}

__n128 static SensoryFeedback.press(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double static SensoryFeedback.SelectionFeedback.maximum.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000003;
  *a1 = xmmword_18CD683D0;
  return result;
}

double static SensoryFeedback.SelectionFeedback.minimum.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -0.0;
  *a1 = xmmword_18CD683E0;
  return result;
}

double static SensoryFeedback.SelectionFeedback.on.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000003;
  *a1 = xmmword_18CD683F0;
  return result;
}

double static SensoryFeedback.SelectionFeedback.off.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -0.0;
  *a1 = xmmword_18CD68400;
  return result;
}

double static SensoryFeedback.PressFeedback.button.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -0.0;
  *a1 = xmmword_18CD68410;
  return result;
}

double static SensoryFeedback.PressFeedback.buttonIconOnly.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000003;
  *a1 = xmmword_18CD68420;
  return result;
}

double static SensoryFeedback.PressFeedback.slider.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000001;
  *a1 = xmmword_18CD68430;
  return result;
}

double static SensoryFeedback.PressFeedback.toggle.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000002;
  *a1 = xmmword_18CD68440;
  return result;
}

double static SensoryFeedback.PressFeedback.tab.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000001;
  *a1 = xmmword_18CD68450;
  return result;
}

double static SensoryFeedback.ReleaseFeedback.slider.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 0x8000000000000002;
  *a1 = xmmword_18CD68460;
  return result;
}

Swift::Int SensoryFeedback.SelectionFeedback.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  SensoryFeedback.FeedbackType.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SensoryFeedback.FeedbackType(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  SensoryFeedback.FeedbackType.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

BOOL specialized static SensoryFeedback.FeedbackType.== infix(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      if (__PAIR128__(2, 0x8000000000000001) >= __PAIR128__(a2, a1))
      {
        if (__PAIR128__(1, 0x8000000000000000) < __PAIR128__(a2, a1))
        {
          if (__PAIR128__(1, 0x8000000000000002) >= __PAIR128__(a2, a1))
          {
            if (a2 == 1 && a1 == 0x8000000000000001)
            {
              if (a3 >> 62 == 2 && a3 == 0x8000000000000001 && a4 == 1)
              {
                return 1;
              }
            }

            else if (a3 >> 62 == 2 && a3 == 0x8000000000000002 && a4 == 1)
            {
              return 1;
            }
          }

          else if (a2 == 1 && a1 == 0x8000000000000003)
          {
            if (a3 >> 62 == 2 && a3 == 0x8000000000000003 && a4 == 1)
            {
              return 1;
            }
          }

          else if (a2 == 2 && a1 == 0x8000000000000000)
          {
            if (a3 >> 62 == 2 && a3 == 0x8000000000000000 && a4 == 2)
            {
              return 1;
            }
          }

          else if (a3 >> 62 == 2 && a3 == 0x8000000000000001 && a4 == 2)
          {
            return 1;
          }
        }

        else if (a1 <= 0x8000000000000001)
        {
          if (a1 ^ 0x8000000000000000 | a2)
          {
            if (a3 >> 62 == 2 && a3 == 0x8000000000000001 && *&a4 == 0.0)
            {
              return 1;
            }
          }

          else if (a3 >> 62 == 2 && a3 == 0x8000000000000000 && *&a4 == 0.0)
          {
            return 1;
          }
        }

        else if (a1 ^ 0x8000000000000002 | a2)
        {
          if (a1 ^ 0x8000000000000003 | a2)
          {
            if (a3 >> 62 == 2 && a3 == 0x8000000000000000 && a4 == 1)
            {
              return 1;
            }
          }

          else if (a3 >> 62 == 2 && a3 == 0x8000000000000003 && *&a4 == 0.0)
          {
            return 1;
          }
        }

        else if (a3 >> 62 == 2 && a3 == 0x8000000000000002 && *&a4 == 0.0)
        {
          return 1;
        }
      }

      else if (__PAIR128__(3, 0x8000000000000002) >= __PAIR128__(a2, a1))
      {
        if (__PAIR128__(3, 0x7FFFFFFFFFFFFFFFLL) >= __PAIR128__(a2, a1))
        {
          if (a2 == 2 && a1 == 0x8000000000000002)
          {
            if (a3 >> 62 == 2 && a3 == 0x8000000000000002 && a4 == 2)
            {
              return 1;
            }
          }

          else if (a3 >> 62 == 2 && a3 == 0x8000000000000003 && a4 == 2)
          {
            return 1;
          }
        }

        else if (a2 == 3 && a1 == 0x8000000000000000)
        {
          if (a3 >> 62 == 2 && a3 == 0x8000000000000000 && a4 == 3)
          {
            return 1;
          }
        }

        else if (a2 == 3 && a1 == 0x8000000000000001)
        {
          if (a3 >> 62 == 2 && a3 == 0x8000000000000001 && a4 == 3)
          {
            return 1;
          }
        }

        else if (a3 >> 62 == 2 && a3 == 0x8000000000000002 && a4 == 3)
        {
          return 1;
        }
      }

      else if (__PAIR128__(4, 0x8000000000000001) < __PAIR128__(a2, a1))
      {
        if (a2 == 4 && a1 == 0x8000000000000002)
        {
          if (a3 >> 62 == 2 && a3 == 0x8000000000000002 && a4 == 4)
          {
            return 1;
          }
        }

        else if (a2 == 4 && a1 == 0x8000000000000003)
        {
          if (a3 >> 62 == 2 && a3 == 0x8000000000000003 && a4 == 4)
          {
            return 1;
          }
        }

        else if (a3 >> 62 == 2 && a3 == 0x8000000000000000 && a4 == 5)
        {
          return 1;
        }
      }

      else if (a2 == 3 && a1 == 0x8000000000000003)
      {
        if (a3 >> 62 == 2 && a3 == 0x8000000000000003 && a4 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4 && a1 == 0x8000000000000000)
      {
        if (a3 >> 62 == 2 && a3 == 0x8000000000000000 && a4 == 4)
        {
          return 1;
        }
      }

      else if (a3 >> 62 == 2 && a3 == 0x8000000000000001 && a4 == 4)
      {
        return 1;
      }

      return 0;
    }

    if (a3 >> 62 != 1)
    {
      return 0;
    }
  }

  else if (a3 >> 62)
  {
    return 0;
  }

  return a3 == a1 && *&a2 == *&a4;
}

unint64_t lazy protocol witness table accessor for type SensoryFeedback.SelectionFeedback and conformance SensoryFeedback.SelectionFeedback()
{
  result = lazy protocol witness table cache variable for type SensoryFeedback.SelectionFeedback and conformance SensoryFeedback.SelectionFeedback;
  if (!lazy protocol witness table cache variable for type SensoryFeedback.SelectionFeedback and conformance SensoryFeedback.SelectionFeedback)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SensoryFeedback.SelectionFeedback, &type metadata for SensoryFeedback.SelectionFeedback, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SensoryFeedback.SelectionFeedback and conformance SensoryFeedback.SelectionFeedback);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SensoryFeedback.PressFeedback and conformance SensoryFeedback.PressFeedback()
{
  result = lazy protocol witness table cache variable for type SensoryFeedback.PressFeedback and conformance SensoryFeedback.PressFeedback;
  if (!lazy protocol witness table cache variable for type SensoryFeedback.PressFeedback and conformance SensoryFeedback.PressFeedback)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SensoryFeedback.PressFeedback, &type metadata for SensoryFeedback.PressFeedback, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SensoryFeedback.PressFeedback and conformance SensoryFeedback.PressFeedback);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SensoryFeedback.ReleaseFeedback and conformance SensoryFeedback.ReleaseFeedback()
{
  result = lazy protocol witness table cache variable for type SensoryFeedback.ReleaseFeedback and conformance SensoryFeedback.ReleaseFeedback;
  if (!lazy protocol witness table cache variable for type SensoryFeedback.ReleaseFeedback and conformance SensoryFeedback.ReleaseFeedback)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SensoryFeedback.ReleaseFeedback, &type metadata for SensoryFeedback.ReleaseFeedback, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SensoryFeedback.ReleaseFeedback and conformance SensoryFeedback.ReleaseFeedback);
  }

  return result;
}

uint64_t getEnumTag for SensoryFeedback.FeedbackType(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 3 | (4 * *(a1 + 8))) + 2;
  }
}

void *destructiveInjectEnumTag for SensoryFeedback.FeedbackType(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 3 | 0x8000000000000000;
    result[1] = (a2 - 2) >> 2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SensoryFeedback.Weight.Storage and conformance SensoryFeedback.Weight.Storage()
{
  result = lazy protocol witness table cache variable for type SensoryFeedback.Weight.Storage and conformance SensoryFeedback.Weight.Storage;
  if (!lazy protocol witness table cache variable for type SensoryFeedback.Weight.Storage and conformance SensoryFeedback.Weight.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SensoryFeedback.Weight.Storage, &type metadata for SensoryFeedback.Weight.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SensoryFeedback.Weight.Storage and conformance SensoryFeedback.Weight.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SensoryFeedback.Flexibility.Storage and conformance SensoryFeedback.Flexibility.Storage()
{
  result = lazy protocol witness table cache variable for type SensoryFeedback.Flexibility.Storage and conformance SensoryFeedback.Flexibility.Storage;
  if (!lazy protocol witness table cache variable for type SensoryFeedback.Flexibility.Storage and conformance SensoryFeedback.Flexibility.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SensoryFeedback.Flexibility.Storage, &type metadata for SensoryFeedback.Flexibility.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SensoryFeedback.Flexibility.Storage and conformance SensoryFeedback.Flexibility.Storage);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t initializeWithTake for UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t protocol witness for static StyleableView.defaultStyleModifier.getter in conformance ResolvedUIKitButtonBody@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultStyleModifier != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UIKitSystemButtonConfigurationModifier(0);
  v3 = __swift_project_value_buffer(v2, static ResolvedUIKitButtonBody.defaultStyleModifier);
  return outlined init with copy of PlatformItemList.Item(v3, a1, type metadata accessor for UIKitSystemButtonConfigurationModifier);
}

uint64_t View.uikitButtonStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIKitButtonStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t View.uikitButtonConfiguration(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UIKitSystemButtonConfigurationModifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  MEMORY[0x18D00A570](v8, a2, v6, a3);
  return outlined destroy of UIKitSystemButtonConfigurationModifier(v8, type metadata accessor for UIKitSystemButtonConfigurationModifier);
}

uint64_t UIKitButtonStyleModifier.ResolvedBody_Nested.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v23[1] = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for ButtonStyleContent(255, v5, v6, a3);
  v23[0] = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleContent<A>, v7);
  v9 = type metadata accessor for UIKitButtonAdaptor(0, v7, v23[0], v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  v16 = v3 + *(a1 + 36);
  v17 = *(v16 + 48);
  v18 = *(v16 + 16);
  v29 = *(v16 + 32);
  v30 = v17;
  v19 = *(v16 + 48);
  v31 = *(v16 + 64);
  v20 = *(v16 + 16);
  v28[0] = *v16;
  v28[1] = v20;
  v26[2] = v29;
  v26[3] = v19;
  v26[4] = *(v16 + 64);
  v32 = *(v16 + 80);
  v27 = *(v16 + 80);
  v26[0] = v28[0];
  v26[1] = v18;
  v23[4] = v5;
  v23[5] = v6;
  v24 = v3;
  outlined init with copy of UIKitButtonConfiguration(v28, &v25);
  UIKitButtonAdaptor.init(configuration:options:content:)(v26, 0, partial apply for closure #1 in UIKitButtonStyleModifier.ResolvedBody_Nested.body.getter, v7, v23[0], v12);
  static ViewBuilder.buildExpression<A>(_:)();
  v21 = *(v10 + 8);
  v21(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v15, v9);
}

uint64_t closure #1 in UIKitButtonStyleModifier.ResolvedBody_Nested.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, a2, v8);
  v15 = *(a1 + *(type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Nested(0, a2, a3, v12) + 36));
  return ButtonStyleContent.init(_:role:)(v10, &v15, a2, a3, a4);
}

uint64_t ButtonStyleContent.init(_:role:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = type metadata accessor for ButtonStyleContent(0, a3, a4, a4);
  v10 = v9[9];
  *(a5 + v10) = 4;
  v11 = a5 + v9[10];
  *v11 = 0;
  *(v11 + 8) = 0;
  v12 = a5 + v9[11];
  *v12 = 0;
  *(v12 + 8) = 0;
  result = (*(*(a3 - 8) + 32))(a5, a1, a3);
  *(a5 + v10) = v8;
  return result;
}

uint64_t _s7SwiftUI18UIKitButtonAdaptorV13configuration7options7contentACyxGAA0cD13ConfigurationV_AA01_cdE15Content_OptionsVxyXEtcfCAA04ViewJ033_64A26C7A8406856A733B1A7B593971F7LLVyAA6HStackVyAI5LabelVGG_Tt3B5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = lazy protocol witness table accessor for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown();
  *a5 = &type metadata for AnyButtonStyleType.Unknown;
  *(a5 + 8) = v10;
  *(a5 + 16) = swift_getKeyPath();
  *(a5 + 24) = 0;
  *(a5 + 32) = swift_getKeyPath();
  *(a5 + 40) = 0;
  *(a5 + 48) = swift_getKeyPath();
  *(a5 + 56) = 0;
  *(a5 + 64) = swift_getKeyPath();
  *(a5 + 72) = 0;
  *(a5 + 80) = swift_getKeyPath();
  *(a5 + 88) = 0;
  *(a5 + 96) = swift_getKeyPath();
  *(a5 + 104) = 0;
  *(a5 + 112) = swift_getKeyPath();
  *(a5 + 120) = 0;
  v11 = *(a1 + 24);
  if (v11 & 1) != 0 && (*(a1 + 36))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v12 = a4(0);
    v13 = (a5 + v12[24]);
    v14 = a5 + v12[25];
    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    *(a5 + 128) = v16;
    *(a5 + 136) = v15;
    *(a5 + 144) = *(a1 + 25);
    *(a5 + 148) = *(a1 + 28);
    *(a5 + 156) = *(a1 + 36);
    v17 = *(a1 + 37);
    *(a5 + 157) = v17;
    *(a5 + 158) = *(a1 + 38);
    v18 = *(a1 + 40);
    *(a5 + 168) = *(a1 + 48);
    *(a5 + 160) = v18;
    v19 = v12[23];
    *(a5 + v19) = a2;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    *v13 = v20;
    v13[1] = v21;
    *(v14 + 8) = *(a1 + 80);
    *v14 = *(a1 + 72);
    outlined copy of AppIntentExecutor?(v16, v15);
    v22 = outlined copy of AppIntentExecutor?(v20, v21);
    a3(v22);
    result = outlined destroy of UIKitButtonConfiguration(a1);
    if ((v11 & 1) != 0 && (a2 & 0x80) == 0)
    {
      a2 |= 0x80uLL;
      *(a5 + v19) = a2;
    }

    v24 = *(a1 + 49);
    v25 = (a2 & 0x100) == 0;
    v26 = v24 & v25;
    if ((v24 & v25) != 0)
    {
      v27 = a2 | 0x100;
    }

    else
    {
      v27 = a2;
    }

    v29 = (v27 & 1) == 0 && v17 == 1;
    if ((v26 & 1) != 0 || v29)
    {
      *(a5 + v19) = v27 | v29;
    }
  }

  return result;
}

uint64_t UIKitSystemButtonConfigurationModifier.styleBody(configuration:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>(0, &lazy cache variable for type metadata for UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, type metadata accessor for UIKitFlattenedButtonAdaptor);
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(0);
  v71 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[2];
  v30 = a1[4];
  v79 = a1[3];
  v80 = v30;
  v81 = *(a1 + 80);
  v31 = *a1;
  v77 = a1[1];
  v78 = v29;
  v76 = v31;
  if (BYTE8(v77))
  {
    v32 = *(v26 + 20);
    v33 = type metadata accessor for UIButton.Configuration();
    (*(*(v33 - 8) + 16))(&v28[v32], v3, v33);
    v34 = v79;
    v35 = v80;
    *(v28 + 2) = v78;
    *(v28 + 3) = v34;
    *(v28 + 4) = v35;
    v28[80] = v81;
    v36 = v77;
    *v28 = v76;
    *(v28 + 1) = v36;
    outlined init with take of StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(v28, a2, type metadata accessor for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent);
    type metadata accessor for _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>>.Storage, MEMORY[0x1E697F948]);
    swift_storeEnumTagMultiPayload();
    return outlined init with copy of UIKitButtonConfiguration(&v76, v75);
  }

  else
  {
    v38 = type metadata accessor for UIButton.Configuration();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v21, v3, v38);
    v69 = *(v39 + 56);
    v69(v21, 0, 1, v38);
    v68 = MEMORY[0x1E69DC598];
    v67 = MEMORY[0x1E69E6720];
    v66 = type metadata accessor for UIButton.Configuration?;
    outlined init with copy of PlatformItemList.Item.Accessibility?(v21, v18, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720], type metadata accessor for UIButton.Configuration?);
    *v11 = static VerticalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 1;
    if (BYTE1(v79))
    {
      v40 = 257;
    }

    else
    {
      v40 = 1;
    }

    v65 = v40;
    v41 = 256;
    if ((BYTE1(v79) & 1) == 0)
    {
      v41 = 0;
    }

    v64 = v41;
    if (BYTE5(v78) == 1)
    {
      v41 = v40;
    }

    v42 = &v11[*(v74 + 36)];
    v43 = v77;
    *v42 = v76;
    *(v42 + 1) = v43;
    v42[80] = v81;
    v44 = v80;
    *(v42 + 3) = v79;
    *(v42 + 4) = v44;
    *(v42 + 2) = v78;
    *(v42 + 11) = v41;
    *(v42 + 12) = 1;
    v45 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
    outlined init with take of UIButton.Configuration?(v18, &v42[v45[7]]);
    v46 = &v42[v45[8]];
    *v46 = 0;
    *(v46 + 1) = 0;
    v46[16] = 0;
    v47 = &v42[v45[9]];
    *v47 = 0;
    *(v47 + 1) = 0;
    v47[16] = 0;
    outlined init with take of UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>(v11, v24);
    type metadata accessor for StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>(0);
    v49 = v48;
    v70 = a2;
    v50 = *(v48 + 44);
    MEMORY[0x1EEE9AC00](v48);
    *(&v62 - 2) = &v76;
    *(&v62 - 1) = v21;
    outlined init with copy of UIKitButtonConfiguration(&v76, v75);
    outlined init with copy of UIKitButtonConfiguration(&v76, v75);
    v63 = type metadata accessor for UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>;
    _s7SwiftUI18UIKitButtonAdaptorV13configuration7options7contentACyxGAA0cD13ConfigurationV_AA01_cdE15Content_OptionsVxyXEtcfCAA04ViewJ033_64A26C7A8406856A733B1A7B593971F7LLVyAA6HStackVyAI5LabelVGG_Tt3B5Tm(&v76, 0, partial apply for closure #1 in closure #2 in UIKitSystemButtonConfigurationModifier.viewContent(configuration:wantsUIButtonConfiguration:), type metadata accessor for UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>, &v24[v50]);
    outlined destroy of UIButton.Configuration?(v21);
    v51 = v73;
    v69(v73, 1, 1, v38);
    v52 = v72;
    outlined init with copy of PlatformItemList.Item.Accessibility?(v51, v72, &lazy cache variable for type metadata for UIButton.Configuration?, v68, v67, v66);
    *v8 = static VerticalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v53 = v65;
    if (BYTE5(v78) != 1)
    {
      v53 = v64;
    }

    v54 = &v24[*(v71 + 44)];
    v55 = &v8[*(v74 + 36)];
    v56 = v77;
    *v55 = v76;
    *(v55 + 1) = v56;
    v55[80] = v81;
    v57 = v80;
    *(v55 + 3) = v79;
    *(v55 + 4) = v57;
    *(v55 + 2) = v78;
    *(v55 + 11) = v53;
    *(v55 + 12) = 1;
    outlined init with take of UIButton.Configuration?(v52, &v55[v45[7]]);
    v58 = &v55[v45[8]];
    *v58 = 0;
    *(v58 + 1) = 0;
    v58[16] = 0;
    v59 = &v55[v45[9]];
    *v59 = 0;
    *(v59 + 1) = 0;
    v59[16] = 0;
    v60 = outlined init with take of UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>(v8, v54);
    v61 = *(v49 + 44);
    MEMORY[0x1EEE9AC00](v60);
    *(&v62 - 2) = &v76;
    *(&v62 - 1) = v51;
    outlined init with copy of UIKitButtonConfiguration(&v76, v75);
    outlined init with copy of UIKitButtonConfiguration(&v76, v75);
    _s7SwiftUI18UIKitButtonAdaptorV13configuration7options7contentACyxGAA0cD13ConfigurationV_AA01_cdE15Content_OptionsVxyXEtcfCAA04ViewJ033_64A26C7A8406856A733B1A7B593971F7LLVyAA6HStackVyAI5LabelVGG_Tt3B5Tm(&v76, 0, closure #1 in closure #2 in UIKitSystemButtonConfigurationModifier.viewContent(configuration:wantsUIButtonConfiguration:)partial apply, v63, v54 + v61);
    outlined destroy of UIButton.Configuration?(v51);
    outlined init with take of StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(v24, v70, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>);
    type metadata accessor for _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>>.Storage, MEMORY[0x1E697F948]);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t closure #1 in closure #2 in UIKitSystemButtonConfigurationModifier.viewContent(configuration:wantsUIButtonConfiguration:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E69DC598];
  v7 = MEMORY[0x1E69E6720];
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  LOBYTE(a1) = *a1;
  outlined init with copy of PlatformItemList.Item.Accessibility?(a2, &v16 - v9, &lazy cache variable for type metadata for UIButton.Configuration?, v6, v7, type metadata accessor for UIButton.Configuration?);
  *(a3 + 17) = 4;
  type metadata accessor for UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>(0, &lazy cache variable for type metadata for ViewContent<HStack<UIKitButtonConfiguration.Label>>, type metadata accessor for ViewContent);
  v12 = *(v11 + 44);
  v13 = type metadata accessor for UIButton.Configuration();
  (*(*(v13 - 8) + 56))(a3 + v12, 1, 1, v13);
  *(a3 + 17) = a1;
  *(a3 + 24) = 1;
  outlined assign with copy of UIButton.Configuration?(v10, a3 + v12);
  v14 = static VerticalAlignment.center.getter();
  result = outlined destroy of UIButton.Configuration?(v10);
  *a3 = v14;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  return result;
}

uint64_t ViewContent.init(role:uikitButtonType:uiButtonConfiguration:content:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = type metadata accessor for ViewContent(0, a5, a6, a4);
  v13 = v12[9];
  *(a7 + v13) = 4;
  v14 = v12[11];
  v15 = type metadata accessor for UIButton.Configuration();
  (*(*(v15 - 8) + 56))(a7 + v14, 1, 1, v15);
  *(a7 + v13) = v11;
  *(a7 + v12[10]) = a2;
  v16 = outlined assign with copy of UIButton.Configuration?(a3, a7 + v14);
  a4(v16);

  return outlined destroy of UIButton.Configuration?(a3);
}

double static UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent._makeView(view:inputs:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, double *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[3];
  v30 = a2[2];
  v31 = v5;
  v32 = a2[4];
  v33 = *(a2 + 20);
  v6 = a2[1];
  v28 = *a2;
  v29 = v6;
  *v26 = AGGraphCreateOffsetAttribute2();
  *&v26[8] = partial apply for specialized closure #1 in Attribute.subscript.getter;
  *&v26[16] = swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for HStack<UIKitButtonConfiguration.Label>(0, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
  type metadata accessor for Map<UIKitButtonConfiguration, HStack<UIKitButtonConfiguration.Label>>(0);
  lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier(&lazy protocol witness table cache variable for type Map<UIKitButtonConfiguration, HStack<UIKitButtonConfiguration.Label>> and conformance Map<A, B>, type metadata accessor for Map<UIKitButtonConfiguration, HStack<UIKitButtonConfiguration.Label>>, MEMORY[0x1E698D3A0]);

  v7 = Attribute.init<A>(body:value:flags:update:)();

  v8 = AGSubgraphGetCurrent();
  if (!v8)
  {
    __break(1u);
  }

  v9 = *MEMORY[0x1E698D3F8];
  *&v27[4] = v28;
  *&v27[20] = v29;
  *&v27[84] = v33;
  *&v27[68] = v32;
  *&v27[52] = v31;
  *&v27[36] = v30;
  *v26 = v8;
  *&v26[8] = v7;
  *&v26[28] = *&v27[16];
  *&v26[12] = *v27;
  *&v26[92] = *&v27[80];
  *&v26[76] = *&v27[64];
  *&v26[60] = *&v27[48];
  *&v26[44] = *&v27[32];
  v26[100] = 1;
  *&v26[104] = v9;
  *(v25 + 12) = *&v26[92];
  v24 = *&v26[64];
  v25[0] = *&v26[80];
  v20 = *v26;
  v21 = *&v26[16];
  v22 = *&v26[32];
  v23 = *&v26[48];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v28, &v18);
  outlined init with copy of PlatformItemList.Item(v26, &v18, type metadata accessor for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>);
  type metadata accessor for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>(0);
  lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier(&lazy protocol witness table cache variable for type PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>> and conformance PlatformItemListGenerator<A, B>, type metadata accessor for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>, protocol conformance descriptor for PlatformItemListGenerator<A, B>);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UIKitSystemButtonConfigurationModifier(v26, type metadata accessor for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>);
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v11 = specialized static UseUIButtonConfigurationPredicate.evaluate(inputs:)(&v20);
  v12 = v11;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v13 = _GraphInputs.suppressTrailingInset.getter(v11);
  lazy protocol witness table accessor for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton();
  PropertyList.subscript.getter();
  v14 = v20;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  _GraphInputs.interfaceIdiom.getter();
  v15 = AnyInterfaceIdiom.accepts<A>(_:)();
  type metadata accessor for ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier>, type metadata accessor for UIKitButtonAdaptor<PlatformItemContent>, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  *&v20 = __PAIR64__(v4, v10);
  BYTE8(v20) = v12 & 1;
  BYTE9(v20) = v13 & 1;
  BYTE10(v20) = v14;
  BYTE11(v20) = v15 & 1;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor and conformance UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor();
  Attribute.init<A>(body:value:flags:update:)();
  v22 = v30;
  v23 = v31;
  v24 = v32;
  LODWORD(v25[0]) = v33;
  v20 = v28;
  v21 = v29;
  lazy protocol witness table accessor for type ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  static View.makeDebuggableView(view:inputs:)();
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v16 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    *&v20 = v31;
    DWORD2(v20) = DWORD2(v31);
    MEMORY[0x1EEE9AC00](v31);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    outlined destroy of UIKitSystemButtonConfigurationModifier(v26, type metadata accessor for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>);
  }

  else
  {
    outlined destroy of UIKitSystemButtonConfigurationModifier(v26, type metadata accessor for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>);
  }

  *a3 = v18;
  result = v19;
  a3[1] = v19;
  return result;
}

uint64_t _GraphInputs.suppressTrailingInset.getter(uint64_t a1)
{
  _GraphInputs.interfaceIdiom.getter();
  if ((AnyInterfaceIdiom.accepts<A>(_:)() & 1) != 0 || (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0 && (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HStack<UIKitButtonConfiguration.Label>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  return static SemanticFeature.isEnabled.getter() & 1;
}

uint64_t implicit closure #1 in static UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent._makeView(view:inputs:)(int a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier.PlatformItemTransform and conformance UIKitSystemButtonConfigurationModifier.PlatformItemTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor.value.getter@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v27 = a3;
  v5 = HIDWORD(a1);
  v6 = a2 & 0x100;
  v7 = a2 & 0x10000;
  v8 = a2 & 0x1000000;
  type metadata accessor for UIKitButtonAdaptor<PlatformItemContent>(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  AGGraphGetValue();

  PlatformItemList.mergedContentItem.getter(v15, v14);

  type metadata accessor for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(0);
  Value = AGGraphGetValue();
  v17 = *(Value + 16);
  v29[0] = *Value;
  v29[1] = v17;
  v19 = *(Value + 48);
  v18 = *(Value + 64);
  v20 = *(Value + 80);
  v29[2] = *(Value + 32);
  v30 = v20;
  v29[3] = v19;
  v29[4] = v18;
  if (v3)
  {
    v21 = v7 == 0;
    if (v6)
    {
      v22 = 56;
      v23 = 24;
    }

    else
    {
      v22 = 40;
      v23 = 8;
    }
  }

  else
  {
    if (!v6)
    {
      v24 = v7 >> 11;
      if (!v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v21 = v7 == 0;
    v22 = 48;
    v23 = 16;
  }

  if (v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if (v8)
  {
LABEL_13:
    v24 |= 0x40uLL;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](Value);
  *(&v27 - 4) = v14;
  *(&v27 - 6) = v4;
  *(&v27 - 5) = v5;
  *(&v27 - 16) = v3 & 1;
  *(&v27 - 15) = BYTE1(v6);
  *(&v27 - 14) = BYTE2(v7);
  *(&v27 - 13) = v25;
  outlined init with copy of UIKitButtonConfiguration(v29, v28);
  _s7SwiftUI18UIKitButtonAdaptorV13configuration7options7contentACyxGAA0cD13ConfigurationV_AA01_cdE15Content_OptionsVxyXEtcfCAA04ViewJ033_64A26C7A8406856A733B1A7B593971F7LLVyAA6HStackVyAI5LabelVGG_Tt3B5Tm(v29, v24, partial apply for closure #1 in UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor.value.getter, type metadata accessor for UIKitButtonAdaptor<PlatformItemContent>, v11);
  specialized View.accessibility(platformItem:)(v14, v27);
  outlined destroy of UIKitSystemButtonConfigurationModifier(v11, type metadata accessor for UIKitButtonAdaptor<PlatformItemContent>);
  return outlined destroy of UIKitSystemButtonConfigurationModifier(v14, type metadata accessor for PlatformItemList.Item);
}

uint64_t closure #1 in UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  outlined init with copy of PlatformItemList.Item(a1, a3, type metadata accessor for PlatformItemList.Item);
  v4 = type metadata accessor for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(0);
  v5 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  v7 = *(v4 + 20);
  v8 = type metadata accessor for PlatformItemContent(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for UIButton.Configuration();
  result = (*(*(v10 - 8) + 16))(a3 + v9, Value + v7, v10);
  *(a3 + *(v8 + 20)) = v5;
  return result;
}

uint64_t specialized View.accessibility(platformItem:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of PlatformItemList.Item.Accessibility?((a1 + 67), v18, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720], type metadata accessor for PlatformItemList.Item.SelectionBehavior?);
  if (*(&v18[17] + 1))
  {
    outlined init with copy of AccessibilityProperties(v18, __src);
    outlined destroy of PlatformItemList.Item.Accessibility(v18);
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_0(v18, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
    memset(__src, 0, sizeof(__src));
    AccessibilityProperties.init()();
    if (*(&__src[17] + 1))
    {
      _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_0(__src, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    }
  }

  if (!__dst[3] || !*(__dst[3] + 16))
  {
    v6 = *a1;
    if (v6)
    {
      type metadata accessor for PlatformItemList.Item.SelectionBehavior?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_18CD63400;
      *(&v18[1] + 1) = type metadata accessor for NSAttributedString();
      *&v18[0] = v6;
      v8 = v6;
      AccessibilityText.init(_:)();
      v9 = __src[0];
      v10 = __src[1];
      v18[0] = __src[0];
      LOWORD(v18[1]) = __src[1];
      *(v7 + 32) = AccessibilityText.text.getter();
      *(v7 + 40) = v11;
      *(v7 + 48) = v12 & 1;
      *(v7 + 56) = v13;
      outlined consume of AccessibilityText.Storage(v9, *(&v9 + 1), v10);

      __dst[3] = v7;
      LOBYTE(__dst[4]) = 2;
    }
  }

  static AccessibilityAttachment.properties(_:)();
  type metadata accessor for PlatformItemList.Item.SelectionBehavior?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v18, 0x128uLL);
  outlined init with copy of PlatformItemList.Item(v3, a2, type metadata accessor for UIKitButtonAdaptor<PlatformItemContent>);
  type metadata accessor for ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier>, type metadata accessor for UIKitButtonAdaptor<PlatformItemContent>, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  v16 = (a2 + *(v15 + 36));
  *v16 = v14;
  v16[1] = 0;
  return outlined destroy of AccessibilityProperties(__dst);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier>, type metadata accessor for UIKitButtonAdaptor<PlatformItemContent>, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 11))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  return UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor.value.getter(*v1, v3 | v4 | v5, a1);
}

uint64_t closure #1 in UIKitSystemButtonConfigurationModifier.PlatformItemTransform.value.getter(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  PlatformItemList.mergedContentItem.getter(a2, v7);
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD63400;
  result = outlined init with take of StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(v7, v9 + v8, type metadata accessor for PlatformItemList.Item);
  *a1 = v9;
  return result;
}

double protocol witness for Rule.value.getter in conformance UIKitSystemButtonConfigurationModifier.PlatformItemTransform@<D0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = *AGGraphGetValue();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in UIKitSystemButtonConfigurationModifier.PlatformItemTransform.value.getter;
  *(v4 + 24) = v3;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = v4;

  return result;
}

uint64_t protocol witness for StyleModifier.init(style:) in conformance UIKitSystemButtonConfigurationModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t protocol witness for StyleModifier.style.getter in conformance UIKitSystemButtonConfigurationModifier@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIButton.Configuration();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for StyleModifier.style.setter in conformance UIKitSystemButtonConfigurationModifier(uint64_t a1)
{
  v3 = type metadata accessor for UIButton.Configuration();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier(&lazy protocol witness table cache variable for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier, type metadata accessor for UIKitSystemButtonConfigurationModifier, protocol conformance descriptor for UIKitSystemButtonConfigurationModifier);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, v10);
}

double PlatformItemContent.sizeThatFits(_:uiButton:)(uint64_t *a1, void *a2, __n128 a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = _ProposedSize.width.getter();
  if ((v10 & 1) == 0)
  {
    v11 = *&v8;
    LOBYTE(v14) = v5;
    LOBYTE(v15) = v7;
    v12 = _ProposedSize.height.getter();
    if ((v13 & 1) == 0)
    {
      [a2 sizeThatFits_];
    }
  }

  return result;
}

uint64_t protocol witness for UIKitButtonAdaptorContent.makeUIButton(options:) in conformance PlatformItemContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIKitIconPreferringButton();
  (*(v5 + 16))(v7, v2 + *(a2 + 24), v4);
  return UIButton.init(configuration:primaryAction:)();
}

uint64_t protocol witness for UIKitButtonAdaptorContent.menuTitle(uiButton:) in conformance PlatformItemContent()
{
  v1 = *(v0 + 896);
  if (!v1)
  {
    v1 = *v0;
    if (!*v0)
    {
      return 0;
    }
  }

  v2 = [v1 string];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id ViewContent.makeUIButton(options:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69DC598];
  v7 = MEMORY[0x1E69E6720];
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PlatformItemList.Item.Accessibility?(v3 + *(a2 + 44), v10, &lazy cache variable for type metadata for UIButton.Configuration?, v6, v7, type metadata accessor for UIButton.Configuration?);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of UIButton.Configuration?(v10);
    type metadata accessor for ViewBasedUIButton(0, *(a2 + 16), *(a2 + 24), v15);
    v16 = *(v3 + *(a2 + 40));
    v22 = 1;
    v23 = a1;
    lazy protocol witness table accessor for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options();
    v17 = OptionSet<>.contains(_:)();
    return static ViewBasedUIButton.makeButton(type:content:showsTitle:)(v16, v3, v17 & 1);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    type metadata accessor for ViewBasedUIButton(0, *(a2 + 16), *(a2 + 24), v19);
    v22 = 1;
    v23 = a1;
    lazy protocol witness table accessor for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options();
    v20 = OptionSet<>.contains(_:)();
    v21 = static ViewBasedUIButton.makeButton(configuration:content:showsTitle:)(v14, v3, v20 & 1);
    (*(v12 + 8))(v14, v11);
    return v21;
  }
}

void ViewContent.updateUIButton(_:transaction:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([a1 buttonType] == *(v4 + *(a4 + 40)))
  {
    lazy protocol witness table accessor for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options();
    v6 = OptionSet<>.contains(_:)();
    ViewBasedUIButton.setShowsTitle(_:)(v6 & 1);
    ViewBasedUIButton.setRootView(_:transaction:)(v4, a2);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t ButtonStyleContent.resolvedBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for ResolvedButtonStyleBody(0, v5, v6, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(v3 + *(a1 + 36));
  v12 = (v3 + *(a1 + 40));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v24) = v13;
  v25 = v14;
  type metadata accessor for PlatformItemList.Item.SelectionBehavior?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  LOBYTE(v24) = v11;
  BYTE1(v24) = v23;
  ButtonStyle.resolvedBody(configuration:)(&v24, v5, v6, v10);
  KeyPath = swift_getKeyPath();
  v16 = (v3 + *(a1 + 44));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v24) = v17;
  v25 = v18;
  State.wrappedValue.getter();
  if (v23)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v24 = KeyPath;
  LOBYTE(v25) = v19;
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(0);
  MEMORY[0x18D00A570](&v24, v7, v20, &protocol witness table for ResolvedButtonStyleBody<A>);

  return (*(v8 + 8))(v10, v7);
}

uint64_t ButtonStyleContent.base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-v6];
  v20 = *(v2 + *(a1 + 36));
  v8 = type metadata accessor for UIButton.Configuration();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(a1 + 24);
  v16 = *(a1 + 16);
  v17 = v9;
  v18 = v2;
  type metadata accessor for ResolvedButtonStyleBody(255, v16, v9, v10);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v11 = type metadata accessor for ModifiedContent();
  IsVisionEnabled = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v19[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v19[1] = IsVisionEnabled;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v11, v19);
  return ViewContent.init(role:uikitButtonType:uiButtonConfiguration:content:)(&v20, 0, v7, partial apply for closure #1 in ButtonStyleContent.base.getter, v11, WitnessTable, a2);
}

uint64_t closure #1 in ButtonStyleContent.base.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedButtonStyleBody(255, a2, a3, a4);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  v14 = type metadata accessor for ButtonStyleContent(0, a2, a3, v13);
  ButtonStyleContent.resolvedBody.getter(v14, v15, v9);
  IsVisionEnabled = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v19[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v19[1] = IsVisionEnabled;
  swift_getWitnessTable(MEMORY[0x1E697E858], v6, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v7 + 8);
  v17(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v12, v6);
}

char *ButtonStyleContent.makeUIButton(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for ResolvedButtonStyleBody(255, *(a2 + 16), *(a2 + 24), a4);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v8 = type metadata accessor for ModifiedContent();
  v29[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v29[1] = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v29);
  v11 = type metadata accessor for ViewContent(0, v8, WitnessTable, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - v13;
  ButtonStyleContent.base.getter(a2, v25 - v13);
  v15 = ViewContent.makeUIButton(options:)(a1, v11);
  (*(v12 + 8))(v14, v11);
  v16 = (v5 + *(a2 + 40));
  v17 = *v16;
  v18 = *(v16 + 1);
  v27 = v17;
  v28 = v18;
  type metadata accessor for PlatformItemList.Item.SelectionBehavior?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v19 = v25[2];
  v20 = v26;
  v21 = &v15[direct field offset for ViewBasedUIButton.isPressed];
  v22 = *&v15[direct field offset for ViewBasedUIButton.isPressed];
  v23 = *&v15[direct field offset for ViewBasedUIButton.isPressed + 8];
  *v21 = v25[1];
  *(v21 + 1) = v19;
  v21[16] = v20;
  outlined consume of Binding<NavigationSplitViewColumn>?(v22, v23);
  return v15;
}

uint64_t ButtonStyleContent.updateUIButton(_:transaction:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedButtonStyleBody(255, *(a4 + 16), *(a4 + 24), a4);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v8 = type metadata accessor for ModifiedContent();
  v16[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v16[1] = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v16);
  v11 = type metadata accessor for ViewContent(0, v8, WitnessTable, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v16 - v13;
  ButtonStyleContent.base.getter(a4, v16 - v13);
  ViewContent.updateUIButton(_:transaction:options:)(a1, a2, a3, v11);
  return (*(v12 + 8))(v14, v11);
}

uint64_t ButtonStyleContent.sizeThatFits(_:uiButton:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedButtonStyleBody(255, *(a3 + 16), *(a3 + 24), a4);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v6 = type metadata accessor for ModifiedContent();
  v21[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v21[1] = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v21);
  v9 = type metadata accessor for ViewContent(0, v6, WitnessTable, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = a1[2];
  LOBYTE(a1) = *(a1 + 24);
  ButtonStyleContent.base.getter(a3, v21 - v11);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = a1;
  v19 = ViewBasedUIButton.sizeThatFits(_:)(&v22, v16, v17, v18);
  (*(v10 + 8))(v12, v9);
  return v19;
}

uint64_t ButtonStyleContent._identifiedViewTree(in:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  type metadata accessor for ResolvedButtonStyleBody(255, *(a2 + 16), *(a2 + 24), a4);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v7 = type metadata accessor for ModifiedContent();
  v16[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v16[1] = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v16);
  v10 = type metadata accessor for ViewContent(0, v7, WitnessTable, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  ButtonStyleContent.base.getter(a2, v16 - v12);
  ViewBasedUIButton.identifiedViewTree()(v14, x8_0);
  return (*(v11 + 8))(v13, v10);
}

uint64_t ButtonStyleContent.menuTitle(uiButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedButtonStyleBody(255, *(a2 + 16), *(a2 + 24), a4);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v5 = type metadata accessor for ModifiedContent();
  v14[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v14[1] = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v14);
  v8 = type metadata accessor for ViewContent(0, v5, WitnessTable, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  ButtonStyleContent.base.getter(a2, v14 - v10);
  countAndFlagsBits = ViewBasedUIButton.menuTitle()().value._countAndFlagsBits;
  (*(v9 + 8))(v11, v8);
  return countAndFlagsBits;
}

uint64_t ButtonStyleContent.updateMenuPresentationState(isPresented:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedButtonStyleBody(255, *(a2 + 16), *(a2 + 24), a4);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>(255);
  v7 = type metadata accessor for ModifiedContent();
  v17[0] = &protocol witness table for ResolvedButtonStyleBody<A>;
  v17[1] = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v17);
  v10 = type metadata accessor for ViewContent(0, v7, WitnessTable, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-v12];
  ButtonStyleContent.base.getter(a2, &v16[-v12]);
  result = (*(v11 + 8))(v13, v10);
  v15 = *(v4 + *(a2 + 44) + 8);
  v16[15] = a1;
  if (v15)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t key path getter for EnvironmentValues._accessibilityShowButtonShapes : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MEMORY[0x18D0064D0](a1, a2);
  *a3 = result & 1;
  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E697FBE0], MEMORY[0x1E697FBD8], MEMORY[0x1E69801E0]);
    type metadata accessor for StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>);
    }
  }
}

void type metadata accessor for StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>)
  {
    type metadata accessor for UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>(255, &lazy cache variable for type metadata for UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, type metadata accessor for UIKitFlattenedButtonAdaptor);
    type metadata accessor for UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>);
    }
  }
}

void type metadata accessor for UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>)
  {
    type metadata accessor for UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>(255, &lazy cache variable for type metadata for ViewContent<HStack<UIKitButtonConfiguration.Label>>, type metadata accessor for ViewContent);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ViewContent<HStack<UIKitButtonConfiguration.Label>> and conformance ViewContent<A>();
    v6 = type metadata accessor for UIKitButtonAdaptor(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>);
    }
  }
}

void type metadata accessor for UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewContent<HStack<UIKitButtonConfiguration.Label>> and conformance ViewContent<A>()
{
  result = lazy protocol witness table cache variable for type ViewContent<HStack<UIKitButtonConfiguration.Label>> and conformance ViewContent<A>;
  if (!lazy protocol witness table cache variable for type ViewContent<HStack<UIKitButtonConfiguration.Label>> and conformance ViewContent<A>)
  {
    type metadata accessor for UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>(255, &lazy cache variable for type metadata for ViewContent<HStack<UIKitButtonConfiguration.Label>>, type metadata accessor for ViewContent);
    result = swift_getWitnessTable(protocol conformance descriptor for ViewContent<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewContent<HStack<UIKitButtonConfiguration.Label>> and conformance ViewContent<A>);
  }

  return result;
}

uint64_t outlined init with copy of PlatformItemList.Item.Accessibility?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined init with take of UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>(0, &lazy cache variable for type metadata for UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, type metadata accessor for UIKitFlattenedButtonAdaptor);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UIButton.Configuration?(uint64_t a1)
{
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with copy of UIButton.Configuration?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for UIKitButton(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && (*(v6 + 80) & 0x100000) == 0 && ((-82 - v7) | v7) - *(v6 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[2];
      *(v4 + 8) = v11;
      *(v4 + 16) = v12;
    }

    else
    {
      *(a1 + 8) = *(a2 + 1);
    }

    v13 = a2[7];
    *(v4 + 24) = *(a2 + 12);
    *(v4 + 28) = *(a2 + 28);
    *(v4 + 36) = *(a2 + 36);
    *(v4 + 37) = *(a2 + 37);
    *(v4 + 40) = a2[5];
    *(v4 + 48) = *(a2 + 24);
    if (v13)
    {
      v14 = a2[8];
      *(v4 + 56) = v13;
      *(v4 + 64) = v14;
    }

    else
    {
      *(v4 + 56) = *(a2 + 7);
    }

    *(v4 + 72) = a2[9];
    *(v4 + 80) = *(a2 + 80);
    (*(v6 + 16))((v4 + v7 + 81) & ~v7, (a2 + v7 + 81) & ~v7, v5);
  }

  else
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = v10 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16));
  }

  return v4;
}

uint64_t assignWithCopy for UIKitButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  v8 = (a2 + 8);
  v7 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v7)
    {
      v9 = *(a2 + 16);
      *(a1 + 8) = v7;
      *(a1 + 16) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 16);
    *(a1 + 8) = v7;
    *(a1 + 16) = v10;

    goto LABEL_8;
  }

  *v6 = *v8;
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v11 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v11;
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = *(a2 + 38);
  v12 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v12;
  *(a1 + 49) = *(a2 + 49);
  v13 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v13)
    {
      v15 = *(a2 + 64);
      *(a1 + 56) = v13;
      *(a1 + 64) = v15;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_15;
  }

  if (!v13)
  {

    goto LABEL_14;
  }

  v14 = *(a2 + 64);
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;

LABEL_15:
  v16 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v16;
  v17 = *(*(a3 + 16) - 8);
  (*(v17 + 24))((*(v17 + 80) + 81 + a1) & ~*(v17 + 80), (*(v17 + 80) + 81 + a2) & ~*(v17 + 80));
  return a1;
}

uint64_t initializeWithTake for UIKitButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((*(v6 + 80) + 81 + a1) & ~*(v6 + 80), (*(v6 + 80) + 81 + a2) & ~*(v6 + 80));
  return a1;
}

uint64_t assignWithTake for UIKitButton(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *a1 = *a2;
  v7 = (a1 + 8);
  v9 = (a2 + 8);
  v8 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v8)
    {
      v10 = *(a2 + 16);
      *(a1 + 8) = v8;
      *(a1 + 16) = v10;

      goto LABEL_8;
    }
  }

  else if (v8)
  {
    v11 = *(a2 + 16);
    *(a1 + 8) = v8;
    *(a1 + 16) = v11;
    goto LABEL_8;
  }

  *v7 = *v9;
LABEL_8:
  v12 = *(a2 + 56);
  v13 = *(a1 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  if (!v13)
  {
    if (v12)
    {
      v15 = *(a2 + 64);
      *(a1 + 56) = v12;
      *(a1 + 64) = v15;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_15;
  }

  if (!v12)
  {

    goto LABEL_14;
  }

  v14 = *(a2 + 64);
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;

LABEL_15:
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 40))((*(v16 + 80) + 81 + a1) & ~*(v16 + 80), (*(v16 + 80) + 81 + a2) & ~*(v16 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitButton(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v9 = ((v6 + 81) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 81) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      v16 = v15 - 1;
      if (v16 < 0)
      {
        v16 = -1;
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

void storeEnumTagSinglePayload for UIKitButton(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 81) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 81] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 9) = 0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[80] = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for UIKitButtonStyleModifier.ResolvedBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 95) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = v3 + v5;
    v11 = a2 + v5;
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    v14 = *(v13 + 8);
    if (v14)
    {
      v15 = *(v13 + 16);
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
    }

    else
    {
      *(v12 + 8) = *(v13 + 8);
    }

    *(v12 + 24) = *(v13 + 24);
    *(v12 + 25) = *(v13 + 25);
    v16 = *(v13 + 28);
    *(v12 + 36) = *(v13 + 36);
    *(v12 + 28) = v16;
    *(v12 + 37) = *(v13 + 37);
    *(v12 + 38) = *(v13 + 38);
    v17 = *(v13 + 40);
    *(v12 + 48) = *(v13 + 48);
    *(v12 + 40) = v17;
    *(v12 + 49) = *(v13 + 49);
    v18 = *(v13 + 56);
    if (v18)
    {
      v19 = *(v13 + 64);
      *(v12 + 56) = v18;
      *(v12 + 64) = v19;
    }

    else
    {
      *(v12 + 56) = *(v13 + 56);
    }

    v20 = *(v13 + 72);
    *(v12 + 80) = *(v13 + 80);
    *(v12 + 72) = v20;
    v21 = (v10 + 95) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v11 + 95) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);
    outlined copy of Environment<Bool>.Content();
    *v21 = v23;
    *(v21 + 8) = v24;
  }

  return v3;
}

uint64_t assignWithCopy for UIKitButtonStyleModifier.ResolvedBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 8);
  if (*(v9 + 8))
  {
    if (v11)
    {
      v12 = *(v10 + 16);
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;

      goto LABEL_8;
    }
  }

  else if (v11)
  {
    v13 = *(v10 + 16);
    *(v9 + 8) = v11;
    *(v9 + 16) = v13;

    goto LABEL_8;
  }

  *(v9 + 8) = *(v10 + 8);
LABEL_8:
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 25) = *(v10 + 25);
  v14 = *(v10 + 28);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 28) = v14;
  *(v9 + 37) = *(v10 + 37);
  *(v9 + 38) = *(v10 + 38);
  v15 = *(v10 + 40);
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 40) = v15;
  *(v9 + 49) = *(v10 + 49);
  v16 = *(v10 + 56);
  if (!*(v9 + 56))
  {
    if (v16)
    {
      v18 = *(v10 + 64);
      *(v9 + 56) = v16;
      *(v9 + 64) = v18;

      goto LABEL_15;
    }

LABEL_14:
    *(v9 + 56) = *(v10 + 56);
    goto LABEL_15;
  }

  if (!v16)
  {

    goto LABEL_14;
  }

  v17 = *(v10 + 64);
  *(v9 + 56) = v16;
  *(v9 + 64) = v17;

LABEL_15:
  v19 = *(v10 + 72);
  *(v9 + 80) = *(v10 + 80);
  *(v9 + 72) = v19;
  v20 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 8);
  outlined copy of Environment<Bool>.Content();
  v24 = *v20;
  v25 = *(v20 + 8);
  *v20 = v22;
  *(v20 + 8) = v23;
  outlined consume of Environment<Bool>.Content(v24, v25);
  return a1;
}

uint64_t initializeWithTake for UIKitButtonStyleModifier.ResolvedBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  v13 = *(v10 + 48);
  v12 = *(v10 + 64);
  v14 = *(v10 + 32);
  *(v9 + 80) = *(v10 + 80);
  *(v9 + 48) = v13;
  *(v9 + 64) = v12;
  *(v9 + 32) = v14;
  v15 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *v15 = v17;
  return a1;
}

uint64_t assignWithTake for UIKitButtonStyleModifier.ResolvedBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 8);
  if (*(v9 + 8))
  {
    if (v11)
    {
      v12 = *(v10 + 16);
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;

      goto LABEL_8;
    }
  }

  else if (v11)
  {
    v13 = *(v10 + 16);
    *(v9 + 8) = v11;
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

  *(v9 + 8) = *(v10 + 8);
LABEL_8:
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 25) = *(v10 + 25);
  v14 = *(v10 + 28);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 28) = v14;
  *(v9 + 37) = *(v10 + 37);
  *(v9 + 38) = *(v10 + 38);
  v15 = *(v10 + 40);
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 40) = v15;
  *(v9 + 49) = *(v10 + 49);
  v16 = *(v10 + 56);
  if (!*(v9 + 56))
  {
    if (v16)
    {
      v18 = *(v10 + 64);
      *(v9 + 56) = v16;
      *(v9 + 64) = v18;
      goto LABEL_15;
    }

LABEL_14:
    *(v9 + 56) = *(v10 + 56);
    goto LABEL_15;
  }

  if (!v16)
  {

    goto LABEL_14;
  }

  v17 = *(v10 + 64);
  *(v9 + 56) = v16;
  *(v9 + 64) = v17;

LABEL_15:
  v19 = *(v10 + 72);
  *(v9 + 80) = *(v10 + 80);
  *(v9 + 72) = v19;
  v20 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  LOBYTE(v21) = *(v21 + 8);
  v23 = *v20;
  v24 = *(v20 + 8);
  *v20 = v22;
  *(v20 + 8) = v21;
  outlined consume of Environment<Bool>.Content(v23, v24);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitButtonStyleModifier.ResolvedBody(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((v6 + 95) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(a1);
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

double storeEnumTagSinglePayload for UIKitButtonStyleModifier.ResolvedBody(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 95) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFE)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *(v19 + 72) = 0;
          result = 0.0;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *(v19 + 80) = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 8) = a2;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 95) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

void type metadata completion function for ViewContent(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIButton.Configuration?(319, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void *initializeBufferWithCopyOfBuffer for ViewContent(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(v9 + 64);
  }

  else
  {
    v11 = *(v9 + 64) + 1;
  }

  v12 = v10 | *(v6 + 80) & 0xF8;
  if (((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || (((-17 - v10 - (v7 & 0xFFFFFFFFFFFFFFF8)) | v10) - v11 >= 0xFFFFFFFFFFFFFFE7 ? (v13 = v12 > 7) : (v13 = 1), v13))
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v14 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v15 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    v16 = (a1 + v7) & 0xFFFFFFFFFFFFFFF8;
    v17 = v15 & 0xFFFFFFFFFFFFFFF8;
    *(v16 + 8) = *((v15 & 0xFFFFFFFFFFFFFFF8) + 8);
    if ((*(v9 + 48))((v15 & 0xFFFFFFFFFFFFFFF8) + 16, 1, v14))
    {
      memcpy((v16 + 16), (v17 + 16), v11);
    }

    else
    {
      (*(v9 + 16))(v16 + 16, v17 + 16, v14);
      (*(v9 + 56))(v16 + 16, 0, 1, v14);
    }
  }

  return a1;
}

uint64_t destroy for ViewContent(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (*(v3 + 56) + a1) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v4 + v7 + 16;
  v11 = v6;
  result = (*(v6 + 48))(v8 & ~v7, 1, v5);
  if (!result)
  {
    v10 = *(v11 + 8);

    return v10(v8 & ~v7, v5);
  }

  return result;
}

uint64_t initializeWithCopy for ViewContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = v13 + 16 + v9;
  v15 = v13 + 16 + v10;
  if ((*(v12 + 48))(v15 & ~v13, 1, v11))
  {
    if (*(v12 + 84))
    {
      v16 = *(v12 + 64);
    }

    else
    {
      v16 = *(v12 + 64) + 1;
    }

    memcpy((v14 & ~v13), (v15 & ~v13), v16);
  }

  else
  {
    (*(v12 + 16))(v14 & ~v13, v15 & ~v13, v11);
    (*(v12 + 56))(v14 & ~v13, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithCopy for ViewContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = v13 + 16 + v9;
  v15 = v13 + 16 + v10;
  v16 = *(v12 + 48);
  LODWORD(v9) = v16(v14 & ~v13, 1, v11);
  v17 = v16(v15 & ~v13, 1, v11);
  if (v9)
  {
    if (!v17)
    {
      (*(v12 + 16))(v14 & ~v13, v15 & ~v13, v11);
      (*(v12 + 56))(v14 & ~v13, 0, 1, v11);
      return a1;
    }

    v18 = *(v12 + 84);
    v19 = *(v12 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v12 + 24))(v14 & ~v13, v15 & ~v13, v11);
      return a1;
    }

    v21 = *(v12 + 8);
    v20 = v12 + 8;
    v21(v14 & ~v13, v11);
    v18 = *(v20 + 76);
    v19 = *(v20 + 56);
  }

  if (v18)
  {
    v22 = v19;
  }

  else
  {
    v22 = v19 + 1;
  }

  memcpy((v14 & ~v13), (v15 & ~v13), v22);
  return a1;
}

uint64_t initializeWithTake for ViewContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = v13 + 16 + v9;
  v15 = v13 + 16 + v10;
  if ((*(v12 + 48))(v15 & ~v13, 1, v11))
  {
    if (*(v12 + 84))
    {
      v16 = *(v12 + 64);
    }

    else
    {
      v16 = *(v12 + 64) + 1;
    }

    memcpy((v14 & ~v13), (v15 & ~v13), v16);
  }

  else
  {
    (*(v12 + 32))(v14 & ~v13, v15 & ~v13, v11);
    (*(v12 + 56))(v14 & ~v13, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithTake for ViewContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = v13 + 16 + v9;
  v15 = v13 + 16 + v10;
  v16 = *(v12 + 48);
  LODWORD(v9) = v16(v14 & ~v13, 1, v11);
  v17 = v16(v15 & ~v13, 1, v11);
  if (v9)
  {
    if (!v17)
    {
      (*(v12 + 32))(v14 & ~v13, v15 & ~v13, v11);
      (*(v12 + 56))(v14 & ~v13, 0, 1, v11);
      return a1;
    }

    v18 = *(v12 + 84);
    v19 = *(v12 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v12 + 40))(v14 & ~v13, v15 & ~v13, v11);
      return a1;
    }

    v21 = *(v12 + 8);
    v20 = v12 + 8;
    v21(v14 & ~v13, v11);
    v18 = *(v20 + 76);
    v19 = *(v20 + 56);
  }

  if (v18)
  {
    v22 = v19;
  }

  else
  {
    v22 = v19 + 1;
  }

  memcpy((v14 & ~v13), (v15 & ~v13), v22);
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for UIButton.Configuration() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0xFB)
  {
    v13 = 251;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  if (!v10)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_33;
  }

  v17 = v16 + ((v15 + (v14 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v21 < 2)
    {
LABEL_33:
      if (v7 == v13)
      {
        v23 = *(v6 + 48);

        return v23(a1, v7, v5);
      }

      else
      {
        v24 = a1 + v14;
        if (v12 > 0xFB)
        {
          v28 = (*(v9 + 48))(((v24 & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15);
          v26 = v28 - 1;
          v27 = v28 >= 2;
        }

        else
        {
          v25 = *v24;
          v27 = v25 >= 4;
          v26 = v25 - 4;
          if (!v27)
          {
            v26 = -1;
          }

          v27 = v26 + 1 >= 2;
        }

        if (v27)
        {
          return v26;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_33;
  }

LABEL_22:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return v13 + (v17 | v22) + 1;
}

void storeEnumTagSinglePayload for ViewContent(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v27 = *(v7 - 8);
  v8 = *(v27 + 84);
  v9 = 0;
  v10 = *(type metadata accessor for UIButton.Configuration() - 8);
  v11 = *(v10 + 84);
  v12 = *(v27 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  if (v8 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v8;
  }

  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (v14 <= 0xFB)
  {
    v17 = 251;
  }

  else
  {
    v17 = v14;
  }

  if (!v11)
  {
    ++v16;
  }

  v18 = ((v15 + (v12 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15) + v16;
  if (a3 <= v17)
  {
    goto LABEL_22;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v17 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v9 = 4;
      if (v17 >= a2)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v9 = v20;
    }

    else
    {
      v9 = 0;
    }

LABEL_22:
    if (v17 >= a2)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v9 = 1;
  if (v17 >= a2)
  {
LABEL_32:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      *&a1[v18] = 0;
    }

    else if (v9)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    if (!a2)
    {
      return;
    }

LABEL_39:
    if (v8 == v17)
    {
      v24 = *(v27 + 56);

      v24(a1, a2, v8, v7);
    }

    else
    {
      v25 = &a1[v12];
      if (v14 > 0xFB)
      {
        v26 = *(v10 + 56);

        v26(((v25 & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15, (a2 + 1));
      }

      else
      {
        *v25 = a2 + 4;
      }
    }

    return;
  }

LABEL_23:
  v21 = ~v17 + a2;
  if (v18 >= 4)
  {
    bzero(a1, v18);
    *a1 = v21;
    v22 = 1;
    if (v9 > 1)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  v22 = (v21 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_51:
    if (v9 > 1)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  v23 = v21 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_51;
  }

  if (v18 == 2)
  {
    *a1 = v23;
    if (v9 > 1)
    {
LABEL_55:
      if (v9 == 2)
      {
        *&a1[v18] = v22;
      }

      else
      {
        *&a1[v18] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v9 > 1)
    {
      goto LABEL_55;
    }
  }

LABEL_52:
  if (v9)
  {
    a1[v18] = v22;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = v9 + ((v5 + 16) & ~v5);
  }

  else
  {
    *a1 = *a2;
    v7 = a2[1];
    if (v7)
    {
      v8 = a2[2];
      *(v4 + 8) = v7;
      *(v4 + 16) = v8;
    }

    else
    {
      *(a1 + 8) = *(a2 + 1);
    }

    v10 = a2[7];
    *(v4 + 24) = *(a2 + 12);
    *(v4 + 28) = *(a2 + 28);
    *(v4 + 36) = *(a2 + 36);
    *(v4 + 37) = *(a2 + 37);
    *(v4 + 40) = a2[5];
    *(v4 + 48) = *(a2 + 24);
    if (v10)
    {
      v11 = a2[8];
      *(v4 + 56) = v10;
      *(v4 + 64) = v11;
    }

    else
    {
      *(v4 + 56) = *(a2 + 7);
    }

    *(v4 + 72) = a2[9];
    *(v4 + 80) = *(a2 + 80);
    v12 = *(a3 + 20);
    v13 = type metadata accessor for UIButton.Configuration();
    (*(*(v13 - 8) + 16))(v4 + v12, a2 + v12, v13);
  }

  return v4;
}

uint64_t destroy for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(char *a1, uint64_t a2)
{
  if (*(a1 + 1))
  {
  }

  if (*(a1 + 7))
  {
  }

  v4 = *(a2 + 20);
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

uint64_t initializeWithCopy for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v8 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 64);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v10 = *(a3 + 20);
  v11 = type metadata accessor for UIButton.Configuration();
  (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t assignWithCopy for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  v8 = (a2 + 8);
  v7 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v7)
    {
      v9 = *(a2 + 16);
      *(a1 + 8) = v7;
      *(a1 + 16) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 16);
    *(a1 + 8) = v7;
    *(a1 + 16) = v10;

    goto LABEL_8;
  }

  *v6 = *v8;
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v11 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v11;
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = *(a2 + 38);
  v12 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v12;
  *(a1 + 49) = *(a2 + 49);
  v13 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v13)
    {
      v15 = *(a2 + 64);
      *(a1 + 56) = v13;
      *(a1 + 64) = v15;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_15;
  }

  if (!v13)
  {

    goto LABEL_14;
  }

  v14 = *(a2 + 64);
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;

LABEL_15:
  v16 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v16;
  v17 = *(a3 + 20);
  v18 = type metadata accessor for UIButton.Configuration();
  (*(*(v18 - 8) + 24))(a1 + v17, a2 + v17, v18);
  return a1;
}

uint64_t initializeWithTake for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a3 + 20);
  v8 = type metadata accessor for UIButton.Configuration();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t assignWithTake for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  v8 = (a2 + 8);
  v7 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v7)
    {
      v9 = *(a2 + 16);
      *(a1 + 8) = v7;
      *(a1 + 16) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 16);
    *(a1 + 8) = v7;
    *(a1 + 16) = v10;
    goto LABEL_8;
  }

  *v6 = *v8;
LABEL_8:
  v11 = *(a2 + 56);
  v12 = *(a1 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  if (!v12)
  {
    if (v11)
    {
      v14 = *(a2 + 64);
      *(a1 + 56) = v11;
      *(a1 + 64) = v14;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_15;
  }

  if (!v11)
  {

    goto LABEL_14;
  }

  v13 = *(a2 + 64);
  *(a1 + 56) = v11;
  *(a1 + 64) = v13;

LABEL_15:
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v15 = *(a3 + 20);
  v16 = type metadata accessor for UIButton.Configuration();
  (*(*(v16 - 8) + 40))(a1 + v15, a2 + v15, v16);
  return a1;
}

uint64_t type metadata completion function for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(uint64_t a1)
{
  result = type metadata accessor for UIButton.Configuration();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = &protocol witness table for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent;
    v5[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UIKitSystemButtonConfigurationModifier.ResolvedPlatformItemContent(255);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>> and conformance <> StaticIf<A, B, C>)
  {
    v8 = v0;
    v9 = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v6 = lazy protocol witness table accessor for type StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>> and conformance <> StaticIf<A, B, C>();
    v7 = v6;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, &v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton();
    v5[1] = &protocol witness table for UIKitFlattenedButtonAdaptor<A>;
    v5[2] = &protocol witness table for UIKitButtonAdaptor<A>;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t specialized static UseUIButtonConfigurationPredicate.evaluate(inputs:)(__int128 *a1)
{
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    static Semantics.v5.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      _GraphInputs.interfaceIdiom.getter();
      v1 = AnyInterfaceIdiom.accepts<A>(_:)() ^ 1;
      return v1 & 1;
    }

    _GraphInputs.interfaceIdiom.getter();
    if ((AnyInterfaceIdiom.accepts<A>(_:)() & 1) == 0)
    {
      _GraphInputs.interfaceIdiom.getter();
      v1 = AnyInterfaceIdiom.accepts<A>(_:)();
      return v1 & 1;
    }
  }

  v1 = 1;
  return v1 & 1;
}

uint64_t specialized PlatformItemContent.updateUIButton(_:transaction:options:)()
{
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  UIButton.configuration.getter();
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v9, 1, v10))
  {
    outlined init with copy of PlatformItemList.Item.Accessibility?(v9, v3, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720], type metadata accessor for UIButton.Configuration?);
    UIButton.configuration.setter();
    outlined destroy of UIButton.Configuration?(v9);
  }

  else
  {
    if (*v0)
    {
      v12 = [*v0 string];
      v15[1] = v0;
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    UIButton.Configuration.title.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v11(v6, 1, v10))
  {
    outlined init with copy of PlatformItemList.Item.Accessibility?(v6, v3, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720], type metadata accessor for UIButton.Configuration?);
    UIButton.configuration.setter();
    return outlined destroy of UIButton.Configuration?(v6);
  }

  else
  {
    PlatformItemList.Item.image.getter();
    UIButton.Configuration.image.setter();
    return UIButton.configuration.setter();
  }
}

uint64_t specialized ViewContent.sizeThatFits(_:uiButton:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return ViewBasedUIButton.sizeThatFits(_:)(&v8, a2, a3, a4);
}

unint64_t lazy protocol witness table accessor for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options()
{
  result = lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options;
  if (!lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _UIKitButtonAdaptorContent_Options, &type metadata for _UIKitButtonAdaptorContent_Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options;
  if (!lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options)
  {
    result = swift_getWitnessTable("E", &type metadata for _UIKitButtonAdaptorContent_Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options;
  if (!lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _UIKitButtonAdaptorContent_Options, &type metadata for _UIKitButtonAdaptorContent_Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options;
  if (!lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _UIKitButtonAdaptorContent_Options, &type metadata for _UIKitButtonAdaptorContent_Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options;
  if (!lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _UIKitButtonAdaptorContent_Options, &type metadata for _UIKitButtonAdaptorContent_Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIKitButtonAdaptorContent_Options and conformance _UIKitButtonAdaptorContent_Options);
  }

  return result;
}

double partial apply for specialized closure #1 in Attribute.subscript.getter@<D0>(uint64_t a2@<X8>)
{
  swift_getAtKeyPath();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void type metadata accessor for Map<UIKitButtonConfiguration, HStack<UIKitButtonConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<UIKitButtonConfiguration, HStack<UIKitButtonConfiguration.Label>>)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<UIKitButtonConfiguration, HStack<UIKitButtonConfiguration.Label>>);
    }
  }
}

void type metadata accessor for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
    v5[0] = &type metadata for LabelPlatformItemListFlags;
    v5[1] = v2;
    v5[2] = &protocol witness table for LabelPlatformItemListFlags;
    v5[3] = lazy protocol witness table accessor for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>();
    v3 = type metadata accessor for PlatformItemListGenerator(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>);
    }
  }
}

void type metadata accessor for ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor and conformance UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor()
{
  result = lazy protocol witness table cache variable for type UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor and conformance UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor;
  if (!lazy protocol witness table cache variable for type UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor and conformance UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor, &unk_1EFF93480, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor and conformance UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier>, type metadata accessor for UIKitButtonAdaptor<PlatformItemContent>, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for UIKitButtonAdaptor<A>;
    v4[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitButtonAdaptor<PlatformItemContent>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier.PlatformItemTransform and conformance UIKitSystemButtonConfigurationModifier.PlatformItemTransform()
{
  result = lazy protocol witness table cache variable for type UIKitSystemButtonConfigurationModifier.PlatformItemTransform and conformance UIKitSystemButtonConfigurationModifier.PlatformItemTransform;
  if (!lazy protocol witness table cache variable for type UIKitSystemButtonConfigurationModifier.PlatformItemTransform and conformance UIKitSystemButtonConfigurationModifier.PlatformItemTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitSystemButtonConfigurationModifier.PlatformItemTransform, &unk_1EFF93400, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitSystemButtonConfigurationModifier.PlatformItemTransform and conformance UIKitSystemButtonConfigurationModifier.PlatformItemTransform);
  }

  return result;
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

void outlined consume of AccessibilityText.Storage(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UIKitSystemButtonConfigurationModifier.MakePlatformAdaptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for PlatformItemContent(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];

    return a1;
  }

  v8 = a2[1];
  v7 = a2[2];
  *(a1 + 1) = v8;
  *(a1 + 2) = v7;
  *(a1 + 3) = a2[3];
  a1[32] = *(a2 + 32);
  v9 = a2[6];
  *(a1 + 5) = a2[5];
  *(a1 + 6) = v9;
  a1[56] = *(a2 + 56);
  v10 = a2[24];
  v11 = v5;
  v12 = v8;

  if (v10 >> 1 != 4294967294)
  {
    v22 = *(a2 + 72);
    if (v22 == 255)
    {
      *(a1 + 8) = a2[8];
      a1[72] = *(a2 + 72);
    }

    else
    {
      v23 = a2[8];
      outlined copy of GraphicsImage.Contents(v23, *(a2 + 72));
      *(a1 + 8) = v23;
      a1[72] = v22;
      v10 = a2[24];
    }

    *(a1 + 10) = a2[10];
    *(a1 + 88) = *(a2 + 11);
    a1[104] = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    a1[170] = *(a2 + 170);
    a1[171] = *(a2 + 171);
    if (v10 >> 1 == 0xFFFFFFFF)
    {
      v24 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v24;
    }

    else
    {
      v25 = a2[22];
      v26 = a2[23];
      v27 = a2[25];
      outlined copy of AccessibilityImageLabel(v25, v26, v10, v27);
      *(a1 + 22) = v25;
      *(a1 + 23) = v26;
      *(a1 + 24) = v10;
      *(a1 + 25) = v27;
    }

    v28 = a2[27];
    *(a1 + 26) = a2[26];
    *(a1 + 27) = v28;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    a1[232] = *(a2 + 232);
    v29 = a2[30];
    *(a1 + 30) = v29;
    *(a1 + 124) = *(a2 + 124);
    a1[250] = *(a2 + 250);
    swift_unknownObjectRetain();

    v30 = v29;
    v18 = a2[33];
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_15:
    v31 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v31;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_16;
  }

  v13 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v13;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v14 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v14;
  v15 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v15;
  v16 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v16;
  v17 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v17;
  v18 = a2[33];
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_4:
  *(a1 + 32) = a2[32];
  *(a1 + 33) = v18;
  v19 = a2[34];

  if (v19 >= 2)
  {
    v20 = v19;
  }

  *(a1 + 34) = v19;
  *(a1 + 70) = *(a2 + 70);
  a1[284] = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v21 = a2[37];
  *(a1 + 36) = a2[36];
  *(a1 + 37) = v21;

LABEL_16:
  v32 = a2[42];
  if (v32 >> 2 == 0xFFFFFFFF)
  {
    v33 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v33;
    *(a1 + 50) = a2[50];
    v34 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v34;
    v35 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v35;
  }

  else
  {
    v36 = a2[38];
    v37 = a2[39];
    v38 = a2[40];
    v39 = a2[41];
    v40 = a2[43];
    v41 = a2[44];
    v42 = a2[45];
    v98 = a2[46];
    v100 = a2[47];
    v103 = a2[48];
    v105 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v36, v37, v38, v39, v32, v40, v41, v42, v98, v100, v103, v105, __dsta);
    *(a1 + 38) = v36;
    *(a1 + 39) = v37;
    *(a1 + 40) = v38;
    *(a1 + 41) = v39;
    *(a1 + 42) = v32;
    *(a1 + 43) = v40;
    *(a1 + 44) = v41;
    *(a1 + 45) = v42;
    *(a1 + 46) = v98;
    *(a1 + 47) = v100;
    *(a1 + 48) = v103;
    *(a1 + 49) = v105;
    *(a1 + 50) = __dsta;
  }

  v43 = a2[52];
  if (v43 == 1)
  {
    v44 = *(a2 + 57);
    *(a1 + 440) = *(a2 + 55);
    *(a1 + 456) = v44;
    a1[472] = *(a2 + 472);
    v45 = *(a2 + 53);
    *(a1 + 408) = *(a2 + 51);
    *(a1 + 424) = v45;
    goto LABEL_29;
  }

  *(a1 + 102) = *(a2 + 102);
  a1[412] = *(a2 + 412);
  if (v43)
  {
    v46 = a2[53];
    *(a1 + 52) = v43;
    *(a1 + 53) = v46;

    v47 = a2[54];
    if (v47)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(a1 + 27) = *(a2 + 27);
    v49 = a2[56];
    if (v49)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_28;
  }

  *(a1 + 26) = *(a2 + 26);
  v47 = a2[54];
  if (!v47)
  {
    goto LABEL_26;
  }

LABEL_23:
  v48 = a2[55];
  *(a1 + 54) = v47;
  *(a1 + 55) = v48;

  v49 = a2[56];
  if (!v49)
  {
    goto LABEL_27;
  }

LABEL_24:
  v50 = a2[57];
  *(a1 + 56) = v49;
  *(a1 + 57) = v50;

LABEL_28:
  *(a1 + 58) = a2[58];
  a1[472] = *(a2 + 472);
LABEL_29:
  v51 = a2[61];
  *(a1 + 60) = a2[60];
  *(a1 + 61) = v51;
  *(a1 + 62) = a2[62];
  a1[504] = *(a2 + 504);
  v52 = a2[64];

  if (v52)
  {
    v53 = a2[65];
    *(a1 + 64) = v52;
    *(a1 + 65) = v53;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  a1[528] = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 536, a2 + 67, 0x130uLL);
    goto LABEL_44;
  }

  *(a1 + 67) = a2[67];
  *(a1 + 68) = a2[68];
  a1[552] = *(a2 + 552);
  *(a1 + 70) = a2[70];
  a1[568] = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  a1[592] = *(a2 + 592);
  v54 = a1 + 600;
  v55 = a2 + 75;
  v56 = a2[78];

  if (!v56)
  {
    v58 = *(a2 + 77);
    *v54 = *v55;
    *(a1 + 616) = v58;
    *(a1 + 79) = a2[79];
LABEL_39:
    *(a1 + 80) = a2[80];

    goto LABEL_40;
  }

  if (v56 != 1)
  {
    *(a1 + 78) = v56;
    *(a1 + 79) = a2[79];
    (**(v56 - 1))(a1 + 600, a2 + 75, v56);
    goto LABEL_39;
  }

  v57 = *(a2 + 77);
  *v54 = *v55;
  *(a1 + 616) = v57;
  *(a1 + 632) = *(a2 + 79);
LABEL_40:
  *(a1 + 81) = a2[81];
  a1[656] = *(a2 + 656);
  v59 = a1 + 664;
  v60 = a2 + 83;
  v61 = a2[97];
  if (v61 == 1)
  {
    v62 = *(a2 + 97);
    *(a1 + 760) = *(a2 + 95);
    *(a1 + 776) = v62;
    *(a1 + 792) = *(a2 + 99);
    a1[808] = *(a2 + 808);
    v63 = *(a2 + 89);
    *(a1 + 696) = *(a2 + 87);
    *(a1 + 712) = v63;
    v64 = *(a2 + 93);
    *(a1 + 728) = *(a2 + 91);
    *(a1 + 744) = v64;
    v65 = *(a2 + 85);
    *v59 = *v60;
    *(a1 + 680) = v65;
  }

  else
  {
    *v59 = *v60;
    a1[672] = *(a2 + 672);
    *(a1 + 85) = a2[85];
    a1[688] = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    a1[691] = *(a2 + 691);
    a1[692] = *(a2 + 692);
    *(a1 + 87) = a2[87];
    v66 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v66;
    *(a1 + 92) = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    a1[768] = *(a2 + 768);
    *(a1 + 97) = v61;
    *(a1 + 49) = *(a2 + 49);
    *(a1 + 100) = a2[100];
    a1[808] = *(a2 + 808);
  }

  *(a1 + 102) = a2[102];
  *(a1 + 103) = a2[103];
  *(a1 + 104) = a2[104];

LABEL_44:
  v67 = a1 + 840;
  v68 = a2 + 105;
  v69 = a2[108];
  if (!v69)
  {
    v71 = *(a2 + 107);
    *v67 = *v68;
    *(a1 + 856) = v71;
    *(a1 + 109) = a2[109];
    v72 = a2[110];
    if (!v72)
    {
LABEL_50:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_51;
    }

LABEL_48:
    v73 = a2[111];
    *(a1 + 110) = v72;
    *(a1 + 111) = v73;

    goto LABEL_51;
  }

  if (v69 != 1)
  {
    *(a1 + 108) = v69;
    *(a1 + 109) = a2[109];
    (**(v69 - 1))(v67, v68);
    v72 = a2[110];
    if (!v72)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v70 = *(a2 + 107);
  *v67 = *v68;
  *(a1 + 856) = v70;
  *(a1 + 872) = *(a2 + 109);
  *(a1 + 111) = a2[111];
LABEL_51:
  v74 = a2[112];
  *(a1 + 112) = v74;
  *(a1 + 113) = a2[113];
  *(a1 + 114) = a2[114];
  *(a1 + 115) = a2[115];
  *(a1 + 116) = a2[116];
  *(a1 + 117) = a2[117];
  *(a1 + 118) = a2[118];
  *(a1 + 476) = *(a2 + 476);
  a1[954] = *(a2 + 954);
  v75 = type metadata accessor for PlatformItemList.Item(0);
  v76 = *(v75 + 112);
  v106 = v75;
  __dst = &a1[v76];
  v77 = a2 + v76;
  v78 = type metadata accessor for CommandOperation(0);
  v79 = *(v78 - 8);
  v101 = *(v79 + 48);
  v80 = v74;

  if (v101(v77, 1, v78))
  {
    type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v77, *(*(v81 - 8) + 64));
  }

  else
  {
    *__dst = *v77;
    v82 = *(v78 + 20);
    v102 = v77;
    v104 = v78;
    v83 = &__dst[v82];
    v84 = &v77[v82];
    v85 = *&v77[v82];
    v86 = *(v84 + 1);
    v87 = v84[16];
    outlined copy of Text.Storage(v85, v86, v87);
    *v83 = v85;
    *(v83 + 1) = v86;
    v83[16] = v87;
    *(v83 + 3) = *(v84 + 3);
    v88 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v89 = type metadata accessor for UUID();
    v99 = *(*(v89 - 8) + 16);

    v99(&v83[v88], &v84[v88], v89);
    v90 = *(v104 + 24);
    v91 = &__dst[v90];
    v92 = &v102[v90];
    if (*v92)
    {
      v93 = v92[1];
      *v91 = *v92;
      *(v91 + 1) = v93;
    }

    else
    {
      *v91 = *v92;
    }

    (*(v79 + 56))(__dst, 0, 1, v104);
  }

  a1[v106[29]] = *(a2 + v106[29]);
  a1[v106[30]] = *(a2 + v106[30]);
  a1[v106[31]] = *(a2 + v106[31]);
  a1[v106[32]] = *(a2 + v106[32]);
  a1[v106[33]] = *(a2 + v106[33]);
  *&a1[v106[34]] = *(a2 + v106[34]);
  v94 = *(a3 + 24);
  a1[*(a3 + 20)] = *(a2 + *(a3 + 20));
  v95 = type metadata accessor for UIButton.Configuration();
  v96 = *(*(v95 - 8) + 16);

  v96(&a1[v94], a2 + v94, v95);
  return a1;
}

void outlined copy of AnyShareConfiguration.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {

    v7 = a2;
    v8 = a3;
  }

  else
  {
    if (a5 != 1)
    {
      if (!a5)
      {
      }

      return;
    }

    v7 = a3;
    v8 = a4;
  }

  outlined copy of AppIntentExecutor?(v7, v8);
}

uint64_t destroy for PlatformItemContent(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 192);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v6 = *(a1 + 72);
    if (v6 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 64), v6);
      v4 = *(a1 + 192);
      v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v5 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v4, *(a1 + 200));
    }

    swift_unknownObjectRelease();
  }

  if (*(a1 + 264))
  {

    v7 = *(a1 + 272);
    if (v7 >= 2)
    {
    }
  }

  v8 = *(a1 + 336);
  if (v8 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v8, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
  }

  v9 = *(a1 + 416);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_20;
    }
  }

  if (*(a1 + 432))
  {
  }

  if (*(a1 + 448))
  {
  }

LABEL_20:

  if (*(a1 + 512))
  {
  }

  if (*(a1 + 816))
  {

    v10 = *(a1 + 624);
    if (v10)
    {
      if (v10 == 1)
      {
LABEL_27:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_30;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 600));
    }

    goto LABEL_27;
  }

LABEL_30:
  v11 = *(a1 + 864);
  if (v11)
  {
    if (v11 == 1)
    {
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 840));
  }

  if (*(a1 + 880))
  {
  }

LABEL_35:

  v12 = a1 + *(type metadata accessor for PlatformItemList.Item(0) + 112);
  v13 = type metadata accessor for CommandOperation(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = v12 + *(v13 + 20);
    outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

    v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
    if (*(v12 + *(v13 + 24)))
    {
    }
  }

  v17 = *(a2 + 24);
  v18 = type metadata accessor for UIButton.Configuration();
  v19 = *(*(v18 - 8) + 8);

  return v19(a1 + v17, v18);
}

void outlined consume of AnyShareConfiguration.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {

    v7 = a2;
    v8 = a3;
  }

  else
  {
    if (a5 != 1)
    {
      if (!a5)
      {
      }

      return;
    }

    v7 = a3;
    v8 = a4;
  }

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v8);
}

uint64_t initializeWithCopy for PlatformItemContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;
  *(a1 + 56) = *(a2 + 56);
  v9 = *(a2 + 192);
  v10 = v5;
  v11 = v6;

  if (v9 >> 1 != 4294967294)
  {
    v21 = *(a2 + 72);
    if (v21 == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v22 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v22, *(a2 + 72));
      *(a1 + 64) = v22;
      *(a1 + 72) = v21;
      v9 = *(a2 + 192);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v9 >> 1 == 0xFFFFFFFF)
    {
      v23 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v23;
    }

    else
    {
      v24 = *(a2 + 176);
      v25 = *(a2 + 184);
      v26 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v24, v25, v9, v26);
      *(a1 + 176) = v24;
      *(a1 + 184) = v25;
      *(a1 + 192) = v9;
      *(a1 + 200) = v26;
    }

    v27 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v27;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v28 = *(a2 + 240);
    *(a1 + 240) = v28;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v29 = v28;
    v17 = *(a2 + 264);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_13:
    v30 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v30;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_14;
  }

  v12 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v12;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v13 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v13;
  v14 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v14;
  v15 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v15;
  v16 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v16;
  v17 = *(a2 + 264);
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_3:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v17;
  v18 = *(a2 + 272);

  if (v18 >= 2)
  {
    v19 = v18;
  }

  *(a1 + 272) = v18;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v20 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v20;

LABEL_14:
  v31 = *(a2 + 336);
  if (v31 >> 2 == 0xFFFFFFFF)
  {
    v32 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v32;
    *(a1 + 400) = *(a2 + 400);
    v33 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v33;
    v34 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v34;
  }

  else
  {
    v35 = *(a2 + 304);
    v36 = *(a2 + 312);
    v37 = *(a2 + 320);
    v38 = *(a2 + 328);
    v39 = *(a2 + 344);
    v40 = *(a2 + 352);
    v41 = *(a2 + 360);
    v97 = *(a2 + 368);
    v99 = *(a2 + 376);
    v102 = *(a2 + 384);
    v104 = *(a2 + 392);
    __dsta = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v35, v36, v37, v38, v31, v39, v40, v41, v97, v99, v102, v104, __dsta);
    *(a1 + 304) = v35;
    *(a1 + 312) = v36;
    *(a1 + 320) = v37;
    *(a1 + 328) = v38;
    *(a1 + 336) = v31;
    *(a1 + 344) = v39;
    *(a1 + 352) = v40;
    *(a1 + 360) = v41;
    *(a1 + 368) = v97;
    *(a1 + 376) = v99;
    *(a1 + 384) = v102;
    *(a1 + 392) = v104;
    *(a1 + 400) = __dsta;
  }

  v42 = *(a2 + 416);
  if (v42 == 1)
  {
    v43 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v43;
    *(a1 + 472) = *(a2 + 472);
    v44 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v44;
    goto LABEL_27;
  }

  *(a1 + 408) = *(a2 + 408);
  *(a1 + 412) = *(a2 + 412);
  if (v42)
  {
    v45 = *(a2 + 424);
    *(a1 + 416) = v42;
    *(a1 + 424) = v45;

    v46 = *(a2 + 432);
    if (v46)
    {
      goto LABEL_21;
    }

LABEL_24:
    *(a1 + 432) = *(a2 + 432);
    v48 = *(a2 + 448);
    if (v48)
    {
      goto LABEL_22;
    }

LABEL_25:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_26;
  }

  *(a1 + 416) = *(a2 + 416);
  v46 = *(a2 + 432);
  if (!v46)
  {
    goto LABEL_24;
  }

LABEL_21:
  v47 = *(a2 + 440);
  *(a1 + 432) = v46;
  *(a1 + 440) = v47;

  v48 = *(a2 + 448);
  if (!v48)
  {
    goto LABEL_25;
  }

LABEL_22:
  v49 = *(a2 + 456);
  *(a1 + 448) = v48;
  *(a1 + 456) = v49;

LABEL_26:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_27:
  v50 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v50;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v51 = *(a2 + 512);

  if (v51)
  {
    v52 = *(a2 + 520);
    *(a1 + 512) = v51;
    *(a1 + 520) = v52;
  }

  else
  {
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!*(a2 + 816))
  {
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_42;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v53 = (a1 + 600);
  v54 = (a2 + 600);
  v55 = *(a2 + 624);

  if (!v55)
  {
    v57 = *(a2 + 616);
    *v53 = *v54;
    *(a1 + 616) = v57;
    *(a1 + 632) = *(a2 + 632);
LABEL_37:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_38;
  }

  if (v55 != 1)
  {
    *(a1 + 624) = v55;
    *(a1 + 632) = *(a2 + 632);
    (**(v55 - 8))(a1 + 600, a2 + 600, v55);
    goto LABEL_37;
  }

  v56 = *(a2 + 616);
  *v53 = *v54;
  *(a1 + 616) = v56;
  *(a1 + 632) = *(a2 + 632);
LABEL_38:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v58 = (a1 + 664);
  v59 = (a2 + 664);
  v60 = *(a2 + 776);
  if (v60 == 1)
  {
    v61 = *(a2 + 776);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 776) = v61;
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    v62 = *(a2 + 712);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 712) = v62;
    v63 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v63;
    v64 = *(a2 + 680);
    *v58 = *v59;
    *(a1 + 680) = v64;
  }

  else
  {
    *v58 = *v59;
    *(a1 + 672) = *(a2 + 672);
    *(a1 + 680) = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    v65 = *(a2 + 720);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 720) = v65;
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = v60;
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_42:
  v66 = (a1 + 840);
  v67 = (a2 + 840);
  v68 = *(a2 + 864);
  if (v68)
  {
    if (v68 == 1)
    {
      v69 = *(a2 + 856);
      *v66 = *v67;
      *(a1 + 856) = v69;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 888) = *(a2 + 888);
      goto LABEL_49;
    }

    *(a1 + 864) = v68;
    *(a1 + 872) = *(a2 + 872);
    (**(v68 - 8))(v66, v67);
    v71 = *(a2 + 880);
    if (!v71)
    {
      goto LABEL_48;
    }

LABEL_46:
    v72 = *(a2 + 888);
    *(a1 + 880) = v71;
    *(a1 + 888) = v72;

    goto LABEL_49;
  }

  v70 = *(a2 + 856);
  *v66 = *v67;
  *(a1 + 856) = v70;
  *(a1 + 872) = *(a2 + 872);
  v71 = *(a2 + 880);
  if (v71)
  {
    goto LABEL_46;
  }

LABEL_48:
  *(a1 + 880) = *(a2 + 880);
LABEL_49:
  v73 = *(a2 + 896);
  *(a1 + 896) = v73;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 954) = *(a2 + 954);
  v74 = type metadata accessor for PlatformItemList.Item(0);
  v75 = *(v74 + 112);
  v105 = v74;
  __dst = (a1 + v75);
  v76 = (a2 + v75);
  v77 = type metadata accessor for CommandOperation(0);
  v78 = *(v77 - 8);
  v100 = *(v78 + 48);
  v79 = v73;

  if (v100(v76, 1, v77))
  {
    type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v76, *(*(v80 - 8) + 64));
  }

  else
  {
    *__dst = *v76;
    v81 = *(v77 + 20);
    v101 = v76;
    v103 = v77;
    v82 = &__dst[v81];
    v83 = &v76[v81];
    v84 = *&v76[v81];
    v85 = *(v83 + 1);
    v86 = v83[16];
    outlined copy of Text.Storage(v84, v85, v86);
    *v82 = v84;
    *(v82 + 1) = v85;
    v82[16] = v86;
    *(v82 + 3) = *(v83 + 3);
    v87 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v88 = type metadata accessor for UUID();
    v98 = *(*(v88 - 8) + 16);

    v98(&v82[v87], &v83[v87], v88);
    v89 = *(v103 + 24);
    v90 = &__dst[v89];
    v91 = &v101[v89];
    if (*v91)
    {
      v92 = v91[1];
      *v90 = *v91;
      v90[1] = v92;
    }

    else
    {
      *v90 = *v91;
    }

    (*(v78 + 56))(__dst, 0, 1, v103);
  }

  *(a1 + v105[29]) = *(a2 + v105[29]);
  *(a1 + v105[30]) = *(a2 + v105[30]);
  *(a1 + v105[31]) = *(a2 + v105[31]);
  *(a1 + v105[32]) = *(a2 + v105[32]);
  *(a1 + v105[33]) = *(a2 + v105[33]);
  *(a1 + v105[34]) = *(a2 + v105[34]);
  v93 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v94 = type metadata accessor for UIButton.Configuration();
  v95 = *(*(v94 - 8) + 16);

  v95(a1 + v93, a2 + v93, v94);
  return a1;
}

uint64_t assignWithCopy for PlatformItemContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 286;
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v12 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 192) >> 1 == 4294967294)
  {
    if (v12 == 0x1FFFFFFFCLL)
    {
      v13 = *(a2 + 64);
      v14 = *(a2 + 80);
      v15 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v15;
      *(a1 + 64) = v13;
      *(a1 + 80) = v14;
      v16 = *(a2 + 128);
      v17 = *(a2 + 144);
      v18 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v18;
      *(a1 + 128) = v16;
      *(a1 + 144) = v17;
      v19 = *(a2 + 192);
      v20 = *(a2 + 208);
      v21 = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v20;
      *(a1 + 224) = v21;
      *(a1 + 192) = v19;
    }

    else
    {
      v31 = *(a2 + 72);
      if (v31 == 255)
      {
        v37 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v37;
      }

      else
      {
        v32 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v32, *(a2 + 72));
        *(a1 + 64) = v32;
        *(a1 + 72) = v31;
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      v38 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v38;
      v39 = *(a2 + 136);
      v40 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v40;
      *(a1 + 136) = v39;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v41 = *(a2 + 192);
      if (v41 >> 1 == 0xFFFFFFFF)
      {
        v42 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v42;
      }

      else
      {
        v43 = *(a2 + 176);
        v44 = *(a2 + 184);
        v45 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v43, v44, *(a2 + 192), v45);
        *(a1 + 176) = v43;
        *(a1 + 184) = v44;
        *(a1 + 192) = v41;
        *(a1 + 200) = v45;
      }

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v46 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v46;
      v47 = *(a2 + 240);
      *(a1 + 240) = v47;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v48 = v47;
    }
  }

  else if (v12 == 0x1FFFFFFFCLL)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    v22 = *(a2 + 112);
    v24 = *(a2 + 64);
    v23 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v22;
    *(a1 + 64) = v24;
    *(a1 + 80) = v23;
    v25 = *(a2 + 176);
    v27 = *(a2 + 128);
    v26 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v25;
    *(a1 + 128) = v27;
    *(a1 + 144) = v26;
    v29 = *(a2 + 208);
    v28 = *(a2 + 224);
    v30 = *(a2 + 192);
    *(a1 + 235) = *(a2 + 235);
    *(a1 + 208) = v29;
    *(a1 + 224) = v28;
    *(a1 + 192) = v30;
  }

  else
  {
    v33 = *(a2 + 72);
    if (*(a1 + 72) == 255)
    {
      if (v33 == 255)
      {
        v51 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v51;
      }

      else
      {
        v49 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v49, *(a2 + 72));
        *(a1 + 64) = v49;
        *(a1 + 72) = v33;
      }
    }

    else if (v33 == 255)
    {
      outlined destroy of GraphicsImage.Contents(a1 + 64);
      v50 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v50;
    }

    else
    {
      v34 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v34, *(a2 + 72));
      v35 = *(a1 + 64);
      *(a1 + 64) = v34;
      v36 = *(a1 + 72);
      *(a1 + 72) = v33;
      outlined consume of GraphicsImage.Contents(v35, v36);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v52 = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 108) = v52;
    v53 = *(a2 + 136);
    v54 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v54;
    *(a1 + 136) = v53;
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    v55 = *(a2 + 192);
    v56 = v55 & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 192) >> 1 == 0xFFFFFFFFLL)
    {
      if (v56 == 0x1FFFFFFFELL)
      {
        v57 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v57;
      }

      else
      {
        v59 = *(a2 + 176);
        v60 = *(a2 + 184);
        v61 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v59, v60, *(a2 + 192), v61);
        *(a1 + 176) = v59;
        *(a1 + 184) = v60;
        *(a1 + 192) = v55;
        *(a1 + 200) = v61;
      }
    }

    else if (v56 == 0x1FFFFFFFELL)
    {
      outlined destroy of AccessibilityImageLabel(a1 + 176);
      v58 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v58;
    }

    else
    {
      v62 = *(a2 + 176);
      v63 = *(a2 + 184);
      v64 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v62, v63, *(a2 + 192), v64);
      v65 = *(a1 + 176);
      v66 = *(a1 + 184);
      v67 = *(a1 + 192);
      v68 = *(a1 + 200);
      *(a1 + 176) = v62;
      *(a1 + 184) = v63;
      *(a1 + 192) = v55;
      *(a1 + 200) = v64;
      outlined consume of AccessibilityImageLabel(v65, v66, v67, v68);
    }

    *(a1 + 208) = *(a2 + 208);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 216) = *(a2 + 216);

    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    v69 = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 228) = v69;
    v70 = *(a1 + 240);
    v71 = *(a2 + 240);
    *(a1 + 240) = v71;
    v72 = v71;

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
  }

  v73 = *(a2 + 264);
  if (*(a1 + 264))
  {
    if (!v73)
    {
      outlined destroy of Image.NamedResolved(a1 + 256);
      v81 = *(a2 + 272);
      v80 = *(a2 + 288);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v81;
      *(a1 + 288) = v80;
      goto LABEL_44;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);

    v74 = *(a1 + 272);
    v75 = *(a2 + 272);
    if (v74 >= 2)
    {
      if (v75 >= 2)
      {
        *(a1 + 272) = v75;
        v84 = v75;

        goto LABEL_43;
      }

      v75 = *(a2 + 272);
    }

    else if (v75 >= 2)
    {
      *(a1 + 272) = v75;
      v76 = v75;
LABEL_43:
      v85 = *(a2 + 280);
      *(a1 + 284) = *(a2 + 284);
      *(a1 + 280) = v85;
      *(a1 + 285) = *(a2 + 285);
      *(a1 + 286) = *v5;
      *(a1 + 288) = *(a2 + 288);

      *(a1 + 296) = *(a2 + 296);

      goto LABEL_44;
    }

    *(a1 + 272) = v75;
    goto LABEL_43;
  }

  if (v73)
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    v77 = *(a2 + 272);

    if (v77 >= 2)
    {
      v78 = v77;
    }

    *(a1 + 272) = v77;
    v79 = *(a2 + 280);
    *(a1 + 284) = *(a2 + 284);
    *(a1 + 280) = v79;
    *(a1 + 285) = *(a2 + 285);
    *(a1 + 286) = *(a2 + 286);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);
  }

  else
  {
    v82 = *(a2 + 256);
    v83 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v83;
    *(a1 + 256) = v82;
  }

LABEL_44:
  v86 = *(a2 + 336);
  v87 = v86 & 0xFFFFFFFFFFFFFFFCLL;
  if (*(a1 + 336) >> 2 == 0xFFFFFFFFLL)
  {
    if (v87 == 0x3FFFFFFFCLL)
    {
      v88 = *(a2 + 304);
      v89 = *(a2 + 336);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 336) = v89;
      *(a1 + 304) = v88;
      v90 = *(a2 + 352);
      v91 = *(a2 + 368);
      v92 = *(a2 + 384);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 368) = v91;
      *(a1 + 384) = v92;
      *(a1 + 352) = v90;
    }

    else
    {
      v98 = *(a2 + 304);
      v99 = *(a2 + 312);
      v100 = *(a2 + 320);
      v101 = *(a2 + 328);
      v284 = v5;
      v102 = *(a2 + 344);
      v103 = *(a2 + 352);
      v104 = *(a2 + 360);
      v272 = *(a2 + 368);
      v274 = *(a2 + 376);
      v276 = *(a2 + 384);
      v278 = *(a2 + 392);
      v281 = *(a2 + 400);
      outlined copy of PlatformItemList.Item.SystemItem(v98, v99, v100, v101, v86, v102, v103, v104, v272, v274, v276, v278, v281);
      *(a1 + 304) = v98;
      *(a1 + 312) = v99;
      *(a1 + 320) = v100;
      *(a1 + 328) = v101;
      *(a1 + 336) = v86;
      *(a1 + 344) = v102;
      *(a1 + 352) = v103;
      *(a1 + 360) = v104;
      *(a1 + 368) = v272;
      *(a1 + 376) = v274;
      *(a1 + 384) = v276;
      *(a1 + 392) = v278;
      v5 = v284;
      *(a1 + 400) = v281;
    }
  }

  else if (v87 == 0x3FFFFFFFCLL)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    v94 = *(a2 + 320);
    v93 = *(a2 + 336);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v94;
    *(a1 + 336) = v93;
    v96 = *(a2 + 368);
    v95 = *(a2 + 384);
    v97 = *(a2 + 352);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 368) = v96;
    *(a1 + 384) = v95;
    *(a1 + 352) = v97;
  }

  else
  {
    v105 = *(a2 + 304);
    v106 = *(a2 + 312);
    v285 = v5;
    v107 = *(a2 + 320);
    v108 = *(a2 + 328);
    v109 = *(a2 + 344);
    v110 = *(a2 + 352);
    v111 = *(a2 + 360);
    v273 = *(a2 + 368);
    v275 = *(a2 + 376);
    v277 = *(a2 + 384);
    v279 = *(a2 + 392);
    v282 = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v105, v106, v107, v108, v86, v109, v110, v111, v273, v275, v277, v279, v282);
    v112 = *(a1 + 304);
    v113 = *(a1 + 312);
    v114 = *(a1 + 320);
    v115 = *(a1 + 328);
    v116 = *(a1 + 336);
    v117 = *(a1 + 344);
    v118 = *(a1 + 352);
    v119 = *(a1 + 360);
    v120 = *(a1 + 368);
    v121 = *(a1 + 384);
    v122 = *(a1 + 400);
    *(a1 + 304) = v105;
    *(a1 + 312) = v106;
    *(a1 + 320) = v107;
    *(a1 + 328) = v108;
    *(a1 + 336) = v86;
    *(a1 + 344) = v109;
    *(a1 + 352) = v110;
    *(a1 + 360) = v111;
    *(a1 + 368) = v273;
    *(a1 + 376) = v275;
    *(a1 + 384) = v277;
    *(a1 + 392) = v279;
    v5 = v285;
    *(a1 + 400) = v282;
    outlined consume of PlatformItemList.Item.SystemItem(v112, v113, v114, v115, v116, v117, v118, v119, v120, *(&v120 + 1), v121, SBYTE8(v121), v122);
  }

  v123 = (a1 + 408);
  v124 = *(a1 + 416);
  v125 = *(a2 + 416);
  if (v124 == 1)
  {
    if (v125 == 1)
    {
      *v123 = *(v5 + 122);
      v126 = *(v5 + 138);
      v127 = *(v5 + 154);
      v128 = *(v5 + 170);
      *(a1 + 472) = *(v5 + 186);
      *(a1 + 440) = v127;
      *(a1 + 456) = v128;
      *(a1 + 424) = v126;
      goto LABEL_85;
    }

    *(a1 + 408) = *(a2 + 408);
    *(a1 + 409) = *(a2 + 409);
    *(a1 + 410) = *(a2 + 410);
    *(a1 + 411) = *(a2 + 411);
    *(a1 + 412) = *(a2 + 412);
    v132 = *(a2 + 416);
    if (v132)
    {
      v133 = *(a2 + 424);
      *(a1 + 416) = v132;
      *(a1 + 424) = v133;

      v134 = *(a2 + 432);
      if (v134)
      {
LABEL_58:
        v135 = *(a2 + 440);
        *(a1 + 432) = v134;
        *(a1 + 440) = v135;

        goto LABEL_64;
      }
    }

    else
    {
      *(a1 + 416) = *(a2 + 416);
      v134 = *(a2 + 432);
      if (v134)
      {
        goto LABEL_58;
      }
    }

    *(a1 + 432) = *(a2 + 432);
LABEL_64:
    v138 = *(a2 + 448);
    if (!v138)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  if (v125 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    *v123 = *(v5 + 122);
    v129 = *(v5 + 154);
    v130 = *(v5 + 170);
    v131 = *(v5 + 138);
    *(a1 + 472) = *(v5 + 186);
    *(a1 + 440) = v129;
    *(a1 + 456) = v130;
    *(a1 + 424) = v131;
    goto LABEL_85;
  }

  *(a1 + 408) = *(v5 + 122);
  *(a1 + 409) = *(v5 + 123);
  *(a1 + 410) = *(v5 + 124);
  *(a1 + 411) = *(v5 + 125);
  *(a1 + 412) = *(a2 + 412);
  v136 = *(a2 + 416);
  if (v124)
  {
    if (v136)
    {
      v137 = *(a2 + 424);
      *(a1 + 416) = v136;
      *(a1 + 424) = v137;

      goto LABEL_70;
    }
  }

  else if (v136)
  {
    v139 = *(a2 + 424);
    *(a1 + 416) = v136;
    *(a1 + 424) = v139;

    goto LABEL_70;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_70:
  v140 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v140)
    {
      v141 = *(a2 + 440);
      *(a1 + 432) = v140;
      *(a1 + 440) = v141;

      goto LABEL_77;
    }
  }

  else if (v140)
  {
    v142 = *(a2 + 440);
    *(a1 + 432) = v140;
    *(a1 + 440) = v142;

    goto LABEL_77;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_77:
  v138 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v138)
    {
LABEL_81:
      v144 = *(a2 + 456);
      *(a1 + 448) = v138;
      *(a1 + 456) = v144;

      goto LABEL_84;
    }

LABEL_83:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_84;
  }

  if (!v138)
  {

    goto LABEL_83;
  }

  v143 = *(a2 + 456);
  *(a1 + 448) = v138;
  *(a1 + 456) = v143;

LABEL_84:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_85:
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v145 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v145)
    {
      v146 = *(a2 + 520);
      *(a1 + 512) = v145;
      *(a1 + 520) = v146;

      goto LABEL_92;
    }
  }

  else if (v145)
  {
    v147 = *(a2 + 520);
    *(a1 + 512) = v145;
    *(a1 + 520) = v147;

    goto LABEL_92;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_92:
  *(a1 + 528) = *(a2 + 528);
  v148 = *(a2 + 816);
  if (*(a1 + 816))
  {
    if (v148)
    {
      *(a1 + 536) = *(a2 + 536);
      *(a1 + 544) = *(a2 + 544);

      *(a1 + 552) = *(a2 + 552);
      *(a1 + 560) = *(a2 + 560);

      *(a1 + 568) = *(a2 + 568);
      v149 = *(a2 + 576);
      *(a1 + 592) = *(a2 + 592);
      *(a1 + 576) = v149;
      v150 = (a1 + 600);
      v151 = (a2 + 600);
      v152 = *(a1 + 624);
      v153 = *(a2 + 624);
      if (v152 != 1)
      {
        if (v153 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 600);
          v163 = *(a2 + 616);
          v162 = *(a2 + 632);
          *v150 = *v151;
          *(a1 + 616) = v163;
          *(a1 + 632) = v162;
        }

        else
        {
          if (v152)
          {
            if (v153)
            {
              __swift_assign_boxed_opaque_existential_1((a1 + 600), (a2 + 600));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(a1 + 600);
              v181 = *(a2 + 632);
              v182 = *(a2 + 616);
              *v150 = *v151;
              *(a1 + 616) = v182;
              *(a1 + 632) = v181;
            }
          }

          else if (v153)
          {
            *(a1 + 624) = v153;
            *(a1 + 632) = *(a2 + 632);
            (**(v153 - 8))(a1 + 600, a2 + 600);
          }

          else
          {
            v183 = *v151;
            v184 = *(a2 + 616);
            *(a1 + 632) = *(a2 + 632);
            *v150 = v183;
            *(a1 + 616) = v184;
          }

          *(a1 + 640) = *(a2 + 640);
        }

        goto LABEL_124;
      }

      if (v153)
      {
        if (v153 == 1)
        {
          v154 = *v151;
          v155 = *(a2 + 632);
          *(a1 + 616) = *(a2 + 616);
          *(a1 + 632) = v155;
          *v150 = v154;
LABEL_124:
          v185 = *(a2 + 648);
          *(a1 + 656) = *(a2 + 656);
          *(a1 + 648) = v185;
          v186 = (a1 + 664);
          v187 = (a2 + 664);
          v188 = *(a2 + 776);
          if (*(a1 + 776) == 1)
          {
            if (v188 == 1)
            {
              v189 = *(a2 + 680);
              *v186 = *v187;
              *(a1 + 680) = v189;
              v190 = *(a2 + 696);
              v191 = *(a2 + 712);
              v192 = *(a2 + 744);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 744) = v192;
              *(a1 + 696) = v190;
              *(a1 + 712) = v191;
              v193 = *(a2 + 760);
              v194 = *(a2 + 776);
              v195 = *(a2 + 792);
              *(a1 + 808) = *(a2 + 808);
              *(a1 + 776) = v194;
              *(a1 + 792) = v195;
              *(a1 + 760) = v193;
            }

            else
            {
              v203 = *v187;
              *(a1 + 672) = *(a2 + 672);
              *v186 = v203;
              v204 = *(a2 + 680);
              *(a1 + 688) = *(a2 + 688);
              *(a1 + 680) = v204;
              *(a1 + 689) = *(a2 + 689);
              *(a1 + 690) = *(a2 + 690);
              *(a1 + 691) = *(v5 + 405);
              *(a1 + 692) = *(a2 + 692);
              *(a1 + 696) = *(a2 + 696);
              *(a1 + 704) = *(a2 + 704);
              *(a1 + 712) = *(a2 + 712);
              *(a1 + 720) = *(a2 + 720);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 736) = *(a2 + 736);
              *(a1 + 744) = *(a2 + 744);
              *(a1 + 745) = *(a2 + 745);
              *(a1 + 752) = *(a2 + 752);
              *(a1 + 760) = *(a2 + 760);
              *(a1 + 768) = *(a2 + 768);
              *(a1 + 776) = *(a2 + 776);
              v205 = *(a2 + 784);
              *(a1 + 800) = *(a2 + 800);
              *(a1 + 784) = v205;
              *(a1 + 808) = *(a2 + 808);
            }
          }

          else if (v188 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
            v196 = *(a2 + 680);
            *v186 = *v187;
            *(a1 + 680) = v196;
            v197 = *(a2 + 744);
            v199 = *(a2 + 696);
            v198 = *(a2 + 712);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 744) = v197;
            *(a1 + 696) = v199;
            *(a1 + 712) = v198;
            v201 = *(a2 + 776);
            v200 = *(a2 + 792);
            v202 = *(a2 + 760);
            *(a1 + 808) = *(a2 + 808);
            *(a1 + 776) = v201;
            *(a1 + 792) = v200;
            *(a1 + 760) = v202;
          }

          else
          {
            v206 = *v187;
            *(a1 + 672) = *(a2 + 672);
            *v186 = v206;
            v207 = *(a2 + 680);
            *(a1 + 688) = *(a2 + 688);
            *(a1 + 680) = v207;
            *(a1 + 689) = *(a2 + 689);
            *(a1 + 690) = *(a2 + 690);
            *(a1 + 691) = *(v5 + 405);
            *(a1 + 692) = *(a2 + 692);
            *(a1 + 696) = *(a2 + 696);
            *(a1 + 704) = *(a2 + 704);
            *(a1 + 712) = *(a2 + 712);
            *(a1 + 720) = *(a2 + 720);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 736) = *(a2 + 736);
            *(a1 + 744) = *(v5 + 458);
            *(a1 + 745) = *(v5 + 459);
            *(a1 + 752) = *(a2 + 752);
            *(a1 + 760) = *(a2 + 760);
            *(a1 + 768) = *(a2 + 768);
            *(a1 + 776) = *(a2 + 776);

            v208 = *(a2 + 784);
            *(a1 + 800) = *(a2 + 800);
            *(a1 + 784) = v208;
            *(a1 + 808) = *(a2 + 808);
          }

          *(a1 + 816) = *(a2 + 816);

          *(a1 + 824) = *(a2 + 824);

          *(a1 + 832) = *(a2 + 832);

          goto LABEL_132;
        }

        *(a1 + 624) = v153;
        *(a1 + 632) = *(a2 + 632);
        (**(v153 - 8))(a1 + 600, a2 + 600);
      }

      else
      {
        v179 = *v151;
        v180 = *(a2 + 616);
        *(a1 + 632) = *(a2 + 632);
        *v150 = v179;
        *(a1 + 616) = v180;
      }

      *(a1 + 640) = *(a2 + 640);

      goto LABEL_124;
    }

    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
LABEL_103:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_132;
  }

  if (!v148)
  {
    goto LABEL_103;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  v156 = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 576) = v156;
  v157 = (a1 + 600);
  v158 = (a2 + 600);
  v159 = *(a2 + 624);

  if (!v159)
  {
    v164 = *v158;
    v165 = *(a2 + 616);
    *(a1 + 632) = *(a2 + 632);
    *v157 = v164;
    *(a1 + 616) = v165;
LABEL_111:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_112;
  }

  if (v159 != 1)
  {
    *(a1 + 624) = v159;
    *(a1 + 632) = *(a2 + 632);
    (**(v159 - 8))(a1 + 600, a2 + 600, v159);
    goto LABEL_111;
  }

  v160 = *v158;
  v161 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v161;
  *v157 = v160;
LABEL_112:
  v166 = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 648) = v166;
  v167 = (a1 + 664);
  v168 = (a2 + 664);
  if (*(a2 + 776) == 1)
  {
    v169 = *(a2 + 680);
    *v167 = *v168;
    *(a1 + 680) = v169;
    v170 = *(a2 + 696);
    v171 = *(a2 + 712);
    v172 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v172;
    *(a1 + 696) = v170;
    *(a1 + 712) = v171;
    v173 = *(a2 + 760);
    v174 = *(a2 + 776);
    v175 = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 776) = v174;
    *(a1 + 792) = v175;
    *(a1 + 760) = v173;
  }

  else
  {
    v176 = *v168;
    *(a1 + 672) = *(a2 + 672);
    *v167 = v176;
    v177 = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 680) = v177;
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 690) = *(a2 + 690);
    *(a1 + 691) = *(v5 + 405);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 720) = *(a2 + 720);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 745) = *(a2 + 745);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = *(a2 + 776);
    v178 = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 784) = v178;
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_132:
  v209 = (a1 + 840);
  v210 = (a2 + 840);
  v211 = *(a1 + 864);
  v212 = *(a2 + 864);
  if (v211 == 1)
  {
    if (v212)
    {
      if (v212 == 1)
      {
        v213 = *v210;
        v214 = *(a2 + 856);
        v215 = *(a2 + 872);
        *(a1 + 888) = *(a2 + 888);
        *(a1 + 856) = v214;
        *(a1 + 872) = v215;
        *v209 = v213;
        goto LABEL_156;
      }

      *(a1 + 864) = v212;
      *(a1 + 872) = *(a2 + 872);
      (**(v212 - 8))(a1 + 840, a2 + 840);
    }

    else
    {
      v219 = *v210;
      v220 = *(a2 + 856);
      *(a1 + 872) = *(a2 + 872);
      *v209 = v219;
      *(a1 + 856) = v220;
    }

    v221 = *(a2 + 880);
    if (!v221)
    {
      goto LABEL_155;
    }

LABEL_153:
    v227 = *(a2 + 888);
    *(a1 + 880) = v221;
    *(a1 + 888) = v227;

    goto LABEL_156;
  }

  if (v212 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    v217 = *(a2 + 856);
    v216 = *(a2 + 872);
    v218 = *v210;
    *(a1 + 888) = *(a2 + 888);
    *(a1 + 856) = v217;
    *(a1 + 872) = v216;
    *v209 = v218;
    goto LABEL_156;
  }

  if (v211)
  {
    if (v212)
    {
      __swift_assign_boxed_opaque_existential_1((a1 + 840), (a2 + 840));
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1 + 840);
      v222 = *(a2 + 872);
      v223 = *(a2 + 856);
      *v209 = *v210;
      *(a1 + 856) = v223;
      *(a1 + 872) = v222;
    }
  }

  else if (v212)
  {
    *(a1 + 864) = v212;
    *(a1 + 872) = *(a2 + 872);
    (**(v212 - 8))(a1 + 840, a2 + 840);
  }

  else
  {
    v224 = *v210;
    v225 = *(a2 + 856);
    *(a1 + 872) = *(a2 + 872);
    *v209 = v224;
    *(a1 + 856) = v225;
  }

  v221 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v221)
    {
      v226 = *(a2 + 888);
      *(a1 + 880) = v221;
      *(a1 + 888) = v226;

      goto LABEL_156;
    }

    goto LABEL_155;
  }

  if (v221)
  {
    goto LABEL_153;
  }

LABEL_155:
  *(a1 + 880) = *(a2 + 880);
LABEL_156:
  v228 = *(a1 + 896);
  v229 = *(a2 + 896);
  *(a1 + 896) = v229;
  v230 = v229;

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  *(a1 + 954) = *(a2 + 954);
  v231 = type metadata accessor for PlatformItemList.Item(0);
  v232 = v231[28];
  v233 = (a1 + v232);
  v234 = (a2 + v232);
  v235 = type metadata accessor for CommandOperation(0);
  v236 = *(v235 - 8);
  v237 = *(v236 + 48);
  LODWORD(v228) = v237(v233, 1, v235);
  v238 = v237(v234, 1, v235);
  if (!v228)
  {
    if (!v238)
    {
      *v233 = *v234;
      v253 = *(v235 + 20);
      v254 = &v233[v253];
      v287 = &v234[v253];
      v255 = *&v234[v253];
      v256 = *&v234[v253 + 8];
      v257 = v234[v253 + 16];
      outlined copy of Text.Storage(v255, v256, v257);
      v258 = *v254;
      v259 = *(v254 + 1);
      v260 = v254[16];
      *v254 = v255;
      *(v254 + 1) = v256;
      v254[16] = v257;
      outlined consume of Text.Storage(v258, v259, v260);
      *(v254 + 3) = *(v287 + 3);

      v261 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v262 = type metadata accessor for UUID();
      (*(*(v262 - 8) + 24))(&v254[v261], &v287[v261], v262);
      v263 = *(v235 + 24);
      v264 = &v233[v263];
      v265 = &v234[v263];
      v266 = *&v234[v263];
      if (*v264)
      {
        if (v266)
        {
          v267 = *(v265 + 1);
          *v264 = v266;
          v264[1] = v267;

          goto LABEL_168;
        }
      }

      else if (v266)
      {
        v271 = *(v265 + 1);
        *v264 = v266;
        v264[1] = v271;

        goto LABEL_168;
      }

      *v264 = *v265;
      goto LABEL_168;
    }

    outlined destroy of UIKitSystemButtonConfigurationModifier(v233, type metadata accessor for CommandOperation);
    goto LABEL_162;
  }

  if (v238)
  {
LABEL_162:
    type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v233, v234, *(*(v252 - 8) + 64));
    goto LABEL_168;
  }

  *v233 = *v234;
  v239 = *(v235 + 20);
  v240 = v234;
  v283 = v234;
  v286 = v233;
  v241 = &v233[v239];
  v242 = &v240[v239];
  v243 = *&v240[v239];
  v244 = *&v240[v239 + 8];
  v245 = v240[v239 + 16];
  outlined copy of Text.Storage(v243, v244, v245);
  *v241 = v243;
  *(v241 + 1) = v244;
  v241[16] = v245;
  *(v241 + 3) = *(v242 + 3);
  v246 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v247 = type metadata accessor for UUID();
  v280 = *(*(v247 - 8) + 16);

  v280(&v241[v246], &v242[v246], v247);
  v248 = *(v235 + 24);
  v249 = &v286[v248];
  v250 = &v283[v248];
  if (*v250)
  {
    v251 = v250[1];
    *v249 = *v250;
    v249[1] = v251;
  }

  else
  {
    *v249 = *v250;
  }

  (*(v236 + 56))(v286, 0, 1, v235);
LABEL_168:
  *(a1 + v231[29]) = *(a2 + v231[29]);
  *(a1 + v231[30]) = *(a2 + v231[30]);
  *(a1 + v231[31]) = *(a2 + v231[31]);
  *(a1 + v231[32]) = *(a2 + v231[32]);
  *(a1 + v231[33]) = *(a2 + v231[33]);
  *(a1 + v231[34]) = *(a2 + v231[34]);

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v268 = *(a3 + 24);
  v269 = type metadata accessor for UIButton.Configuration();
  (*(*(v269 - 8) + 24))(a1 + v268, a2 + v268, v269);
  return a1;
}

uint64_t initializeWithTake for PlatformItemContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v7;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  v9 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;
  v10 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v10;
  v11 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v11;
  v12 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v12;
  v13 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v13;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  v14 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v14;
  v15 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v15;
  v16 = *(a2 + 456);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = v16;
  *(a1 + 472) = *(a2 + 472);
  v17 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v17;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 489) = *(a2 + 489);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  memcpy((a1 + 536), (a2 + 536), 0x130uLL);
  v18 = *(a2 + 856);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 856) = v18;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v19 = type metadata accessor for PlatformItemList.Item(0);
  v20 = v19[28];
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  v23 = type metadata accessor for CommandOperation(0);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23))
  {
    type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v21, v22, *(*(v25 - 8) + 64));
  }

  else
  {
    *v21 = *v22;
    v26 = *(v23 + 20);
    v27 = &v21[v26];
    v28 = &v22[v26];
    v29 = *&v22[v26 + 16];
    *v27 = *&v22[v26];
    v27[1] = v29;
    v38 = a3;
    v30 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v31 = type metadata accessor for UUID();
    v32 = v27 + v30;
    v33 = &v28[v30];
    a3 = v38;
    (*(*(v31 - 8) + 32))(v32, v33, v31);
    *&v21[*(v23 + 24)] = *&v22[*(v23 + 24)];
    (*(v24 + 56))(v21, 0, 1, v23);
  }

  *(a1 + v19[29]) = *(a2 + v19[29]);
  *(a1 + v19[30]) = *(a2 + v19[30]);
  *(a1 + v19[31]) = *(a2 + v19[31]);
  *(a1 + v19[32]) = *(a2 + v19[32]);
  *(a1 + v19[33]) = *(a2 + v19[33]);
  *(a1 + v19[34]) = *(a2 + v19[34]);
  v34 = *(a3 + 20);
  v35 = *(a3 + 24);
  *(a1 + v34) = *(a2 + v34);
  v36 = type metadata accessor for UIButton.Configuration();
  (*(*(v36 - 8) + 32))(a1 + v35, a2 + v35, v36);
  return a1;
}

uint64_t assignWithTake for PlatformItemContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 286;
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v8 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v8;

  *(a1 + 32) = *(a2 + 32);
  v9 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v9;

  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 192) >> 1 == 4294967294)
  {
LABEL_4:
    v10 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v10;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 235) = *(a2 + 235);
    v11 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v11;
    v12 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v12;
    v13 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v13;
    v14 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v14;
    if (!*(a1 + 264))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (*(a2 + 192) >> 1 == 4294967294)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    goto LABEL_4;
  }

  v15 = *(a1 + 72);
  if (v15 != 255)
  {
    v16 = *(a2 + 72);
    if (v16 != 255)
    {
      v17 = *(a1 + 64);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v16;
      outlined consume of GraphicsImage.Contents(v17, v15);
      goto LABEL_11;
    }

    outlined destroy of GraphicsImage.Contents(a1 + 64);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
LABEL_11:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  v18 = *(a1 + 192);
  *(a1 + 170) = *(a2 + 170);
  if (v18 >> 1 == 0xFFFFFFFF)
  {
LABEL_14:
    v20 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v20;
    goto LABEL_16;
  }

  v19 = *(a2 + 192);
  if (v19 >> 1 == 0xFFFFFFFF)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 176);
    goto LABEL_14;
  }

  v21 = *(a2 + 200);
  v22 = *(a1 + 176);
  v23 = *(a1 + 184);
  v24 = *(a1 + 200);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v19;
  *(a1 + 200) = v21;
  outlined consume of AccessibilityImageLabel(v22, v23, v18, v24);
LABEL_16:
  *(a1 + 208) = *(a2 + 208);
  swift_unknownObjectRelease();
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  v25 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 250) = *(a2 + 250);
  if (!*(a1 + 264))
  {
LABEL_21:
    v29 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v29;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_26;
  }

LABEL_17:
  v26 = *(a2 + 264);
  if (!v26)
  {
    outlined destroy of Image.NamedResolved(a1 + 256);
    goto LABEL_21;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v26;

  v27 = *(a1 + 272);
  v28 = *(a2 + 272);
  if (v27 >= 2)
  {
    if (v28 >= 2)
    {
      *(a1 + 272) = v28;
    }

    else
    {

      *(a1 + 272) = *(a2 + 272);
    }
  }

  else
  {
    *(a1 + 272) = v28;
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 286) = *v5;
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

LABEL_26:
  v30 = *(a1 + 336);
  if (v30 >> 2 == 0xFFFFFFFF)
  {
LABEL_29:
    v32 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v32;
    *(a1 + 400) = *(a2 + 400);
    v33 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v33;
    v34 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v34;
    goto LABEL_31;
  }

  v31 = *(a2 + 336);
  if (v31 >> 2 == 0xFFFFFFFF)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    goto LABEL_29;
  }

  v35 = *(a1 + 304);
  v36 = *(a1 + 312);
  v37 = *(a1 + 320);
  v38 = *(a1 + 328);
  v39 = *(a1 + 344);
  v40 = *(a1 + 352);
  v41 = *(a1 + 360);
  v42 = *(a1 + 368);
  v43 = *(a1 + 384);
  v44 = *(a1 + 400);
  v45 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v45;
  *(a1 + 336) = v31;
  v46 = *(v5 + 74);
  *(a1 + 344) = *(v5 + 58);
  *(a1 + 360) = v46;
  v47 = *(v5 + 106);
  *(a1 + 376) = *(v5 + 90);
  *(a1 + 392) = v47;
  outlined consume of PlatformItemList.Item.SystemItem(v35, v36, v37, v38, v30, v39, v40, v41, v42, *(&v42 + 1), v43, SBYTE8(v43), v44);
LABEL_31:
  v48 = *(a1 + 416);
  if (v48 == 1)
  {
LABEL_34:
    v50 = *(v5 + 138);
    v51 = *(v5 + 170);
    *(a1 + 440) = *(v5 + 154);
    *(a1 + 456) = v51;
    *(a1 + 472) = *(v5 + 186);
    *(a1 + 408) = *(v5 + 122);
    *(a1 + 424) = v50;
    goto LABEL_57;
  }

  v49 = *(a2 + 416);
  if (v49 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    goto LABEL_34;
  }

  *(a1 + 408) = *(v5 + 122);
  *(a1 + 409) = *(v5 + 123);
  *(a1 + 410) = *(v5 + 124);
  *(a1 + 411) = *(v5 + 125);
  *(a1 + 412) = *(a2 + 412);
  if (v48)
  {
    if (v49)
    {
      v52 = *(a2 + 424);
      *(a1 + 416) = v49;
      *(a1 + 424) = v52;

      goto LABEL_42;
    }
  }

  else if (v49)
  {
    v53 = *(a2 + 424);
    *(a1 + 416) = v49;
    *(a1 + 424) = v53;
    goto LABEL_42;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_42:
  v54 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v54)
    {
      v55 = *(a2 + 440);
      *(a1 + 432) = v54;
      *(a1 + 440) = v55;

      goto LABEL_49;
    }
  }

  else if (v54)
  {
    v56 = *(a2 + 440);
    *(a1 + 432) = v54;
    *(a1 + 440) = v56;
    goto LABEL_49;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_49:
  v57 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v57)
    {
      v59 = *(a2 + 456);
      *(a1 + 448) = v57;
      *(a1 + 456) = v59;
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_56;
  }

  if (!v57)
  {

    goto LABEL_55;
  }

  v58 = *(a2 + 456);
  *(a1 + 448) = v57;
  *(a1 + 456) = v58;

LABEL_56:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_57:
  v60 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v60;

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v61 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v61)
    {
      v62 = *(a2 + 520);
      *(a1 + 512) = v61;
      *(a1 + 520) = v62;

      goto LABEL_64;
    }
  }

  else if (v61)
  {
    v63 = *(a2 + 520);
    *(a1 + 512) = v61;
    *(a1 + 520) = v63;
    goto LABEL_64;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_64:
  *(a1 + 528) = *(a2 + 528);
  if (!*(a1 + 816))
  {
LABEL_71:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_83;
  }

  if (!*(a2 + 816))
  {
    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
    goto LABEL_71;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);

  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v64 = (a1 + 600);
  v65 = (a2 + 600);
  v66 = *(a1 + 624);
  if (v66 == 1)
  {
LABEL_69:
    v68 = *(a2 + 616);
    *v64 = *v65;
    *(a1 + 616) = v68;
    *(a1 + 632) = *(a2 + 632);
    goto LABEL_77;
  }

  v67 = *(a2 + 624);
  if (v67 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 600);
    goto LABEL_69;
  }

  if (v66)
  {
    v69 = (a1 + 600);
    if (v67)
    {
      __swift_destroy_boxed_opaque_existential_1(v69);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v69);
    }
  }

  v70 = *(a2 + 616);
  *v64 = *v65;
  *(a1 + 616) = v70;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);

LABEL_77:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v71 = (a1 + 664);
  v72 = (a2 + 664);
  if (*(a1 + 776) != 1)
  {
    v73 = *(a2 + 776);
    if (v73 != 1)
    {
      *v71 = *v72;
      *(a1 + 672) = *(a2 + 672);
      *(a1 + 680) = *(a2 + 680);
      *(a1 + 688) = *(a2 + 688);
      *(a1 + 689) = *(a2 + 689);
      *(a1 + 691) = *(v5 + 405);
      *(a1 + 692) = *(a2 + 692);
      *(a1 + 696) = *(a2 + 696);
      v78 = *(a2 + 720);
      *(a1 + 704) = *(a2 + 704);
      *(a1 + 720) = v78;
      *(a1 + 736) = *(a2 + 736);
      *(a1 + 744) = *(v5 + 458);
      *(a1 + 745) = *(v5 + 459);
      *(a1 + 752) = *(a2 + 752);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 776) = v73;

      *(a1 + 784) = *(a2 + 784);
      *(a1 + 800) = *(a2 + 800);
      *(a1 + 808) = *(a2 + 808);
      goto LABEL_82;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
  }

  v74 = *(a2 + 776);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 776) = v74;
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  v75 = *(a2 + 712);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 712) = v75;
  v76 = *(a2 + 744);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 744) = v76;
  v77 = *(a2 + 680);
  *v71 = *v72;
  *(a1 + 680) = v77;
LABEL_82:
  *(a1 + 816) = *(a2 + 816);

  *(a1 + 824) = *(a2 + 824);

  *(a1 + 832) = *(a2 + 832);

LABEL_83:
  v79 = (a1 + 840);
  v80 = (a2 + 840);
  v81 = *(a1 + 864);
  if (v81 == 1)
  {
LABEL_86:
    v83 = *(a2 + 856);
    *v79 = *v80;
    *(a1 + 856) = v83;
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 888) = *(a2 + 888);
    goto LABEL_87;
  }

  v82 = *(a2 + 864);
  if (v82 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    goto LABEL_86;
  }

  if (v81)
  {
    v104 = (a1 + 840);
    if (v82)
    {
      __swift_destroy_boxed_opaque_existential_1(v104);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v104);
    }
  }

  v118 = *(a2 + 856);
  *v79 = *v80;
  *(a1 + 856) = v118;
  *(a1 + 872) = *(a2 + 872);
  v119 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v119)
    {
      v120 = *(a2 + 888);
      *(a1 + 880) = v119;
      *(a1 + 888) = v120;

      goto LABEL_87;
    }
  }

  else if (v119)
  {
    v121 = *(a2 + 888);
    *(a1 + 880) = v119;
    *(a1 + 888) = v121;
    goto LABEL_87;
  }

  *(a1 + 880) = *(a2 + 880);
LABEL_87:
  v84 = *(a1 + 896);
  *(a1 + 896) = *(a2 + 896);

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v85 = type metadata accessor for PlatformItemList.Item(0);
  v86 = v85[28];
  v87 = (a1 + v86);
  v88 = (a2 + v86);
  v89 = type metadata accessor for CommandOperation(0);
  v90 = *(v89 - 8);
  v91 = *(v90 + 48);
  v92 = v91(v87, 1, v89);
  v93 = v91(v88, 1, v89);
  if (!v92)
  {
    if (!v93)
    {
      *v87 = *v88;
      v105 = *(v89 + 20);
      v106 = &v87[v105];
      v107 = &v88[v105];
      LOBYTE(v105) = v88[v105 + 16];
      v108 = *v106;
      v109 = *(v106 + 1);
      v110 = v106[16];
      *v106 = *v107;
      v106[16] = v105;
      outlined consume of Text.Storage(v108, v109, v110);
      *(v106 + 3) = *(v107 + 3);

      v111 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v112 = type metadata accessor for UUID();
      (*(*(v112 - 8) + 40))(&v106[v111], &v107[v111], v112);
      v113 = *(v89 + 24);
      v114 = &v87[v113];
      v115 = &v88[v113];
      v116 = *v115;
      if (*v114)
      {
        if (v116)
        {
          v117 = v115[1];
          *v114 = v116;
          v114[1] = v117;

          goto LABEL_93;
        }
      }

      else if (v116)
      {
        v122 = v115[1];
        *v114 = v116;
        v114[1] = v122;
        goto LABEL_93;
      }

      *v114 = *v115;
      goto LABEL_93;
    }

    outlined destroy of UIKitSystemButtonConfigurationModifier(v87, type metadata accessor for CommandOperation);
    goto LABEL_92;
  }

  if (v93)
  {
LABEL_92:
    type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v87, v88, *(*(v100 - 8) + 64));
    goto LABEL_93;
  }

  *v87 = *v88;
  v94 = *(v89 + 20);
  v95 = &v87[v94];
  v96 = &v88[v94];
  v97 = *&v88[v94 + 16];
  *v95 = *&v88[v94];
  *(v95 + 1) = v97;
  v98 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v99 = type metadata accessor for UUID();
  (*(*(v99 - 8) + 32))(&v95[v98], &v96[v98], v99);
  *&v87[*(v89 + 24)] = *&v88[*(v89 + 24)];
  (*(v90 + 56))(v87, 0, 1, v89);
LABEL_93:
  *(a1 + v85[29]) = *(a2 + v85[29]);
  *(a1 + v85[30]) = *(a2 + v85[30]);
  *(a1 + v85[31]) = *(a2 + v85[31]);
  *(a1 + v85[32]) = *(a2 + v85[32]);
  *(a1 + v85[33]) = *(a2 + v85[33]);
  *(a1 + v85[34]) = *(a2 + v85[34]);

  v101 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v102 = type metadata accessor for UIButton.Configuration();
  (*(*(v102 - 8) + 40))(a1 + v101, a2 + v101, v102);
  return a1;
}