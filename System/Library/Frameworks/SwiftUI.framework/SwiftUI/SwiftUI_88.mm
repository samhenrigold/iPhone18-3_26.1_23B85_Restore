void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = a1;
  v5 = *a4;
  v6 = &unk_1ED580000;
  v7 = MEMORY[0x1E697FFF0];
  v36 = *a4;
  while (2)
  {
    v8 = (v5 + 16 * a3);
    v9 = *v8;
    v10 = v8[1];
    v35 = a3;
    do
    {
      v49 = v9;
      v41 = a3 - 1;
      v11 = (v5 + 16 * (a3 - 1));
      v12 = v11[1];
      v42 = *v11;
      v43 = a3;
      v40 = v11;
      v13 = v6[454];
      swift_beginAccess();
      outlined init with copy of AccessibilityAttachment?(v10 + v13, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, v7, type metadata accessor for AnyAccessibilityValue?);
      if (__src[35])
      {
        memcpy(__dst, __src, 0x128uLL);
        v14 = v10;
        v15 = v12;
      }

      else
      {
        v16 = v10;
        v39 = v12;
        v17 = v12;
        outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, v7, type metadata accessor for AnyAccessibilityValue?);
        v18 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
        swift_beginAccess();
        v38 = v16;
        v19 = *&v16[v18];
        v20 = *(v19 + 16);
        if (v20)
        {
          v44 = MEMORY[0x1E69E7CC0];

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
          v21 = v44;
          v22 = v19 + 32;
          do
          {
            outlined init with copy of AccessibilityAttachmentStorage(v22, __dst);
            outlined init with copy of AccessibilityAttachment(__dst, __src);
            outlined destroy of AccessibilityAttachmentStorage(__dst);
            v24 = *(v44 + 16);
            v23 = *(v44 + 24);
            if (v24 >= v23 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
            }

            *(v44 + 16) = v24 + 1;
            memcpy((v44 + 296 * v24 + 32), __src, 0x128uLL);
            v22 += 320;
            --v20;
          }

          while (v20);

          v4 = a1;
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
        }

        v25 = *(v21 + 16);
        v7 = MEMORY[0x1E697FFF0];
        if (v25 == 1)
        {
          outlined init with copy of AccessibilityAttachment(v21 + 32, __dst);
        }

        else
        {
          if (v25)
          {
            v29 = v21 + 296 * v25;
            outlined init with copy of AccessibilityAttachment(v29 - 264, __src);

            v30 = v25 - 2;
            v31 = v29 - 560;
            while (v30 < v25 - 1)
            {
              outlined init with copy of AccessibilityAttachment(v31, __dst);
              AccessibilityProperties.merge(with:)(__dst);
              v32 = AccessibilityAttachment.platformElement.getter();
              if (v32)
              {
              }

              else if (AccessibilityAttachment.platformElement.getter())
              {
                AccessibilityAttachment.platformElement.setter();
              }

              outlined destroy of AccessibilityAttachment(__dst);
              --v30;
              v31 -= 296;
              if (v30 == -1)
              {

                memcpy(__dst, __src, 0x128uLL);

                v7 = MEMORY[0x1E697FFF0];
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_56:
            __break(1u);
            return;
          }

          AccessibilityAttachment.init()();
        }

LABEL_18:
        outlined init with copy of AccessibilityAttachment(__dst, __src);
        swift_beginAccess();
        outlined assign with copy of AccessibilityAttachment?(__src, v10 + v13);
        swift_endAccess();
        outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, v7, type metadata accessor for AnyAccessibilityValue?);
        v12 = v39;
        v38[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
        v5 = v36;
        v6 = &unk_1ED580000;
      }

      outlined init with copy of AccessibilityProperties(__dst, __src);
      outlined destroy of AccessibilityAttachment(__dst);
      lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
      AccessibilityProperties.subscript.getter();
      outlined destroy of AccessibilityProperties(__src);
      if (v48 == 255)
      {
        outlined destroy of AccessibilityAttachment?(v47, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
LABEL_24:

        goto LABEL_25;
      }

      outlined init with copy of AccessibilityScrollableContext(v47, __dst);
      if (BYTE6(__dst[8]))
      {
        outlined destroy of AccessibilityScrollableContext(__dst);
        outlined destroy of AccessibilityScrollableContext(v47);
        goto LABEL_24;
      }

      v26 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      outlined destroy of AccessibilityScrollableContext(v47);
      if ((v26 & 0xFF00000000) == 0x200000000)
      {
        goto LABEL_24;
      }

      AccessibilityNode.attachment.getter(__dst);
      outlined init with copy of AccessibilityProperties(__dst, __src);
      outlined destroy of AccessibilityAttachment(__dst);
      AccessibilityProperties.subscript.getter();
      outlined destroy of AccessibilityProperties(__src);
      if (v48 == 255)
      {
        outlined destroy of AccessibilityAttachment?(v47, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);

LABEL_41:
        v4 = a1;
LABEL_25:
        v27 = v43;
        if (v49 >= v42)
        {
          break;
        }

        goto LABEL_26;
      }

      outlined init with copy of AccessibilityScrollableContext(v47, __dst);
      if (BYTE6(__dst[8]))
      {
        outlined destroy of AccessibilityScrollableContext(__dst);
        outlined destroy of AccessibilityScrollableContext(v47);

        goto LABEL_41;
      }

      v33 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      outlined destroy of AccessibilityScrollableContext(v47);

      v4 = a1;
      if ((v33 & 0xFF00000000) == 0x200000000 || v26 != v33)
      {
        goto LABEL_25;
      }

      v27 = v43;
      if ((v26 & 0x100000000) != 0)
      {
        if ((v33 & 0x100000000) == 0)
        {
          goto LABEL_26;
        }
      }

      else if ((v33 & 0x100000000) != 0)
      {
        break;
      }

      if ((v26 & 0x10000000000) != 0)
      {
        if ((v33 & 0x10000000000) == 0)
        {
          break;
        }
      }

      else if ((v33 & 0x10000000000) != 0)
      {
        goto LABEL_26;
      }

      if (v49 >= v42)
      {
        break;
      }

LABEL_26:
      if (!v5)
      {
        goto LABEL_56;
      }

      v28 = (v5 + 16 * v27);
      v9 = *v28;
      v10 = v28[1];
      *v28 = *v40;
      *v40 = v9;
      v40[1] = v10;
      a3 = v41;
    }

    while (v41 != v4);
    a3 = v35 + 1;
    if (v35 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

{
  v8 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      swift_getObjectType();
      v12 = v8;
      v13 = v11;
      v14 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v13);

      if (v14 != -1)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 16 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      [v8 frame];
      v12 = v11;
      [v10 frame];
      v14 = v13;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v12 >= v14)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 16;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *(v6 + 16);
      *(v6 + 16) = *v6;
      *v6 = v15;
      v6 -= 16;
      v8 = v15;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4, __n128 a5)
{
  v6 = v5;
  v7 = a3[1];
  v8 = MEMORY[0x1E69E7CC0];
  if (v7 < 1)
  {
LABEL_203:
    v12 = *a1;
    if (!*a1)
    {
      goto LABEL_244;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_205;
    }

    goto LABEL_235;
  }

  v9 = 0;
  v10 = MEMORY[0x1E697FFF0];
LABEL_4:
  v11 = v9;
  v12 = (v9 + 1);
  v158 = v9;
  if (v9 + 1 >= v7)
  {
    goto LABEL_64;
  }

  v13 = (v9 + 1);
  v14 = *a3 + 16 * v12;
  v15 = *v14;
  v161 = *a3;
  v16 = (*a3 + 16 * v11);
  v18 = *v16;
  v17 = v16[1];
  v165 = v7;
  v19 = *(v14 + 8);
  v20 = v17;
  v21 = v18;
  v11 = v158;
  v163 = specialized static AccessibilityCore.sortedSupplementaryItems(lhs:rhs:)(v15, v19, v21);

  v22 = (v158 + 2);
  v10 = MEMORY[0x1E697FFF0];
  if ((v158 + 2) >= v165)
  {
    goto LABEL_56;
  }

  v12 = v13;
  while (1)
  {
    v23 = (v161 + 16 * v12);
    v12 = v22;
    v24 = (v161 + 16 * v22);
    v25 = v24[1];
    v26 = v23[1];
    v170 = *v23;
    v172 = *v24;
    v27 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
    swift_beginAccess();
    outlined init with copy of AccessibilityAttachment?(v25 + v27, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, v10, type metadata accessor for AnyAccessibilityValue?);
    v174 = v26;
    if (__src[35])
    {
      memcpy(__dst, __src, 0x128uLL);
      v28 = v25;
      v29 = v26;
      goto LABEL_29;
    }

    v167 = v12;
    v155 = v6;
    v159 = v25;
    v30 = v25;
    v31 = v26;
    outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, v10, type metadata accessor for AnyAccessibilityValue?);
    v32 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v151 = v30;
    v33 = *&v30[v32];
    v34 = *(v33 + 16);
    if (v34)
    {
      v177 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
      v6 = v177;
      v35 = v33 + 32;
      do
      {
        outlined init with copy of AccessibilityAttachmentStorage(v35, __dst);
        outlined init with copy of AccessibilityAttachment(__dst, __src);
        outlined destroy of AccessibilityAttachmentStorage(__dst);
        v37 = *(v177 + 16);
        v36 = *(v177 + 24);
        if (v37 >= v36 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        }

        *(v177 + 16) = v37 + 1;
        memcpy((v177 + 296 * v37 + 32), __src, 0x128uLL);
        v35 += 320;
        --v34;
      }

      while (v34);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v38 = *(v6 + 16);
    if (v38 == 1)
    {
      outlined init with copy of AccessibilityAttachment(v6 + 32, __dst);

      v12 = v167;
      goto LABEL_28;
    }

    v12 = v167;
    if (!v38)
    {
      AccessibilityAttachment.init()();

      goto LABEL_28;
    }

    v39 = v6 + 296 * v38;
    outlined init with copy of AccessibilityAttachment(v39 - 264, __src);

    v40 = v38 - 2;
    v41 = v39 - 560;
    do
    {
      if (v40 >= v38 - 1)
      {
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8, a5.n128_f64[0]);
LABEL_205:
        v184 = v8;
        v144 = *(v8 + 2);
        if (v144 >= 2)
        {
          while (*a3)
          {
            v145 = *&v8[16 * v144];
            v146 = *&v8[16 * v144 + 24];
            specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v145), (*a3 + 16 * *&v8[16 * v144 + 16]), (*a3 + 16 * v146), v12);
            if (v6)
            {
              goto LABEL_213;
            }

            if (v146 < v145)
            {
              goto LABEL_230;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8, a5.n128_f64[0]);
            }

            if (v144 - 2 >= *(v8 + 2))
            {
              goto LABEL_231;
            }

            v147 = &v8[16 * v144];
            *v147 = v145;
            *(v147 + 1) = v146;
            v184 = v8;
            specialized Array.remove(at:)(v144 - 1);
            v8 = v184;
            v144 = *(v184 + 2);
            if (v144 <= 1)
            {
              goto LABEL_213;
            }
          }

          goto LABEL_240;
        }

LABEL_213:

        return;
      }

      outlined init with copy of AccessibilityAttachment(v41, __dst);
      AccessibilityProperties.merge(with:)(__dst);
      v42 = AccessibilityAttachment.platformElement.getter();
      if (v42)
      {
      }

      else if (AccessibilityAttachment.platformElement.getter())
      {
        AccessibilityAttachment.platformElement.setter();
      }

      outlined destroy of AccessibilityAttachment(__dst);
      --v40;
      v41 -= 296;
    }

    while (v40 != -1);

    memcpy(__dst, __src, 0x128uLL);

LABEL_28:
    outlined init with copy of AccessibilityAttachment(__dst, __src);
    v25 = v159;
    swift_beginAccess();
    outlined assign with copy of AccessibilityAttachment?(__src, v159 + v27);
    swift_endAccess();
    outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], type metadata accessor for AnyAccessibilityValue?);
    v151[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
    v6 = v155;
    v11 = v158;
LABEL_29:
    outlined init with copy of AccessibilityProperties(__dst, __src);
    outlined destroy of AccessibilityAttachment(__dst);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(__src);
    if (v183 == 255)
    {
      outlined destroy of AccessibilityAttachment?(v182, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);

      v10 = MEMORY[0x1E697FFF0];
      goto LABEL_37;
    }

    outlined init with copy of AccessibilityScrollableContext(v182, __dst);
    if (BYTE6(__dst[8]))
    {
      outlined destroy of AccessibilityScrollableContext(__dst);
      outlined destroy of AccessibilityScrollableContext(v182);
      goto LABEL_36;
    }

    v43 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    outlined destroy of AccessibilityScrollableContext(v182);
    if ((v43 & 0xFF00000000) == 0x200000000)
    {
LABEL_36:

      v10 = MEMORY[0x1E697FFF0];
      goto LABEL_37;
    }

    v168 = v43;
    AccessibilityNode.attachment.getter(__dst);
    outlined init with copy of AccessibilityProperties(__dst, __src);
    outlined destroy of AccessibilityAttachment(__dst);
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(__src);
    if (v183 == 255)
    {
      outlined destroy of AccessibilityAttachment?(v182, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
      goto LABEL_36;
    }

    outlined init with copy of AccessibilityScrollableContext(v182, __dst);
    v10 = MEMORY[0x1E697FFF0];
    if (BYTE6(__dst[8]))
    {
      outlined destroy of AccessibilityScrollableContext(__dst);
      outlined destroy of AccessibilityScrollableContext(v182);

      goto LABEL_37;
    }

    v44 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    outlined destroy of AccessibilityScrollableContext(v182);

    v11 = v158;
    if ((v44 & 0xFF00000000) == 0x200000000 || v168 != v44)
    {
      goto LABEL_37;
    }

    if ((v168 & 0x100000000) == 0)
    {
      break;
    }

    if ((v44 & 0x100000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_48:
    if ((v168 & 0x10000000000) != 0)
    {
      if ((v44 & 0x10000000000) == 0)
      {
        goto LABEL_53;
      }
    }

    else if ((v44 & 0x10000000000) != 0)
    {
LABEL_50:
      if (!v163)
      {
        goto LABEL_64;
      }

      goto LABEL_38;
    }

LABEL_37:
    if ((v163 ^ (v172 < v170)))
    {
      v22 = v12;
LABEL_56:
      v12 = v22;
      if (v163)
      {
        goto LABEL_57;
      }

LABEL_64:
      v54 = a3[1];
      if (v12 >= v54)
      {
        goto LABEL_72;
      }

      if (__OFSUB__(v12, v11))
      {
        goto LABEL_234;
      }

      if (v12 - v11 >= a4)
      {
LABEL_72:
        if (v12 < v11)
        {
          goto LABEL_233;
        }

        goto LABEL_73;
      }

      if (__OFADD__(v11, a4))
      {
        __break(1u);
LABEL_237:
        __break(1u);
        goto LABEL_238;
      }

      if (v11 + a4 < v54)
      {
        v54 = v11 + a4;
      }

      if (v54 < v11)
      {
        goto LABEL_237;
      }

      if (v12 == v54)
      {
        goto LABEL_72;
      }

      v101 = v11;
      v148 = v54;
      v102 = *a3;
      v149 = *a3;
      do
      {
        v103 = (v102 + 16 * v12);
        v104 = *v103;
        v105 = v103[1];
        v106 = v12;
        v169 = v12;
        while (1)
        {
          v171 = v106;
          v162 = (v106 - 1);
          v107 = (v102 + 16 * (v106 - 1));
          v108 = v107->n128_u64[1];
          v164 = v107->n128_u64[0];
          v166 = v104;
          v160 = v107;
          v12 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
          v109 = v105;
          swift_beginAccess();
          outlined init with copy of AccessibilityAttachment?(v12 + v109, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, v10, type metadata accessor for AnyAccessibilityValue?);
          v173 = v108;
          v175 = v109;
          if (__src[35])
          {
            memcpy(__dst, __src, 0x128uLL);
            v110 = v109;
            v111 = v108;
            goto LABEL_139;
          }

          v156 = v6;
          v112 = v109;
          v113 = v108;
          outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, v10, type metadata accessor for AnyAccessibilityValue?);
          v114 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
          swift_beginAccess();
          v152 = v112;
          v115 = *&v112[v114];
          v116 = *(v115 + 16);
          if (v116)
          {
            v178 = MEMORY[0x1E69E7CC0];

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v116, 0);
            v117 = v178;
            v118 = v115 + 32;
            do
            {
              outlined init with copy of AccessibilityAttachmentStorage(v118, __dst);
              outlined init with copy of AccessibilityAttachment(__dst, __src);
              outlined destroy of AccessibilityAttachmentStorage(__dst);
              v120 = *(v178 + 16);
              v119 = *(v178 + 24);
              if (v120 >= v119 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1);
              }

              *(v178 + 16) = v120 + 1;
              memcpy((v178 + 296 * v120 + 32), __src, 0x128uLL);
              v118 += 320;
              --v116;
            }

            while (v116);
          }

          else
          {
            v117 = MEMORY[0x1E69E7CC0];
          }

          v121 = *(v117 + 16);
          v6 = v156;
          if (v121 == 1)
          {
            outlined init with copy of AccessibilityAttachment(v117 + 32, __dst);
          }

          else
          {
            if (v121)
            {
              v127 = v117 + 296 * v121;
              outlined init with copy of AccessibilityAttachment(v127 - 264, __src);

              v128 = v121 - 2;
              v129 = v127 - 560;
              do
              {
                if (v128 >= v121 - 1)
                {
                  goto LABEL_215;
                }

                outlined init with copy of AccessibilityAttachment(v129, __dst);
                AccessibilityProperties.merge(with:)(__dst);
                v130 = AccessibilityAttachment.platformElement.getter();
                if (v130)
                {
                }

                else if (AccessibilityAttachment.platformElement.getter())
                {
                  AccessibilityAttachment.platformElement.setter();
                }

                outlined destroy of AccessibilityAttachment(__dst);
                --v128;
                v129 -= 296;
              }

              while (v128 != -1);

              memcpy(__dst, __src, 0x128uLL);

              goto LABEL_138;
            }

            AccessibilityAttachment.init()();
          }

LABEL_138:
          outlined init with copy of AccessibilityAttachment(__dst, __src);
          swift_beginAccess();
          outlined assign with copy of AccessibilityAttachment?(__src, v12 + v175);
          swift_endAccess();
          v10 = MEMORY[0x1E697FFF0];
          outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], type metadata accessor for AnyAccessibilityValue?);
          v152[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
          v101 = v158;
          v102 = v149;
LABEL_139:
          outlined init with copy of AccessibilityProperties(__dst, __src);
          outlined destroy of AccessibilityAttachment(__dst);
          lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
          AccessibilityProperties.subscript.getter();
          outlined destroy of AccessibilityProperties(__src);
          v122 = v169;
          if (v183 == 255)
          {
            goto LABEL_140;
          }

          outlined init with copy of AccessibilityScrollableContext(v182, __dst);
          if (BYTE6(__dst[8]))
          {
            outlined destroy of AccessibilityScrollableContext(__dst);
            outlined destroy of AccessibilityScrollableContext(v182);
LABEL_144:

LABEL_145:
            v124 = v171;
            v125 = v166;
LABEL_146:
            if (v125 >= v164)
            {
              goto LABEL_200;
            }

LABEL_147:
            if (!v102)
            {
              goto LABEL_242;
            }

            goto LABEL_148;
          }

          v123 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
          __swift_destroy_boxed_opaque_existential_1(__dst);
          outlined destroy of AccessibilityScrollableContext(v182);
          if ((v123 & 0xFF00000000) == 0x200000000)
          {
            goto LABEL_144;
          }

          v153 = v123;
          v131 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
          swift_beginAccess();
          outlined init with copy of AccessibilityAttachment?(&v173[v131], __src, &lazy cache variable for type metadata for AccessibilityAttachment?, v10, type metadata accessor for AnyAccessibilityValue?);
          if (__src[35])
          {
            memcpy(__dst, __src, 0x128uLL);
            goto LABEL_173;
          }

          v157 = v6;
          outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, v10, type metadata accessor for AnyAccessibilityValue?);
          v132 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
          swift_beginAccess();
          v133 = *&v173[v132];
          v134 = *(v133 + 16);
          if (v134)
          {
            v179 = MEMORY[0x1E69E7CC0];

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v134, 0);
            v135 = v179;
            v136 = v133 + 32;
            do
            {
              outlined init with copy of AccessibilityAttachmentStorage(v136, __dst);
              outlined init with copy of AccessibilityAttachment(__dst, __src);
              outlined destroy of AccessibilityAttachmentStorage(__dst);
              v138 = *(v179 + 16);
              v137 = *(v179 + 24);
              if (v138 >= v137 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1);
              }

              *(v179 + 16) = v138 + 1;
              memcpy((v179 + 296 * v138 + 32), __src, 0x128uLL);
              v136 += 320;
              --v134;
            }

            while (v134);
          }

          else
          {
            v135 = MEMORY[0x1E69E7CC0];
          }

          v139 = *(v135 + 16);
          v12 = (v139 - 1);
          v6 = v157;
          if (v139 == 1)
          {
            outlined init with copy of AccessibilityAttachment(v135 + 32, __dst);
          }

          else
          {
            if (v139)
            {
              v141 = v135 + 296 * v139;
              outlined init with copy of AccessibilityAttachment(v141 - 264, __src);

              v6 = v139 - 2;
              v142 = v141 - 560;
              do
              {
                if (v6 >= v12)
                {
                  goto LABEL_216;
                }

                outlined init with copy of AccessibilityAttachment(v142, __dst);
                AccessibilityProperties.merge(with:)(__dst);
                v143 = AccessibilityAttachment.platformElement.getter();
                if (v143)
                {
                }

                else if (AccessibilityAttachment.platformElement.getter())
                {
                  AccessibilityAttachment.platformElement.setter();
                }

                outlined destroy of AccessibilityAttachment(__dst);
                --v6;
                v142 -= 296;
              }

              while (v6 != -1);

              memcpy(__dst, __src, 0x128uLL);

              v6 = v157;
              goto LABEL_172;
            }

            AccessibilityAttachment.init()();
          }

LABEL_172:
          outlined init with copy of AccessibilityAttachment(__dst, __src);
          swift_beginAccess();
          outlined assign with copy of AccessibilityAttachment?(__src, &v173[v131]);
          swift_endAccess();
          v10 = MEMORY[0x1E697FFF0];
          outlined destroy of AccessibilityAttachment?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], type metadata accessor for AnyAccessibilityValue?);
          v173[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
          v122 = v169;
LABEL_173:
          v101 = v158;
          outlined init with copy of AccessibilityProperties(__dst, __src);
          outlined destroy of AccessibilityAttachment(__dst);
          AccessibilityProperties.subscript.getter();
          outlined destroy of AccessibilityProperties(__src);
          v102 = v149;
          if (v183 == 255)
          {
LABEL_140:
            outlined destroy of AccessibilityAttachment?(v182, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
            goto LABEL_144;
          }

          outlined init with copy of AccessibilityScrollableContext(v182, __dst);
          if (BYTE6(__dst[8]))
          {
            outlined destroy of AccessibilityScrollableContext(__dst);
            outlined destroy of AccessibilityScrollableContext(v182);

            goto LABEL_145;
          }

          v140 = LODWORD(__dst[8]) | (WORD2(__dst[8]) << 32);
          __swift_destroy_boxed_opaque_existential_1(__dst);
          outlined destroy of AccessibilityScrollableContext(v182);

          if ((v140 & 0xFF00000000) == 0x200000000)
          {
            v102 = v149;
            goto LABEL_145;
          }

          v124 = v171;
          v125 = v166;
          if (v153 != v140)
          {
            v102 = v149;
            goto LABEL_146;
          }

          if ((v153 & 0x100000000) != 0)
          {
            if ((v140 & 0x100000000) == 0)
            {
              goto LABEL_194;
            }
          }

          else if ((v140 & 0x100000000) != 0)
          {
            goto LABEL_199;
          }

          if ((v153 & 0x10000000000) != 0)
          {
            break;
          }

          if ((v140 & 0x10000000000) == 0)
          {
            goto LABEL_197;
          }

LABEL_194:
          v102 = v149;
          if (!v149)
          {
            goto LABEL_242;
          }

LABEL_148:
          v126 = (v102 + 16 * v124);
          v104 = *v126;
          v105 = v126[1];
          a5 = *v160;
          *v126 = *v160;
          v160->n128_u64[0] = v104;
          v160->n128_u64[1] = v105;
          v106 = v162;
          if (v162 == v101)
          {
            goto LABEL_200;
          }
        }

        if ((v140 & 0x10000000000) != 0)
        {
LABEL_197:
          v102 = v149;
          if (v166 >= v164)
          {
            goto LABEL_200;
          }

          goto LABEL_147;
        }

LABEL_199:
        v102 = v149;
LABEL_200:
        v12 = (v122 + 1);
      }

      while (v12 != v148);
      v12 = v148;
      v11 = v101;
      if (v148 < v101)
      {
        goto LABEL_233;
      }

LABEL_73:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v56 = *(v8 + 2);
      v55 = *(v8 + 3);
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v8);
      }

      *(v8 + 2) = v57;
      v58 = &v8[16 * v56];
      *(v58 + 4) = v11;
      *(v58 + 5) = v12;
      v9 = v12;
      v12 = *a1;
      if (!*a1)
      {
        goto LABEL_243;
      }

      if (v56)
      {
        while (2)
        {
          v59 = v57 - 1;
          if (v57 >= 4)
          {
            v64 = &v8[16 * v57 + 32];
            v65 = *(v64 - 64);
            v66 = *(v64 - 56);
            v70 = __OFSUB__(v66, v65);
            v67 = v66 - v65;
            if (v70)
            {
              goto LABEL_220;
            }

            v69 = *(v64 - 48);
            v68 = *(v64 - 40);
            v70 = __OFSUB__(v68, v69);
            v62 = v68 - v69;
            v63 = v70;
            if (v70)
            {
              goto LABEL_221;
            }

            v71 = &v8[16 * v57];
            v73 = *v71;
            v72 = *(v71 + 1);
            v70 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v70)
            {
              goto LABEL_223;
            }

            v70 = __OFADD__(v62, v74);
            v75 = v62 + v74;
            if (v70)
            {
              goto LABEL_226;
            }

            if (v75 >= v67)
            {
              v93 = &v8[16 * v59 + 32];
              v95 = *v93;
              v94 = *(v93 + 1);
              v70 = __OFSUB__(v94, v95);
              v96 = v94 - v95;
              if (v70)
              {
                goto LABEL_232;
              }

              if (v62 < v96)
              {
                v59 = v57 - 2;
              }
            }

            else
            {
LABEL_92:
              if (v63)
              {
                goto LABEL_222;
              }

              v76 = &v8[16 * v57];
              v78 = *v76;
              v77 = *(v76 + 1);
              v79 = __OFSUB__(v77, v78);
              v80 = v77 - v78;
              v81 = v79;
              if (v79)
              {
                goto LABEL_225;
              }

              v82 = &v8[16 * v59 + 32];
              v84 = *v82;
              v83 = *(v82 + 1);
              v70 = __OFSUB__(v83, v84);
              v85 = v83 - v84;
              if (v70)
              {
                goto LABEL_228;
              }

              if (__OFADD__(v80, v85))
              {
                goto LABEL_229;
              }

              if (v80 + v85 < v62)
              {
                goto LABEL_106;
              }

              if (v62 < v85)
              {
                v59 = v57 - 2;
              }
            }
          }

          else
          {
            if (v57 == 3)
            {
              v60 = *(v8 + 4);
              v61 = *(v8 + 5);
              v70 = __OFSUB__(v61, v60);
              v62 = v61 - v60;
              v63 = v70;
              goto LABEL_92;
            }

            v86 = &v8[16 * v57];
            v88 = *v86;
            v87 = *(v86 + 1);
            v70 = __OFSUB__(v87, v88);
            v80 = v87 - v88;
            v81 = v70;
LABEL_106:
            if (v81)
            {
              goto LABEL_224;
            }

            v89 = &v8[16 * v59];
            v91 = *(v89 + 4);
            v90 = *(v89 + 5);
            v70 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v70)
            {
              goto LABEL_227;
            }

            if (v92 < v80)
            {
              break;
            }
          }

          v97 = v59 - 1;
          if (v59 - 1 >= v57)
          {
            goto LABEL_217;
          }

          if (!*a3)
          {
            goto LABEL_239;
          }

          v98 = *&v8[16 * v97 + 32];
          v99 = *&v8[16 * v59 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v98), (*a3 + 16 * *&v8[16 * v59 + 32]), (*a3 + 16 * v99), v12);
          if (v6)
          {
            goto LABEL_213;
          }

          if (v99 < v98)
          {
            goto LABEL_218;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8, a5.n128_f64[0]);
          }

          if (v97 >= *(v8 + 2))
          {
            goto LABEL_219;
          }

          v100 = &v8[16 * v97];
          *(v100 + 4) = v98;
          *(v100 + 5) = v99;
          v184 = v8;
          specialized Array.remove(at:)(v59);
          v8 = v184;
          v57 = *(v184 + 2);
          if (v57 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      v10 = MEMORY[0x1E697FFF0];
      if (v9 >= v7)
      {
        goto LABEL_203;
      }

      goto LABEL_4;
    }

LABEL_38:
    v22 = (v12 + 1);
    if ((v12 + 1) == v165)
    {
      v22 = v165;
      goto LABEL_56;
    }
  }

  if ((v44 & 0x100000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_53:
  if (!v163)
  {
    goto LABEL_38;
  }

LABEL_57:
  if (v12 >= v11)
  {
    if (v11 < v12)
    {
      v45 = 0;
      v46 = 16 * v12;
      v47 = 16 * v11;
      v48 = v11;
      while (1)
      {
        if (v48 != (v12 + v45 - 1))
        {
          v49 = *a3;
          if (!*a3)
          {
            goto LABEL_241;
          }

          v50 = (v49 + v47);
          v51 = v49 + v46;
          v52 = v50->n128_u64[0];
          v53 = v50->n128_i64[1];
          a5 = *(v51 - 16);
          *v50 = a5;
          *(v51 - 16) = v52;
          *(v51 - 8) = v53;
        }

        v48 = (v48 + 1);
        --v45;
        v46 -= 16;
        v47 += 16;
        if (v48 >= (v12 + v45))
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *__dst, id *__src, char *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - __src;
  v11 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[2 * v9] <= a4)
    {
      memmove(a4, __dst, 16 * v9);
    }

    v33 = &v13[2 * v9];
    if (v7 < 16)
    {
LABEL_10:
      v5 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v16 = *v5;
      v18 = *v13;
      v17 = v13[1];
      v19 = v5[1];
      v20 = v17;
      LOBYTE(v16) = specialized static AccessibilityCore.sortedSupplementaryItems(lhs:rhs:)(v16, v19, v18);

      if (v16)
      {
        break;
      }

      v14 = v13;
      v15 = v6 == v13;
      v13 += 2;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 2;
      if (v13 >= v33)
      {
        goto LABEL_10;
      }
    }

    v14 = v5;
    v15 = v6 == v5;
    v5 += 2;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v14;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v12] <= a4)
  {
    v21 = a4;
    memmove(a4, __src, 16 * v12);
    a4 = v21;
  }

  v32 = a4;
  v33 = &a4[2 * v12];
  if (v10 < 16)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4;
    if (v5 > v6)
    {
LABEL_24:
      v31 = v5 - 2;
      v4 -= 16;
      v22 = v33;
      do
      {
        v23 = (v4 + 16);
        v25 = *(v22 - 2);
        v24 = *(v22 - 1);
        v22 -= 2;
        v26 = *(v5 - 2);
        v27 = *(v5 - 1);
        v28 = v24;
        v29 = v27;
        LOBYTE(v25) = specialized static AccessibilityCore.sortedSupplementaryItems(lhs:rhs:)(v25, v28, v26);

        if (v25)
        {
          if (v23 != v5)
          {
            *v4 = *v31;
          }

          v13 = v32;
          if (v33 <= v32 || (v5 -= 2, v31 <= v6))
          {
            v5 = v31;
            goto LABEL_36;
          }

          goto LABEL_24;
        }

        if (v23 != v33)
        {
          *v4 = *v22;
        }

        v4 -= 16;
        v33 = v22;
        v13 = v32;
      }

      while (v22 > v32);
      v33 = v22;
    }
  }

LABEL_36:
  if (v5 != v13 || v5 >= (v13 + ((v33 - v13 + (v33 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v5, v13, 16 * ((v33 - v13) / 16));
  }

  return 1;
}

BOOL specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4, char *a5, void *a6)
{
  v94 = *a5;
  v95 = *a3;
  v10 = *a6;
  v11 = *(*a6 + 16);
  if (v11 && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v13 & 1) != 0))
  {
    v14 = *(v10 + 56) + 96 * v12;
    v15 = *v14;
    v106 = *(v14 + 9);
    v119 = *(v14 + 10);
    v120 = *(v14 + 14);
    v107 = *(v14 + 16);
    v108 = *(v14 + 24);
    v109 = *(v14 + 32);
    v110 = *(v14 + 40);
    v16 = *(v14 + 48);
    *&v118[3] = *(v14 + 52);
    *v118 = *(v14 + 49);
    v17 = *(v14 + 8);
    v18 = *(v14 + 64);
    v99 = *(v14 + 56);
    v20 = *(v14 + 72);
    v19 = *(v14 + 80);
    v21 = *(v14 + 88);
    v121 = v17;
    v97 = v21;
    v98 = v16;
  }

  else
  {
    v17 = 1;
    LOBYTE(v152) = 1;
    LOBYTE(v140) = 1;
    LOBYTE(v138[0]) = 1;
    v15 = 0.0;
    v109 = 0.0;
    v110 = 0.0;
    v121 = 1;
    v106 = 2;
    v16 = 1;
    v107 = 0.0;
    v108 = 0.0;
    v97 = 1;
    v98 = 1;
    v19 = 0.0;
    v20 = 0.0;
    v18 = 0.0;
    v99 = 0.0;
    v21 = 1;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v23)
  {
    v100 = v18;
    v101 = v20;
    v102 = v19;
    v24 = *(v10 + 56) + 96 * v22;
    v25 = *v24;
    v103 = *(v24 + 9);
    v115 = *(v24 + 10);
    v116 = *(v24 + 14);
    v104 = *(v24 + 16);
    v105 = *(v24 + 24);
    v27 = *(v24 + 32);
    v26 = *(v24 + 40);
    v111 = *(v24 + 48);
    *&v114[3] = *(v24 + 52);
    *v114 = *(v24 + 49);
    v28 = *(v24 + 8);
    v30 = *(v24 + 56);
    v29 = *(v24 + 64);
    v32 = *(v24 + 72);
    v31 = *(v24 + 80);
    v33 = *(v24 + 88);
    v117 = v28;
    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_8:
  v100 = v18;
  v101 = v20;
  v102 = v19;
  v28 = 1;
  LOBYTE(v152) = 1;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  LOBYTE(v140) = 1;
  LOBYTE(v138[0]) = 1;
  v117 = 1;
  v103 = 2;
  v111 = 1;
  v104 = 0.0;
  v105 = 0.0;
  v33 = 1;
  v31 = 0.0;
  v32 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  AccessibilityNode.sortPriority.getter();
  if (v35)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v34;
  }

  v121 = 0;
LABEL_13:
  if (v28)
  {
    AccessibilityNode.sortPriority.getter();
    if (v37)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v36;
    }

    v117 = 0;
  }

  v38 = v33;
  if (v15 != v25)
  {
    *&v152 = v15;
    v41 = v25 < v15;
    BYTE8(v152) = v121;
    BYTE9(v152) = v106;
    *(&v152 + 10) = v119;
    HIWORD(v152) = v120;
    v153 = v107;
    v154 = v108;
    v155 = v109;
    v156 = v110;
    v157 = v98;
    *v158 = *v118;
    *&v158[3] = *&v118[3];
    v159 = v99;
    v160 = v100;
    v161 = v101;
    v162 = v102;
    v163 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, a1, isUniquelyReferenced_nonNull_native);
    *a6 = v140;
    *&v140 = v25;
    BYTE8(v140) = v117;
    BYTE9(v140) = v103;
    *(&v140 + 10) = v115;
    HIWORD(v140) = v116;
    v141 = v104;
    v142 = v105;
    v143 = v27;
    v144 = v26;
    v145 = v111;
    *v146 = *v114;
    *&v146[3] = *&v114[3];
    v147 = v30;
    v148 = v29;
    v149 = v32;
    v150 = v31;
LABEL_56:
    v151 = v33;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v138[0] = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v140, a2, v78);
    goto LABEL_57;
  }

  if (a4)
  {
LABEL_20:
    *&v152 = v15;
    BYTE8(v152) = v121;
    BYTE9(v152) = v106;
    *(&v152 + 10) = v119;
    HIWORD(v152) = v120;
    v153 = v107;
    v154 = v108;
    v155 = v109;
    v156 = v110;
    v157 = v98;
    *v158 = *v118;
    *&v158[3] = *&v118[3];
    v159 = v99;
    v160 = v100;
    v161 = v101;
    v162 = v102;
    v163 = v21;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, a1, v39);
    *a6 = v140;
    *&v140 = v25;
    BYTE8(v140) = v117;
    BYTE9(v140) = v103;
    *(&v140 + 10) = v115;
    HIWORD(v140) = v116;
    v141 = v104;
    v142 = v105;
    v143 = v27;
    v144 = v26;
    v145 = v111;
    *v146 = *v114;
    *&v146[3] = *&v114[3];
    v147 = v30;
    v148 = v29;
    v149 = v32;
    v150 = v31;
    v151 = v33;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v138[0] = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v140, a2, v40);
    v41 = 0;
LABEL_57:
    v79 = v138[0];
LABEL_58:
    *a6 = v79;
    return v41;
  }

  if (v16)
  {
    AccessibilityNode.globalFrame.getter(v122);
    v107 = *v122;
    v108 = *&v122[1];
    v109 = *&v122[2];
    v110 = *&v122[3];
    v43 = v123;
    v98 = v123;
    if ((v111 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v43 = 0;
    if ((v111 & 1) == 0)
    {
LABEL_24:
      v44 = 0;
      if ((v43 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  AccessibilityNode.globalFrame.getter(v124);
  v104 = *v124;
  v105 = *&v124[1];
  v27 = *&v124[2];
  v26 = *&v124[3];
  v44 = v125;
  v111 = v125;
  if ((v43 & 1) == 0)
  {
LABEL_25:
    v92 = v27;
    v93 = v26;
    v45 = v44 ^ 1;
    v46 = v107;
    v47 = v108;
    v49 = v109;
    v48 = v110;
    if (v44)
    {
      goto LABEL_26;
    }

LABEL_36:
    v87 = v30;
    v88 = v31;
    v89 = v29;
    v90 = v32;
    v51 = v104;
    v52 = v105;
    v32 = v92;
    v31 = v93;
    goto LABEL_38;
  }

LABEL_31:
  if (v97)
  {
    LOBYTE(v152) = v94;
    AccessibilityNode.contentFrame(with:)(&v152, &v126);
    v21 = v130;
    v101 = v128;
    v102 = v129;
    v99 = v126;
    v100 = v127;
    if (v130)
    {
      goto LABEL_20;
    }

    v92 = v27;
    v93 = v26;
    v45 = 0;
    v46 = v126;
    v47 = v127;
    v49 = v128;
    v48 = v129;
    v97 = v130;
    if (!v44)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v92 = v27;
    v93 = v26;
    v45 = 0;
    v97 = 0;
    v46 = v99;
    v47 = v100;
    v49 = v101;
    v48 = v102;
    if (!v44)
    {
      goto LABEL_36;
    }
  }

LABEL_26:
  if ((v33 & 1) == 0)
  {
    v38 = 0;
    v87 = v30;
    v88 = v31;
    v51 = v30;
    v89 = v29;
    v90 = v32;
    v52 = v29;
LABEL_38:
    v50 = v95;
    if (v95 != 2)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  v84 = v48;
  v85 = v46;
  LOBYTE(v152) = v94;
  AccessibilityNode.contentFrame(with:)(&v152, &v131);
  v30 = v131;
  v29 = v132;
  v32 = v133;
  v31 = v134;
  v33 = v135;
  v50 = v95;
  if (v135)
  {
    v27 = v92;
    v26 = v93;
    goto LABEL_20;
  }

  v87 = v131;
  v88 = v134;
  v51 = v131;
  v89 = v132;
  v90 = v133;
  v52 = v132;
  v38 = v135;
  v48 = v84;
  v46 = v85;
  if (v95 == 2)
  {
LABEL_39:
    v96 = v51;
    v86 = v15;
    if (v106 == 2)
    {
      v152 = *(a1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
      v53 = v25;
      v54 = v49;
      v55 = v47;
      v56 = v46;
      v57 = v48;
      EnvironmentValues.layoutDirection.getter();
      v51 = v96;
      v48 = v57;
      v46 = v56;
      v47 = v55;
      v49 = v54;
      v25 = v53;
      v15 = v86;
      LOBYTE(v106) = v140;
    }

    v58 = v103;
    if (v103 == 2)
    {
      v152 = *(a2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
      v59 = v25;
      v60 = v49;
      v61 = v47;
      v62 = v46;
      v63 = v48;
      EnvironmentValues.layoutDirection.getter();
      v51 = v96;
      v48 = v63;
      v46 = v62;
      v47 = v61;
      v49 = v60;
      v25 = v59;
      v15 = v86;
      v58 = v140;
    }

    LOBYTE(v103) = v58;
    if ((v58 ^ v106))
    {
      v50 = 2;
    }

    else
    {
      v50 = v106;
    }
  }

LABEL_46:
  v64 = v50;
  LOBYTE(v152) = v50;
  v65 = CGRect.compare(to:layoutDirection:)(&v152, v51, v52, v32, v31, v46, v47, v49, v48);
  if (v65 != 2)
  {
    v41 = v65;
    *&v152 = v15;
    BYTE8(v152) = v121;
    BYTE9(v152) = v106;
    *(&v152 + 10) = v119;
    HIWORD(v152) = v120;
    v153 = v107;
    v154 = v108;
    v155 = v109;
    v156 = v110;
    v157 = v98;
    *v158 = *v118;
    *&v158[3] = *&v118[3];
    v159 = v99;
    v160 = v100;
    v161 = v101;
    v162 = v102;
    v163 = v21;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, a1, v77);
    *a6 = v140;
    *&v140 = v25;
    BYTE8(v140) = v117;
    BYTE9(v140) = v103;
    *(&v140 + 10) = v115;
    HIWORD(v140) = v116;
    v141 = v104;
    v142 = v105;
    v143 = v92;
    v144 = v93;
    v145 = v111;
    *v146 = *v114;
    *&v146[3] = *&v114[3];
    v147 = v87;
    v148 = v89;
    v149 = v90;
    v150 = v88;
    goto LABEL_56;
  }

  v66 = v87;
  v67 = v88;
  v68 = v90;
  v70 = v100;
  v69 = v101;
  v71 = v99;
  if (!v45)
  {
    goto LABEL_52;
  }

  if (v97)
  {
    LOBYTE(v152) = v94;
    v72 = v90;
    v73 = v87;
    AccessibilityNode.contentFrame(with:)(&v152, v136);
    v68 = v90;
    v71 = *v136;
    v70 = *&v136[1];
    v69 = *&v136[2];
    v102 = *&v136[3];
    v66 = v87;
    v21 = v137;
    if (v137)
    {
      goto LABEL_53;
    }
  }

  if (v38)
  {
    LOBYTE(v152) = v94;
    AccessibilityNode.contentFrame(with:)(&v152, v138);
    v66 = *v138;
    v89 = *&v138[1];
    v68 = *&v138[2];
    v67 = *&v138[3];
    v33 = v139;
    if (v139)
    {
LABEL_52:
      v73 = v66;
      v72 = v68;
LABEL_53:
      v74 = v103;
      goto LABEL_54;
    }
  }

  LOBYTE(v152) = v64;
  v73 = v66;
  v91 = v68;
  v81 = CGRect.compare(to:layoutDirection:)(&v152, v66, v89, v68, v67, v71, v70, v69, v102);
  if (v81 != 2)
  {
    v41 = v81;
    *&v152 = v15;
    BYTE8(v152) = v121;
    BYTE9(v152) = v106;
    *(&v152 + 10) = v119;
    HIWORD(v152) = v120;
    v153 = v107;
    v154 = v108;
    v155 = v109;
    v156 = v110;
    v157 = v98;
    *v158 = *v118;
    *&v158[3] = *&v118[3];
    v159 = v71;
    v160 = v70;
    v161 = v69;
    v162 = v102;
    v163 = v21;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, a1, v82);
    *a6 = v140;
    *&v140 = v25;
    BYTE8(v140) = v117;
    BYTE9(v140) = v103;
    *(&v140 + 10) = v115;
    HIWORD(v140) = v116;
    v141 = v104;
    v142 = v105;
    v143 = v92;
    v144 = v93;
    v145 = v111;
    *v146 = *v114;
    *&v146[3] = *&v114[3];
    v147 = v73;
    v148 = v89;
    v149 = v91;
    v150 = v67;
    v151 = v33;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v140, a2, v83);
    v79 = v113;
    goto LABEL_58;
  }

  v72 = v91;
  v74 = v103;
LABEL_54:
  *&v152 = v15;
  BYTE8(v152) = v121;
  BYTE9(v152) = v106;
  *(&v152 + 10) = v119;
  HIWORD(v152) = v120;
  v153 = v107;
  v154 = v108;
  v155 = v109;
  v156 = v110;
  v157 = v98;
  *v158 = *v118;
  *&v158[3] = *&v118[3];
  v159 = v71;
  v160 = v70;
  v161 = v69;
  v162 = v102;
  v163 = v21;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *&v140 = *a6;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, a1, v75);
  *a6 = v140;
  *&v140 = v25;
  BYTE8(v140) = v117;
  BYTE9(v140) = v74;
  *(&v140 + 10) = v115;
  HIWORD(v140) = v116;
  v141 = v104;
  v142 = v105;
  v143 = v92;
  v144 = v93;
  v145 = v111;
  *v146 = *v114;
  *&v146[3] = *&v114[3];
  v147 = v73;
  v148 = v89;
  v149 = v72;
  v150 = v67;
  v151 = v33;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *a6;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v140, a2, v76);
  *a6 = v112;
  return 1;
}

void type metadata accessor for (offset: Int, element: AccessibilityNode)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: AccessibilityNode))
  {
    type metadata accessor for AccessibilityNode();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: AccessibilityNode));
    }
  }
}

BOOL specialized static AccessibilityCore.sortedSupplementaryItems(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AccessibilityNode.attachment.getter(v8);
  outlined init with copy of AccessibilityProperties(v8, v12);
  outlined destroy of AccessibilityAttachment(v8);
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v12);
  if (v14 == 255)
  {
LABEL_2:
    outlined destroy of AccessibilityAttachment?(v13, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
    return a1 < a3;
  }

  outlined init with copy of AccessibilityScrollableContext(v13, v8);
  if (v11)
  {
    goto LABEL_4;
  }

  v5 = v9 | (v10 << 32);
  __swift_destroy_boxed_opaque_existential_1(v8);
  outlined destroy of AccessibilityScrollableContext(v13);
  if ((v5 & 0xFF00000000) == 0x200000000)
  {
    return a1 < a3;
  }

  AccessibilityNode.attachment.getter(v8);
  outlined init with copy of AccessibilityProperties(v8, v12);
  outlined destroy of AccessibilityAttachment(v8);
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v12);
  if (v14 == 255)
  {
    goto LABEL_2;
  }

  outlined init with copy of AccessibilityScrollableContext(v13, v8);
  if (v11)
  {
LABEL_4:
    outlined destroy of AccessibilityScrollableContext(v8);
    outlined destroy of AccessibilityScrollableContext(v13);
    return a1 < a3;
  }

  v7 = v9 | (v10 << 32);
  __swift_destroy_boxed_opaque_existential_1(v8);
  outlined destroy of AccessibilityScrollableContext(v13);
  if ((v7 & 0xFF00000000) == 0x200000000 || v5 != v7)
  {
    return a1 < a3;
  }

  if ((v5 & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0)
    {
      return 1;
    }

    goto LABEL_15;
  }

  if ((v7 & 0x100000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000000000) != 0)
    {
      if ((v7 & 0x10000000000) != 0)
      {
        return a1 < a3;
      }

      return 0;
    }

    if ((v7 & 0x10000000000) == 0)
    {
      return a1 < a3;
    }

    return 1;
  }

  return 0;
}

uint64_t outlined init with copy of AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimationTimelineSchedule.Entries(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnimationTimelineSchedule.Entries(uint64_t a1)
{
  v2 = type metadata accessor for AnimationTimelineSchedule.Entries(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilitySortCache(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilitySortCache(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t outlined init with copy of AccessibilityAttachment?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (offset: Int, element: Subview)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: Subview))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: Subview));
    }
  }
}

void type metadata accessor for EnumeratedSequence<SubviewsCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
    v7 = a3(a1, MEMORY[0x1E697F4E8], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 120 * a1;
    v9 = *(v8 + 112);
    v10 = v7 - 1;
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v9;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = *(v8 + 144);
    v11 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v11;
    v12 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v12;
    result = memmove((v8 + 32), (v8 + 152), 120 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

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
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3, v5);
    v3 = result;
  }

  v6 = *(v3 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 - 1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * (v6 - 1 - a1));
    *(v3 + 16) = v7;
    *v1 = v3;
    return v9;
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

unint64_t specialized RangeReplaceableCollection<>.popLast()()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = specialized Array._customRemoveLast()();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = __CocoaSet.count.getter();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return specialized Array.remove(at:)(result, specialized _ArrayBuffer._consumeAndCreateNew());
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return specialized Array.remove(at:)(result, specialized _ArrayBuffer._consumeAndCreateNew());
      }
    }

    __break(1u);
    return result;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t DictionaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = *(v3 + 32);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v48 = v5;
  v53 = *(v3 + 64);
  v7 = *(v3 + 80);
  v6 = *(v3 + 88);
  v49 = *(v3 + 24);
  v8 = *(v3 + 104);
  v44 = *(v3 + 96);
  v45 = *(v3 + 72);
  v10 = *(v3 + 112);
  v9 = *(v3 + 120);
  v59 = *(v3 + 128);
  v11 = *(v3 + 40);
  v46 = v11;
  type metadata accessor for __DictionaryEncoder();
  v12 = swift_allocObject();
  *(v12 + 32) = v54;
  *(v12 + 40) = v11;
  *(v12 + 48) = v4;
  *(v12 + 56) = v5;
  v13 = v45;
  *(v12 + 64) = v53;
  *(v12 + 72) = v45;
  *(v12 + 80) = v7;
  *(v12 + 88) = v6;
  *(v12 + 96) = v44;
  *(v12 + 104) = v8;
  *(v12 + 112) = v10;
  *(v12 + 120) = v9;
  v14 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = v49;
  *(v12 + 128) = v59;
  *(v12 + 136) = v14;
  v57 = a2;
  v58 = a3;
  v15 = __swift_allocate_boxed_opaque_existential_1(&v55);
  v16 = *(*(a2 - 8) + 16);
  v16(v15, a1, a2);
  _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOy_0(v49, v54, v46);
  sub_18C0C046C(v4, v48);
  outlined copy of DictionaryEncoder.NonConformingFloatEncodingStrategy(v53, v45);
  sub_18C0C046C(v10, v9);

  __DictionaryEncoder.box_(_:)(&v55);
  if (!v51)
  {
    v18 = v17;
    v59 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v55);
    if (!v18)
    {
      v22 = type metadata accessor for EncodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (Any, EncodingError.Context)(0);
      v24[3] = a2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
      v59(boxed_opaque_existential_1, a1, a2);
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v55 = 0x6576656C2D706F54;
      v56 = 0xEA0000000000206CLL;
      v26 = _typeName(_:qualified:)();
      v13 = v27;
      MEMORY[0x18D00C9B0](v26);

      MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD46CC0);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B30], v22);
      swift_willThrow();

      return v13;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_18CD63400;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v20 = 0x4C4C554E5F5FLL;
LABEL_6:
      *(v19 + 32) = v20 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000;
      v21 = 0xE800000000000000;
LABEL_13:
      *(v19 + 40) = v21;
      v29 = v19;
      *(v19 + 88) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      *(v29 + 64) = v18;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
      v13 = NSDictionary.init(dictionaryLiteral:)();

      return v13;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_18CD63400;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v28 = 0x5245424D554E5F5FLL;
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_18CD63400;
          *(v19 + 56) = MEMORY[0x1E69E6158];
          *(v19 + 32) = 0x5F5F5445535F5FLL;
          v21 = 0xE700000000000000;
          goto LABEL_13;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_18CD63400;
          *(v19 + 56) = MEMORY[0x1E69E6158];
          *(v19 + 32) = 0x5F59415252415F5FLL;
          v21 = 0xE90000000000005FLL;
          goto LABEL_13;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_18CD63400;
          *(v19 + 56) = MEMORY[0x1E69E6158];
          *(v19 + 32) = 0x4F49544349445F5FLL;
          v21 = 0xEE005F5F5952414ELL;
          goto LABEL_13;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_18CD63400;
          *(v19 + 56) = MEMORY[0x1E69E6158];
          v20 = 0x455441445F5FLL;
        }

        else
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              _sypSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_18CD63400;
              v55 = 0;
              v56 = 0xE000000000000000;
              _StringGuts.grow(_:)(71);
              MEMORY[0x18D00C9B0](0xD00000000000002FLL, 0x800000018CD46CE0);
              DefaultStringInterpolation.appendInterpolation<A>(_:)();
              MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD46D10);
              v32 = [v18 description];
              v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v35 = v34;

              MEMORY[0x18D00C9B0](v33, v35);

              v36 = v55;
              v37 = v56;
              *(v31 + 56) = MEMORY[0x1E69E6158];
              *(v31 + 32) = v36;
              *(v31 + 40) = v37;
              print(_:separator:terminator:)();

              v38 = type metadata accessor for EncodingError();
              swift_allocError();
              v40 = v39;
              type metadata accessor for (Any, EncodingError.Context)(0);
              v40[3] = a2;
              v41 = __swift_allocate_boxed_opaque_existential_1(v40);
              v59(v41, a1, a2);
              v55 = 0;
              v56 = 0xE000000000000000;
              _StringGuts.grow(_:)(38);

              v55 = 0x6576656C2D706F54;
              v56 = 0xEA0000000000206CLL;
              v42 = _typeName(_:qualified:)();
              v13 = v43;
              MEMORY[0x18D00C9B0](v42);

              MEMORY[0x18D00C9B0](0xD00000000000001ALL, 0x800000018CD46D30);
              DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
              (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6B30], v38);
              swift_willThrow();

              return v13;
            }

            type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
            v19 = swift_allocObject();
            *(v19 + 16) = xmmword_18CD63400;
            v21 = 0x800000018CD46D50;
            *(v19 + 56) = MEMORY[0x1E69E6158];
            *(v19 + 32) = 0xD000000000000011;
            goto LABEL_13;
          }

          type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_18CD63400;
          *(v19 + 56) = MEMORY[0x1E69E6158];
          v20 = 0x415441445F5FLL;
        }

        goto LABEL_6;
      }

      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, type metadata accessor for (String, Any));
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_18CD63400;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v28 = 0x474E495254535F5FLL;
    }

    *(v19 + 32) = v28;
    v21 = 0xEA00000000005F5FLL;
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_1(&v55);
  return v13;
}

void __DictionaryEncoder.box_(_:)(void *a1)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (DynamicType == type metadata accessor for Date() || DynamicType == type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDate, 0x1E695DF00))
  {
    outlined init with copy of _Benchmark(a1, v30);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78]);
    v13 = &lazy cache variable for type metadata for NSDate;
    v14 = 0x1E695DF00;
LABEL_13:
    type metadata accessor for NSObject(0, v13, v14);
LABEL_14:
    swift_dynamicCast();
    return;
  }

  if (DynamicType == MEMORY[0x1E6969080] || DynamicType == type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0))
  {
    outlined init with copy of _Benchmark(a1, v30);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78]);
    v13 = &lazy cache variable for type metadata for NSData;
    v14 = 0x1E695DEF0;
    goto LABEL_13;
  }

  if (DynamicType == v4)
  {
    outlined init with copy of _Benchmark(a1, v30);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78]);
    swift_dynamicCast();
    v15 = URL.absoluteString.getter();
    v17 = v16;
    v18 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v19 = MEMORY[0x18D00C850](v15, v17);

    v20 = [v18 initWithString_];

    if (v20)
    {
      (*(v5 + 8))(v7, v4);
      return;
    }

    goto LABEL_44;
  }

  if (DynamicType == type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSURL, 0x1E695DFF8))
  {
    outlined init with copy of _Benchmark(a1, v30);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78]);
    goto LABEL_14;
  }

  type metadata accessor for NSDecimal(0);
  if (DynamicType == v9 || DynamicType == type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDecimalNumber, 0x1E696AB90))
  {
    outlined init with copy of _Benchmark(a1, v30);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78]);
    v13 = &lazy cache variable for type metadata for NSDecimalNumber;
    v14 = 0x1E696AB90;
    goto LABEL_13;
  }

  outlined init with copy of _Benchmark(a1, v30);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78]);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for _DictionaryStringDictionaryEncodableMarker, &protocol descriptor for _DictionaryStringDictionaryEncodableMarker);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    v10 = a1[3];
    v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
    v31 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
    type metadata accessor for [String : Encodable](0);
    swift_dynamicCast();
    __DictionaryEncoder.box(_:)(v29[0]);

    return;
  }

  swift_beginAccess();
  v21 = *(v1 + 16);
  if (v21 >> 62)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = type metadata accessor for __DictionaryEncoder();
  v32 = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryEncoder and conformance __DictionaryEncoder, type metadata accessor for __DictionaryEncoder, protocol conformance descriptor for __DictionaryEncoder);
  v30[0] = v1;

  dispatch thunk of Encodable.encode(to:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    v23 = *(v1 + 16);
    if (v23 >> 62)
    {
      if (v22 >= __CocoaSet.count.getter())
      {
        goto LABEL_28;
      }
    }

    else if (v22 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_28:
      swift_willThrow();
      return;
    }

    swift_beginAccess();
    v24 = *(v1 + 16);
    if (v24 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_26:
        v25 = specialized RangeReplaceableCollection<>.popLast()();
        if (v25)
        {
          v26 = v25;
          swift_endAccess();

          goto LABEL_28;
        }

        goto LABEL_45;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  v27 = *(v1 + 16);
  if (v27 >> 62)
  {
    if (v22 < __CocoaSet.count.getter())
    {
LABEL_31:
      swift_beginAccess();
      v28 = *(v1 + 16);
      if (v28 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_33:
          if (specialized RangeReplaceableCollection<>.popLast()())
          {
            swift_endAccess();
            return;
          }

          goto LABEL_46;
        }
      }

      else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

LABEL_43:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }
  }

  else if (v22 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }
}

double DictionaryEncoder.__deallocating_deinit()
{
  _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOe_0(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(*(v0 + 48), *(v0 + 56));
  outlined consume of DictionaryDecoder.NonConformingFloatDecodingStrategy(*(v0 + 64), *(v0 + 72));
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(*(v0 + 112), *(v0 + 120));

  swift_deallocClassInstance();
  return result;
}

BOOL __DictionaryEncoder.canEncodeNewValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  return v2 == *(*(v0 + 136) + 16);
}

void __DictionaryEncoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + 2;
  if ((*(*v3 + 168))(a1))
  {
    swift_beginAccess();
    v4 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    MEMORY[0x18D00CC30]();
    if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v8 = v4;
    goto LABEL_14;
  }

  swift_beginAccess();
  v9 = *v7;
  if (*v7 >> 62)
  {
    v10 = __CocoaSet.count.getter();
    if (!v10)
    {
      goto LABEL_22;
    }

LABEL_7:
    v11 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
    }

    else if ((v9 & 0xC000000000000001) == 0)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v9 + 8 * v11 + 32);
        goto LABEL_12;
      }

      __break(1u);
LABEL_21:

      goto LABEL_22;
    }

    v4 = MEMORY[0x18D00E9C0](v11, v9);

LABEL_12:
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v8 = v12;
LABEL_14:
      v13 = v4;
      swift_beginAccess();
      v15 = type metadata accessor for _JSONKeyedEncodingContainer(0, a2, a3, v14);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v16 = v8;
      swift_getWitnessTable(protocol conformance descriptor for _JSONKeyedEncodingContainer<A>, v15);
      KeyedEncodingContainer.init<A>(_:)();

      return;
    }

    goto LABEL_21;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_22:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void __DictionaryEncoder.unkeyedContainer()(uint64_t **a1@<X8>)
{
  v3 = v1;
  v5 = v1 + 2;
  if ((*(*v1 + 168))())
  {
    swift_beginAccess();
    v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    MEMORY[0x18D00CC30]();
    if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v6 = v2;
    goto LABEL_14;
  }

  swift_beginAccess();
  v7 = *v5;
  if (*v5 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
      goto LABEL_22;
    }

LABEL_7:
    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else if ((v7 & 0xC000000000000001) == 0)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v2 = *(v7 + 8 * v9 + 32);
        goto LABEL_12;
      }

      __break(1u);
LABEL_21:

      goto LABEL_22;
    }

    v2 = MEMORY[0x18D00E9C0](v9, v7);

LABEL_12:
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v6 = v10;
LABEL_14:
      v11 = v2;
      swift_beginAccess();
      v12 = v3[17];
      a1[3] = &unk_1EFFB83A8;
      a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer();

      *a1 = v3;
      a1[1] = v6;
      a1[2] = v12;
      return;
    }

    goto LABEL_21;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_22:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double protocol witness for Encoder.singleValueContainer() in conformance __DictionaryEncoder@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for __DictionaryEncoder();
  a1[4] = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryEncoder and conformance __DictionaryEncoder, type metadata accessor for __DictionaryEncoder, protocol conformance descriptor for __DictionaryEncoder);
  *a1 = v3;

  return result;
}

double _JSONKeyedEncodingContainer._converted(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + 112);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = a1;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v7 = dispatch thunk of CodingKey.stringValue.getter();
      v9 = specialized static DictionaryEncoder.KeyEncodingStrategy._convertToSnakeCase(_:)(v7, v8);
      v11 = v10;

      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      v12 = dispatch thunk of CodingKey.intValue.getter();
      LOBYTE(v6) = v13;
      a4[3] = &unk_1EFFB8510;
      a4[4] = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
      v14 = swift_allocObject();
      *a4 = v14;
      *(v14 + 16) = v9;
      *(v14 + 24) = v11;
      *(v14 + 32) = v12;
      *(v14 + 40) = v6 & 1;
    }

    else
    {
      v16 = *(a2 + 120);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18CD63400;
      outlined init with copy of _Benchmark(a1, inited + 32);
      sub_18C0C046C(v5, v16);

      specialized Array.append<A>(contentsOf:)(inited);
      v5(a3);

      return _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(v5, v16);
    }
  }

  else
  {
    outlined init with copy of _Benchmark(a1, a4);
  }

  return result;
}

uint64_t _JSONKeyedEncodingContainer.encodeNil(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v8 = *(a2 + 24);
  v16 = *(a2 + 16);
  v7 = v16;
  v17 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
  _JSONKeyedEncodingContainer._converted(_:)(v15, v5, v6, v18);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v10 = dispatch thunk of CodingKey.stringValue.getter();
  v12 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v15[0] = v10;
  v15[1] = v12;
  [v4 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v10 = *(a3 + 24);
  v18 = *(a3 + 16);
  v9 = v18;
  v19 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  _JSONKeyedEncodingContainer._converted(_:)(v17, v7, v8, v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v17[0] = v12;
  v17[1] = v14;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v10 = *(a3 + 24);
  v18 = *(a3 + 16);
  v9 = v18;
  v19 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  _JSONKeyedEncodingContainer._converted(_:)(v17, v7, v8, v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  v17[0] = v12;
  v17[1] = v14;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(__int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v10 = *(a3 + 24);
  v18 = *(a3 + 16);
  v9 = v18;
  v19 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  _JSONKeyedEncodingContainer._converted(_:)(v17, v7, v8, v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v17[0] = v12;
  v17[1] = v14;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v12 = *(a3 + 24);
  v20 = *(a3 + 16);
  v11 = v20;
  v21 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2, v11);
  _JSONKeyedEncodingContainer._converted(_:)(v19, v9, v10, v22);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a4];
  v19[0] = v14;
  v19[1] = v16;
  [v8 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v10 = *(a3 + 24);
  v18 = *(a3 + 16);
  v9 = v18;
  v19 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  _JSONKeyedEncodingContainer._converted(_:)(v17, v7, v8, v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  v17[0] = v12;
  v17[1] = v14;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v10 = *(a3 + 24);
  v18 = *(a3 + 16);
  v9 = v18;
  v19 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  _JSONKeyedEncodingContainer._converted(_:)(v17, v7, v8, v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  v17[0] = v12;
  v17[1] = v14;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v12 = *(a4 + 24);
  v22 = *(a4 + 16);
  v11 = v22;
  v23 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a3, v11);
  _JSONKeyedEncodingContainer._converted(_:)(v21, v9, v10, v24);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  v16 = v15;
  v17 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v18 = MEMORY[0x18D00C850](a1, a2);
  v19 = [v17 initWithString_];

  v21[0] = v14;
  v21[1] = v16;
  [v8 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v39 = v3;
  v13 = *v3;
  v15 = *(v14 + 16);
  v37 = v16;
  v35 = v14;
  v36 = v15;
  (v15)(&v34 - v11, v10);
  swift_beginAccess();
  v17 = *(v13 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 136) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v13 + 136) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *(v13 + 136) = v17;
  }

  v21 = v36;
  v36(v8, v12, v6);
  v22 = *(a2 + 24);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v8, (v13 + 136), v6, v22);
  (*(v35 + 8))(v12, v6);
  *(v13 + 136) = v17;
  swift_endAccess();
  v23 = v39;
  v25 = v39[1];
  v24 = v39[2];
  v40[3] = v6;
  v40[4] = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  v21(boxed_opaque_existential_1, v37, v6);
  v27 = v25;
  _JSONKeyedEncodingContainer._converted(_:)(v40, v13, v24, v41);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v28 = dispatch thunk of CodingKey.stringValue.getter();
  v30 = v29;
  v31 = v38;
  v32 = __DictionaryEncoder.box(_:)(a3);
  if (v31)
  {
  }

  else
  {
    v33 = v32;
    v40[0] = v28;
    v40[1] = v30;
    [v27 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v23);
}

id __DictionaryEncoder.box(_:)(float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    *&v13 = a1;
    return [v12 initWithFloat_];
  }

  else
  {
    v3 = v1[9];
    if (v3)
    {
      v4 = v1[8];
      v5 = v1[12];
      v6 = v1[13];
      v7 = v1[10];
      v8 = v1[11];
      v9 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
      if (a1 == INFINITY)
      {
        v10 = v4;
        v11 = v3;
      }

      else if (a1 == -INFINITY)
      {
        v10 = v7;
        v11 = v8;
      }

      else
      {
        v10 = v5;
        v11 = v6;
      }

      v17 = MEMORY[0x18D00C850](v10, v11);
      v18 = [v9 initWithString_];

      return v18;
    }

    else
    {
      swift_beginAccess();
      type metadata accessor for EncodingError();
      swift_allocError();
      v16 = v15;

      _ss13EncodingErrorO7SwiftUIE26_invalidFloatingPointValue33_2462DFFC835A6F4511AFEB231EB4B8C2LL_2atABx_Says9CodingKey_pGtSFRzlFZSf_Tt2g5(v16, a1);

      return swift_willThrow();
    }
  }
}

void _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v39 = v3;
  v13 = *v3;
  v15 = *(v14 + 16);
  v37 = v16;
  v35 = v14;
  v36 = v15;
  (v15)(&v34 - v11, v10);
  swift_beginAccess();
  v17 = *(v13 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 136) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v13 + 136) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *(v13 + 136) = v17;
  }

  v21 = v36;
  v36(v8, v12, v6);
  v22 = *(a2 + 24);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v8, (v13 + 136), v6, v22);
  (*(v35 + 8))(v12, v6);
  *(v13 + 136) = v17;
  swift_endAccess();
  v23 = v39;
  v25 = v39[1];
  v24 = v39[2];
  v40[3] = v6;
  v40[4] = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  v21(boxed_opaque_existential_1, v37, v6);
  v27 = v25;
  _JSONKeyedEncodingContainer._converted(_:)(v40, v13, v24, v41);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v28 = dispatch thunk of CodingKey.stringValue.getter();
  v30 = v29;
  v31 = v38;
  v32 = __DictionaryEncoder.box(_:)(a3);
  if (v31)
  {
  }

  else
  {
    v33 = v32;
    v40[0] = v28;
    v40[1] = v30;
    [v27 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v23);
}

void $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 136);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v3 = v2[2];
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = v2[2];
  if (v3)
  {
LABEL_4:
    v4 = v3 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v2[5 * v3 - 1]);
    v2[2] = v4;
    *(v1 + 136) = v2;
    swift_endAccess();

    return;
  }

LABEL_7:
  __break(1u);
}

id __DictionaryEncoder.box(_:)(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v3 = v1[9];
  if (v3)
  {
    v4 = v1[8];
    v5 = v1[12];
    v6 = v1[13];
    v7 = v1[10];
    v8 = v1[11];
    v9 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    if (a1 == INFINITY)
    {
      v10 = v4;
      v11 = v3;
    }

    else if (a1 == -INFINITY)
    {
      v10 = v7;
      v11 = v8;
    }

    else
    {
      v10 = v5;
      v11 = v6;
    }

    v15 = MEMORY[0x18D00C850](v10, v11);
    v16 = [v9 initWithString_];

    return v16;
  }

  else
  {
    swift_beginAccess();
    type metadata accessor for EncodingError();
    swift_allocError();
    v14 = v13;

    _ss13EncodingErrorO7SwiftUIE26_invalidFloatingPointValue33_2462DFFC835A6F4511AFEB231EB4B8C2LL_2atABx_Says9CodingKey_pGtSFRzlFZSd_Tt2g5(v14, a1);

    return swift_willThrow();
  }
}

void _JSONKeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v40 = a1;
  v38 = a3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = *v5;
  v15 = *(v7 + 16);
  v39 = v16;
  v15(&v36 - v12, v11);
  swift_beginAccess();
  v17 = *(v14 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 136) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v14 + 136) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *(v14 + 136) = v17;
  }

  (v15)(v9, v13, v6);
  v37 = v15;
  v21 = *(v38 + 24);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v9, (v14 + 136), v6, v21);
  (*(v7 + 8))(v13, v6);
  *(v14 + 136) = v17;
  swift_endAccess();
  v22 = v49;
  v24 = v49[1];
  v23 = v49[2];
  v45 = v6;
  v46 = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v37(boxed_opaque_existential_1, v39, v6);
  v39 = v24;
  _JSONKeyedEncodingContainer._converted(_:)(v44, v14, v23, v47);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v26 = dispatch thunk of CodingKey.stringValue.getter();
  v28 = v27;
  v29 = v42;
  v45 = v42;
  v46 = v43;
  v30 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(v29 - 8) + 16))(v30, v40, v29);
  v31 = v41;
  __DictionaryEncoder.box_(_:)(v44);
  if (v31)
  {

    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v33 = v22;
  }

  else
  {
    v34 = v39;
    if (!v32)
    {
      v32 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    }

    v35 = v32;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v44[0] = v26;
    v44[1] = v28;
    [v34 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v47);
    v33 = v49;
  }

  $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v33);
}

void _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v46 = a5;
  v44 = a6;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = *v6;
  v15 = v6[1];
  v37 = v6;
  v16 = v6 + 2;
  v17 = v6[2];
  v19 = *(v18 + 24);
  v49 = v8;
  v50 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
  v42 = v9;
  v21 = *(v9 + 16);
  v38 = a2;
  v39 = v21;
  v21(boxed_opaque_existential_1, a2, v8);
  v41 = v14;
  v43 = v19;
  _JSONKeyedEncodingContainer._converted(_:)(&v48, v14, v17, &v51);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  __swift_project_boxed_opaque_existential_1(&v51, v53);
  v22 = dispatch thunk of CodingKey.stringValue.getter();
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_1(&v51);
  *&v48 = v22;
  *(&v48 + 1) = v24;

  v25 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v48, &v51);
    outlined init with copy of Any(&v51, &v48);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x1E695DF90);
    if (!swift_dynamicCast())
    {
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(133);
      MEMORY[0x18D00C9B0](0xD000000000000038, 0x800000018CD475A0);
      v36 = _typeName(_:qualified:)();
      MEMORY[0x18D00C9B0](v36);

      MEMORY[0x18D00C9B0](0x656B20726F66203ELL, 0xEB00000000222079);
      MEMORY[0x18D00C9B0](v22, v24);
      MEMORY[0x18D00C9B0](0xD00000000000003ELL, 0x800000018CD475E0);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    outlined init with take of Any(&v51, &v48);
    swift_dynamicCast();
    v26 = v47;
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *&v51 = v22;
    *(&v51 + 1) = v24;
    v26 = v27;
    [v15 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  v28 = v39;
  v39(v13, v38, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v31 = v17[2];
  v30 = v17[3];
  if (v31 >= v30 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v17);
    *v16 = v17;
  }

  v32 = v40;
  v28(v40, v13, v8);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v31, v32, v16, v8, v43);
  (*(v42 + 8))(v13, v8);
  v33 = v37;
  v37[2] = v17;
  *&v51 = v41;
  *(&v51 + 1) = v26;
  v52 = v17;
  v35 = type metadata accessor for _JSONKeyedEncodingContainer(0, v45, v46, v34);

  swift_getWitnessTable(protocol conformance descriptor for _JSONKeyedEncodingContainer<A>, v35);
  KeyedEncodingContainer.init<A>(_:)();
  $defer #1 <A><A1>() in _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(v33);
}

uint64_t $defer #1 <A><A1>() in _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 16) = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void _JSONKeyedEncodingContainer.nestedUnkeyedContainer(forKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v31 - v11;
  v13 = *v3;
  v12 = v3[1];
  v14 = v3[2];
  v31 = v3 + 2;
  v16 = *(v15 + 24);
  v41 = v7;
  v42 = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
  v37 = v8;
  v18 = *(v8 + 16);
  v32 = a1;
  v38 = v18;
  v18(boxed_opaque_existential_1, a1, v7);
  v35 = v13;
  v36 = v16;
  _JSONKeyedEncodingContainer._converted(_:)(&v40, v13, v14, &v43);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(&v43, v44);
  v19 = dispatch thunk of CodingKey.stringValue.getter();
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_1(&v43);
  *&v40 = v19;
  *(&v40 + 1) = v21;

  v22 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v40, &v43);
    outlined init with copy of Any(&v43, &v40);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableArray, 0x1E695DF70);
    if (!swift_dynamicCast())
    {
      *&v40 = 0;
      *(&v40 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(140);
      MEMORY[0x18D00C9B0](0xD000000000000043, 0x800000018CD47500);
      MEMORY[0x18D00C9B0](v19, v21);
      MEMORY[0x18D00C9B0](0xD000000000000047, 0x800000018CD47550);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    outlined init with take of Any(&v43, &v40);
    swift_dynamicCast();
    v23 = v39;
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    *&v43 = v19;
    *(&v43 + 1) = v21;
    v23 = v24;
    [v12 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  v25 = v31;
  v26 = v34;
  v38(v34, v32, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
    *v25 = v14;
  }

  v29 = v14[2];
  v28 = v14[3];
  if (v29 >= v28 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v14);
    *v25 = v14;
  }

  v30 = v33;
  v38(v33, v26, v7);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v29, v30, v25, v7, v36);
  (*(v37 + 8))(v26, v7);
  *(v4 + 16) = v14;
  a3[3] = &unk_1EFFB83A8;
  a3[4] = lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer();
  *a3 = v35;
  a3[1] = v23;
  a3[2] = v14;

  $defer #1 <A><A1>() in _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(v4);
}

uint64_t _JSONKeyedEncodingContainer.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v9[3] = &unk_1EFFB8510;
  v9[4] = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v6 = swift_allocObject();
  v9[0] = v6;
  *(v6 + 16) = 0x7265707573;
  *(v6 + 24) = 0xE500000000000000;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;

  _JSONKeyedEncodingContainer._converted(_:)(v9, v4, v5, v10);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v7 = _s7SwiftUI30__DictionaryReferencingEncoder33_2462DFFC835A6F4511AFEB231EB4B8C2LLC11referencing3key12convertedKey8wrappingAdA02__cE0ACLLC_s06CodingP0_psAK_phSo09NSMutableC0CtcfCTf4nennn_nAA8_JSONKeyACLLV_Tt3g5(v4, 0x7265707573, 0xE500000000000000, 0, 1, v10, v3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  a1[3] = type metadata accessor for __DictionaryReferencingEncoder();
  result = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryReferencingEncoder and conformance __DictionaryEncoder, type metadata accessor for __DictionaryReferencingEncoder, protocol conformance descriptor for __DictionaryEncoder);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t _JSONKeyedEncodingContainer.superEncoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for __DictionaryReferencingEncoder();
  v11 = *v3;
  v12 = v3[1];
  v13 = v3[2];
  v14 = *(a2 + 24);
  v22[3] = v6;
  v22[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v16 = *(v7 + 16);
  v16(boxed_opaque_existential_1, a1, v6);

  _JSONKeyedEncodingContainer._converted(_:)(v22, v11, v13, v23);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v16(v9, a1, v6);
  v17 = specialized __DictionaryReferencingEncoder.__allocating_init(referencing:key:convertedKey:wrapping:)(v11, v9, v23, v12, v10, v6, v14);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v18 = v21;
  v21[3] = v10;
  result = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryReferencingEncoder and conformance __DictionaryEncoder, type metadata accessor for __DictionaryReferencingEncoder, protocol conformance descriptor for __DictionaryEncoder);
  v18[4] = result;
  *v18 = v17;
  return result;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(char a1, uint64_t a2, uint64_t a3)
{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithInteger_);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithInt_);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithLongLong_);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithUnsignedInteger_);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithUnsignedInt_);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithUnsignedLongLong_);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>()
{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(uint64_t a1, char a2)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E7188]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71B0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71C0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, char a3)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

void _JSONUnkeyedEncodingContainer.encode(_:)(float a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = [v4 count];
  *&v16 = 0x207865646E49;
  *(&v16 + 1) = 0xE600000000000000;
  v19 = v6;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v7);

  swift_beginAccess();
  v8 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v5 + 136) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v17 = &unk_1EFFB8510;
  v18 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v12 = swift_allocObject();
  *&v16 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = v6;
  *(v12 + 40) = 0;
  v8[2] = v11 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v16, &v8[5 * v11 + 4]);
  *(v5 + 136) = v8;
  swift_endAccess();
  v13 = __DictionaryEncoder.box(_:)(a1);
  if (!v15)
  {
    v14 = v13;
    [v4 addObject_];
  }

  $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
}

void _JSONUnkeyedEncodingContainer.encode(_:)(double a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = [v4 count];
  *&v16 = 0x207865646E49;
  *(&v16 + 1) = 0xE600000000000000;
  v19 = v6;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v7);

  swift_beginAccess();
  v8 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v5 + 136) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v17 = &unk_1EFFB8510;
  v18 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v12 = swift_allocObject();
  *&v16 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = v6;
  *(v12 + 40) = 0;
  v8[2] = v11 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v16, &v8[5 * v11 + 4]);
  *(v5 + 136) = v8;
  swift_endAccess();
  v13 = __DictionaryEncoder.box(_:)(a1);
  if (!v15)
  {
    v14 = v13;
    [v4 addObject_];
  }

  $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
}

void _JSONUnkeyedEncodingContainer.encode<A>(_:)(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v18 = v3[1];
  v7 = [v18 count];
  *&v21 = 0x207865646E49;
  *(&v21 + 1) = 0xE600000000000000;
  v24 = v7;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v8);

  swift_beginAccess();
  v9 = *(v6 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 136) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    *(v6 + 136) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  v22 = &unk_1EFFB8510;
  v23 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v13 = swift_allocObject();
  *&v21 = v13;
  *(v13 + 16) = 0x207865646E49;
  *(v13 + 24) = 0xE600000000000000;
  *(v13 + 32) = v7;
  *(v13 + 40) = 0;
  v9[2] = v12 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v21, &v9[5 * v12 + 4]);
  *(v6 + 136) = v9;
  swift_endAccess();
  v22 = a2;
  v23 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a2 - 1) + 16))(boxed_opaque_existential_1, a1, a2);
  v15 = v25;
  __DictionaryEncoder.box_(_:)(&v21);
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    if (!v16)
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    }

    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v21);
    [v18 addObject_];
  }

  $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v4);
}

uint64_t _JSONUnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v3[1];
  v8 = [v7 count];
  *&v18 = 0x207865646E49;
  *(&v18 + 1) = 0xE600000000000000;
  v22 = v8;
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v9);

  v10 = v3[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  v20 = &unk_1EFFB8510;
  v21 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v13 = swift_allocObject();
  *&v18 = v13;
  *(v13 + 16) = 0x207865646E49;
  *(v13 + 24) = 0xE600000000000000;
  *(v13 + 32) = v8;
  *(v13 + 40) = 0;
  v10[2] = v12 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v18, &v10[5 * v12 + 4]);
  v4[2] = v10;
  v14 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  [v7 addObject_];
  *&v18 = *v4;
  *(&v18 + 1) = v14;
  v19 = v10;
  v16 = type metadata accessor for _JSONKeyedEncodingContainer(0, a2, a3, v15);

  swift_getWitnessTable(protocol conformance descriptor for _JSONKeyedEncodingContainer<A>, v16);
  KeyedEncodingContainer.init<A>(_:)();
  return $defer #1 <A><A1>() in _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(v4);
}

uint64_t _JSONUnkeyedEncodingContainer.nestedUnkeyedContainer()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  v5 = [v4 count];
  *&v14 = 0x207865646E49;
  *(&v14 + 1) = 0xE600000000000000;
  v17 = v5;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  v7 = v1[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
  }

  v15 = &unk_1EFFB8510;
  v16 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v5;
  *(v10 + 40) = 0;
  v7[2] = v9 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v14, &v7[5 * v9 + 4]);
  v2[2] = v7;
  v11 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  [v4 addObject_];
  v12 = *v2;
  a1[3] = &unk_1EFFB83A8;
  a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer();
  *a1 = v12;
  a1[1] = v11;
  a1[2] = v7;

  return $defer #1 <A><A1>() in _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(v2);
}

void protocol witness for UnkeyedEncodingContainer.encodeNil() in conformance _JSONUnkeyedEncodingContainer()
{
  v1 = *(v0 + 8);
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  [v1 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(char a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [v2 addObject_];
}

{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v7 = MEMORY[0x18D00C850](a1, a2);
  v8 = [v6 initWithString_];

  [v5 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithInteger_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithInt_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithLongLong_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithUnsignedInteger_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithUnsignedInt_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithUnsignedLongLong_);
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  [v2 addObject_];
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer()
{
  return UnkeyedEncodingContainer.encode(_:)();
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(v4 + 8);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a4];
  [v5 addObject_];
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance _JSONUnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.superEncoder() in conformance _JSONUnkeyedEncodingContainer@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  v5 = [v3 count];
  v6 = type metadata accessor for __DictionaryReferencingEncoder();
  swift_allocObject();
  v7 = __DictionaryReferencingEncoder.init(referencing:at:wrapping:)(v4, v5, v3);
  a1[3] = v6;
  result = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryReferencingEncoder and conformance __DictionaryEncoder, type metadata accessor for __DictionaryReferencingEncoder, protocol conformance descriptor for __DictionaryEncoder);
  a1[4] = result;
  *a1 = v7;
  return result;
}

void __DictionaryEncoder.encodeNil()()
{
  v1 = v0;
  if ((*(*v0 + 168))())
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    swift_beginAccess();
    v3 = v2;
    MEMORY[0x18D00CC30]();
    if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(char a1)
{
  v2 = v1;
  if ((*(*v1 + 168))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

{
  v2 = v1;
  if ((*(*v1 + 168))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(__int16 a1)
{
  v2 = v1;
  if ((*(*v1 + 168))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(unsigned __int8 a1)
{
  v2 = v1;
  if ((*(*v1 + 168))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(unsigned __int16 a1)
{
  v2 = v1;
  if ((*(*v1 + 168))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
    swift_beginAccess();
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(uint64_t a1, SEL *a2)
{
  v4 = v2;
  if ((*(*v2 + 168))())
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a2];
    swift_beginAccess();
    v7 = v6;
    MEMORY[0x18D00CC30]();
    if (*((*(v4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((*(*v2 + 168))())
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v7 = MEMORY[0x18D00C850](a1, a2);
    v8 = [v6 initWithString_];

    swift_beginAccess();
    v9 = v8;
    MEMORY[0x18D00CC30]();
    if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(float a1)
{
  v3 = v1;
  if ((*(*v1 + 168))())
  {
    v5 = __DictionaryEncoder.box(_:)(a1);
    if (!v2)
    {
      v6 = v5;
      swift_beginAccess();
      v7 = v6;
      MEMORY[0x18D00CC30]();
      if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode(_:)(double a1)
{
  v3 = v1;
  if ((*(*v1 + 168))())
  {
    v5 = __DictionaryEncoder.box(_:)(a1);
    if (!v2)
    {
      v6 = v5;
      swift_beginAccess();
      v7 = v6;
      MEMORY[0x18D00CC30]();
      if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if ((*(*v3 + 168))())
  {
    v13[3] = a2;
    v13[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
    __DictionaryEncoder.box_(_:)(v13);
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      if (!v10)
      {
        v10 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
      }

      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v13);
      swift_beginAccess();
      v12 = v11;
      MEMORY[0x18D00CC30]();
      if (*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __DictionaryEncoder(char a1)
{
  __DictionaryEncoder.encode(_:)(a1);
}

{
  __DictionaryEncoder.encode(_:)(a1);
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __DictionaryEncoder(uint64_t a1)
{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithInteger_);
}

{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithInt_);
}

{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithLongLong_);
}

{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithUnsignedInteger_);
}

{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithUnsignedInt_);
}

{
  __DictionaryEncoder.encode(_:)(a1, &selRef_initWithUnsignedLongLong_);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __DictionaryEncoder()
{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t _ss13EncodingErrorO7SwiftUIE26_invalidFloatingPointValue33_2462DFFC835A6F4511AFEB231EB4B8C2LL_2atABx_Says9CodingKey_pGtSFRzlFZSf_Tt2g5@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v4 = 0x616E2E74616F6C46;
  if (a2 == -INFINITY)
  {
    v4 = 0x692E74616F6C462DLL;
  }

  v5 = 0xE90000000000006ELL;
  if (a2 == -INFINITY)
  {
    v5 = 0xEF7974696E69666ELL;
  }

  if (a2 == INFINITY)
  {
    v6 = 0x6E692E74616F6C46;
  }

  else
  {
    v6 = v4;
  }

  if (a2 == INFINITY)
  {
    v7 = 0xEE007974696E6966;
  }

  else
  {
    v7 = v5;
  }

  _StringGuts.grow(_:)(154);
  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD466E0);
  MEMORY[0x18D00C9B0](v6, v7);

  MEMORY[0x18D00C9B0](0xD000000000000087, 0x800000018CD46700);
  type metadata accessor for (Any, EncodingError.Context)(0);
  *(a1 + 24) = MEMORY[0x1E69E6448];
  *a1 = a2;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v8 = *MEMORY[0x1E69E6B30];
  v9 = type metadata accessor for EncodingError();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

uint64_t _ss13EncodingErrorO7SwiftUIE26_invalidFloatingPointValue33_2462DFFC835A6F4511AFEB231EB4B8C2LL_2atABx_Says9CodingKey_pGtSFRzlFZSd_Tt2g5@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = 0xEA00000000006E61;
  v5 = 0x6E2E656C62756F44;
  if (a2 == -INFINITY)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000018CD46790;
  }

  if (a2 == INFINITY)
  {
    v6 = 0x692E656C62756F44;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == INFINITY)
  {
    v7 = 0xEF7974696E69666ELL;
  }

  else
  {
    v7 = v4;
  }

  _StringGuts.grow(_:)(154);
  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD466E0);
  MEMORY[0x18D00C9B0](v6, v7);

  MEMORY[0x18D00C9B0](0xD000000000000087, 0x800000018CD46700);
  type metadata accessor for (Any, EncodingError.Context)(0);
  *(a1 + 24) = MEMORY[0x1E69E63B0];
  *a1 = a2;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v8 = *MEMORY[0x1E69E6B30];
  v9 = type metadata accessor for EncodingError();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

void *__DictionaryEncoder.box(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v41 = i;
    swift_beginAccess();
    v5 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    v43 = v5;
    if (v8)
    {
      break;
    }

LABEL_9:
    if (v9 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        v8 = 0;
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        goto LABEL_17;
      }

      v8 = *(a1 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  while (1)
  {
    v11 = v10;
LABEL_16:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    outlined init with copy of _Benchmark(*(a1 + 56) + 40 * v15, &v45);
    *&v48 = v17;
    *(&v48 + 1) = v18;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v45, &v49);

    v13 = v11;
LABEL_17:
    v52 = v48;
    v53[0] = v49;
    v53[1] = v50;
    v54 = v51;
    v19 = *(&v48 + 1);
    if (!*(&v48 + 1))
    {
      goto LABEL_33;
    }

    v44 = v13;
    v20 = v52;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v53, &v48);
    swift_beginAccess();
    v21 = *(v2 + 136);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 136) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      *(v2 + 136) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
    }

    v46 = &unk_1EFFB8510;
    v47 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v25 = swift_allocObject();
    *&v45 = v25;
    *(v25 + 16) = v20;
    *(v25 + 24) = v19;
    *(v25 + 32) = 0;
    *(v25 + 40) = 1;
    v21[2] = v24 + 1;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v45, &v21[5 * v24 + 4]);
    *(v2 + 136) = v21;
    swift_endAccess();
    v26 = v2;
    v27 = v55;
    __DictionaryEncoder.box_(_:)(&v48);
    v55 = v27;
    if (v27)
    {

      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v2);

      __swift_destroy_boxed_opaque_existential_1(&v48);
      v38 = *(v2 + 16);
      if (v38 >> 62)
      {
        v39 = __CocoaSet.count.getter();
      }

      else
      {
        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v43;
      if (v41 < v39)
      {
        swift_beginAccess();
        v40 = *(v2 + 16);
        if (v40 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_58;
          }
        }

        else if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        result = specialized RangeReplaceableCollection<>.popLast()();
        if (!result)
        {
          goto LABEL_60;
        }

        v26 = result;
        swift_endAccess();
      }

      swift_willThrow();
      goto LABEL_49;
    }

    v29 = v28;
    if (!v28)
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    }

    *&v45 = v20;
    *(&v45 + 1) = v19;
    v5 = v43;
    [v43 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_beginAccess();
    v30 = *(v2 + 136);
    if (!v30[2])
    {
      goto LABEL_51;
    }

    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 136) = v30;
    if ((v31 & 1) == 0)
    {
      break;
    }

    v32 = v30[2];
    if (!v32)
    {
      goto LABEL_32;
    }

LABEL_28:
    v33 = v32 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v30[5 * v32 - 1]);
    v30[2] = v33;
    *(v2 + 136) = v30;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v48);
    v10 = v44;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
  *(v2 + 136) = v30;
  v32 = v30[2];
  if (v32)
  {
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
LABEL_33:

  v34 = *(v2 + 16);
  if (v34 >> 62)
  {
    v35 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v41 >= v35)
  {
    v26 = 0;
    goto LABEL_49;
  }

  swift_beginAccess();
  v36 = *(v2 + 16);
  if (!(v36 >> 62))
  {
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

LABEL_58:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_59;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_58;
  }

LABEL_38:
  result = specialized RangeReplaceableCollection<>.popLast()();
  if (result)
  {
    v26 = result;
    swift_endAccess();
LABEL_49:

    return v26;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t __DictionaryReferencingEncoder.init(referencing:at:wrapping:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v4 + 144) = a1;
  *(v4 + 152) = a3;
  *(v4 + 160) = a2;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v8 = *(a1 + 72);
  v9 = *(a1 + 104);
  v32 = *(a1 + 88);
  v33 = v9;
  v34 = *(a1 + 120);
  v10 = *(a1 + 40);
  v28 = *(a1 + 24);
  v29 = v10;
  v30 = *(a1 + 56);
  v31 = v8;
  swift_beginAccess();
  v11 = *(a1 + 136);
  v12 = v30;
  *(v4 + 72) = v31;
  v13 = v33;
  *(v4 + 88) = v32;
  *(v4 + 104) = v13;
  *(v4 + 120) = v34;
  v14 = v29;
  *(v4 + 24) = v28;
  *(v4 + 40) = v14;
  *(v4 + 56) = v12;
  v15 = MEMORY[0x1E69E7CC0];
  *(v4 + 136) = v11;
  *(v4 + 16) = v15;
  v27 = a2;
  swift_retain_n();

  v16 = a3;
  outlined init with copy of DictionaryEncoder._Options(&v28, &v24);

  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v17);

  swift_beginAccess();
  v18 = *(v4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 136) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *(v4 + 136) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
  }

  v25 = &unk_1EFFB8510;
  v26 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v22 = swift_allocObject();
  *&v24 = v22;
  *(v22 + 16) = 0x207865646E49;
  *(v22 + 24) = 0xE600000000000000;
  *(v22 + 32) = a2;
  *(v22 + 40) = 0;
  v18[2] = v21 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v24, &v18[5 * v21 + 4]);
  *(v4 + 136) = v18;
  swift_endAccess();

  return v4;
}

BOOL __DictionaryReferencingEncoder.canEncodeNewValue.getter()
{
  swift_beginAccess();
  v1 = v0[2];
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v3 = v0[17];
  v4 = v0[18];
  v5 = *(v3 + 16);
  swift_beginAccess();
  return v2 == v5 + ~*(*(v4 + 136) + 16);
}

void __DictionaryReferencingEncoder.__ivar_destroyer()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);

  outlined consume of __DictionaryReferencingEncoder.Reference(v1, v2, v3, v4);
}

uint64_t __DictionaryReferencingEncoder.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 == 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (!v3)
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
      v7 = &lazy cache variable for type metadata for NSDictionary;
      v8 = 0x1E695DF20;
      goto LABEL_10;
    }

LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = __CocoaSet.count.getter();
  if (v3 != 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  swift_beginAccess();
  v4 = *(v0 + 16);
  if (v4 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_17;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  v5 = specialized RangeReplaceableCollection<>.popLast()();
  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  swift_endAccess();
  v7 = &lazy cache variable for type metadata for NSObject;
  v8 = 0x1E69E58C0;
LABEL_10:
  v9 = type metadata accessor for NSObject(0, v7, v8);
  v25 = v9;
  v24[0] = v6;
  v11 = *(v1 + 152);
  v10 = *(v1 + 160);
  v12 = *(v1 + 168);
  if (*(v1 + 176))
  {
    v13 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v14 = v11;

    v15 = MEMORY[0x18D00C850](v10, v12);

    v16 = [v13 initWithString_];

    __swift_project_boxed_opaque_existential_1(v24, v25);
    [v14 setObject:_bridgeAnythingToObjectiveC<A>(_:)() forKeyedSubscript:v16];

    swift_unknownObjectRelease();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v24, v9);
    [v11 insertObject:_bridgeAnythingToObjectiveC<A>(_:)() atIndex:v10];
    swift_unknownObjectRelease();
    outlined consume of __DictionaryReferencingEncoder.Reference(v11, v10, v12, 0);
  }

  __swift_destroy_boxed_opaque_existential_1(v24);

  v17 = *(v1 + 48);
  v18 = *(v1 + 56);
  v19 = *(v1 + 64);
  v20 = *(v1 + 72);
  v21 = *(v1 + 112);
  v23 = *(v1 + 120);
  _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOe_0(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(v17, v18);
  outlined consume of DictionaryDecoder.NonConformingFloatDecodingStrategy(v19, v20);
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(v21, v23);

  outlined consume of __DictionaryReferencingEncoder.Reference(*(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176));
  return v1;
}

double __DictionaryReferencingEncoder.__deallocating_deinit()
{
  __DictionaryReferencingEncoder.deinit();

  swift_deallocClassInstance();
  return result;
}

void DictionaryDecoder.decode<A>(_:from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  strcpy(v53, "__DICTIONARY__");
  v53[15] = -18;
  v14 = [a2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    v39 = v11;
    v40 = v10;
    v41 = a5;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v53, v54);
    outlined init with copy of Any(v54, v52);
    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    v48 = v13;
    v17 = *(v5 + 40);
    v18 = *(v5 + 48);
    v50 = a1;
    v49 = a3;
    v20 = *(v5 + 56);
    v19 = *(v5 + 64);
    v21 = *(v5 + 72);
    v22 = *(v5 + 80);
    v23 = *(v5 + 96);
    v44 = *(v5 + 88);
    v43 = v23;
    v24 = *(v5 + 112);
    v46 = *(v5 + 104);
    v45 = v24;
    v47 = *(v5 + 120);
    *&v55 = v16;
    *(&v55 + 1) = v15;
    v25 = *(v5 + 32);
    v56 = v25;
    v57 = v17;
    v58 = v18;
    v59 = v20;
    v60 = v19;
    v61 = v21;
    v62 = v22;
    v63 = v44;
    v64 = v23;
    v65 = v46;
    v66 = v24;
    v67 = v47;
    type metadata accessor for __DictionaryDecoder();
    v42 = swift_allocObject();
    _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOy_0(v16, v15, v25);
    v26 = v17;
    v27 = v48;
    sub_18C0C046C(v26, v18);
    v28 = v20;
    v29 = v49;
    v30 = v50;
    outlined copy of DictionaryEncoder.NonConformingFloatEncodingStrategy(v28, v19);
    sub_18C0C046C(v46, v45);

    __DictionaryDecoder.init(referencing:at:options:)(v52, MEMORY[0x1E69E7CC0], &v55);
    v31 = v68;
    __DictionaryDecoder.unbox<A>(_:as:)(v54, v30, v29, v51, v27);
    if (v31)
    {
      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    else
    {
      v35 = *(v29 - 8);
      if ((*(v35 + 48))(v27, 1, v29) == 1)
      {
        (*(v39 + 8))(v27, v40);
        v36 = type metadata accessor for DecodingError();
        swift_allocError();
        v38 = v37;
        type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
        *v38 = v30;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6B08], v36);
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_1(v54);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v54);

        (*(v35 + 32))(v41, v27, v29);
      }
    }
  }

  else
  {
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6B00], v32);
    swift_willThrow();
  }
}

void __DictionaryDecoder.unbox<A>(_:as:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __DictionaryDecoder.unbox_(_:as:)(a1, a2, a4, &v9);
  if (!v5)
  {
    _sypSgMaTm_0(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v8 = swift_dynamicCast();
    (*(*(a3 - 8) + 56))(a5, v8 ^ 1u, 1, a3);
  }
}

double DictionaryDecoder.__deallocating_deinit()
{
  _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOe_0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(*(v0 + 40), *(v0 + 48));
  outlined consume of DictionaryDecoder.NonConformingFloatDecodingStrategy(*(v0 + 56), *(v0 + 64));
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(*(v0 + 104), *(v0 + 112));

  swift_deallocClassInstance();
  return result;
}

uint64_t __DictionaryDecoder.init(referencing:at:options:)(void *a1, uint64_t a2, _OWORD *a3)
{
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Any(a1, v16);
  swift_beginAccess();
  outlined init with copy of Any(v16, v15);
  *(v3 + 16) = v7;
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v7);
  *(v3 + 16) = v8;
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
    *(v3 + 16) = v8;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  *(v8 + 2) = v10 + 1;
  outlined init with take of Any(v15, &v8[32 * v10 + 32]);
  *(v3 + 16) = v8;
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a1);
  v11 = a3[2];
  *(v3 + 72) = a3[3];
  v12 = a3[5];
  *(v3 + 88) = a3[4];
  *(v3 + 104) = v12;
  *(v3 + 120) = a3[6];
  v13 = a3[1];
  *(v3 + 24) = *a3;
  *(v3 + 40) = v13;
  *(v3 + 136) = a2;
  *(v3 + 56) = v11;
  return v3;
}

uint64_t __DictionaryDecoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v27);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
    if (swift_dynamicCast())
    {

      v8 = type metadata accessor for DecodingError();
      swift_allocError();
      v10 = v9;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v10 = type metadata accessor for KeyedDecodingContainer();
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
      return swift_willThrow();
    }

    v11 = *(v3 + 16);
    v12 = *(v11 + 16);
    if (v12)
    {
      outlined init with copy of Any(v11 + 32 * v12, v27);
      type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E5E28]);
      if (swift_dynamicCast())
      {

        specialized _DictionaryKeyedDecodingContainer.init(referencing:wrapping:)(v13, v26);
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v27[0] = v15;
        v27[1] = v17;
        v27[2] = v19;
        v21 = type metadata accessor for _DictionaryKeyedDecodingContainer(0, a2, a3, v20);
        swift_getWitnessTable(protocol conformance descriptor for _DictionaryKeyedDecodingContainer<A>, v21);
        return KeyedDecodingContainer.init<A>(_:)();
      }

      v23 = type metadata accessor for DecodingError();
      swift_allocError();
      v25 = v24;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v25 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      return swift_willThrow();
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void __DictionaryDecoder.unkeyedContainer()(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    outlined init with copy of Any(v3 + 32 * v4, v16);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
    v5 = MEMORY[0x1E69E7CA0];
    if (swift_dynamicCast())
    {

      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v8 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UnkeyedDecodingContainer, MEMORY[0x1E69E6FA0]);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v9 = MEMORY[0x1E69E6B08];
LABEL_8:
      (*(*(v6 - 8) + 104))(v8, *v9, v6);
      swift_willThrow();
      return;
    }

    v10 = *(v1 + 16);
    v11 = *(v10 + 16);
    if (v11)
    {
      outlined init with copy of Any(v10 + 32 * v11, v16);
      _sypSgMaTm_0(0, &lazy cache variable for type metadata for [Any], v5 + 8, MEMORY[0x1E69E62F8]);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v12 = *(v1 + 136);
        a1[3] = &unk_1EFFB8488;
        a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer();
        v13 = swift_allocObject();
        *a1 = v13;
        v13[2] = v1;
        v13[3] = v15;
        v13[4] = v12;
        v13[5] = 0;

        return;
      }

      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v14;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v9 = MEMORY[0x1E69E6AF8];
      goto LABEL_8;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double __DictionaryEncoder.__deallocating_deinit(void (*a1)(void, void, void), double (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t))
{

  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  v10 = *(v3 + 120);
  v11 = *(v3 + 112);
  a1(*(v3 + 24), *(v3 + 32), *(v3 + 40));
  a2(v5, v6);
  outlined consume of DictionaryDecoder.NonConformingFloatDecodingStrategy(v7, v8);
  a3(v11, v10);

  swift_deallocClassInstance();
  return result;
}

void type metadata accessor for (positiveInfinity: String, negativeInfinity: String, nan: String)()
{
  if (!lazy cache variable for type metadata for (positiveInfinity: String, negativeInfinity: String, nan: String))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (positiveInfinity: String, negativeInfinity: String, nan: String));
    }
  }
}

void outlined copy of __DictionaryReferencingEncoder.Reference(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
  }

  else
  {

    v6 = a1;
  }
}

void outlined consume of __DictionaryReferencingEncoder.Reference(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t initializeWithCopy for __DictionaryReferencingEncoder.Reference(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of __DictionaryReferencingEncoder.Reference(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for __DictionaryReferencingEncoder.Reference(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of __DictionaryReferencingEncoder.Reference(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  outlined consume of __DictionaryReferencingEncoder.Reference(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for __DictionaryReferencingEncoder.Reference(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  outlined consume of __DictionaryReferencingEncoder.Reference(v5, v7, v6, v8);
  return a1;
}

uint64_t destroy for DictionaryDecoder._Options(uint64_t a1, uint64_t a2, void (*a3)(void, void, void))
{
  a3(*a1, *(a1 + 8), *(a1 + 16));
  if (*(a1 + 24) >= 2uLL)
  {
  }

  if (*(a1 + 48))
  {
  }

  if (*(a1 + 88) >= 2uLL)
  {
  }
}

uint64_t initializeWithCopy for DictionaryDecoder._Options(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  a4(*a2, v7, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v9 = a2[3];
  if (v9 >= 2)
  {
    v13 = a2[4];
    *(a1 + 24) = v9;
    *(a1 + 32) = v13;

    v10 = a2[6];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 24) = *(a2 + 3);
    v10 = a2[6];
    if (v10)
    {
LABEL_3:
      *(a1 + 40) = a2[5];
      *(a1 + 48) = v10;
      v11 = a2[8];
      *(a1 + 56) = a2[7];
      *(a1 + 64) = v11;
      v12 = a2[10];
      *(a1 + 72) = a2[9];
      *(a1 + 80) = v12;

      goto LABEL_6;
    }
  }

  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
LABEL_6:
  v14 = a2[11];
  if (v14 >= 2)
  {
    v15 = a2[12];
    *(a1 + 88) = v14;
    *(a1 + 96) = v15;
  }

  else
  {
    *(a1 + 88) = *(a2 + 11);
  }

  *(a1 + 104) = a2[13];

  return a1;
}

uint64_t *assignWithCopy for DictionaryDecoder._Options(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  a4(*a2, v9, v10);
  v11 = *a1;
  v12 = a1[1];
  *a1 = v8;
  a1[1] = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v10;
  a5(v11, v12, v13);
  v14 = a2[3];
  if (a1[3] < 2)
  {
    if (v14 >= 2)
    {
      v15 = a2[4];
      a1[3] = v14;
      a1[4] = v15;

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v14 < 2)
  {

LABEL_6:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_8;
  }

  v16 = a2[4];
  a1[3] = v14;
  a1[4] = v16;

LABEL_8:
  v17 = a2[6];
  if (a1[6])
  {
    if (v17)
    {
      a1[5] = a2[5];
      a1[6] = a2[6];

      a1[7] = a2[7];
      a1[8] = a2[8];

      a1[9] = a2[9];
      a1[10] = a2[10];
    }

    else
    {
      outlined destroy of (positiveInfinity: String, negativeInfinity: String, nan: String)((a1 + 5), type metadata accessor for (positiveInfinity: String, negativeInfinity: String, nan: String));
      v18 = *(a2 + 9);
      v19 = *(a2 + 7);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 7) = v19;
      *(a1 + 9) = v18;
    }
  }

  else if (v17)
  {
    a1[5] = a2[5];
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];
    a1[10] = a2[10];
  }

  else
  {
    v20 = *(a2 + 5);
    v21 = *(a2 + 7);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 7) = v21;
    *(a1 + 5) = v20;
  }

  v22 = a2[11];
  if (a1[11] >= 2)
  {
    if (v22 >= 2)
    {
      v24 = a2[12];
      a1[11] = v22;
      a1[12] = v24;

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v22 < 2)
  {
LABEL_20:
    *(a1 + 11) = *(a2 + 11);
    goto LABEL_22;
  }

  v23 = a2[12];
  a1[11] = v22;
  a1[12] = v23;

LABEL_22:
  a1[13] = a2[13];

  return a1;
}

uint64_t *assignWithTake for DictionaryDecoder._Options(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = a1[1];
  *a1 = *a2;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  a4(v7, v8, v9);
  v10 = *(a2 + 24);
  if (a1[3] >= 2)
  {
    if (v10 >= 2)
    {
      v12 = *(a2 + 32);
      a1[3] = v10;
      a1[4] = v12;

      if (!a1[6])
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else if (v10 >= 2)
  {
    v11 = *(a2 + 32);
    a1[3] = v10;
    a1[4] = v11;
    if (!a1[6])
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  *(a1 + 3) = *(a2 + 24);
  if (!a1[6])
  {
    goto LABEL_13;
  }

LABEL_10:
  v13 = *(a2 + 48);
  if (v13)
  {
    a1[5] = *(a2 + 40);
    a1[6] = v13;

    v14 = *(a2 + 64);
    a1[7] = *(a2 + 56);
    a1[8] = v14;

    v15 = *(a2 + 80);
    a1[9] = *(a2 + 72);
    a1[10] = v15;

    goto LABEL_14;
  }

  outlined destroy of (positiveInfinity: String, negativeInfinity: String, nan: String)((a1 + 5), type metadata accessor for (positiveInfinity: String, negativeInfinity: String, nan: String));
LABEL_13:
  *(a1 + 5) = *(a2 + 40);
  *(a1 + 7) = *(a2 + 56);
  *(a1 + 9) = *(a2 + 72);
LABEL_14:
  v16 = *(a2 + 88);
  if (a1[11] >= 2)
  {
    if (v16 >= 2)
    {
      v18 = *(a2 + 96);
      a1[11] = v16;
      a1[12] = v18;

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v16 < 2)
  {
LABEL_19:
    *(a1 + 11) = *(a2 + 88);
    goto LABEL_21;
  }

  v17 = *(a2 + 96);
  a1[11] = v16;
  a1[12] = v17;
LABEL_21:
  a1[13] = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for DictionaryDecoder._Options(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DictionaryDecoder._Options(uint64_t result, int a2, int a3)
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
      *(result + 104) = (a2 - 1);
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

unint64_t destroy for DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 initializeWithCopy for DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0xFFFFFFFF)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    result = *(a2 + 32);
    *(a1 + 32) = result;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v3;
    v4 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v4;
  }

  return result;
}

void *assignWithCopy for DictionaryDecoder.NonConformingFloatDecodingStrategy(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      a1[4] = a2[4];
      a1[5] = a2[5];

      return a1;
    }

LABEL_7:
    v5 = *a2;
    v6 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v6;
    *a1 = v5;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v7;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      v8 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v8;
      *(v4 + 32) = *(a2 + 32);
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      v5 = *(a2 + 24);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 24) = v5;

      v6 = *(a2 + 40);
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 40) = v6;
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for DictionaryDecoder.KeyDecodingStrategy(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[0] < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v2 = a2->n128_u64[1];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
  }

  return result;
}

__n128 assignWithCopy for DictionaryDecoder.KeyDecodingStrategy(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      *a1 = *a2;
    }

    else
    {
      v5 = a2[1];
      *a1 = v2;
      *(a1 + 8) = v5;
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {

    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v3 = a2[1];
    *a1 = v2;
    *(a1 + 8) = v3;
  }

  return result;
}

__n128 assignWithTake for DictionaryDecoder.KeyDecodingStrategy(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      *a1 = *a2;
    }

    else
    {
      v5 = a2[1];
      *a1 = v2;
      *(a1 + 8) = v5;
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {

    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v3 = a2[1];
    *a1 = v2;
    *(a1 + 8) = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DictionaryDecoder.KeyDecodingStrategy(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DictionaryDecoder.KeyDecodingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
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

uint64_t initializeBufferWithCopyOfBuffer for DictionaryDecoder.DateDecodingStrategy(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *assignWithCopy for DictionaryDecoder.DateDecodingStrategy(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *assignWithTake for DictionaryDecoder.DateDecodingStrategy(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting()
{
  result = lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DictionaryEncoder.OutputFormatting, &type metadata for DictionaryEncoder.OutputFormatting, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DictionaryEncoder.OutputFormatting, &type metadata for DictionaryEncoder.OutputFormatting, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DictionaryEncoder.OutputFormatting, &type metadata for DictionaryEncoder.OutputFormatting, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DictionaryEncoder.OutputFormatting, &type metadata for DictionaryEncoder.OutputFormatting, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting);
  }

  return result;
}

double protocol witness for Decoder.singleValueContainer() in conformance __DictionaryDecoder@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for __DictionaryDecoder();
  a1[4] = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryDecoder and conformance __DictionaryDecoder, type metadata accessor for __DictionaryDecoder, protocol conformance descriptor for __DictionaryDecoder);
  *a1 = v3;

  return result;
}

uint64_t _DictionaryDecodingStorage.popContainer()()
{
  v1 = *v0;
  if (*(*v0 + 2))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v2 = *(v1 + 2);
      if (v2)
      {
LABEL_4:
        v3 = v2 - 1;
        result = __swift_destroy_boxed_opaque_existential_1(&v1[32 * v2]);
        *(v1 + 2) = v3;
        *v0 = v1;
        return result;
      }
    }

    else
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v2 = *(v1 + 2);
      if (v2)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _DictionaryKeyedDecodingContainer.allKeys.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any].Keys, MEMORY[0x1E69E5D88]);
  lazy protocol witness table accessor for type [String : Any].Keys and conformance [A : B].Keys();

  v5 = Sequence.compactMap<A>(_:)();

  return v5;
}

uint64_t _DictionaryKeyedDecodingContainer.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_5;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_5:
    v12 = 0;
    memset(v14, 0, sizeof(v14));
    goto LABEL_6;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v9, v14);
  v12 = 1;
LABEL_6:
  outlined destroy of Any?(v14);
  return v12;
}

uint64_t _DictionaryKeyedDecodingContainer._errorDescription(of:)(void *a1, uint64_t a2)
{
  if (*(a2 + 112) != 1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x18D00C9B0](2238496, 0xE300000000000000);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x18D00C9B0](v14);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = dispatch thunk of CodingKey.stringValue.getter();
  v5 = v4;
  v6 = specialized static DictionaryEncoder.KeyEncodingStrategy._convertToSnakeCase(_:)(v3, v4);
  v8 = v7;
  v9 = specialized static DictionaryDecoder.KeyDecodingStrategy._convertFromSnakeCase(_:)(v6, v7);
  v11 = v10;
  v12 = v6 == v3 && v8 == v5;
  if (v12 || (v13 = v9, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x18D00C9B0](2238496, 0xE300000000000000);
    MEMORY[0x18D00C9B0](v3, v5);
LABEL_9:

    MEMORY[0x18D00C9B0](10530, 0xE200000000000000);
    return 0;
  }

  v16 = v13 == v3 && v11 == v5;
  if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    _StringGuts.grow(_:)(26);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x18D00C9B0](2238496, 0xE300000000000000);
    MEMORY[0x18D00C9B0](v3, v5);

    v17 = 0x800000018CD471E0;
    v18 = 0xD000000000000011;
  }

  else
  {
    _StringGuts.grow(_:)(60);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x18D00C9B0](2238496, 0xE300000000000000);
    MEMORY[0x18D00C9B0](v3, v5);

    MEMORY[0x18D00C9B0](0xD000000000000022, 0x800000018CD471B0);
    MEMORY[0x18D00C9B0](v13, v11);

    v18 = 0x7265766E6F63202CLL;
    v17 = 0xEF206F7420646574;
  }

  MEMORY[0x18D00C9B0](v18, v17);
  MEMORY[0x18D00C9B0](v6, v8);

  return 0;
}

uint64_t _DictionaryKeyedDecodingContainer.decodeNil(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v11 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_6;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_6:
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v19[3] = a5;
    v19[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    v21 = *(a5 - 8);
    v22 = *(v21 + 16);
    v17 = v21 + 16;
    v22(boxed_opaque_existential_1, a1, a5);
    swift_beginAccess();
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v32 = 0xD00000000000001DLL;
    v33 = 0x800000018CD47220;
    v30 = a5;
    v31 = a6;
    v23 = __swift_allocate_boxed_opaque_existential_1(&v29);
    v22(v23, a1, a5);
    v24 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v29, a2);
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    MEMORY[0x18D00C9B0](v24, v26);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v19, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v17 & 1;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v13, v34);
  outlined init with take of Any(v34, &v29);
  outlined init with take of Any(&v29, v34);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  v16 = swift_dynamicCast();
  v17 = v16;
  if (v16)
  {
  }

  return v17 & 1;
}

uint64_t _DictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v48 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v45 - v13;
  v49 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v50 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v47 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v47 = type metadata accessor for DecodingError();
    v45[1] = swift_allocError();
    v32 = v31;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v46 = *(v33 + 48);
    v34 = v49;
    v32[3] = a5;
    v32[4] = v34;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    v36 = *(v9 + 16);
    v36(boxed_opaque_existential_1, a1, a5);
    v37 = v48;
    swift_beginAccess();
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v54[0] = 0xD00000000000001DLL;
    v54[1] = 0x800000018CD47220;
    v52 = a5;
    v53 = v34;
    v38 = __swift_allocate_boxed_opaque_existential_1(&v51);
    v36(v38, a1, a5);
    v39 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v51, v37);
    v41 = v40;
    __swift_destroy_boxed_opaque_existential_1(&v51);
    v23 = v54;
    MEMORY[0x18D00C9B0](v39, v41);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v47 - 8) + 104))(v32, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v23 & 1;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v55);
  outlined init with take of Any(v55, &v51);
  v46 = *(v9 + 16);
  v46(v14, a1, a5);
  v22 = v48;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v49;
  v27 = *(v23 + 16);
  v26 = *(v23 + 24);
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v46(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  LOBYTE(v23) = v22;
  v28 = v47;
  specialized __DictionaryDecoder.unbox(_:as:)(&v51);
  if (v28)
  {
    v30 = v22;
  }

  else
  {
    LOBYTE(v23) = v29;
    if (v29 != 2)
    {
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v51);
      return v23 & 1;
    }

    v23 = type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v42;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v43 = MEMORY[0x1E69E6370];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v23 - 8) + 104))(v43, *MEMORY[0x1E69E6B08], v23);
    swift_willThrow();
    v30 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v30);
  __swift_destroy_boxed_opaque_existential_1(&v51);
  return v23 & 1;
}

unint64_t *_DictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v50 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v51 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v52 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v49 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v49 = type metadata accessor for DecodingError();
    v47[1] = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v48 = *(v35 + 48);
    v36 = v51;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v9 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v50;
    swift_beginAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v56[0] = 0xD00000000000001DLL;
    v56[1] = 0x800000018CD47220;
    v54 = a5;
    v55 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v53, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = v56;
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v57);
  outlined init with take of Any(v57, &v53);
  v48 = *(v9 + 16);
  v48(v14, a1, a5);
  v22 = v50;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v51;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v48(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v49;
  specialized __DictionaryDecoder.unbox(_:as:)(&v53, &selRef_integerValue, &selRef_initWithInteger_, 7630409, 0xE300000000000000);
  if (v29)
  {
    v32 = v22;
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      v28 = v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v28;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v45 = MEMORY[0x1E69E6530];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v45, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v32 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x100) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v44 = MEMORY[0x1E69E7230];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x10000) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v44 = MEMORY[0x1E69E7290];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52, &selRef_intValue, &selRef_initWithInt_, 0x3233746E49, 0xE500000000000000);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x100000000) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v44 = MEMORY[0x1E69E72F0];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v58 = a4;
  v50 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v51 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v52 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v49 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v49 = type metadata accessor for DecodingError();
    v47[1] = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v48 = *(v35 + 48);
    v36 = v51;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v9 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v50;
    swift_beginAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v56[0] = 0xD00000000000001DLL;
    v56[1] = 0x800000018CD47220;
    v54 = a5;
    v55 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v53, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = v56;
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v57);
  outlined init with take of Any(v57, &v53);
  v48 = *(v9 + 16);
  v48(v14, a1, a5);
  v22 = v50;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v51;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v48(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v49;
  specialized __DictionaryDecoder.unbox(_:as:)(&v53, &selRef_longLongValue, &selRef_initWithLongLong_, 0x3436746E49, 0xE500000000000000);
  if (v29)
  {
    v32 = v22;
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      v28 = v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v28;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v45 = MEMORY[0x1E69E7360];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v45, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v32 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v28;
}

{
  v58 = a4;
  v50 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v51 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v52 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v49 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v49 = type metadata accessor for DecodingError();
    v47[1] = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v48 = *(v35 + 48);
    v36 = v51;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v9 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v50;
    swift_beginAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v56[0] = 0xD00000000000001DLL;
    v56[1] = 0x800000018CD47220;
    v54 = a5;
    v55 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v53, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = v56;
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v57);
  outlined init with take of Any(v57, &v53);
  v48 = *(v9 + 16);
  v48(v14, a1, a5);
  v22 = v50;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v51;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v48(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v49;
  specialized __DictionaryDecoder.unbox(_:as:)(&v53, &selRef_unsignedIntegerValue, &selRef_initWithUnsignedInteger_, 1953384789, 0xE400000000000000);
  if (v29)
  {
    v32 = v22;
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      v28 = v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v28;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v45 = MEMORY[0x1E69E6810];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v45, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v32 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x100) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v44 = MEMORY[0x1E69E7508];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x10000) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v44 = MEMORY[0x1E69E75F8];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52, &selRef_unsignedIntValue, &selRef_initWithUnsignedInt_, 0x3233746E4955, 0xE600000000000000);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x100000000) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v44 = MEMORY[0x1E69E7668];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v58 = a4;
  v50 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v51 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v52 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v49 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v49 = type metadata accessor for DecodingError();
    v47[1] = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v48 = *(v35 + 48);
    v36 = v51;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v9 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v50;
    swift_beginAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v56[0] = 0xD00000000000001DLL;
    v56[1] = 0x800000018CD47220;
    v54 = a5;
    v55 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v53, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = v56;
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v57);
  outlined init with take of Any(v57, &v53);
  v48 = *(v9 + 16);
  v48(v14, a1, a5);
  v22 = v50;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v51;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v48(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v49;
  specialized __DictionaryDecoder.unbox(_:as:)(&v53, &selRef_unsignedLongLongValue, &selRef_initWithUnsignedLongLong_, 0x3436746E4955, 0xE600000000000000);
  if (v29)
  {
    v32 = v22;
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      v28 = v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v28;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v45 = MEMORY[0x1E69E76D8];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v45, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v32 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v28;
}

{
  v58 = a4;
  v50 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v51 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v52 = a3;
  if (!v18)
  {

    goto LABEL_11;
  }

  v49 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_11:
    v49 = type metadata accessor for DecodingError();
    v47[1] = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v48 = *(v35 + 48);
    v36 = v51;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v9 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v50;
    swift_beginAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v56[0] = 0xD00000000000001DLL;
    v56[1] = 0x800000018CD47220;
    v54 = a5;
    v55 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v53, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = v56;
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v57);
  outlined init with take of Any(v57, &v53);
  v48 = *(v9 + 16);
  v48(v14, a1, a5);
  v22 = v50;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v51;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v48(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v49;
  v30 = specialized __DictionaryDecoder.unbox(_:as:)(&v53);
  if (v29)
  {
    v32 = v22;
  }

  else
  {
    if (v31)
    {
      v28 = v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v28;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v46 = MEMORY[0x1E69E6158];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v46, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v32 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v28;
}

uint64_t $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 136);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(a1 + 136) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

float _DictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v50 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v51 = v16;
  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = *(a3 + 16);
  v52 = a3;
  if (!v19)
  {

    goto LABEL_10;
  }

  v49 = v5;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_10:
    v49 = type metadata accessor for DecodingError();
    v47 = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v48 = *(v34 + 48);
    v35 = v51;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v10 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v50;
    swift_beginAccess();
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v57 = 0xD00000000000001DLL;
    v58 = 0x800000018CD47220;
    v55 = a5;
    v56 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v54);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v54, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v54);
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v6;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v20, v59);
  outlined init with take of Any(v59, &v54);
  v48 = *(v10 + 16);
  v48(v15, a1, a5);
  v23 = v50;
  swift_beginAccess();
  v24 = *(v23 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 136) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    *(v23 + 136) = v24;
  }

  v26 = v51;
  v28 = v24[2];
  v27 = v24[3];
  if (v28 >= v27 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
    *(v23 + 136) = v24;
  }

  v48(v12, v15, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v28, v12, (v23 + 136), a5, v26);
  (*(v10 + 8))(v15, a5);
  *(v23 + 136) = v24;
  swift_endAccess();
  v29 = v49;
  specialized __DictionaryDecoder.unbox(_:as:)(&v54);
  if (v29)
  {
    v31 = v23;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v54);
    return v6;
  }

  if ((v30 & 0x100000000) != 0)
  {
    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v45 = MEMORY[0x1E69E6448];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6B08], v43);
    swift_willThrow();
    v31 = v23;
    goto LABEL_14;
  }

  v6 = *&v30;
  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v23);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  return v6;
}

double _DictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v51 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v52 = v16;
  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = *(a3 + 16);
  v53 = a3;
  if (!v19)
  {

    goto LABEL_10;
  }

  v50 = v5;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_10:
    v50 = type metadata accessor for DecodingError();
    v48 = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v49 = *(v35 + 48);
    v36 = v52;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v10 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v51;
    swift_beginAccess();
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v58 = 0xD00000000000001DLL;
    v59 = 0x800000018CD47220;
    v56 = a5;
    v57 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v55);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v55, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v55);
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v50 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v6;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v20, v60);
  outlined init with take of Any(v60, &v55);
  v49 = *(v10 + 16);
  v49(v15, a1, a5);
  v23 = v51;
  swift_beginAccess();
  v24 = *(v23 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 136) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    *(v23 + 136) = v24;
  }

  v26 = v52;
  v28 = v24[2];
  v27 = v24[3];
  if (v28 >= v27 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
    *(v23 + 136) = v24;
  }

  v49(v12, v15, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v28, v12, (v23 + 136), a5, v26);
  (*(v10 + 8))(v15, a5);
  *(v23 + 136) = v24;
  swift_endAccess();
  v29 = v50;
  v30 = specialized __DictionaryDecoder.unbox(_:as:)(&v55);
  if (v29)
  {
    v32 = v23;
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      v6 = *&v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v23);
      __swift_destroy_boxed_opaque_existential_1(&v55);
      return v6;
    }

    v44 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v46 = MEMORY[0x1E69E63B0];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6B08], v44);
    swift_willThrow();
    v32 = v23;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  return v6;
}

uint64_t _DictionaryKeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v67 = a1;
  v72 = a5;
  v70 = a3;
  v65 = a9;
  v15 = type metadata accessor for Optional();
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v61 - v16;
  v17 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v69 = a2;
  v79 = a8;
  v24 = dispatch thunk of CodingKey.stringValue.getter();
  v26 = *(a4 + 16);
  v71 = a4;
  if (!v26)
  {

    goto LABEL_11;
  }

  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_11:
    v67 = type metadata accessor for DecodingError();
    v68 = swift_allocError();
    v49 = v48;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v66 = *(v50 + 48);
    v51 = v79;
    v49[3] = a6;
    v49[4] = v51;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    v53 = *(v17 + 16);
    v54 = v69;
    v53(boxed_opaque_existential_1, v69, a6);
    v55 = v70;
    swift_beginAccess();
    *&v73 = 0;
    *(&v73 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v76 = 0xD00000000000001DLL;
    v77 = 0x800000018CD47220;
    v74 = a6;
    v75 = v51;
    v56 = __swift_allocate_boxed_opaque_existential_1(&v73);
    v53(v56, v54, a6);
    v57 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v73, v55);
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_1(&v73);
    MEMORY[0x18D00C9B0](v57, v59);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v67 - 8) + 104))(v49, *MEMORY[0x1E69E6AF0]);
    return swift_willThrow();
  }

  v62 = a7;
  v61 = a10;
  outlined init with copy of Any(*(a4 + 56) + 32 * v27, v78);
  outlined init with take of Any(v78, &v73);
  v30 = a6;
  v31 = *(v17 + 16);
  v31(v23, v69, a6);
  v32 = v70;
  swift_beginAccess();
  v33 = *(v32 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 136) = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
    *(v32 + 136) = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
    *(v32 + 136) = v33;
  }

  v31(v20, v23, v30);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v36, v20, (v32 + 136), v30, v79);
  (*(v17 + 8))(v23, v30);
  *(v32 + 136) = v33;
  swift_endAccess();
  v37 = v67;
  v38 = v68;
  v39 = v62;
  v40 = v66;
  __DictionaryDecoder.unbox<A>(_:as:)(&v73, v67, v62, v61, v68);
  if (v40)
  {
    goto LABEL_13;
  }

  v41 = *(v39 - 8);
  if ((*(v41 + 48))(v38, 1, v39) != 1)
  {
    (*(v41 + 32))(v65, v38, v39);
LABEL_13:
    v47 = v32;
    goto LABEL_14;
  }

  (*(v63 + 8))(v38, v64);
  v42 = type metadata accessor for DecodingError();
  v68 = swift_allocError();
  v43 = v37;
  v45 = v44;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
  *v45 = v43;
  *&v78[0] = 0;
  *(&v78[0] + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(41);

  *&v78[0] = 0x6465746365707845;
  *(&v78[0] + 1) = 0xE900000000000020;
  v46 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v46);

  MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD47240);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v42 - 8) + 104))(v45, *MEMORY[0x1E69E6B08], v42);
  swift_willThrow();
  v47 = v32;
LABEL_14:
  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v47);
  return __swift_destroy_boxed_opaque_existential_1(&v73);
}

uint64_t _DictionaryKeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v60 = a4;
  v66 = a7;
  v63 = a6;
  v59 = a8;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v57 - v17;
  v19 = *(v12 + 16);
  v64 = v20;
  v62 = v19;
  (v19)(v57 - v17, v16);
  swift_beginAccess();
  v21 = a2[17];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[17] = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    a2[17] = v21;
  }

  v65 = a9;
  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
    a2[17] = v21;
  }

  v62(v14, v18, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v24, v14, a2 + 17, a5, v66);
  (*(v12 + 8))(v18, a5);
  a2[17] = v21;
  swift_endAccess();
  v25 = dispatch thunk of CodingKey.stringValue.getter();
  v27 = a3;
  if (!*(a3 + 16))
  {

    goto LABEL_10;
  }

  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_10:

    v58 = type metadata accessor for DecodingError();
    v61 = swift_allocError();
    v43 = v42;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v57[2] = *(v44 + 48);
    v45 = v66;
    v43[3] = a5;
    v43[4] = v45;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    v47 = v64;
    v59 = a2;
    v48 = v62;
    v62(boxed_opaque_existential_1, v64, a5);
    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    v57[1] = v27;

    _StringGuts.grow(_:)(42);

    *&v70 = 0x6720746F6E6E6143;
    *(&v70 + 1) = 0xEB00000000207465;
    type metadata accessor for KeyedDecodingContainer();
    v49 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v49);

    MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD47200);
    v68 = a5;
    v69 = v45;
    v50 = __swift_allocate_boxed_opaque_existential_1(&v67);
    v48(v50, v47, a5);
    a2 = v59;
    v51 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v67, v59);
    v53 = v52;
    __swift_destroy_boxed_opaque_existential_1(&v67);
    MEMORY[0x18D00C9B0](v51, v53);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v58 - 8) + 104))(v43, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  }

  outlined init with copy of Any(*(v27 + 56) + 32 * v28, &v70);
  outlined init with take of Any(&v70, &v67);
  outlined init with copy of Any(&v67, &v70);
  type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E5E28]);
  if (swift_dynamicCast())
  {
    v31 = v63;
    v32 = v65;
    specialized _DictionaryKeyedDecodingContainer.init(referencing:wrapping:)(a2, v72);
    v34 = v33;
    v36 = v35;
    v38 = v37;

    *&v70 = v34;
    *(&v70 + 1) = v36;
    v71 = v38;
    v40 = type metadata accessor for _DictionaryKeyedDecodingContainer(0, v31, v32, v39);
    swift_getWitnessTable(protocol conformance descriptor for _DictionaryKeyedDecodingContainer<A>, v40);
    KeyedDecodingContainer.init<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(&v67);
    return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  }

  v54 = type metadata accessor for DecodingError();
  swift_allocError();
  v56 = v55;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
  *v56 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(&v67);
  return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
}

uint64_t _DictionaryKeyedDecodingContainer.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v51 = a4;
  v55 = a6;
  v56 = a3;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v49 - v15;
  v53 = *(v10 + 16);
  v54 = v17;
  v53(v49 - v15, v14);
  swift_beginAccess();
  v18 = *(a2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 136) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *(a2 + 136) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    *(a2 + 136) = v18;
  }

  (v53)(v12, v16, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v21, v12, (a2 + 136), a5, v55);
  (*(v10 + 8))(v16, a5);
  *(a2 + 136) = v18;
  swift_endAccess();
  v22 = dispatch thunk of CodingKey.stringValue.getter();
  v24 = v56;
  if (!*(v56 + 16))
  {

    goto LABEL_10;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_10:
    v50 = type metadata accessor for DecodingError();
    v52 = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)(0);
    v49[1] = *(v35 + 48);
    v36 = v55;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = a2;
    v40 = v53;
    v39 = v54;
    (v53)(boxed_opaque_existential_1, v54, a5);
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(64);
    v60[0] = v57;
    MEMORY[0x18D00C9B0](0xD00000000000003ELL, 0x800000018CD47170);
    v58 = a5;
    v59 = v36;
    v41 = __swift_allocate_boxed_opaque_existential_1(&v57);
    v42 = v39;
    a2 = v38;
    v40(v41, v42, a5);
    v43 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v57, v38);
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_1(&v57);
    MEMORY[0x18D00C9B0](v43, v45);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v50 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  }

  v28 = a7;
  outlined init with copy of Any(*(v24 + 56) + 32 * v25, v60);
  outlined init with take of Any(v60, &v57);
  outlined init with copy of Any(&v57, v60);
  _sypSgMaTm_0(0, &lazy cache variable for type metadata for [Any], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if (swift_dynamicCast())
  {
    v29 = v61;
    v30 = *(a2 + 136);
    v28[3] = &unk_1EFFB8488;
    v28[4] = lazy protocol witness table accessor for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer();
    v31 = swift_allocObject();
    *v28 = v31;
    v31[2] = a2;
    v31[3] = v29;
    v31[4] = v30;
    v31[5] = 0;

    __swift_destroy_boxed_opaque_existential_1(&v57);
    return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  }

  v46 = type metadata accessor for DecodingError();
  swift_allocError();
  v48 = v47;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
  *v48 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(&v57);
  return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
}

uint64_t _DictionaryKeyedDecodingContainer._superDecoder(forKey:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v37 = a7;
  outlined init with copy of _Benchmark(a1, &v46);
  swift_beginAccess();
  v10 = *(a2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 136) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    *(a2 + 136) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  v38 = a3;
  if (v13 >= v12 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    *(a2 + 136) = v10;
  }

  v14 = *(&v47 + 1);
  v15 = v48;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v13, v19, (a2 + 136), v14, v15);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  *(a2 + 136) = v10;
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = dispatch thunk of CodingKey.stringValue.getter();
  v23 = v38;
  if (*(v38 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
    v26 = v25;

    if (v26)
    {
      outlined init with copy of Any(*(v23 + 56) + 32 * v24, &v46);
      outlined init with take of Any(&v46, &v44);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v46 = 0u;
  v47 = 0u;
  v27 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v45 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  *&v44 = v27;
  if (*(&v47 + 1))
  {
    outlined destroy of Any?(&v46);
  }

LABEL_11:
  outlined init with copy of Any(&v44, v43);
  v28 = *(a2 + 136);
  v29 = *(a2 + 72);
  v30 = *(a2 + 104);
  v50 = *(a2 + 88);
  v51 = v30;
  v52 = *(a2 + 120);
  v31 = *(a2 + 40);
  v46 = *(a2 + 24);
  v47 = v31;
  v48 = *(a2 + 56);
  v49 = v29;
  v32 = type metadata accessor for __DictionaryDecoder();
  swift_allocObject();

  outlined init with copy of DictionaryDecoder._Options(&v46, &v42);
  v33 = __DictionaryDecoder.init(referencing:at:options:)(v43, v28, &v46);
  v34 = v37;
  v37[3] = v32;
  v34[4] = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryDecoder and conformance __DictionaryDecoder, type metadata accessor for __DictionaryDecoder, protocol conformance descriptor for __DictionaryDecoder);
  *v34 = v33;
  __swift_destroy_boxed_opaque_existential_1(&v44);
  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _DictionaryKeyedDecodingContainer.superDecoder()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v14[3] = &unk_1EFFB8510;
  v14[4] = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v12 = swift_allocObject();
  v14[0] = v12;
  *(v12 + 16) = 0x7265707573;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  return _DictionaryKeyedDecodingContainer._superDecoder(forKey:)(v14, a1, a2, a3, a4, a5, a6);
}

uint64_t _DictionaryKeyedDecodingContainer.superDecoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v16[3] = a5;
  v16[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  return _DictionaryKeyedDecodingContainer._superDecoder(forKey:)(v16, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeNil(forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:)) & 1;
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void, void))
{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

unint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7100]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7128]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7150]);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7118]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7120]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7140]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7138]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7148]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7160]);
}