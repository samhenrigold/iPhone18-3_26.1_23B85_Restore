void specialized static DiffResult.translateMovesToArraySemantics(sortedRemovals:moves:sortedInsertions:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v71 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v8 = v71;
    v9 = (a2 + 32);
    v10 = *(v71 + 2);
    v11 = 32 * v10;
    do
    {
      v12 = *v9;
      v71 = v8;
      v13 = *(v8 + 3);
      v14 = v10 + 1;
      if (v10 >= v13 >> 1)
      {
        v70 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v10 + 1, 1);
        v12 = v70;
        v8 = v71;
      }

      *(v8 + 2) = v14;
      v15 = &v8[v11];
      *(v15 + 2) = v12;
      *(v15 + 6) = 0;
      *(v15 + 7) = 0;
      v11 += 32;
      ++v9;
      v10 = v14;
      --v3;
    }

    while (v3);
    v71 = v8;

    specialized MutableCollection<>.sort(by:)(&v71);

    v16 = v71;
    v72 = v71;
    i = *(v71 + 2);
    if (!i)
    {
      goto LABEL_33;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_117;
    }

    while (1)
    {
      v18 = 0;
      v19 = 0;
      v20 = *(a3 + 16);
      v21 = *(v16 + 2);
      do
      {
        if (v18 >= v21)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        if (v19 < 0)
        {
          goto LABEL_109;
        }

        v22 = &v16[32 * v18 + 32];
        if (v20 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v20;
        }

        if (!v19)
        {
          v23 = 0;
        }

        v24 = v20 - v23;
        if (v20 - v23 >= 1)
        {
          v19 = v23;
          while (1)
          {
            v25 = v24 >> 1;
            v26 = v19 + (v24 >> 1);
            if (__OFADD__(v19, v24 >> 1))
            {
              break;
            }

            if (v26 < v23 || v26 >= v20)
            {
              goto LABEL_92;
            }

            v24 += ~v25;
            if (*(a3 + 32 + 8 * v26) < *(v22 + 8))
            {
              v19 = v26 + 1;
            }

            else
            {
              v24 = v25;
            }

            if (v24 <= 0)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          v71 = v4;
          v16 = &v71;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1, 0);
          v4 = v71;
          for (i = v3 + 56; ; i += 4)
          {
            v61 = *(i - 3);
            v62 = *(i - 1);
            v63 = v61 + v62;
            if (__OFADD__(v61, v62))
            {
              break;
            }

            v64 = *(i - 2);
            v65 = v64 + *i;
            if (__OFADD__(v64, *i))
            {
              goto LABEL_119;
            }

            v71 = v4;
            v66 = *(v4 + 2);
            v67 = *(v4 + 3);
            a3 = v66 + 1;
            if (v66 >= v67 >> 1)
            {
              v16 = &v71;
              v69 = *(v4 + 2);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v66 + 1, 1);
              v66 = v69;
              v4 = v71;
            }

            *(v4 + 2) = a3;
            v68 = &v4[16 * v66];
            *(v68 + 4) = v63;
            *(v68 + 5) = v65;
            if (!--a1)
            {

              return;
            }
          }

          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v19 = v23;
LABEL_30:
        v28 = *(v22 + 24);
        v29 = __OFSUB__(v28, v19);
        v30 = v28 - v19;
        if (v29)
        {
          goto LABEL_110;
        }

        ++v18;
        *(v22 + 24) = v30;
      }

      while (v18 != i);
      v72 = v16;
LABEL_33:
      specialized MutableCollection<>.sort(by:)(&v72);
      v16 = v72;
      v3 = *(v72 + 2);
      if (v3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        }

        v31 = 0;
        v32 = 0;
        v33 = *(a1 + 16);
        v34 = *(v16 + 2);
        while (v31 < v34)
        {
          if (v32 < 0)
          {
            goto LABEL_112;
          }

          v35 = &v16[32 * v31 + 32];
          if (v33 >= v32)
          {
            v36 = v32;
          }

          else
          {
            v36 = v33;
          }

          if (!v32)
          {
            v36 = 0;
          }

          v37 = v33 - v36;
          if (v33 - v36 >= 1)
          {
            v32 = v36;
            while (1)
            {
              v38 = v37 >> 1;
              v39 = v32 + (v37 >> 1);
              if (__OFADD__(v32, v37 >> 1))
              {
                goto LABEL_93;
              }

              if (v39 < v36 || v39 >= v33)
              {
                goto LABEL_94;
              }

              v37 += ~v38;
              if (*(a1 + 32 + 8 * v39) < *v35)
              {
                v32 = v39 + 1;
              }

              else
              {
                v37 = v38;
              }

              if (v37 <= 0)
              {
                goto LABEL_58;
              }
            }
          }

          v32 = v36;
LABEL_58:
          v41 = *(v35 + 2);
          v29 = __OFSUB__(v41, v32);
          v42 = v41 - v32;
          if (v29)
          {
            goto LABEL_113;
          }

          ++v31;
          *(v35 + 2) = v42;
          if (v31 == v3)
          {
            v72 = v16;
            goto LABEL_61;
          }
        }

LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
      }

      else
      {
LABEL_61:
        specialized MutableCollection<>.reverse()();
        v3 = v72;
        v16 = *(v72 + 2);
        if (!v16)
        {
LABEL_89:

          return;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_121:
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        v43 = 0;
        v44 = v3 + 72;
        v45 = -1;
        while (v43 != v16)
        {
          v46 = *(v3 + 2);
          if (v43 >= v46)
          {
            goto LABEL_116;
          }

          v47 = (v43 + 1);
          v48 = &v3[32 * v43 + 32];
          v49 = *v48;
          v50 = *(v48 + 8);
          v51 = *(v48 + 24);
          if (v43 + 1 != v46)
          {
            if (v43 + 1 >= v46)
            {
              goto LABEL_120;
            }

            v52 = v46 + v45;
            v53 = v44;
            while (1)
            {
              v54 = *v53;
              v53 += 4;
              if (v54 < v50)
              {
                v29 = __OFSUB__(v51--, 1);
                if (v29)
                {
                  goto LABEL_114;
                }
              }

              if (!--v52)
              {
                v55 = &v3[32 * v46 + 16];
                v56 = v46 - 1;
                while (v47 < (v56 + 1))
                {
                  if (v56 >= *(v3 + 2))
                  {
                    goto LABEL_96;
                  }

                  v57 = *(v55 - 2);
                  v58 = *v55;
                  v29 = __OFADD__(v57, *v55);
                  v59 = v57 + *v55;
                  if (v29)
                  {
                    goto LABEL_97;
                  }

                  if (__OFADD__(v50, v51))
                  {
                    goto LABEL_98;
                  }

                  if (v59 < v50 + v51)
                  {
                    v29 = __OFADD__(v51++, 1);
                    if (v29)
                    {
                      goto LABEL_99;
                    }
                  }

                  else
                  {
                    v29 = __OFADD__(v58, 1);
                    v60 = v58 + 1;
                    if (v29)
                    {
                      goto LABEL_100;
                    }

                    *v55 = v60;
                  }

                  v55 -= 32;
                  if (v43 == --v56)
                  {
                    a1 = *(v3 + 2);
                    if (v43 < a1)
                    {
                      goto LABEL_68;
                    }

                    goto LABEL_88;
                  }
                }

                goto LABEL_95;
              }
            }
          }

          a1 = v43 + 1;
          if (v43 >= v47)
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

LABEL_68:
          *v48 = v49;
          *(v48 + 8) = v50;
          v44 += 32;
          --v45;
          ++v43;
          *(v48 + 24) = v51;
          if (v47 == v16)
          {
            goto LABEL_101;
          }
        }
      }

      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }
  }
}

id static CALayerPlatformViewDefinition.makePlatformView(view:kind:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  [v3 setCoordinatedAnimationDelegate];
  result = [v3 setAnchorPoint_];
  if (v2 <= 0xE)
  {
    v5 = 1;
    if (((1 << v2) & 0x7801) != 0)
    {
      [v3 setAllowsGroupOpacity_];
      v5 = 0;
      v6 = &selRef_setAllowsGroupBlending_;
    }

    else
    {
      if (((1 << v2) & 0xE) == 0)
      {
        return result;
      }

      v6 = &selRef_setAllowsEdgeAntialiasing_;
    }

    v7 = *v6;

    return [v3 v7];
  }

  return result;
}

id static CALayerPlatformViewDefinition.setProjectionTransform(_:projectionView:)(__int128 *a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a1[1];
  v10 = *a1;
  v7 = *(a1 + 8);
  v11 = 0;
  v12 = v6;
  v13 = v4;
  v14 = 0;
  v15 = v5;
  v16 = 0;
  v17 = 0;
  v8 = a1[3];
  v18 = xmmword_18DDAA020;
  v19 = v8;
  v20 = 0;
  v21 = v7;
  return [v3 setTransform_];
}

uint64_t static CALayerPlatformViewDefinition.getRBLayer(drawingView:)(uint64_t a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

void (*CGDrawingLayer.options.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options;
  *a1 = v1;
  *(a1 + 8) = v2;
  v3 = (v1 + v2);
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 12);
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 24) = v6;
  *(a1 + 28) = v3;
  return CGDrawingLayer.options.modify;
}

void CGDrawingLayer.options.modify(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  v4 = *a1 + *(a1 + 8);
  v5 = *v4;
  v6 = *(v4 + 4);
  v7 = *(v4 + 5);
  v8 = *(v4 + 8);
  v9 = *(v4 + 12);
  *v4 = *(a1 + 16);
  *(v4 + 4) = v1;
  *(v4 + 8) = v2;
  *(v4 + 12) = v3;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  CGDrawingLayer.options.didset(&v10);
}

id CGDrawingLayer.init(layer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v4[40] = 5;
  v5 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_state];
  *v5 = 3;
  *(v5 + 1) = 0;
  v29 = a1;
  outlined init with copy of Any(a1, v32);
  v28 = ObjectType;
  if (swift_dynamicCast())
  {
    v6 = v31;
    v7 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
    v8 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 8];
    v9 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 16];
    v10 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 24];
    v11 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 32];
    v12 = *v4;
    v13 = *(v4 + 1);
    v14 = *(v4 + 2);
    v15 = *(v4 + 3);
    v16 = *(v4 + 4);
    v17 = v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 40];
    *v4 = v7;
    *(v4 + 1) = v8;
    *(v4 + 2) = v9;
    *(v4 + 3) = v10;
    *(v4 + 4) = v11;
    v18 = v4[40];
    v4[40] = v17;
    outlined copy of PlatformDrawableContent.Storage(v7, v8, v9, v10, v11, v17);
    outlined consume of PlatformDrawableContent.Storage(v12, v13, v14, v15, v16, v18);
    v19 = &v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_state];
    swift_beginAccess();
    v20 = *v19;
    v21 = *(v19 + 1);
    swift_beginAccess();
    *v5 = v20;
    *(v5 + 1) = v21;

    v22 = *&v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 4];
    v23 = *&v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 8];
    v24 = v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 12];
    v25 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options];
    *v25 = *&v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options];
    *(v25 + 2) = v22;
    *(v25 + 2) = v23;
    v25[12] = v24;
    v30.receiver = v1;
    v30.super_class = v28;
    v26 = objc_msgSendSuper2(&v30, sel_initWithLayer_, v6);

    __swift_destroy_boxed_opaque_existential_1(v29);
    return v26;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double CGDrawingLayer.drawForTesting(in:)(void *a1)
{
  v12[0] = 3;
  v13 = 0;
  v6 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
  v7 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 8];
  v8 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 16];
  v9 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 24];
  v10 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 32];
  v11 = v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 40];
  [v1 bounds];
  PlatformDrawableContent.draw(in:size:state:)(a1, v12, v3, v4);
  outlined consume of PlatformDrawableContent.Storage(v6, v7, v8, v9, v10, v11);

  return result;
}

void (*protocol witness for PlatformDrawable.options.modify in conformance CGDrawingLayer(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CGDrawingLayer.options.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

void *RBDrawingLayer.init(layer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state;
  type metadata accessor for AtomicBuffer<RBDrawingLayer.State>(0, v5, v6, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0;
  *(v8 + 64) = 5;
  *(v8 + 72) = 3;
  *(v8 + 80) = 0;
  *&v1[v4] = v8;
  outlined init with copy of Any(a1, v18);
  if (swift_dynamicCast())
  {
    v9 = v17;
    v10 = *&v17[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 4];
    v11 = *&v17[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 8];
    v12 = v17[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 12];
    v13 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options];
    *v13 = *&v17[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options];
    *(v13 + 2) = v10;
    *(v13 + 2) = v11;
    v13[12] = v12;
    *&v1[v4] = *&v9[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state];

    v16.receiver = v1;
    v16.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v16, sel_initWithLayer_, v9);

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v14;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t @objc CGDrawingLayer.init(layer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return a4(&v6);
}

void closure #1 in RBDrawingLayer.makeAsyncUpdate(content:required:layer:bounds:)(char *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *&a1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state];
  outlined init with copy of PlatformDrawableContent(a2, v17);

  os_unfair_lock_lock(v12 + 4);
  outlined assign with take of PlatformDrawableContent(a2, &v12[6]);
  os_unfair_lock_unlock(v12 + 4);

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #1 in RBDrawingLayer.makeAsyncUpdate(content:required:layer:bounds:);
  *(v14 + 24) = v13;
  v17[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RBDisplayList) -> ();
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
  v17[3] = &block_descriptor;
  v15 = _Block_copy(v17);
  v16 = a1;

  [v16 displayWithBounds:v15 callback:{a3, a4, a5, a6}];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }
}

double RBDrawingLayer.drawForTesting(in:)(void *a1)
{
  v13[0] = 3;
  v14 = 0;
  v3 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state];

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  outlined copy of PlatformDrawableContent.Storage(v4, v5, v6, v7, v8, v9);
  os_unfair_lock_unlock((v3 + 16));

  [v1 bounds];
  PlatformDrawableContent.draw(in:size:state:)(a1, v13, v10, v11);
  outlined consume of PlatformDrawableContent.Storage(v4, v5, v6, v7, v8, v9);

  return result;
}

id CGDrawingLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*protocol witness for PlatformDrawable.options.modify in conformance RBDrawingLayer(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 4);
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 8);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 12);
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options);
  *(a1 + 12) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  return protocol witness for PlatformDrawable.options.modify in conformance RBDrawingLayer;
}

id protocol witness for PlatformDrawable.options.modify in conformance RBDrawingLayer(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = *(a1 + 13);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v6 = *(a1 + 8);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  return RBDrawingLayer.options.setter(&v6);
}

void (*protocol witness for PlatformDrawable.makeAsyncUpdate(content:required:layer:bounds:) in conformance RBDrawingLayer(__int128 *a1, double a2, double a3, double a4, double a5))()
{
  v11 = a1[1];
  v17 = *a1;
  v18[0] = v11;
  *(v18 + 9) = *(a1 + 25);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v13 = a1[1];
  *(v12 + 24) = *a1;
  *(v12 + 40) = v13;
  *(v12 + 49) = *(a1 + 25);
  *(v12 + 72) = a2;
  *(v12 + 80) = a3;
  *(v12 + 88) = a4;
  *(v12 + 96) = a5;
  v14 = v5;
  outlined init with copy of PlatformDrawableContent(&v17, &v16);
  return partial apply for closure #1 in RBDrawingLayer.makeAsyncUpdate(content:required:layer:bounds:);
}

uint64_t initializeWithCopy for RBDrawingLayer.State(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v5, v6, v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for RBDrawingLayer.State(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v15 = *(a1 + 40);
  *(a1 + 40) = v9;
  outlined consume of PlatformDrawableContent.Storage(v10, v11, v12, v13, v14, v15);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for RBDrawingLayer.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v4;
  v12 = *(a1 + 40);
  *(a1 + 40) = v5;
  outlined consume of PlatformDrawableContent.Storage(v6, v7, v8, v9, v10, v12);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for RBDrawingLayer.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for RBDrawingLayer.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

void specialized RBDrawingLayer.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state;
  type metadata accessor for AtomicBuffer<RBDrawingLayer.State>(0, a2, a3, a4);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0;
  *(v6 + 64) = 5;
  *(v6 + 72) = 3;
  *(v6 + 80) = 0;
  *(v4 + v5) = v6;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

int *AccessibilityCore.TextResolutionOptions.inserting(_:)@<X0>(int *result@<X0>, int *a2@<X8>)
{
  v3 = *result;
  if ((*result & ~*v2) == 0)
  {
    v3 = 0;
  }

  *a2 = v3 | *v2;
  return result;
}

_DWORD *AccessibilityCore.TextResolutionOptions.removing(_:)@<X0>(_DWORD *result@<X0>, int *a2@<X8>)
{
  if ((*v2 & *result) != 0)
  {
    v3 = ~*result;
  }

  else
  {
    v3 = -1;
  }

  *a2 = v3 & *v2;
  return result;
}

uint64_t static AccessibilityCore.textResolvesToEmpty(_:in:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v8 = a5[1];
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = (a4 + 16 * v10 + 24);
    while (1)
    {
      v12 = *v11;
      v11 -= 16;
      if ((v12 & 0xE0) == 0xC0)
      {
        type metadata accessor for AccessibilityTextModifier();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = *(v13 + 48);
          if (v14)
          {
            break;
          }
        }
      }

      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v13 + 40);
    v17 = *(v13 + 24);
    v16 = *(v13 + 32);
    v23 = v9;
    v24 = v8;
    outlined copy of Text.Storage(v17, v16, v15 & 1);

    v18 = static AccessibilityCore.textResolvesToEmpty(_:in:)(v17, v16, v15 & 1, v14, &v23);
    outlined consume of Text.Storage(v17, v16, v15 & 1);

    v19 = v18;
  }

  else
  {
LABEL_8:
    if (a3)
    {
      v23 = v9;
      v24 = v8;
      v22 = 1;
      v19 = (*(*a1 + 88))(&v23, &v22);
    }

    else
    {
      v20 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v20 = a1 & 0xFFFFFFFFFFFFLL;
      }

      v19 = v20 == 0;
    }
  }

  return v19 & 1;
}

BOOL static AccessibilityCore.textsResolveToEmpty(_:in:)(uint64_t a1, __int128 *a2)
{
  v11 = *a2;
  v2 = (a1 + 56);
  v3 = *(a1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 4;
    v5 = *v2;
    v6 = *(v2 - 8);
    v8 = *(v2 - 3);
    v7 = *(v2 - 2);
    v12 = v11;
    outlined copy of Text.Storage(v8, v7, v6);

    v9 = static AccessibilityCore.textResolvesToEmpty(_:in:)(v8, v7, v6, v5, &v12);
    outlined consume of Text.Storage(v8, v7, v6);

    v2 = v4;
  }

  while ((v9 & 1) != 0);
  return v3 == 0;
}

void *static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int *a6, uint64_t *a7)
{
  v14 = type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  v78 = *(a5 + 8);
  v79 = v17;
  v18 = *a6;
  v19 = a7[1];
  *&v77 = *a7;
  *(&v77 + 1) = v19;
  v20 = *(a4 + 16);
  if (!v20)
  {
LABEL_8:
    if (a3)
    {

      Text.Style.init()(v16);
      v30 = &v16[v14[5]];
      *v30 = 0;
      *(v30 + 1) = 0;
      v31 = &v16[v14[6]];
      *v31 = 0;
      *(v31 + 1) = 0xE000000000000000;
      v32 = v14[7];
      v16[v32] = 0;
      v33 = *(&v77 + 1);
      *v30 = v77;
      *(v30 + 1) = v33;
      specialized Text.resolve<A>(into:in:with:)(v16, v79, v78, 1, a1, a2, 1, a4);
      v35 = *v31;
      v34 = *(v31 + 1);
      v36 = v16[v32];

      outlined destroy of Text.ResolvedString(v16, type metadata accessor for Text.ResolvedString);
      v88 = v35;
      v89 = v34;
      if ((v18 & 4) != 0)
      {
        if (v36)
        {
          outlined consume of Text.Storage(a1, a2, 1);
LABEL_39:
          *&v83 = v79;
          *(&v83 + 1) = v78;
          v81 = v77;
          v80 = 6;
          v71 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)(a1, a2, 1, a4, &v83, &v80, &v81);
          if (v71)
          {
            v72 = v71;

            v73 = [v72 string];
            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;

            v88 = v74;
            v89 = v76;
          }

LABEL_16:
          if ((v18 & 8) == 0)
          {
            return v88;
          }

          if (v78)
          {

            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSuffixI033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt1g5(v79, &v83);

            v44 = *(&v83 + 1);
            v43 = v83;
            v46 = *(&v84 + 1);
            LOBYTE(v45) = v84;
            v47 = v85;
            v48 = v86;
            v49 = v87;
          }

          else
          {
            type metadata accessor for EnvironmentPropertyKey<TextSuffixKey>(0, v40, v41, v42);
            BloomFilter.init(hashValue:)(v50);
            v51 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(v79, v81);
            if (!v51)
            {
              v43 = 0;
              v44 = 0;
              LOBYTE(v45) = 0;
              v46 = 0;
              v47 = 0;
              v49 = 0;
              v83 = 0u;
              v84 = 0u;
              v48 = 0x8000000000000000;
              v85 = 0;
              v86 = 0x8000000000000000;
LABEL_33:
              outlined consume of ResolvedTextSuffix(v43, v44, v45, v46, v47, v48, v49);
              return v88;
            }

            v43 = v51[9];
            v44 = v51[10];
            v45 = v51[11];
            v46 = v51[12];
            v47 = v51[13];
            v48 = v51[14];
            v49 = v51[15];
            *&v83 = v43;
            *(&v83 + 1) = v44;
            outlined copy of ResolvedTextSuffix(v43, v44, v45, v46, v47, v48, v49);
          }

          if (v48 >> 62 == 1)
          {
            if (v45)
            {
              v52 = v43;
              v53 = [v52 attributedString];
              outlined consume of ResolvedTextSuffix(v43, v44, v45, v46, v47, v48, v49);

              if (v53)
              {
                v54 = [v53 string];
                v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v57 = v56;

                v58 = HIBYTE(v57) & 0xF;
                if ((v57 & 0x2000000000000000) == 0)
                {
                  v58 = v55 & 0xFFFFFFFFFFFFLL;
                }

                if (v58)
                {
                  v59 = [v53 string];
                  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v62 = v61;

                  MEMORY[0x193ABEDD0](v60, v62);
                }

                else
                {
                }
              }

              return v88;
            }

            outlined copy of Text.Layout.Line.Line(v43, v44);
          }

          goto LABEL_33;
        }

        type metadata accessor for AccessibilityTextStorage();
        v63 = swift_dynamicCastClass();
        if (v63)
        {
          v64 = v63;
          swift_beginAccess();
          v65 = *(v64 + 16);
          if (*(v64 + 32))
          {
            v66 = v65;
          }

          else
          {
            v67 = *(v64 + 24);
            v68 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

            v69 = MEMORY[0x193ABEC20](v65, v67);
            v66 = [v68 initWithString_];
          }

          v70 = NSAttributedString.isDynamic.getter();

          outlined consume of Text.Storage(a1, a2, 1);
          if (!v70)
          {
            goto LABEL_16;
          }

          goto LABEL_39;
        }

        v38 = a1;
        v39 = a2;
        v37 = 1;
LABEL_15:
        outlined consume of Text.Storage(v38, v39, v37);
        goto LABEL_16;
      }
    }

    else
    {
      outlined copy of Text.Storage(a1, a2, 0);
      v88 = a1;
      v89 = a2;

      if ((v18 & 4) != 0)
      {
        v38 = a1;
        v39 = a2;
        v37 = 0;
        goto LABEL_15;
      }
    }

    v37 = a3 & 1;
    v38 = a1;
    v39 = a2;
    goto LABEL_15;
  }

  v21 = (a4 + 16 * v20 + 24);
  while (1)
  {
    v22 = *v21;
    v21 -= 16;
    if ((v22 & 0xE0) == 0xC0)
    {
      type metadata accessor for AccessibilityTextModifier();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = *(v23 + 48);
        if (v24)
        {
          break;
        }
      }
    }

    if (!--v20)
    {
      goto LABEL_8;
    }
  }

  v25 = *(v23 + 40);
  v27 = *(v23 + 24);
  v26 = *(v23 + 32);
  *&v83 = v79;
  *(&v83 + 1) = v78;
  v82 = v77;
  LODWORD(v88) = 0;
  outlined copy of Text.Storage(v27, v26, v25 & 1);

  v28 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)(v27, v26, v25 & 1, v24, &v83, &v88, &v82);
  outlined consume of Text.Storage(v27, v26, v25 & 1);

  return v28;
}

id static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, unsigned int *a6, _OWORD *a7)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v79 - v15;
  v82 = type metadata accessor for ResolvableStringResolutionContext(0);
  v84 = *(v82 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  v20 = *a5;
  v21 = a5[1];
  isEscapingClosureAtFileLocation = *a6;
  v23 = v20;
  *&aBlock = v20;
  *(&aBlock + 1) = v21;
  v92[0] = 129;
  v91[0] = *a7;
  v24 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&aBlock, (isEscapingClosureAtFileLocation >> 1) & 1, v92, v91, a1, a2, a3 & 1, a4);
  if (v24)
  {
    v28 = v24;
    v86 = v21;
    v29 = 0x1E696A000uLL;
    v30 = &property descriptor for SizingPreferences.size2D;
    v31 = &selRef_addEffect_;
    v32 = &qword_18DDAA000;
    if ((isEscapingClosureAtFileLocation & 4) == 0 || !NSAttributedString.isDynamic.getter())
    {
      goto LABEL_15;
    }

    v31 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v33 = type metadata accessor for Date();
    v34 = v19;
    (*(*(v33 - 8) + 56))(v19, 1, 1, v33);
    v35 = v86;
    if (v86)
    {

      swift_retain_n();
      v36 = v83;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v23, v83);

      goto LABEL_12;
    }

    v39 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v38);
    v36 = v83;
    if (v39)
    {
      v40 = MEMORY[0x1E6969530];
      v41 = v39 + *(*v39 + 248);
      goto LABEL_11;
    }

    if (one-time initialization token for defaultValue != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v41 = __swift_project_value_buffer(v81, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      v40 = MEMORY[0x1E6969530];
LABEL_11:
      outlined init with copy of Date?(v41, v36, &lazy cache variable for type metadata for Date?, v40);
LABEL_12:
      LODWORD(v83) = isEscapingClosureAtFileLocation;
      v42 = v82;
      v43 = v34 + *(v82 + 24);
      outlined assign with take of Date?(v36, v34);
      v44 = (v34 + *(v42 + 20));
      v80 = v23;
      *v44 = v23;
      v44[1] = v35;
      *v43 = 0;
      *(v43 + 8) = 1;
      v45 = one-time initialization token for resolvableTextSegment;
      v31 = v31;
      if (v45 != -1)
      {
        goto LABEL_37;
      }

      while (1)
      {
        v36 = static NSAttributedStringKey.resolvableTextSegment;
        v46 = [(SEL *)v31 length];
        v47 = v85;
        outlined init with copy of (key: NSAttributedStringKey, value: Any)(v34, v85, type metadata accessor for ResolvableStringResolutionContext);
        v48 = (*(v84 + 80) + 24) & ~*(v84 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = v31;
        outlined init with take of ResolvableStringResolutionContext(v47, v35 + v48);
        v23 = swift_allocObject();
        *(v23 + 16) = partial apply for closure #1 in static ResolvableTextSegmentAttribute.update(_:in:);
        *(v23 + 24) = v35;
        v89 = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        *&v90 = v23;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v88 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        *(&v88 + 1) = &block_descriptor_12;
        v49 = _Block_copy(&aBlock);
        v50 = v34;
        v34 = v90;
        v51 = v31;

        [(SEL *)v51 enumerateAttribute:v36 inRange:0 options:v46 usingBlock:2, v49];

        _Block_release(v49);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          break;
        }

        outlined destroy of Text.ResolvedString(v50, type metadata accessor for ResolvableStringResolutionContext);
        v28 = v51;
        v31 = &selRef_addEffect_;
        v23 = v80;
        isEscapingClosureAtFileLocation = v83;
        v32 = &qword_18DDAA000;
        v30 = &property descriptor for SizingPreferences.size2D;
        v29 = 0x1E696A000;
LABEL_15:
        if ((isEscapingClosureAtFileLocation & 8) == 0)
        {
          goto LABEL_32;
        }

        v80 = v23;
        if (v86)
        {

          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSuffixI033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt1g5(v23, &aBlock);

          v53 = *(&aBlock + 1);
          v52 = aBlock;
          v54 = *(&v88 + 1);
          LOBYTE(v23) = v88;
          v55 = v89;
          v56 = *(&v90 + 1);
          v57 = v90;
        }

        else
        {
          type metadata accessor for EnvironmentPropertyKey<TextSuffixKey>(0, v25, v26, v27);
          BloomFilter.init(hashValue:)(v58);
          v59 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(v23, *&v91[0]);
          if (!v59)
          {
            v52 = 0;
            v53 = 0;
            LOBYTE(v23) = 0;
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v89 = 0;
            aBlock = 0u;
            v88 = 0u;
            v90 = xmmword_18DD85510;
            v57 = 0x8000000000000000;
LABEL_29:
            outlined consume of ResolvedTextSuffix(v52, v53, v23, v54, v55, v57, v56);
LABEL_30:
            v31 = &selRef_addEffect_;
            v23 = v80;
            v32 = &qword_18DDAA000;
LABEL_31:
            v29 = 0x1E696A000uLL;
            goto LABEL_32;
          }

          v52 = v59[9];
          v53 = v59[10];
          v23 = v59[11];
          v54 = v59[12];
          v55 = v59[13];
          v57 = v59[14];
          v56 = v59[15];
          *&aBlock = v52;
          outlined copy of ResolvedTextSuffix(v52, v53, v23, v54, v55, v57, v56);
        }

        if (v57 >> 62 != 1)
        {
          goto LABEL_29;
        }

        if ((v23 & 1) == 0)
        {
          outlined copy of Text.Layout.Line.Line(v52, v53);

          goto LABEL_29;
        }

        v60 = v52;
        v61 = [v60 attributedString];
        v62 = v55;
        v63 = v61;
        outlined consume of ResolvedTextSuffix(v52, v53, v23, v54, v62, v57, v56);

        v30 = &property descriptor for SizingPreferences.size2D;
        if (!v63)
        {
          goto LABEL_30;
        }

        v64 = isEscapingClosureAtFileLocation;
        v65 = [v63 string];
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        v69 = HIBYTE(v68) & 0xF;
        if ((v68 & 0x2000000000000000) == 0)
        {
          v69 = v66 & 0xFFFFFFFFFFFFLL;
        }

        v31 = &selRef_addEffect_;
        v23 = v80;
        v32 = &qword_18DDAA000;
        if (!v69)
        {

          isEscapingClosureAtFileLocation = v64;
          v30 = &property descriptor for SizingPreferences.size2D;
          goto LABEL_31;
        }

        v70 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        [v70 appendAttributedString_];

        v28 = v70;
        v30 = &property descriptor for SizingPreferences.size2D;
        isEscapingClosureAtFileLocation = v64;
        v29 = 0x1E696A000uLL;
LABEL_32:
        LOBYTE(v92[0]) = 0;
        memset(v91, 0, 32);
        v71 = [objc_allocWithZone(*(v29 + 3392)) v30[492]];

        v72 = v71;
        v28 = [v72 v31[152]];
        v73 = swift_allocObject();
        v74 = v86;
        *(v73 + 16) = v23;
        *(v73 + 24) = v74;
        *(v73 + 32) = v92;
        *(v73 + 40) = v91;
        *(v73 + 48) = v72;
        *(v73 + 56) = isEscapingClosureAtFileLocation;
        v34 = swift_allocObject();
        *(v34 + 16) = partial apply for closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:);
        *(v34 + 24) = v73;
        v89 = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        *&v90 = v34;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = v32[157];
        *&v88 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        *(&v88 + 1) = &block_descriptor_0;
        v75 = _Block_copy(&aBlock);

        v76 = v72;

        [v76 enumerateAttributesInRange:0 options:v28 usingBlock:{0, v75}];
        _Block_release(v75);
        LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

        if ((v75 & 1) == 0)
        {
          v77 = [v76 v31[152]];

          v37 = [v76 attributedSubstringFromRange_];

          return v37;
        }

        __break(1u);
LABEL_37:
        swift_once();
      }

      __break(1u);
LABEL_39:
      swift_once();
    }
  }

  return 0;
}

void static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)(uint64_t a1, __int128 *a2, int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = *a3;
    v32 = *a4;
    v33 = *a2;
    v37 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v9 = v37;
    v10 = (a1 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 8);
      v14 = *v10;
      v36 = v33;
      v35 = v8;
      v34 = v32;
      outlined copy of Text.Storage(v11, v12, v13);

      v15 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)(v11, v12, v13, v14, &v36, &v35, &v34);
      v17 = v16;
      outlined consume of Text.Storage(v11, v12, v13);

      v37 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v9 = v37;
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v10 += 4;
      --v6;
    }

    while (v6);
    v21 = 0;
    v22 = v19 + 1;
    v23 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = (v9 + 40 + 16 * v21);
    while (1)
    {
      if (v22 == v21)
      {

        *&v36 = v23;
        type metadata accessor for [String](0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        BidirectionalCollection<>.joined(separator:)();

        return;
      }

      if (v21 >= *(v9 + 16))
      {
        break;
      }

      ++v21;
      v25 = *(v24 - 1);
      v26 = *v24;
      v24 += 2;
      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v36 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
          v23 = v36;
        }

        v30 = *(v23 + 16);
        v29 = *(v23 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v23 = v36;
        }

        *(v23 + 16) = v30 + 1;
        v31 = v23 + 16 * v30;
        *(v31 + 32) = v25;
        *(v31 + 40) = v26;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)(void *a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v7 = *a1;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

  v9 = v8;
  v10 = [v9 length];
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 32) = &v19;
  *(v11 + 40) = v18;
  *(v11 + 48) = v9;
  *(v11 + 56) = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)partial apply;
  *(v12 + 24) = v11;
  v17[4] = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v17[3] = &block_descriptor_23;
  v13 = _Block_copy(v17);

  v14 = v9;

  [v14 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v13}];
  _Block_release(v13);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v15 = [v14 length];

    v16 = [v14 attributedSubstringFromRange_];
    *a1 = v16;
  }
}

uint64_t static AccessibilityCore.resolveAttributedTextAttributes(_:environment:)(uint64_t a1)
{
  result = EnvironmentValues.accessibilityTextAttributeResolver.getter();
  if (result)
  {
    return (*(v3 + 8))(a1, result, v3);
  }

  return result;
}

BOOL NSAttributedStringKey.isAccessibilityAttribute.getter(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1._countAndFlagsBits = 0x7373656363414955;
  v1._object = 0xEF7974696C696269;
  v2 = String.hasPrefix(_:)(v1);

  return v2;
}

uint64_t static AccessibilityCore.resolveAccessibilitySpeechAttributes(into:speechAttr:environment:options:)(uint64_t a1, char *a2, uint64_t *a3, int *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 1);
  v7 = a2[16];
  v8 = a2[17];
  v10 = *(a2 + 3);
  v9 = *(a2 + 4);
  v11 = *a3;
  v12 = a3[1];
  v15 = *a4;
  v19 = *a3;
  v20 = v12;
  result = EnvironmentValues.accessibilityTextAttributeResolver.getter();
  if (result)
  {
    LOBYTE(v19) = v4;
    BYTE1(v19) = v5;
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v10;
    v24 = v9;
    v18[0] = v11;
    v18[1] = v12;
    v17 = v15;
    return (*(v14 + 24))(a1, &v19, v18, &v17);
  }

  return result;
}

id static AccessibilityCore.textsResolvedToAttributedText(_:in:options:idiom:separator:)(uint64_t a1, __int128 *a2, unsigned int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v35 = *a2;
  v34 = *a3;
  v33 = *a4;
  v7 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  v9 = a1 + 56;
  v30 = a1 + 56;
LABEL_2:
  v10 = v9 + 32 * v6;
  while (1)
  {
    if (v8 == v6)
    {
      v10 = v7 >> 62;
      if (v7 >> 62)
      {
        goto LABEL_62;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

LABEL_63:

      return 0;
    }

    if (v6 >= v8)
    {
      break;
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_55;
    }

    v12 = *v10;
    v13 = *(v10 - 8);
    v15 = *(v10 - 24);
    v14 = *(v10 - 16);
    v38 = v35;
    v37 = v34;
    v36 = v33;

    outlined copy of Text.Storage(v15, v14, v13);
    v16 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)(v15, v14, v13, v12, &v38, &v37, &v36);
    outlined consume of Text.Storage(v15, v14, v13);

    ++v6;
    v10 += 32;
    if (v16)
    {
      MEMORY[0x193ABF170](v17);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v39;
      v6 = v11;
      v9 = v30;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_63;
  }

LABEL_12:
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  if (!v10)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_53:

    return v18;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_53;
  }

  while (1)
  {
LABEL_16:
    v10 = v7 >> 62;
    if (!(v7 >> 62))
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      goto LABEL_18;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      break;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_66;
    }

LABEL_18:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x193AC03C0](0, v7);
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v19 = *(v7 + 32);
    }

    v20 = v19;
    if (v10)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_60;
      }

      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_61;
      }

      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_60;
      }
    }

    v22 = v21 - 1;
    if (__OFSUB__(v21, 1))
    {
      goto LABEL_58;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v10)
      {
        v10 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v22 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_33:
      __CocoaSet.count.getter();
      goto LABEL_34;
    }

    if (v10)
    {
      goto LABEL_33;
    }

LABEL_34:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_35:

    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_67;
      }

      memmove((v10 + 32), (v10 + 40), 8 * (result - 1));
      v29 = __CocoaSet.count.getter();
      v24 = v29 - 1;
      if (__OFSUB__(v29, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      v23 = *(v10 + 16);
      memmove((v10 + 32), (v10 + 40), 8 * v23 - 8);
      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_59;
      }
    }

    *(v10 + 16) = v24;
    if ([v20 length] >= 1)
    {
      if ([v18 length] >= 1)
      {
        v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v26 = MEMORY[0x193ABEC20](a5, a6);
        v27 = [v25 initWithString_];

        [v18 appendAttributedString_];
      }

      [v18 appendAttributedString_];
    }

    if (v7 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_53;
      }
    }

    else if (!*(v10 + 16))
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

void Text.accessibilityResolvedText(in:idiom:)(void **a1@<X0>, _OWORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v22 = *a1;
  v23 = v9;
  v29 = 129;
  v28[0] = *a2;
  v10 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&v22, 1, &v29, v28, a3, a4, a5 & 1, a6);
  if (v10)
  {
    v11 = v10;
    LOBYTE(v29) = 0;
    memset(v28, 0, sizeof(v28));
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

    v13 = v12;
    v14 = [v13 length];
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v9;
    *(v15 + 32) = &v29;
    *(v15 + 40) = v28;
    *(v15 + 48) = v13;
    *(v15 + 56) = 3;
    v16 = swift_allocObject();
    *(v16 + 16) = closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)partial apply;
    *(v16 + 24) = v15;
    v26 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v27 = v16;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v25 = &block_descriptor_34;
    v17 = _Block_copy(&v22);

    v18 = v13;

    [v18 enumerateAttributesInRange:0 options:v14 usingBlock:{0, v17}];
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v20 = [v18 length];

      v21 = [v18 attributedSubstringFromRange_];

      *a7 = v21;
      *(a7 + 8) = 0;
      *(a7 + 16) = 1;
    }
  }

  else
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 255;
  }
}

uint64_t Text.Style.resolveAccessibilityTextAttributes(into:environment:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (EnvironmentValues.accessibilityTextAttributeResolver.getter())
  {
    v9 = v4;
    v10 = v5;
    (*(v6 + 16))(a1, v2, &v9);
  }

  v9 = v4;
  v10 = v5;
  result = EnvironmentValues.accessibilityTextAttributeResolver.getter();
  if (result)
  {
    return (*(v8 + 8))(a1, result, v8);
  }

  return result;
}

NSAttributedString __swiftcall NSAttributedString.init(axAttributedString:)(Swift::String axAttributedString)
{
  object = axAttributedString._object;
  countAndFlagsBits = axAttributedString._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x193ABEC20](countAndFlagsBits, object);

  v5 = AXAttributedStringConvert(v4);

  v6 = [v3 initWithAttributedString_];
  return v6;
}

id static NSAttributedStringKey.coreAXLabel.getter()
{
  if (one-time initialization token for coreAXLabel != -1)
  {
    swift_once();
  }

  v1 = static NSAttributedStringKey.coreAXLabel;

  return v1;
}

void specialized Text.Storage.resolve<A>(into:in:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v14 = type metadata accessor for Text.Resolved(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a7)
  {
    v35 = a2;
    v36 = a3;
    v34 = a4;
    (*(*a5 + 80))(a1, &v35, &v34, v14, &protocol witness table for Text.Resolved, v15);
    return;
  }

  if (a3)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(a2, &v35);

    v18 = v35;
LABEL_7:
    v32 = v18;
    goto LABEL_8;
  }

  v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a2);
  if (v19)
  {
    v18 = v19[9];
    goto LABEL_7;
  }

  v32 = 0;
LABEL_8:
  v35 = a5;
  v36 = a6;

  v20 = String.init<A>(_:)();
  v35 = a2;
  v36 = a3;
  v22 = String.caseConvertedIfNeeded(_:)(&v35, v20, v21);
  v33 = v22;
  v24 = v23;

  outlined init with copy of (key: NSAttributedStringKey, value: Any)(a1, v17, type metadata accessor for Text.Resolved);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v24;
  v26 = a1 + v14[8];
  v35 = a2;
  v36 = a3;
  v27 = v17[v14[6]];
  v34 = a4;

  v28 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #1 in Text.Resolved.append<A>(_:in:with:isUniqueSizeVariant:), v25, &v35, v27, &v34, v26);

  outlined destroy of Text.ResolvedString(v17, type metadata accessor for Text.Resolved);
  v35 = a2;
  v36 = a3;
  Text.Resolved.append(_:with:in:)(v33, v24, v28, &v35);
  v29 = *(a1 + v14[5]);
  if (v29)
  {
    if ([v29 isEmptyOrTerminatedByParagraphSeparator])
    {
      v30 = [v29 length];

      v35 = a2;
      v36 = a3;
      Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v30, v29, &v35);
    }

    else
    {
    }

    *(v26 + 32) |= (v32 == 0) << 8;
  }

  else
  {
    __break(1u);
  }
}

void type metadata accessor for EnvironmentPropertyKey<TextSuffixKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>);
    }
  }
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ResolvableStringResolutionContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static ResolvableTextSegmentAttribute.update(_:in:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ResolvableStringResolutionContext(0) - 8);
  v10 = *(v4 + 16);
  v11 = (v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80)));

  return closure #1 in static ResolvableTextSegmentAttribute.update(_:in:)(a1, a2, a3, a4, v10, v11);
}

void lazy protocol witness table accessor for type [String] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    type metadata accessor for [String](255, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6310], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }
}

void lazy protocol witness table accessor for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions()
{
  if (!lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityCore.TextResolutionOptions, &type metadata for AccessibilityCore.TextResolutionOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityCore.TextResolutionOptions, &type metadata for AccessibilityCore.TextResolutionOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityCore.TextResolutionOptions, &type metadata for AccessibilityCore.TextResolutionOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityCore.TextResolutionOptions, &type metadata for AccessibilityCore.TextResolutionOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions);
  }
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t type metadata accessor for NSTextAttachment()
{
  result = lazy cache variable for type metadata for NSTextAttachment;
  if (!lazy cache variable for type metadata for NSTextAttachment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTextAttachment);
  }

  return result;
}

uint64_t ScrollPosition.isPositionedByUser.setter(char a1)
{
  outlined init with copy of ScrollPosition.Storage(v1, v8);
  if (v12 == 5)
  {
    v3 = vorrq_s8(v9, v10);
    v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | v8[2] | v8[1];
    v5 = !v11 && v8[0] == 1;
    if (v5 && v4 == 0)
    {
      return outlined destroy of ScrollPosition.Storage(v8);
    }
  }

  result = outlined destroy of ScrollPosition.Storage(v8);
  if (a1)
  {
    result = outlined destroy of ScrollPosition.Storage(v1);
    *v1 = 1;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 1280;
  }

  return result;
}

uint64_t ScrollPosition.wantsUpdate(toPosition:)(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  outlined init with copy of ScrollPosition.Storage(v1, v12);
  outlined init with copy of ScrollPosition.Storage(a1, v13);
  if (v12[57])
  {
    goto LABEL_4;
  }

  outlined init with copy of ScrollPosition.Storage(v12, v10);
  if (v15)
  {
    outlined destroy of ScrollPosition.ViewID(v10);
LABEL_4:
    outlined destroy of (ScrollPosition.Storage, ScrollPosition.Storage)(v12, type metadata accessor for (ScrollPosition.Storage, ScrollPosition.Storage));
    return 1;
  }

  v8[0] = v10[0];
  v8[1] = v10[1];
  v9[0] = v11[0];
  *(v9 + 9) = *(v11 + 9);
  v6[0] = v13[0];
  v6[1] = v13[1];
  v7[0] = *v14;
  *(v7 + 9) = *&v14[9];
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v4 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v4)
    {
      goto LABEL_11;
    }

LABEL_13:
    type metadata accessor for Hashable & Sendable();
    v5 = AGCompareValues() ^ 1;
    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_13;
  }

LABEL_11:
  v5 = 1;
LABEL_14:
  outlined destroy of ScrollPosition.ViewID(v6);
  outlined destroy of ScrollPosition.ViewID(v8);
  outlined destroy of ScrollPosition.Storage(v12);
  return v5;
}

uint64_t static ScrollPosition.ViewID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(a2 + 56) & 1) == 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((*(a2 + 56) & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(a2 + 24);
  v9 = __swift_project_boxed_opaque_existential_1(a2, v8);

  return project #1 <A, B>(lhs:rhs:) in static ScrollPosition.ViewID.== infix(_:_:)(v7, v9, v5, v8, v6);
}

uint64_t ScrollPosition.ViewID.id.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return outlined init with take of AnyTrackedValue(a1, v1);
}

uint64_t ScrollPosition.ViewID.anchor.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

uint64_t ScrollPosition.idType.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  return result;
}

__n128 ScrollPosition.init<A>(idType:storage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 16);
  *a4 = *a2;
  *(a4 + 16) = v4;
  *(a4 + 32) = *(a2 + 32);
  result = *(a2 + 42);
  *(a4 + 42) = result;
  *(a4 + 64) = a1;
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
  return result;
}

double ScrollPosition.init<A>(idType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 41) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 57) = 5;
  *(a3 + 64) = a1;
  *(a3 + 72) = a2;
  *(a3 + 80) = 0;
  return result;
}

uint64_t ScrollPosition.init<A>(idType:edge:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 57) = 1;
  *(a4 + 64) = result;
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
  return result;
}

uint64_t ScrollPosition.init<A>(idType:x:y:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 57) = 2;
  *(a3 + 64) = result;
  *(a3 + 72) = a2;
  *(a3 + 80) = 0;
  return result;
}

uint64_t ScrollPosition.init<A>(idType:x:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 57) = 3;
  *(a3 + 64) = result;
  *(a3 + 72) = a2;
  *(a3 + 80) = 0;
  return result;
}

uint64_t ScrollPosition.init<A>(idType:y:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 57) = 4;
  *(a3 + 64) = result;
  *(a3 + 72) = a2;
  *(a3 + 80) = 0;
  return result;
}

Swift::Void __swiftcall ScrollPosition.scrollTo(edge:)(SwiftUI::Edge edge)
{
  outlined destroy of ScrollPosition.Storage(v1);
  *v1 = edge;
  *(v1 + 57) = 1;
  if (one-time initialization token for v6_4 != -1)
  {
    swift_once();
  }

  v3 = static Semantics.v6_4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (dyld_program_sdk_at_least())
  {
LABEL_9:
    ++*(v1 + 80);
  }
}

void ScrollPosition.scrollTo(point:)(double a1, double a2)
{
  outlined destroy of ScrollPosition.Storage(v2);
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 57) = 2;
  if (one-time initialization token for v6_4 != -1)
  {
    swift_once();
  }

  v5 = static Semantics.v6_4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v5)
    {
      return;
    }

    goto LABEL_9;
  }

  if (dyld_program_sdk_at_least())
  {
LABEL_9:
    ++*(v2 + 80);
  }
}

void ScrollPosition.scrollTo(x:)(char a1, double a2)
{
  outlined destroy of ScrollPosition.Storage(v2);
  *v2 = a2;
  *(v2 + 57) = a1;
  if (one-time initialization token for v6_4 != -1)
  {
    swift_once();
  }

  v5 = static Semantics.v6_4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v5)
    {
      return;
    }

    goto LABEL_9;
  }

  if (dyld_program_sdk_at_least())
  {
LABEL_9:
    ++*(v2 + 80);
  }
}

BOOL ScrollPosition.isPositionedByUser.getter()
{
  outlined init with copy of ScrollPosition.Storage(v0, v7);
  v5 = 0;
  if (v11 == 5)
  {
    v1 = vorrq_s8(v8, v9);
    v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v7[2] | v7[1];
    v3 = !v10 && v7[0] == 1;
    if (v3 && v2 == 0)
    {
      v5 = 1;
    }
  }

  outlined destroy of ScrollPosition.Storage(v7);
  return v5;
}

uint64_t key path getter for ScrollPosition.isPositionedByUser : ScrollPosition@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  outlined init with copy of ScrollPosition.Storage(a1, v9);
  v7 = 0;
  if (v13 == 5)
  {
    v3 = vorrq_s8(v10, v11);
    v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | v9[2] | v9[1];
    v5 = !v12 && v9[0] == 1;
    if (v5 && v4 == 0)
    {
      v7 = 1;
    }
  }

  result = outlined destroy of ScrollPosition.Storage(v9);
  *a2 = v7;
  return result;
}

uint64_t key path setter for ScrollPosition.isPositionedByUser : ScrollPosition(char *a1, uint64_t a2)
{
  v3 = *a1;
  outlined init with copy of ScrollPosition.Storage(a2, v9);
  if (v13 == 5)
  {
    v4 = vorrq_s8(v10, v11);
    v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v9[2] | v9[1];
    v6 = !v12 && v9[0] == 1;
    if (v6 && v5 == 0)
    {
      return outlined destroy of ScrollPosition.Storage(v9);
    }
  }

  result = outlined destroy of ScrollPosition.Storage(v9);
  if (v3)
  {
    result = outlined destroy of ScrollPosition.Storage(a2);
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 1280;
  }

  return result;
}

void (*ScrollPosition.isPositionedByUser.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  outlined init with copy of ScrollPosition.Storage(v2, v4);
  v10 = 0;
  if (*(v5 + 57) == 5)
  {
    v6 = vorrq_s8(*(v5 + 24), *(v5 + 40));
    v7 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | *(v5 + 16) | *(v5 + 8);
    v8 = !*(v5 + 56) && *v5 == 1;
    if (v8 && v7 == 0)
    {
      v10 = 1;
    }
  }

  outlined destroy of ScrollPosition.Storage(v5);
  *(v5 + 58) = v10;
  return ScrollPosition.isPositionedByUser.modify;
}

void ScrollPosition.isPositionedByUser.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 58);
  outlined init with copy of ScrollPosition.Storage(*(*a1 + 64), *a1);
  v5 = v3[57];
  if ((a2 & 1) == 0)
  {
    if (v5 != 5 || ((v10 = vorrq_s8(*(v3 + 24), *(v3 + 40)), v11 = *&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *(v3 + 2) | *(v3 + 1), !v3[56]) ? (v12 = *v3 == 1) : (v12 = 0), v12 ? (v13 = v11 == 0) : (v13 = 0), !v13))
    {
      outlined destroy of ScrollPosition.Storage(v3);
      if (!v4)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

LABEL_22:
    outlined destroy of ScrollPosition.Storage(v3);
    goto LABEL_23;
  }

  if (v5 == 5)
  {
    v6 = vorrq_s8(*(v3 + 24), *(v3 + 40));
    v7 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | *(v3 + 2) | *(v3 + 1);
    v8 = !v3[56] && *v3 == 1;
    if (v8 && v7 == 0)
    {
      goto LABEL_22;
    }
  }

  outlined destroy of ScrollPosition.Storage(v3);
  if (v4)
  {
LABEL_21:
    v14 = *(v3 + 8);
    outlined destroy of ScrollPosition.Storage(v14);
    *v14 = 1;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 1280;
  }

LABEL_23:

  free(v3);
}

uint64_t ScrollPosition.edge.getter()
{
  outlined init with copy of ScrollPosition.Storage(v0, v2);
  if (v2[57] == 1)
  {
    return v2[0];
  }

  outlined destroy of ScrollPosition.Storage(v2);
  return 4;
}

uint64_t ScrollPosition.point.getter()
{
  outlined init with copy of ScrollPosition.Storage(v0, &v2);
  if (v3 == 2)
  {
    return v2;
  }

  outlined destroy of ScrollPosition.Storage(&v2);
  return 0;
}

uint64_t ScrollPosition.x.getter()
{
  outlined init with copy of ScrollPosition.Storage(v0, v2);
  if (v3 == 3)
  {
    return v2[0];
  }

  outlined destroy of ScrollPosition.Storage(v2);
  return 0;
}

uint64_t ScrollPosition.y.getter()
{
  outlined init with copy of ScrollPosition.Storage(v0, v2);
  if (v3 == 4)
  {
    return v2[0];
  }

  outlined destroy of ScrollPosition.Storage(v2);
  return 0;
}

uint64_t ScrollPosition.viewID.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of ScrollPosition.Storage(v1, v4);
  if (v6)
  {
    result = outlined destroy of ScrollPosition.Storage(v4);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v7[0] = v4[0];
    v7[1] = v4[1];
    v8[0] = *v5;
    *(v8 + 9) = *&v5[9];
    return outlined init with take of AnyTrackedValue(v7, a1);
  }

  return result;
}

uint64_t ScrollPosition.viewID<A>(type:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5 = v4;
  outlined init with copy of ScrollPosition.Storage(v5, &v13);
  if (v16)
  {
    v9 = outlined destroy of ScrollPosition.Storage(&v13);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  else
  {
    v17[0] = v13;
    v17[1] = v14;
    v18[0] = *v15;
    *(v18 + 9) = *&v15[9];
    v9 = outlined init with take of AnyTrackedValue(v17, &v19);
  }

  v13 = v19;
  v14 = v20;
  *v15 = v21;
  MEMORY[0x1EEE9AC00](v9);
  v12[2] = a2;
  v12[3] = a3;
  type metadata accessor for (Hashable & Sendable)?(0);
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ScrollPosition.viewID<A>(type:), v12, MEMORY[0x1E69E73E0], a2, v10, x8_0);
  return outlined destroy of (ScrollPosition.Storage, ScrollPosition.Storage)(&v13, type metadata accessor for (Hashable & Sendable)?);
}

uint64_t project #1 <A><A1>(_:) in ScrollPosition.viewID<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a4, v9 ^ 1u, 1, a2);
}

uint64_t _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v29 = a1;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v19);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v17, v21, v13);
  v29(v17, v11);
  result = (*(v14 + 8))(v17, v13);
  if (v6)
  {
    return (*(v26 + 32))(v27, v11, a3);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScrollPosition.ViewID(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(a2 + 56) & 1) == 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((*(a2 + 56) & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(a2 + 24);
  v9 = __swift_project_boxed_opaque_existential_1(a2, v8);

  return project #1 <A, B>(lhs:rhs:) in static ScrollPosition.ViewID.== infix(_:_:)(v7, v9, v5, v8, v6);
}

uint64_t ScrollPositionToValue.anchor.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t ScrollPositionToValue.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v21 = a1;
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = *(v5 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 8);
  v19 = *v3;
  v16 = *(v3 + 16);
  (*(v7 + 16))(v9, a2, v6, v12);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  (*(v10 + 32))(v14, v9, v5);
  ScrollPosition.scrollTo<A>(id:anchor:)(v14, v19, v15, v16, v5, *(v20 + 24));
  return (*(v10 + 8))(v14, v5);
}

uint64_t ScrollPositionToValue.init(_:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for Optional();
  v14 = type metadata accessor for Binding(0, v11, v12, v13);
  result = (*(*(v14 - 8) + 8))(a1, v14);
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4 & 1;
  return result;
}

Swift::Int ScrollPositionToValue.hashValue.getter(uint64_t a1, void (*a2)(void *))
{
  v4 = *(v2 + 16);
  v7 = *v2;
  v8 = v4;
  Hasher.init(_seed:)();
  a2(v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScrollPositionToValue<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void type metadata accessor for (ScrollPosition.Storage, ScrollPosition.Storage)()
{
  if (!lazy cache variable for type metadata for (ScrollPosition.Storage, ScrollPosition.Storage))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ScrollPosition.Storage, ScrollPosition.Storage));
    }
  }
}

unint64_t type metadata accessor for Hashable & Sendable()
{
  result = lazy cache variable for type metadata for Hashable & Sendable;
  if (!lazy cache variable for type metadata for Hashable & Sendable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Hashable & Sendable);
  }

  return result;
}

uint64_t partial apply for closure #1 in ScrollPosition.viewID<A>(type:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return project #1 <A><A1>(_:) in ScrollPosition.viewID<A>(type:)(v5, v4, a2);
}

void type metadata accessor for (Hashable & Sendable)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Hashable & Sendable)?)
  {
    type metadata accessor for Hashable & Sendable();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (Hashable & Sendable)?);
    }
  }
}

uint64_t outlined destroy of (ScrollPosition.Storage, ScrollPosition.Storage)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized ValueToScrollPosition.set(base:newValue:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v27 = type metadata accessor for Optional();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScrollPosition.viewID<A>(type:)(a3, a4, v11);
  v16 = *(v12 + 48);
  v17 = v16(v11, 1, a3);
  v18 = *(v6 + 8);
  if (v17 == 1)
  {
    v19 = v27;
    v18(v11, v27);
    v20 = v28;
    (*(v6 + 16))(v8, v28, v19);
    v21 = v16(v8, 1, a3);
    result = (v18)(v8, v19);
    if (v21 == 1)
    {
      return result;
    }

    v18(v20, v19);
    v23 = 1;
  }

  else
  {
    v24 = v28;
    v18(v28, v27);
    v25 = *(v12 + 32);
    v26 = v11;
    v20 = v24;
    v25(v15, v26, a3);
    v25(v24, v15, a3);
    v23 = 0;
  }

  return (*(v12 + 56))(v20, v23, 1, a3);
}

uint64_t assignWithCopy for ScrollPosition(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of ScrollPosition.Storage(a1);
    if (*(a2 + 57))
    {
      v4 = *a2;
      v5 = a2[1];
      v6 = a2[2];
      *(a1 + 42) = *(a2 + 42);
      *(a1 + 16) = v5;
      *(a1 + 32) = v6;
      *a1 = v4;
    }

    else
    {
      v7 = *(a2 + 3);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 4);
      (**(v7 - 8))(a1, a2);
      v8 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v8;
    }
  }

  *(a1 + 64) = a2[4];
  *(a1 + 80) = *(a2 + 10);
  return a1;
}

__n128 assignWithCopy for ScrollPosition.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 57);
    if (v2 >= 5)
    {
      v2 = *a1 + 5;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 57);
    if (v6 >= 5)
    {
      v6 = *a2 + 5;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        v7 = *(a2 + 24);
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 32);
        v8 = a1;
        v9 = a2;
        (**(v7 - 8))();
        v10 = *(v9 + 56);
        result = *(v9 + 40);
        *(v8 + 40) = result;
        *(v8 + 56) = v10;
        return result;
      }

      if (v6 == 1)
      {
        *a1 = *a2;
        *(a1 + 57) = 1;
        return result;
      }
    }

    else
    {
      switch(v6)
      {
        case 2:
          result = *a2;
          *a1 = *a2;
          *(a1 + 57) = 2;
          return result;
        case 3:
          *a1 = *a2;
          *(a1 + 57) = 3;
          return result;
        case 4:
          *a1 = *a2;
          *(a1 + 57) = 4;
          return result;
      }
    }

    result = *a2;
    v11 = *(a2 + 16);
    v12 = *(a2 + 32);
    *(a1 + 42) = *(a2 + 42);
    *(a1 + 16) = v11;
    *(a1 + 32) = v12;
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollPosition.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 58))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 57);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollPosition.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ScrollPosition.Storage(uint64_t a1)
{
  result = *(a1 + 57);
  if (result >= 5)
  {
    return (*a1 + 5);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ScrollPosition.Storage(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 57) = a2;
  return result;
}

uint64_t initializeWithCopy for ScrollPosition.ViewID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for ScrollPosition.ViewID(uint64_t a1, uint64_t a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2, a3);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  return a1;
}

uint64_t assignWithTake for ScrollPosition.ViewID(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollPosition.ViewID(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollPosition.ViewID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SwiftUI::VerticalDirection_optional __swiftcall VerticalDirection.init(rawValue:)(Swift::Int8 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = SwiftUI_VerticalDirection_down;
  }

  else
  {
    v1.value = SwiftUI_VerticalDirection_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void lazy protocol witness table accessor for type HorizontalDirection.Set and conformance HorizontalDirection.Set()
{
  if (!lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalDirection.Set, &type metadata for HorizontalDirection.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalDirection.Set, &type metadata for HorizontalDirection.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalDirection.Set, &type metadata for HorizontalDirection.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalDirection.Set, &type metadata for HorizontalDirection.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set);
  }
}

void lazy protocol witness table accessor for type HorizontalDirection and conformance HorizontalDirection()
{
  if (!lazy protocol witness table cache variable for type HorizontalDirection and conformance HorizontalDirection)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalDirection, &type metadata for HorizontalDirection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalDirection and conformance HorizontalDirection);
  }
}

{
  if (!lazy protocol witness table cache variable for type HorizontalDirection and conformance HorizontalDirection)
  {
    swift_getWitnessTable(protocol conformance descriptor for HorizontalDirection, &type metadata for HorizontalDirection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HorizontalDirection and conformance HorizontalDirection);
  }
}

void lazy protocol witness table accessor for type VerticalDirection.Set and conformance VerticalDirection.Set()
{
  if (!lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalDirection.Set, &type metadata for VerticalDirection.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalDirection.Set, &type metadata for VerticalDirection.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalDirection.Set, &type metadata for VerticalDirection.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalDirection.Set, &type metadata for VerticalDirection.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set);
  }
}

void lazy protocol witness table accessor for type VerticalDirection and conformance VerticalDirection()
{
  if (!lazy protocol witness table cache variable for type VerticalDirection and conformance VerticalDirection)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalDirection, &type metadata for VerticalDirection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalDirection and conformance VerticalDirection);
  }
}

{
  if (!lazy protocol witness table cache variable for type VerticalDirection and conformance VerticalDirection)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalDirection, &type metadata for VerticalDirection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalDirection and conformance VerticalDirection);
  }
}

void lazy protocol witness table accessor for type [HorizontalDirection] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (!*a1)
  {
    type metadata accessor for [HorizontalDirection](255, a2, a3);
    swift_getWitnessTable(MEMORY[0x1E69E6340], v4);
    atomic_store(v5, a1);
  }
}

void type metadata accessor for [HorizontalDirection](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t GestureGraph.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 200) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*GestureGraph.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 200);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return GestureGraph.delegate.modify;
}

void GestureGraph.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 200) = *(*a1 + 32);
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

uint64_t GestureGraph.__allocating_init(rootResponder:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *a1;

  return specialized GestureGraph.init(rootResponder:)(a1, v4, v5, a2);
}

uint64_t GestureGraph.description.getter()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6[0] = (*(*(*(v0 + 184) + 8) + 32))(*Strong);
    type metadata accessor for Any.Type();
    v2 = String.init<A>(describing:)();
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  strcpy(v6, "GestureGraph<");
  MEMORY[0x193ABEDD0](v2, v4);

  MEMORY[0x193ABEDD0](8254, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return v6[0];
}

Swift::Void __swiftcall GestureGraph.instantiateOutputs()()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = v0[23];
  v5 = *Strong;
  (*(*&v4 + 16))(&v48, *Strong, v4);
  v6 = (*(*(*&v4 + 8) + 8))(v5);
  LODWORD(v5) = v1[27].i32[1];
  swift_beginAccess();
  v7 = v1[33].i32[0];
  DWORD1(v53) = v1[5].i32[1];
  *&v54[16] = vrev64_s32(v1[28]);
  v8 = MEMORY[0x1E69E7CC0];
  *(&v53 + 1) = v6;
  *v54 = MEMORY[0x1E69E7CC0];
  *&v54[8] = v7;
  *&v54[12] = v5;
  *&v54[24] = 20;
  if (one-time initialization token for _eventDebugTriggers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((_eventDebugTriggers.rawValue & 0x20) != 0)
  {
    *&v54[24] = 28;
  }

  *&v46[0] = v8;
  v9 = PreferenceKeys._index(of:)(&type metadata for GestureLabelKey);

  v10 = *(v8 + 2);
  if (v9 == v10)
  {
    goto LABEL_9;
  }

  if (v9 >= v10)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (*&v8[16 * v9 + 32] != &type metadata for GestureLabelKey)
  {
LABEL_9:
    if (v10 < v9)
    {
      __break(1u);
      goto LABEL_56;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v54 = v8;
    if (!isUniquelyReferenced_nonNull_native || v10 >= *(v8 + 3) >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10 + 1, 1, MEMORY[0x1E69E7CC0]);
      *v54 = v8;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, v9, 1, &type metadata for GestureLabelKey, &protocol witness table for GestureLabelKey);
    *v54 = v8;
  }

  *&v46[0] = v8;
  v12 = PreferenceKeys._index(of:)(&type metadata for IsCancellableGestureKey);

  v13 = *(v8 + 2);
  if (v12 == v13)
  {
    goto LABEL_17;
  }

  if (v12 >= v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (*&v8[16 * v12 + 32] != &type metadata for IsCancellableGestureKey)
  {
LABEL_17:
    if (v13 >= v12)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      if (!v14 || v13 >= *(v8 + 3) >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14, v13 + 1, 1, v8);
        *v54 = v8;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v12, v12, 1, &type metadata for IsCancellableGestureKey, &protocol witness table for IsCancellableGestureKey);
      *v54 = v8;
      goto LABEL_22;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_22:
  *&v46[0] = v8;
  v15 = PreferenceKeys._index(of:)(&type metadata for RequiredTapCountKey);

  v16 = *(v8 + 2);
  if (v15 == v16)
  {
    goto LABEL_25;
  }

  if (v15 >= v16)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (*&v8[16 * v15 + 32] != &type metadata for RequiredTapCountKey)
  {
LABEL_25:
    if (v16 >= v15)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      if (!v17 || v16 >= *(v8 + 3) >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17, v16 + 1, 1, v8);
        *v54 = v8;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v15, v15, 1, &type metadata for RequiredTapCountKey, &protocol witness table for RequiredTapCountKey);
      *v54 = v8;
      goto LABEL_30;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_30:
  *&v46[0] = v8;
  v18 = PreferenceKeys._index(of:)(&type metadata for GestureDependency.Key);

  v19 = *(v8 + 2);
  if (v18 == v19)
  {
    goto LABEL_33;
  }

  if (v18 >= v19)
  {
LABEL_62:
    __break(1u);
    return;
  }

  if (*&v8[16 * v18 + 32] != &type metadata for GestureDependency.Key)
  {
LABEL_33:
    if (v19 >= v18)
    {
      v20 = swift_isUniquelyReferenced_nonNull_native();
      if (!v20 || v19 >= *(v8 + 3) >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v19 + 1, 1, v8);
        *v54 = v8;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v18, v18, 1, &type metadata for GestureDependency.Key, &protocol witness table for GestureDependency.Key);
      *v54 = v8;
      goto LABEL_38;
    }

    goto LABEL_58;
  }

LABEL_38:
  v21 = *&v1[4];
  AGGraphClearUpdate();
  v22 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v44[4] = v52;
  v44[5] = v53;
  v45[0] = *v54;
  *(v45 + 12) = *&v54[12];
  v44[0] = v48;
  v44[1] = v49;
  v44[2] = v50;
  v44[3] = v51;
  v40 = v52;
  v41 = v53;
  v42[0] = *v54;
  *(v42 + 12) = *&v54[12];
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  v23 = *(*v3 + 112);
  outlined init with copy of _GestureInputs(v44, v46);
  v23(v43, &v36);
  v46[4] = v40;
  v46[5] = v41;
  v47[0] = v42[0];
  *(v47 + 12) = *(v42 + 12);
  v46[0] = v36;
  v46[1] = v37;
  v46[2] = v38;
  v46[3] = v39;
  outlined destroy of _GestureInputs(v46);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v24 = v43[1];
  v25 = *MEMORY[0x1E698D3F8];
  v1[29] = v43[0];
  v26 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15GestureCategoryV0I0V_TtB5(v24);
  if ((v26 & 0x100000000) != 0)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v1[30].i32[0] = v27;
  v28 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA012GestureLabelI0V_TtB5(v24);
  if ((v28 & 0x100000000) != 0)
  {
    v29 = v25;
  }

  else
  {
    v29 = v28;
  }

  v1[30].i32[1] = v29;
  IsCancellableGestureI0V_TtB5 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA020IsCancellableGestureI0V_TtB5(v24);
  if ((IsCancellableGestureI0V_TtB5 & 0x100000000) != 0)
  {
    v31 = v25;
  }

  else
  {
    v31 = IsCancellableGestureI0V_TtB5;
  }

  v1[31].i32[0] = v31;
  v32 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA016RequiredTapCountI0V_TtB5(v24);
  if ((v32 & 0x100000000) != 0)
  {
    v33 = v25;
  }

  else
  {
    v33 = v32;
  }

  v1[31].i32[1] = v33;
  v34 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA17GestureDependencyO0I0V_TtB5(v24);

  if ((v34 & 0x100000000) != 0)
  {
    v35 = v25;
  }

  else
  {
    v35 = v34;
  }

  v1[32].i32[0] = v35;
  v40 = v52;
  v41 = v53;
  v42[0] = *v54;
  *(v42 + 12) = *&v54[12];
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  outlined destroy of _GestureInputs(&v36);
}

Swift::Void __swiftcall GestureGraph.uninstantiateOutputs()()
{
  *(v0 + 232) = *MEMORY[0x1E698D3F8];
  type metadata accessor for [EventID : EventType](0);
  AGGraphGetValue();
  AGGraphSetValue();
  AGGraphSetValue();
  AGGraphSetValue();
  AGGraphSetValue();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 120))(Strong);
  }
}

uint64_t GestureGraph.focusedResponder.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 24);

    if (Strong && (v4 = swift_getObjectType(), v5 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for EventGraphHost, &protocol descriptor for EventGraphHost, 0), (*(v3 + 16))(v9, v5, v5, v4, v3), swift_unknownObjectRelease(), v9[0]))
    {
      v6 = v9[1];
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 24))(ObjectType, v6);
      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double GestureGraph.nextGestureUpdateTime.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 272);
  *a1 = result;
  return result;
}

void GestureGraph.sendEvents(_:rootNode:at:)(uint64_t a1@<X0>, double *a2@<X2>, _BYTE *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v26 = *(*(v3 + 184) + 8);
  v27 = *Strong;
  v25 = *(v26 + 40);
  if (((v25)(*Strong) & 1) == 0)
  {

LABEL_20:
    v17 = 0;
    v18 = 3;
    goto LABEL_22;
  }

  v20 = a3;
  GraphHost.instantiateIfNeeded()();
  *(v3 + 152) = 1;
  swift_beginAccess();
  LODWORD(v28[0]) = *AGGraphGetValue() + 1;
  AGGraphSetValue();
  if (*AGGraphGetValue() != v5)
  {
    *v28 = v5;
    AGGraphSetValue();
    LODWORD(v28[0]) = *AGGraphGetValue() + 1;
    AGGraphSetValue();
    *(v3 + 272) = 0x7FF0000000000000;
  }

  v28[0] = a1;
  type metadata accessor for [EventID : EventType](0);
  AGGraphSetValue();
  v7 = *(v3 + 24);
  swift_beginAccess();
  v8 = 0;
  v23 = 0;
  v21 = *MEMORY[0x1E698D3F8];
  v22 = 3;
  do
  {
    v10 = *(v3 + 160);
    *(v3 + 160) = MEMORY[0x1E69E7CC0];
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      do
      {
        outlined init with copy of AnyTrackedValue(v12, v28);
        v14 = v29;
        v13 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        (*(v13 + 8))(v14, v13);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v12 += 40;
        --v11;
      }

      while (v11);
    }

    AGSubgraphUpdate();
    v15 = *(*(v3 + 160) + 16);
    if (v25(v27, v26))
    {
      if (v15)
      {
        if (*(a1 + 16))
        {
          v28[0] = MEMORY[0x1E69E7CC8];
          AGGraphSetValue();
        }
      }

      else
      {
        if (*(v3 + 232) == v21)
        {
          __break(1u);
        }

        type metadata accessor for GesturePhase<()>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
        Value = AGGraphGetValue();
        v22 = Value[1];
        v23 = *Value;
      }
    }

    ++v8;
    if (*(*(v3 + 160) + 16))
    {
      v9 = v8 == 8;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);

  *(v3 + 152) = 0;

  specialized printGestures(data:host:)(v19, v3);

  a3 = v20;
  v18 = v22;
  v17 = v23;
LABEL_22:
  *a3 = v17;
  a3[1] = v18;
}

uint64_t GestureGraph.enqueueAction(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 200);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

SwiftUI::GestureCategory_optional __swiftcall GestureGraph.gestureCategory()()
{
  v2 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  if (((*(*(*(v1 + 184) + 8) + 40))(*Strong) & 1) == 0)
  {

LABEL_6:
    *v2 = 0;
    *(v2 + 8) = 1;
    goto LABEL_11;
  }

  specialized static Update.begin()();
  GraphHost.instantiateIfNeeded()();
  v5 = *(v1 + 240);
  v6 = *MEMORY[0x1E698D3F8];
  if (v5 == *MEMORY[0x1E698D3F8])
  {
    v7 = 0;
  }

  else
  {
    v7 = *AGGraphGetValue();
  }

  *v2 = v7;
  *(v2 + 8) = v5 == v6;
  static Update.end()();

LABEL_11:
  result.value.rawValue = Strong;
  result.is_nil = v4;
  return result;
}

double GestureGraph.__ivar_destroyer()
{
  outlined destroy of weak AnyGestureResponder?(v0 + 176);
  outlined destroy of weak GestureGraphDelegate?(v0 + 192);

  return result;
}

void GestureGraph.deinit()
{
  GraphHost.invalidate()();
  if (one-time initialization token for blockedGraphHosts != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&blockedGraphHosts, v0);

  v2 = *(blockedGraphHosts._rawValue + 2);
  if (v2 < v1)
  {
    __break(1u);
    swift_endAccess();
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v1, v2);
    swift_endAccess();
    v3 = *(v0 + 96);
    v6[4] = *(v0 + 80);
    v6[5] = v3;
    v7 = *(v0 + 112);
    v4 = *(v0 + 32);
    v6[0] = *(v0 + 16);
    v6[1] = v4;
    v5 = *(v0 + 64);
    v6[2] = *(v0 + 48);
    v6[3] = v5;
    outlined destroy of GraphHost.Data(v6);

    outlined destroy of weak AnyGestureResponder?(v0 + 176);
    outlined destroy of weak GestureGraphDelegate?(v0 + 192);
  }
}

void GestureGraph.__deallocating_deinit()
{
  GraphHost.invalidate()();
  if (one-time initialization token for blockedGraphHosts != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&blockedGraphHosts, v0);

  v2 = *(blockedGraphHosts._rawValue + 2);
  if (v2 < v1)
  {
    __break(1u);
    swift_endAccess();
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v1, v2);
    swift_endAccess();
    v3 = *(v0 + 96);
    v6[4] = *(v0 + 80);
    v6[5] = v3;
    v7 = *(v0 + 112);
    v4 = *(v0 + 32);
    v6[0] = *(v0 + 16);
    v6[1] = v4;
    v5 = *(v0 + 64);
    v6[2] = *(v0 + 48);
    v6[3] = v5;
    outlined destroy of GraphHost.Data(v6);

    outlined destroy of weak AnyGestureResponder?(v0 + 176);
    outlined destroy of weak GestureGraphDelegate?(v0 + 192);

    swift_deallocClassInstance();
  }
}

double protocol witness for EventGraphHost.nextGestureUpdateTime.getter in conformance GestureGraph@<D0>(double *a1@<X8>)
{
  result = *(v1 + 272);
  *a1 = result;
  return result;
}

uint64_t static GestureGraph.current.getter()
{
  specialized static GraphHost.currentHost.getter();

  return swift_dynamicCastClassUnconditional();
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, v6);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for TextAttributeModifierBase();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI25TextAttributeModifierBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI25klmN7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(uint64_t a1, uint64_t (*a2)(void *, uint64_t, __n128))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v4 = AssociatedObject[2];

  return (a2)(AssociatedObject + 4, v4);
}

uint64_t specialized GestureGraph.init(rootResponder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  *(a2 + 184) = 0;
  swift_weakInit();
  *(a2 + 200) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for EventBindingManager();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 48) = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(a2 + 208) = v6;
  v8 = MEMORY[0x1E698D3F8];
  v9 = vld1q_dup_f32(v8);
  *(a2 + 232) = v9;
  *(a2 + 248) = v9;
  *(a2 + 272) = 0x7FF0000000000000;
  if (specialized static GestureContainerFeature.isEnabled.getter())
  {
    *(a2 + 184) = a4;
    swift_weakAssign();
    GraphHost.Data.init()(v19);
    v10 = AGSubgraphGetCurrent();
    v11 = *(&v19[0] + 1);
    AGSubgraphSetCurrent();
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 99))
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 16963;
        *&v17[0] = v11;
        type metadata accessor for AGSubgraphRef(0);
        AGGraphAddTraceEvent();
      }
    }

    *(a2 + 216) = Attribute.init<A>(body:value:flags:update:)();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v7);
    type metadata accessor for [EventID : EventType](0);
    v12 = Attribute.init<A>(body:value:flags:update:)();

    *(a2 + 220) = v12;
    *(a2 + 224) = Attribute.init<A>(body:value:flags:update:)();
    *(a2 + 228) = Attribute.init<A>(body:value:flags:update:)();
    *(a2 + 264) = Attribute.init<A>(body:value:flags:update:)();
    v17[4] = v19[4];
    v17[5] = v19[5];
    v18 = v20;
    v17[0] = v19[0];
    v17[1] = v19[1];
    v17[2] = v19[2];
    v17[3] = v19[3];
    outlined init with copy of GraphHost.Data(v19, v16);
    v13 = GraphHost.init(data:)(v17);
    v14 = *(v13 + 208);
    swift_beginAccess();
    *(v14 + 24) = &protocol witness table for GestureGraph;
    swift_unknownObjectWeakAssign();

    $defer #1 () in GestureGraph.init(rootResponder:)(v10, v19);

    outlined destroy of GraphHost.Data(v19);

    return v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for TextAttributeModifierBase();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = __CocoaSet.count.getter();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI25TextAttributeModifierBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI25klmN7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  type metadata accessor for CAMediaTimingFunction(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for AXCustomContent, 0x1E6959558);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = *v7;
  v11 = (v10 + 32 + 4 * result);
  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = *(v10 + 16);
  v13 = __OFSUB__(v12, a2);
  v14 = v12 - a2;
  if (v13)
  {
    goto LABEL_22;
  }

  result = v11 + 4 * a3;
  v15 = (v10 + 32 + 4 * a2);
  if (result != v15 || result >= v15 + 4 * v14)
  {
    v17 = a3;
    v18 = a6;
    v19 = a5;
    v20 = a7;
    result = memmove(result, v15, 4 * v14);
    a7 = v20;
    a5 = v19;
    a6 = v18;
    a3 = v17;
  }

  v21 = *(v10 + 16);
  v13 = __OFADD__(v21, v9);
  v22 = v21 + v9;
  if (v13)
  {
    goto LABEL_23;
  }

  *(v10 + 16) = v22;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (__OFSUB__(a7 >> 1, a6))
  {
    goto LABEL_24;
  }

  if ((a7 >> 1) - a6 != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v23 = 4 * a3;

  return memcpy(v11, (a5 + 4 * a6), v23);
}

void type metadata accessor for AnimatorState<Double>.Fork(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>)
  {
    type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
    v1 = type metadata accessor for CollectionOfOne();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>);
    }
  }
}

void type metadata accessor for AnimatorState<CGFloat>.Fork(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for AnimatorState.Fork(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t _GraphInputs.scrollPositionAnchor(kind:)(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (v2)
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v3);
  }

  else
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v3);
  }
}

uint64_t ScrollPositionBindingModifier.anchor.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 104) = result;
  *(v3 + 112) = a2;
  *(v3 + 120) = a3 & 1;
  return result;
}

__n128 ScrollPositionBindingModifier.init(binding:anchor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v5;
  v6 = *(a1 + 96);
  v7 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v7;
  result = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = result;
  *(a5 + 96) = v6;
  *(a5 + 104) = a2;
  *(a5 + 112) = a3;
  *(a5 + 120) = a4 & 1;
  return result;
}

double _GraphInputs.setScrollPositionAnchor(_:kind:)(int a1, char *a2)
{
  v3 = v2;
  v5 = *a2;

  if (v5)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v3, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v3, a1);
  }

  return result;
}

double _GraphInputs.setScrollPosition(storage:kind:)(unsigned int *a1, char *a2)
{
  v3 = *a1 | (*(a1 + 4) << 32);
  v4 = *a2;

  if (v4)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(v2, v3);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(v2, v3);
  }

  return result;
}

uint64_t ScrollPositionBindingModifier.AdjustedAnchor.value.getter(uint64_t a1)
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v1 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_11;
    }
  }

  else if (static Semantics.forced >= v1)
  {
    goto LABEL_11;
  }

  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
  if (*(AGGraphGetValue() + 16))
  {
    return 0;
  }

LABEL_11:
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
  return *AGGraphGetValue();
}

void protocol witness for static Rule.initialValue.getter in conformance ScrollPositionBindingModifier.AdjustedAnchor(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollPositionBindingModifier.AdjustedAnchor@<X0>(uint64_t a1@<X8>)
{
  result = ScrollPositionBindingModifier.AdjustedAnchor.value.getter(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

double protocol witness for static StatefulRule.initialValue.getter in conformance ScrollPositionBindingModifier.MakeRequest@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_18DD85500;
  return result;
}

__n128 ScrollValueModifier.init(value:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  return result;
}

Swift::Int ScrollStateInputKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t _GraphInputs.scrollPositionValue()()
{
  v1 = *v0;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v1, v5);
  if (!v2)
  {
    return *MEMORY[0x1E698D3F8];
  }

  if (*(v2 + 76) == 255 || ((*(v2 + 76) << 32) & 0x100000000) == 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  else
  {
    return *(v2 + 72);
  }
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.ScrollPositionAnchorKey@<X0>(void *a1@<X2>, _DWORD *a2@<X3>, _DWORD *a4@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

double specialized static ScrollValueModifier._makeInputs(modifier:inputs:)(unsigned int *a1, uint64_t *a2)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(a2, 0xFF00000000);

  v4 = *MEMORY[0x1E698D3F8];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(a2, v4);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(a2, OffsetAttribute2 | 0x100000000);

  return result;
}

void lazy protocol witness table accessor for type ScrollStateInputKind and conformance ScrollStateInputKind()
{
  if (!lazy protocol witness table cache variable for type ScrollStateInputKind and conformance ScrollStateInputKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollStateInputKind, &type metadata for ScrollStateInputKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollStateInputKind and conformance ScrollStateInputKind);
  }
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t *assignWithTake for ScrollPositionBindingModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  if (a1 != a2)
  {
    outlined destroy of ScrollPosition.Storage((a1 + 2));
    v4 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v4;
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 58) = *(a2 + 58);
  }

  *(a1 + 5) = *(a2 + 5);
  a1[12] = a2[12];
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollPositionBindingModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollPositionBindingModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ScrollPositionBindingModifier.MakeRequest(uint64_t result)
{
  if (*(result + 80))
  {
    if (!*(result + 73))
    {
      return __swift_destroy_boxed_opaque_existential_1((result + 16));
    }
  }

  return result;
}

__n128 assignWithCopy for ScrollPositionBindingModifier.MakeRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 80);
  if (!*(a1 + 80))
  {
    if (!v3)
    {
      v16 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v16;
      result = *(a2 + 48);
      v17 = *(a2 + 64);
      v18 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v17;
      *(a1 + 80) = v18;
      *(a1 + 48) = result;
      return result;
    }

    if (*(a2 + 73))
    {
      v8 = *(a2 + 16);
      v9 = *(a2 + 32);
      v10 = *(a2 + 48);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 32) = v9;
      *(a1 + 48) = v10;
      *(a1 + 16) = v8;
      goto LABEL_14;
    }

    v20 = *(a2 + 40);
    *(a1 + 40) = v20;
    *(a1 + 48) = *(a2 + 48);
    v4 = a1;
    (**(v20 - 8))(a1 + 16, a2 + 16);
LABEL_13:
    a1 = v4;
    v21 = *(a2 + 72);
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 72) = v21;
    goto LABEL_14;
  }

  if (!v3)
  {
    v11 = a1;
    outlined destroy of ScrollPosition(a1 + 16);
    v12 = *(a2 + 32);
    *(v11 + 16) = *(a2 + 16);
    *(v11 + 32) = v12;
    v14 = *(a2 + 64);
    result = *(a2 + 80);
    v15 = *(a2 + 48);
    *(v11 + 96) = *(a2 + 96);
    *(v11 + 64) = v14;
    *(v11 + 80) = result;
    *(v11 + 48) = v15;
    return result;
  }

  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v4 = a1;
  outlined destroy of ScrollPosition.Storage(a1 + 16);
  if (!*(a2 + 73))
  {
    v19 = *(a2 + 40);
    *(v4 + 40) = v19;
    *(v4 + 48) = *(a2 + 48);
    (**(v19 - 8))(v4 + 16, a2 + 16);
    goto LABEL_13;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  a1 = v4;
  *(v4 + 58) = *(a2 + 58);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
LABEL_14:
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a1 + 96) = *(a2 + 96);
  return result;
}

__n128 assignWithTake for ScrollPositionBindingModifier.MakeRequest(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 80))
  {
    v4 = *(a2 + 80);
    if (v4)
    {
      if (a1 != a2)
      {
        v5 = a1;
        outlined destroy of ScrollPosition.Storage(a1 + 16);
        a1 = v5;
        v6 = *(a2 + 32);
        *(v5 + 16) = *(a2 + 16);
        *(v5 + 32) = v6;
        *(v5 + 48) = *(a2 + 48);
        result = *(a2 + 58);
        *(v5 + 58) = result;
        v4 = *(a2 + 80);
      }

      v7 = *(a2 + 88);
      v8 = *(a2 + 96);
      *(a1 + 80) = v4;
      *(a1 + 88) = v7;
      *(a1 + 96) = v8;
    }

    else
    {
      v11 = a1;
      outlined destroy of ScrollPosition(a1 + 16);
      v12 = *(a2 + 64);
      *(v11 + 48) = *(a2 + 48);
      *(v11 + 64) = v12;
      *(v11 + 80) = *(a2 + 80);
      *(v11 + 96) = *(a2 + 96);
      result = *(a2 + 16);
      v13 = *(a2 + 32);
      *(v11 + 16) = result;
      *(v11 + 32) = v13;
    }
  }

  else
  {
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    result = *(a2 + 16);
    v10 = *(a2 + 32);
    *(a1 + 16) = result;
    *(a1 + 32) = v10;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollPositionBindingModifier.MakeRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t storeEnumTagSinglePayload for ScrollPositionBindingModifier.MakeRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ModifierTransition(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = ((v6 + v7) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & v8));
  }

  else
  {
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v14(((v3 + v9) & v8), ((a2 + v9) & v8), v4);
  }

  return v3;
}

uint64_t destroy for ModifierTransition(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8) + 8;
  v7 = *v6;
  (*v6)(a1, v3);
  v4 = (*(v6 + 56) + a1 + *(v6 + 72)) & ~*(v6 + 72);

  return v7(v4, v3);
}

unint64_t initializeWithCopy for ModifierTransition(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v7((*(v8 + 48) + *(v8 + 64) + a1) & ~*(v8 + 64), (*(v8 + 48) + *(v8 + 64) + a2) & ~*(v8 + 64), v5);
  return a1;
}

unint64_t assignWithCopy for ModifierTransition(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, v5);
  v7((*(v8 + 40) + *(v8 + 56) + a1) & ~*(v8 + 56), (*(v8 + 40) + *(v8 + 56) + a2) & ~*(v8 + 56), v5);
  return a1;
}

unint64_t initializeWithTake for ModifierTransition(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v7((*(v8 + 32) + *(v8 + 48) + a1) & ~*(v8 + 48), (*(v8 + 32) + *(v8 + 48) + a2) & ~*(v8 + 48), v5);
  return a1;
}

unint64_t assignWithTake for ModifierTransition(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, v5);
  v7((*(v8 + 24) + *(v8 + 40) + a1) & ~*(v8 + 40), (*(v8 + 24) + *(v8 + 40) + a2) & ~*(v8 + 40), v5);
  return a1;
}

void specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v6[0] = (v4 + 32);
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6, a2);
  *a1 = v4;
}

uint64_t View.safeAreaInsetPreferenceValue<A, each B>(_:edge:spacing:alignment:insetLayoutBehavior:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *a6;
  *&v22 = 1;
  *(&v22 + 1) = a3;
  LOBYTE(v23) = a4 & 1;
  BYTE1(v23) = specialized Edge.init(rawValue:)(2 * (a2 & 1u));
  *(&v23 + 1) = a5;
  *&v24 = a7;
  *(&v24 + 1) = a8;
  *&v25 = a9;
  *(&v25 + 1) = a11;
  *&v26 = a12;
  *(&v26 + 1) = a14;
  *&v27 = a15;
  v18 = type metadata accessor for _InsetPreferenceModifier(0, &v25);
  View.modifier<A>(_:)();
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = v17;
  v19 = *(*(v18 - 8) + 8);

  return v19(&v25, v18);
}

{
  v17 = *a6;
  *&v22 = 1;
  *(&v22 + 1) = a3;
  LOBYTE(v23) = a4 & 1;
  BYTE1(v23) = specialized Edge.init(rawValue:)((2 * (a2 & 1)) | 1u);
  *(&v23 + 1) = a5;
  *&v24 = a7;
  *(&v24 + 1) = a8;
  *&v25 = a9;
  *(&v25 + 1) = a11;
  *&v26 = a12;
  *(&v26 + 1) = a14;
  *&v27 = a15;
  v18 = type metadata accessor for _InsetPreferenceModifier(0, &v25);
  View.modifier<A>(_:)();
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = v17;
  v19 = *(*(v18 - 8) + 8);

  return v19(&v25, v18);
}

uint64_t _InsetPreferenceModifier.init(transform:edge:regions:spacing:alignmentKey:insetLayoutBehavior:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a8;
  *a9 = a4;
  *(a9 + 8) = a5;
  *(a9 + 16) = a6 & 1;
  *(a9 + 17) = a3;
  *(a9 + 24) = a7;
  *(a9 + 32) = result;
  *(a9 + 40) = a2;
  *(a9 + 48) = v9;
  return result;
}

uint64_t View.safeAreaInsetPreferenceValue<A, each B>(_:edge:spacing:alignmentKey:insetLayoutBehavior:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *&v18 = 1;
  *(&v18 + 1) = a3;
  LOBYTE(v19) = a4 & 1;
  BYTE1(v19) = a2;
  *(&v19 + 1) = a5;
  *&v20 = a7;
  *(&v20 + 1) = a8;
  v21 = *a6;
  *&v22 = a9;
  *(&v22 + 1) = a11;
  *&v23 = a12;
  *(&v23 + 1) = a14;
  *&v24 = a15;
  v15 = type metadata accessor for _InsetPreferenceModifier(0, &v22);
  View.modifier<A>(_:)();
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v16 = *(*(v15 - 8) + 8);

  return v16(&v22, v15);
}

void static _InsetPreferenceModifier._makeView(modifier:inputs:body:)(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = a5;
  v103 = a3;
  v13 = a10;
  v194 = *MEMORY[0x1E69E9840];
  v117 = a6;
  v119 = a5;
  v110 = a9;
  v111 = a10;
  v112 = a7;
  v115 = a8;
  v102 = 8 * a5;
  v105 = a4;
  if (a5 == 1)
  {
    v14 = a8;
    v15 = a7;
    v16 = a6;
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v118 = &v96;
    MEMORY[0x1EEE9AC00](a1);
    if (v10)
    {
      v19 = v117 & 0xFFFFFFFFFFFFFFFELL;
      v20 = v115 & 0xFFFFFFFFFFFFFFFELL;
      v21 = (&v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = v119;
      do
      {
        v19 += 8;
        v20 += 8;
        swift_getAssociatedTypeWitness();
        *v21++ = type metadata accessor for WeakAttribute();
        --v22;
      }

      while (v22);
    }

    v10 = v119;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v16 = v117;
    v13 = v111;
    v15 = v112;
    v14 = v115;
  }

  v109 = &v96;
  v101 = TupleTypeMetadata;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v118 = (&v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v188 = v10;
  *(&v188 + 1) = v16;
  *&v189 = v15;
  *(&v189 + 1) = v14;
  *&v190 = v13;
  v107 = type metadata accessor for SafeAreaSecondaryChild(0, &v188);
  v108 = &v96;
  MEMORY[0x1EEE9AC00](v107);
  v106 = (&v96 - v24);
  v25 = a2[1];
  v190 = a2[2];
  v26 = a2[2];
  v191 = a2[3];
  v27 = a2[3];
  v192 = a2[4];
  v28 = a2[1];
  v188 = *a2;
  v29 = *a2;
  v189 = v28;
  v184 = v26;
  v185 = v27;
  v186 = a2[4];
  v114 = *a1;
  v193 = *(a2 + 20);
  v187 = *(a2 + 20);
  v182 = v29;
  v183 = v25;
  if (v10)
  {
    outlined init with copy of _ViewInputs(&v188, &v176);
    v30 = (v16 & 0xFFFFFFFFFFFFFFFELL);
    v31 = (v14 & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v33 = *v30++;
      v32 = v33;
      v34 = *v31++;
      PreferencesInputs.add<A>(_:)(v32, v32, v34);
      --v10;
    }

    while (v10);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v188, &v176);
  }

  v35 = BYTE4(v190);
  if ((WORD2(v190) & 0x100) != 0)
  {
    specialized _GraphInputs.pushScope<A>(id:)(0);
    v178 = v190;
    v179 = v191;
    v180 = v192;
    v181 = v193;
    v176 = v188;
    v177 = v189;
    outlined init with copy of _ViewInputs(&v188, &v170);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v176, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);

    specialized _GraphInputs.pushScope<A>(id:)(1);
  }

  else
  {
    v178 = v190;
    v179 = v191;
    v180 = v192;
    v181 = v193;
    v176 = v188;
    v177 = v189;
    outlined init with copy of _ViewInputs(&v188, &v170);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v176, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);
  }

  v36 = v117;
  if ((v35 & 0x22) == 0)
  {
    v113 = 0;
    v100 = 0;
    v116 = 1;
    v104 = 1;
    goto LABEL_24;
  }

  v104 = (v35 & 0x20) == 0;
  v113 = v192;
  v116 = DWORD2(v192);
  v37 = v119;
  closure #1 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:)(1, v119, v117, v15, v14, v13);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v38 = v36;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v39 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v40 = specialized CachedEnvironment.attribute<A>(id:_:)(v39, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  closure #2 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:)(1, v37, v38, v15, v14, v13);
  v41 = AGGraphCreateOffsetAttribute2();
  v42 = *MEMORY[0x1E698D3F8];
  v97 = v40;
  v98 = v41;
  if ((v35 & 0x20) != 0)
  {
    v43 = v41;
    v96 = AGMakeUniqueID();
    v44 = v113;
    *&v170 = __PAIR64__(v116, v113);
    v45 = OffsetAttribute2;
    *(&v170 + 1) = __PAIR64__(v40, OffsetAttribute2);
    *&v171 = __PAIR64__(v42, v43);
    DWORD2(v171) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for (ViewGeometry, ViewGeometry)();
    lazy protocol witness table accessor for type InsetChildGeometry and conformance InsetChildGeometry();
    v46 = Attribute.init<A>(body:value:flags:update:)();
    LODWORD(v186) = AGGraphCreateOffsetAttribute2();
    HIDWORD(v100) = v184;
    DWORD2(v186) = AGGraphCreateOffsetAttribute2();
    *&v170 = __PAIR64__(v116, v44);
    v47 = v116;
    *(&v170 + 1) = __PAIR64__(v40, v45);
    *&v171 = __PAIR64__(v42, v43);
    *(&v171 + 1) = __PAIR64__(HIDWORD(v192), v42);
    v48 = v96;
    *&v172 = v96;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type InsetPrimarySafeAreas and conformance InsetPrimarySafeAreas();
    LODWORD(v100) = Attribute.init<A>(body:value:flags:update:)();
    HIDWORD(v186) = v100;
    *&v170 = __PAIR64__(v47, v44);
    DWORD2(v170) = HIDWORD(v191);
    *&v171 = v48;
    v13 = v111;
    v15 = v112;
    v14 = v115;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type InsetPrimaryTransform and conformance InsetPrimaryTransform();
    HIDWORD(v185) = Attribute.init<A>(body:value:flags:update:)();
    LODWORD(v184) = HIDWORD(v100) | 0x1C;
    LODWORD(v180) = AGGraphCreateOffsetAttribute2();
    v49 = v178;
    HIDWORD(v100) = v46;
    DWORD2(v180) = AGGraphCreateOffsetAttribute2();
    LODWORD(v178) = v49 | 0x18;
    if ((v35 & 2) != 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v113 = 0;
    v116 = 1;
    goto LABEL_23;
  }

  v100 = 0;
  if ((v35 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  *&v170 = __PAIR64__(v116, v113);
  *(&v170 + 1) = __PAIR64__(v97, OffsetAttribute2);
  *&v171 = __PAIR64__(v42, v98);
  DWORD2(v171) = v42;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type InsetLayoutComputer and conformance InsetLayoutComputer();
  v113 = Attribute.init<A>(body:value:flags:update:)();
  v116 = 0;
LABEL_23:
  v36 = v117;
LABEL_24:
  v168[2] = v184;
  v168[3] = v185;
  v168[4] = v186;
  v169 = v187;
  v168[0] = v182;
  v168[1] = v183;
  v164 = v184;
  v165 = v185;
  v166 = v186;
  v167 = v187;
  v162 = v182;
  v163 = v183;
  v50 = outlined init with copy of _ViewInputs(v168, &v170);
  v103(&v124, v50, &v162);
  v172 = v164;
  v173 = v165;
  v174 = v166;
  v175 = v167;
  v170 = v162;
  v171 = v163;
  outlined destroy of _ViewInputs(&v170);
  if (v119)
  {
    v51 = 0;
    v164 = v184;
    v165 = v185;
    v166 = v186;
    v167 = v187;
    v52 = v36 & 0xFFFFFFFFFFFFFFFELL;
    v53 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v162 = v182;
    v163 = v183;
    v54 = v119;
    do
    {
      v55 = *(v52 + 8 * v51);
      v56 = *(v53 + 8 * v51);
      v152 = v164;
      v153 = v165;
      v154 = v166;
      v155 = v167;
      v150 = v162;
      v151 = v163;
      outlined init with copy of _ViewInputs(&v162, &v156);
      static PreferenceRewriter.rewritePreferenceKey<A>(_:_:_:)(v55, &v150, &v124, v55, v56);
      v158 = v152;
      v159 = v153;
      v160 = v154;
      v161 = v155;
      v156 = v150;
      v157 = v151;
      v57 = outlined destroy of _ViewInputs(&v156);
      ++v51;
    }

    while (v54 != v51);
    v105 = &v96;
    MEMORY[0x1EEE9AC00](v57);
    v59 = (&v96 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    v60 = 0;
    v61 = (v101 + 32);
    do
    {
      _ViewOutputs.subscript.getter(*(v52 + 8 * v60), *(v52 + 8 * v60), *(v53 + 8 * v60));
      if (v54 == 1)
      {
        v62 = 0;
      }

      else
      {
        v62 = *v61;
      }

      v63 = v118;
      *(v63 + v62) = AGCreateWeakAttribute();
      v59[v60++] = (v63 + v62);
      v61 += 4;
      v54 = v119;
    }

    while (v119 != v60);
    v13 = v111;
    v15 = v112;
    v14 = v115;
    v36 = v117;
  }

  else
  {
    v105 = &v96;
    v59 = &v133;
  }

  v64 = v106;
  SafeAreaSecondaryChild.init(modifier:preferenceValues:)(v114, v59, v119, v36, v15, v14, v13, v106);
  v65 = v107;
  swift_getWitnessTable(protocol conformance descriptor for SafeAreaSecondaryChild<Pack{repeat A}, B>, v107);
  _GraphValue.init<A>(_:)(v64, v15, v65, v66, &v120);
  v67 = v120;
  v164 = v178;
  v165 = v179;
  v166 = v180;
  v167 = v181;
  v162 = v176;
  v163 = v177;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v146 = v164;
  v147 = v165;
  v148 = v166;
  v149 = v167;
  v144 = v162;
  v145 = v163;
  v69 = v164;
  LODWORD(v146) = 0;
  LODWORD(v136[0]) = v67;
  v150 = v162;
  v151 = v163;
  v155 = v167;
  v153 = v165;
  v154 = v166;
  v152 = v146;
  v140 = v146;
  v141 = v165;
  v142 = v166;
  v143 = v167;
  v138 = v162;
  v139 = v163;
  v70 = *(v13 + 24);
  outlined init with copy of _ViewInputs(&v162, &v156);
  outlined init with copy of _ViewInputs(&v150, &v156);
  v70(&v121, v136, &v138, v15, v13);
  v158 = v140;
  v159 = v141;
  v160 = v142;
  v161 = v143;
  v156 = v138;
  v157 = v139;
  outlined destroy of _ViewInputs(&v156);
  LODWORD(v146) = v69;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v121, &v144);
    AGSubgraphEndTreeElement();
  }

  v140 = v146;
  v141 = v147;
  v142 = v148;
  v143 = v149;
  v138 = v144;
  v139 = v145;
  v71 = outlined destroy of _ViewInputs(&v138);
  v72 = v121;
  v73 = v122;
  v74 = v126;
  v75 = *MEMORY[0x1E698D3F8];
  if (v126 == *MEMORY[0x1E698D3F8])
  {
    v76 = 0;
  }

  else
  {
    v76 = v126;
  }

  if (v123 == v75)
  {
    v77 = 0;
  }

  else
  {
    v77 = v123;
  }

  if (!v104)
  {
    LODWORD(v119) = v122;
    v78 = v123 == v75;
    v79 = v121;
    MEMORY[0x1EEE9AC00](v71);
    *(&v96 - 4) = v76;
    *(&v96 - 12) = v74 == v75;
    *(&v96 - 2) = v77;
    *(&v96 - 4) = v78;
    MEMORY[0x1EEE9AC00](v80);
    *(&v96 - 2) = partial apply for closure #7 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:);
    *(&v96 - 1) = v81;
    v82 = AGGraphMutateAttribute();
    MEMORY[0x1EEE9AC00](v82);
    *(&v96 - 4) = v76;
    *(&v96 - 12) = v74 == v75;
    v72 = v79;
    *(&v96 - 2) = v77;
    *(&v96 - 4) = v78;
    MEMORY[0x1EEE9AC00](v83);
    *(&v96 - 2) = partial apply for closure #8 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:);
    *(&v96 - 1) = v84;
    v71 = AGGraphMutateAttribute();
    v73 = v119;
  }

  if ((v116 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v71);
    *(&v96 - 4) = v76;
    *(&v96 - 12) = v85;
    *(&v96 - 2) = v77;
    *(&v96 - 4) = v86;
    MEMORY[0x1EEE9AC00](v87);
    *(&v96 - 2) = partial apply for closure #9 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:);
    *(&v96 - 1) = v88;
    AGGraphMutateAttribute();
  }

  v131 = MEMORY[0x1E69E7CC0];
  v132 = 0;
  v127 = v124;
  v128 = v125;
  v129 = v72;
  v130 = v73;
  v89 = v191;
  v90 = *(v191 + 16);
  if (v90)
  {

    v91 = (v89 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v127, *(v91 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v91, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v91 += 2;
      --v90;
    }

    while (v90);
  }

  else
  {
  }

  v92 = v113;
  if (v116)
  {
    v92 = v75;
  }

  v93 = v110;
  *(v110 + 12) = v92;
  v134[2] = v178;
  v134[3] = v179;
  v134[4] = v180;
  v135 = v181;
  v134[0] = v176;
  v134[1] = v177;
  outlined destroy of _ViewInputs(v134);
  v136[2] = v184;
  v136[3] = v185;
  v136[4] = v186;
  v137 = v187;
  v136[0] = v182;
  v136[1] = v183;
  outlined destroy of _ViewInputs(v136);
  v94 = v131;
  v95 = v132;

  *v93 = v94;
  *(v93 + 8) = v95;
}

uint64_t closure #1 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v12[2] = type metadata accessor for _InsetPreferenceModifier(0, v13);
  type metadata accessor for (regions: SafeAreaRegions, spacing: CGFloat?, edge: Edge, alignmentKey: AlignmentKey)(0);
  v8 = v7;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t closure #2 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v10[2] = type metadata accessor for _InsetPreferenceModifier(0, v11);
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 48, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v10, &type metadata for SafeAreaInsetLayoutBehavior, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

void *SafeAreaSecondaryChild.init(modifier:preferenceValues:)@<X0>(uint64_t a1@<X0>, double **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v14 = a1;
  if (a3 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v31 = a1;
    v34 = a4;
    v35 = a6;
    v32 = a5;
    v33 = a7;
    v30[1] = v30;
    MEMORY[0x1EEE9AC00](a1);
    if (a3)
    {
      v18 = v34 & 0xFFFFFFFFFFFFFFFELL;
      v19 = v35 & 0xFFFFFFFFFFFFFFFELL;
      v20 = (v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = a3;
      do
      {
        v18 += 8;
        v19 += 8;
        swift_getAssociatedTypeWitness();
        *v20++ = type metadata accessor for WeakAttribute();
        --v21;
      }

      while (v21);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = v32;
    v8 = v33;
    v11 = v34;
    v9 = v35;
    v14 = v31;
  }

  v22 = *(*(TupleTypeMetadata - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  if (a3)
  {
    v24 = (v23 + 32);
    v25 = a3;
    do
    {
      if (a3 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v27 = *a2++;
      *(v30 + v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0)) = *v27;
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  *a8 = v14;
  v36[0] = a3;
  v36[1] = v11;
  v36[2] = v10;
  v36[3] = v9;
  v36[4] = v8;
  v28 = type metadata accessor for SafeAreaSecondaryChild(0, v36);
  return memcpy(a8 + *(v28 + 60), v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
}

double SafeAreaSecondaryChild.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v77 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v56 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v56 - v19;
  v20 = *(*(a1 + 32) - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v66 = v26;
  v67 = &v56 - v25;
  v27 = *(a1 + 24);
  v70 = *(a1 + 16);
  v71 = v27;
  v72 = v26;
  v73 = *(a1 + 40);
  v74 = v2;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v28 = static ObservationCenter._current;
  swift_beginAccess();
  v29 = pthread_getspecific(*(v28 + 2));
  v30 = v20;
  if (!v29)
  {
    v31 = swift_slowAlloc();
    pthread_setspecific(*(v28 + 2), v31);
    v76 = type metadata accessor for ObservationCenter();
    *&v75 = *(v28 + 3);
    outlined init with take of Any(&v75, v31);
    v30 = v20;

    v29 = v31;
  }

  outlined init with copy of Any(v29, &v75);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v32 = v68;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
    *(v32 + 24) = v28;
    goto LABEL_9;
  }

  v57 = v7;
  v58 = CurrentAttribute;
  swift_beginAccess();
  v59 = *(v32 + 24);
  *(v32 + 24) = MEMORY[0x1E69E7CC0];
  v34 = (*(v5 + 56))(v17, 1, 1, v4);
  MEMORY[0x1EEE9AC00](v34);
  v35 = v66;
  *(&v56 - 4) = v66;
  *(&v56 - 3) = partial apply for closure #1 in SafeAreaSecondaryChild.value.getter;
  *(&v56 - 2) = &v69;
  v36 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v56 - 6), v60, v36, v35, MEMORY[0x1E69E7288], &v68);
  v7 = *(v30 + 32);
  (v7)(v67, v23, v35);
  v37 = v65;
  outlined init with take of ObservationTracking._AccessList?(v17, v65);
  outlined init with copy of ObservationTracking._AccessList?(v37, v14, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v38 = (*(v5 + 48))(v14, 1, v4);
  v64 = v4;
  if (v38 == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v37, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v39 = v14;
    v40 = v63;
    goto LABEL_12;
  }

  v41 = v62;
  v60 = *(v5 + 32);
  v60(v62, v14, v4);
  (*(v5 + 16))(v61, v41, v4);
  v28 = *(v32 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 24) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v44 = *(v28 + 2);
  v43 = *(v28 + 3);
  if (v44 >= v43 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v28);
  }

  *(v28 + 2) = v44 + 1;
  v45 = v64;
  v60(&v28[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v44], v61, v64);
  *(v32 + 24) = v28;
  (*(v5 + 8))(v62, v45);
  v40 = v63;
  v35 = v66;
  v39 = v65;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  (v7)(v40, v67, v35);
  v46 = *(v32 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v5 + 16);
    v48 = v5 + 16;
    v66 = *(v32 + 24);
    v67 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v58;
    v53 = v64;
    v54 = v57;
    do
    {
      (v67)(v54, v50, v53);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v54);
      (*(v48 - 8))(v54, v53);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v32 + 24) = v59;

  return result;
}

uint64_t closure #1 in SafeAreaSecondaryChild.value.getter@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a6;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  type metadata accessor for SafeAreaSecondaryChild(0, &v18);
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v15 = type metadata accessor for _InsetPreferenceModifier(0, &v18);
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in SafeAreaSecondaryChild.value.getter, v17, v15, a4, a7);
}

uint64_t closure #1 in closure #1 in SafeAreaSecondaryChild.value.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a3;
  v117 = a3;
  v102 = a4;
  v100 = 8 * a3;
  v99 = a8;
  v115 = a7;
  v116 = a2;
  v112 = a1;
  v113 = a5;
  if (a3 == 1)
  {
    v10 = a4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v9)
    {
      v13 = v102 & 0xFFFFFFFFFFFFFFFELL;
      v14 = a6 & 0xFFFFFFFFFFFFFFFELL;
      v15 = (&v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      v16 = v117;
      do
      {
        v13 += 8;
        v14 += 8;
        *v15++ = swift_getAssociatedTypeWitness();
        --v16;
      }

      while (v16);
    }

    v9 = v117;
    AssociatedTypeWitness = swift_getTupleTypeMetadata();
    v10 = v102;
  }

  v103 = AssociatedTypeWitness;
  v101 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v109 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v90 - v19;
  v97 = &v90;
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v90 - v22;
  v98 = &v90;
  if (v9 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    if (v9)
    {
      v25 = v102 & 0xFFFFFFFFFFFFFFFELL;
      v26 = a6 & 0xFFFFFFFFFFFFFFFELL;
      v27 = (&v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = v117;
      do
      {
        v25 += 8;
        v26 += 8;
        swift_getAssociatedTypeWitness();
        *v27++ = type metadata accessor for WeakAttribute();
        --v28;
      }

      while (v28);
    }

    v9 = v117;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = v102;
  }

  v114 = TupleTypeMetadata;
  v29 = *(*(TupleTypeMetadata - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v96 = v31;
  if (v9 == 1)
  {
    swift_getAssociatedTypeWitness();
    v32 = type metadata accessor for Optional();
    v33 = v32;
  }

  else
  {
    v34 = a6;
    v111 = &v90;
    MEMORY[0x1EEE9AC00](v30);
    if (v9)
    {
      v36 = v102 & 0xFFFFFFFFFFFFFFFELL;
      v37 = a6 & 0xFFFFFFFFFFFFFFFELL;
      v38 = (&v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
      v39 = v117;
      do
      {
        v36 += 8;
        v37 += 8;
        swift_getAssociatedTypeWitness();
        *v38++ = type metadata accessor for Optional();
        --v39;
      }

      while (v39);
    }

    v9 = v117;
    v32 = swift_getTupleTypeMetadata();
    v33 = v32;
    a6 = v34;
    v10 = v102;
  }

  v95 = &v90;
  v40 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v42 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = &v90;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v90 - v44;
  v46 = *(v112 + 40);
  v93 = *(v112 + 32);
  v92 = v46;
  v118[0] = v9;
  v118[1] = v10;
  v118[2] = v113;
  v118[3] = a6;
  v118[4] = v115;
  v47 = type metadata accessor for SafeAreaSecondaryChild(0, v118);
  memcpy(&v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), &v116[*(v47 + 60)], v29);
  v104 = v33;
  v107 = v45;
  v91 = a6;
  if (v9)
  {
    v105 = v42;
    v110 = v40;
    v48 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v49 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v50 = 32;
    v115 = (a6 & 0xFFFFFFFFFFFFFFFELL);
    v116 = v48;
    v51 = v9;
    do
    {
      v53 = v9 == 1;
      v54 = v107;
      if (!v53)
      {
        v54 = &v107[*(v104 + v50)];
      }

      v55 = swift_getAssociatedTypeWitness();
      WeakValue = AGGraphGetWeakValue();
      v57 = *(v55 - 8);
      if (WeakValue)
      {
        (*(v57 + 16))(v54, WeakValue, v55);
        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      (*(v57 + 56))(v54, v52, 1, v55);
      v50 += 16;
      v49 += 8;
      v48 += 8;
      --v51;
      v9 = v117;
    }

    while (v51);
    v58 = v104;
    v42 = v105;
    (*(v110 + 16))(v105, v107, v104);
    v59 = (v58 + 32);
    v60 = (v103 + 32);
    v61 = v9;
    v63 = v115;
    v62 = v116;
    do
    {
      if (v9 == 1)
      {
        v64 = 0;
        v113 = v108;
      }

      else
      {
        v113 = &v108[*v60];
        v64 = *v59;
      }

      v115 = v63;
      v116 = v62;
      v65 = *v63;
      v112 = *v62;
      v66 = swift_getAssociatedTypeWitness();
      v67 = type metadata accessor for Optional();
      v114 = &v90;
      v68 = MEMORY[0x1EEE9AC00](v67);
      v70 = &v90 - v69;
      v111 = v71;
      (*(v71 + 16))(&v90 - v69, &v42[v64], v67, v68);
      v72 = *(v66 - 8);
      v73 = *(v72 + 48);
      if (v73(v70, 1, v66) == 1)
      {
        (*(v65 + 16))();
        if (v73(v70, 1, v66) != 1)
        {
          (v111[1])(v70, v67);
        }
      }

      else
      {
        (*(v72 + 32))(v113, v70, v66);
      }

      v59 += 4;
      v60 += 4;
      v63 = v115 + 1;
      v9 = v117;
      v62 = v116 + 8;
      --v61;
      v40 = v110;
      v42 = v105;
    }

    while (v61);
  }

  else
  {
    (*(v40 + 16))(v42, v45, v33);
  }

  v74 = *(v40 + 8);
  v110 = v40 + 8;
  v116 = v74;
  v75 = (v74)(v42, v104);
  v115 = &v90;
  v76 = MEMORY[0x1EEE9AC00](v75);
  v78 = (&v90 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v101 + 16))(v109, v108, v103, v76);
  if (v9)
  {
    v79 = v102 & 0xFFFFFFFFFFFFFFFELL;
    v80 = v91 & 0xFFFFFFFFFFFFFFFELL;
    v81 = (v103 + 32);
    v82 = v78;
    v83 = v9;
    do
    {
      if (v9 == 1)
      {
        v84 = 0;
        v85 = v106;
      }

      else
      {
        v84 = *v81;
        v85 = &v106[v84];
      }

      v79 += 8;
      v80 += 8;
      v86 = swift_getAssociatedTypeWitness();
      (*(*(v86 - 8) + 16))(v85, &v109[v84], v86);
      *v82++ = v85;
      v81 += 4;
      --v83;
      v9 = v117;
    }

    while (v83);
  }

  v93(v78);
  v87 = *(v101 + 8);
  v88 = v103;
  v87(v106, v103);
  v87(v109, v88);
  v87(v108, v88);
  return (v116)(v107, v104);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance SafeAreaSecondaryChild<Pack{repeat A}, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for SafeAreaSecondaryChild<Pack{repeat A}, B>, a1);

  return static AsyncAttribute.flags.getter();
}

void specialized StatefulRule<>.update<A>(to:)(uint64_t a1, __int16 a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a2 & 0xFF01;
  v10[4] = &v11;
  v11 = a1;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine, &type metadata for _TextBaselineRelativeSpacer, &protocol witness table for _TextBaselineRelativeSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v10[0] = v5;
      v10[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA021_TextBaselineRelativeF0V_G_Tt1g5Tm(a1, a2 & 0xFF01, type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine>, type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine>, v10);
    AGGraphSetOutputValue();
  }
}

{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a2 & 0xFF01;
  v10[4] = &v11;
  v11 = a1;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_HSpacer>.Engine, &type metadata for _HSpacer, &protocol witness table for _HSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v10[0] = v5;
      v10[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA021_TextBaselineRelativeF0V_G_Tt1g5Tm(a1, a2 & 0xFF01, type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<_HSpacer>.Engine>, type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<_HSpacer>.Engine>, v10);
    AGGraphSetOutputValue();
  }
}

{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a2 & 0xFF01;
  v10[4] = &v11;
  v11 = a1;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_VSpacer>.Engine, &type metadata for _VSpacer, &protocol witness table for _VSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v10[0] = v5;
      v10[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA021_TextBaselineRelativeF0V_G_Tt1g5Tm(a1, a2 & 0xFF01, type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<_VSpacer>.Engine>, type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<_VSpacer>.Engine>, v10);
    AGGraphSetOutputValue();
  }
}

double _s7SwiftUI32_DisplayList_StableIdentityScopeV2id6parentACx_ACtcAA16StronglyHashableRzlufCAA10StrongHashV_Tt2B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  data[0] = a1;
  data[1] = a2;
  v10 = a3;
  *(a5 + 32) = MEMORY[0x1E69E7CC8];
  *(a5 + 40) = 0;
  *a5 = *a4;
  memset(&c, 0, sizeof(c));

  CC_SHA1_Init(&c);
  v12 = c;
  CC_SHA1_Update(&v12, data, 0x14u);
  *&c.h0 = *(a4 + 8);
  c.h4 = *(a4 + 24);
  CC_SHA1_Update(&v12, &c, 0x14u);
  outlined destroy of _DisplayList_StableIdentityScope(a4);
  memset(&c, 0, 20);
  CC_SHA1_Final(&c, &v12);
  h4 = c.h4;
  result = *&c.h0;
  *(a5 + 8) = *&c.h0;
  *(a5 + 24) = h4;
  return result;
}

uint64_t specialized _GraphInputs.pushScope<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *v3;
  v8 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*v3);
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    Value = AGGraphGetValue();
    v10 = *(Value + 28);
    v11 = Value[1];
    v18 = *Value;
    v19[0] = v11;
    *(v19 + 12) = v10;
    outlined init with copy of _DisplayList_StableIdentityScope(&v18, &v16);
    outlined init with copy of _DisplayList_StableIdentityScope(&v18, &v16);
    _s7SwiftUI32_DisplayList_StableIdentityScopeV2id6parentACx_ACtcAA16StronglyHashableRzlufCAA10StrongHashV_Tt2B5(a1, a2, a3, &v18, &v16);
    v19[2] = v16;
    v20[0] = v17[0];
    *(v20 + 12) = *(v17 + 12);
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of _DisplayList_StableIdentityScope(&v16);
    a3 = AGCreateWeakAttribute();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v3, a3);

    v8 = v18;
    swift_beginAccess();
    v7 = *(v8 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 16) = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
  *(v8 + 16) = v7;
LABEL_3:
  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
  }

  *(v7 + 16) = v14 + 1;
  *(v7 + 8 * v14 + 32) = a3;
  *(v8 + 16) = v7;
  return outlined destroy of _DisplayList_StableIdentityScope(&v18);
}

double specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(void *a1)
{
  v52 = a1;
  v74[1] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v59 = v1;
  v60 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v61 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v51 - v5;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v68 = v6;
    LOBYTE(v69) = v7;
    BYTE1(v69) = v8;
    BYTE2(v69) = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v62 = *(&v6 + 1);
    LODWORD(v63) = v10;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v17 = v16;
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v17;
    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v64 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v67 = v63;
      v74[0] = &dword_18D018000;
      v66 = _signpostLog;
      *&v68 = v6;
      *(&v68 + 1) = v62;
      LOBYTE(v69) = v7;
      v72[0] = "%{public}@.body [in %{public}@]";
      v72[1] = 31;
      v73 = 2;
      v65 = v64;
      v20 = v53;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v67, v74, &v66, &v68, v53, v72, &v65);
      (*(v60 + 8))(v20, v59);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v6) | (4 * WORD1(v6));
    v23 = v63;
    v24 = v60 + 16;
    v54 = *(v60 + 16);
    v25 = v54(v61, v53, v59);
    v26 = 0;
    LOBYTE(v72[0]) = 1;
    v63 = v21;
    v60 = v24;
    v57 = 16 * v21;
    v58 = (v24 - 8);
    v56 = v64 + 32;
    v55 = v6;
LABEL_11:
    v62 = &v51;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v28 + 8;
    v30 = v63;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v56 + 40 * v26;
    v33 = v63;
    while (1)
    {
      v34 = *(v64 + 16);
      if (v26 == v34)
      {
        LOBYTE(v72[0]) = 0;
LABEL_19:
        v38 = v55;
        if (v55 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = v59;
        v40 = *v58;
        v41 = v61;
        (*v58)(v61, v59);
        v42 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v25 = v54(v41, v42, v39);
        if ((v72[0] & 1) == 0)
        {
          v43 = v59;
          v40(v61, v59);
          v40(v53, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v34)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v32, &v68);
      v35 = v70;
      v36 = v71;
      __swift_project_boxed_opaque_existential_1(&v68, v70);
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
      *v29 = v37 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v68);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v44 = v52;
  v45 = *v52;
  v46 = v52[4];
  v48 = v52[6];
  v72[0] = v52[5];
  v47 = v72[0];
  v74[0] = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = v45;
  *(v49 + 24) = *(v44 + 1);
  *(v49 + 40) = v44[3];
  *(v49 + 48) = v46;
  *(v49 + 56) = v47;
  *(v49 + 64) = v48;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v72, &v68, type metadata accessor for Task<(), Error>?);
  outlined init with copy of ObservationTracking._AccessList?(v74, &v68, &lazy cache variable for type metadata for AnyLocation<Task<(), Error>?>?, type metadata accessor for AnyLocation<Task<(), Error>?>, MEMORY[0x1E69E6720]);
  *&v68 = v45;
  *(&v68 + 1) = partial apply for specialized closure #1 in ScheduledAnimationModifier.body(content:);
  v69 = v49;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>(0);
  AGGraphSetOutputValue();

  return result;
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(CGFloat a1, CGFloat a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v47 - v8;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v9 = static Signpost.bodyInvoke;
    v10 = word_1ED539040;
    v11 = HIBYTE(word_1ED539040);
    v12 = byte_1ED539042;
    v13 = static os_signpost_type_t.begin.getter();
    *&v66.a = v9;
    LOBYTE(v66.c) = v10;
    BYTE1(v66.c) = v11;
    BYTE2(v66.c) = v12;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v54 = *(&v9 + 1);
    LODWORD(v58) = v13;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAB4C0;
    v15 = AGTypeID.description.getter();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v20 = v19;
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v21 = specialized static Tracing.libraryName(defining:)();
    *(v14 + 96) = v18;
    *(v14 + 104) = v20;
    *(v14 + 72) = v21;
    *(v14 + 80) = v22;
    v59 = v14;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v11)
    {
      v65 = v58;
      v63 = _signpostLog;
      v64 = &dword_18D018000;
      *&v66.a = v9;
      *&v66.b = v54;
      LOBYTE(v66.c) = v10;
      v61[0] = "%{public}@.body [in %{public}@]";
      v61[1] = 31;
      v62 = 2;
      v60 = v59;
      v23 = v48;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v65, &v64, &v63, &v66, v48, v61, &v60);
      (*(v56 + 8))(v23, v55);
LABEL_34:

      break;
    }

    if (v9 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v9) | (4 * WORD1(v9));
    v26 = v58;
    v27 = v56 + 16;
    v49 = *(v56 + 16);
    v28 = v49(v57, v48, v55);
    v29 = 0;
    LOBYTE(v61[0]) = 1;
    v53 = 16 * *(&v9 + 1);
    v56 = v27;
    v54 = (v27 - 8);
    v52 = v59 + 32;
    v51 = v9;
    v50 = *(&v9 + 1);
LABEL_11:
    v58 = &v47;
    MEMORY[0x1EEE9AC00](v28);
    v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v31 + 8;
    v33 = v24;
    v34 = v31 + 8;
    do
    {
      *(v34 - 1) = 0;
      *v34 = 0;
      v34 += 16;
      --v33;
    }

    while (v33);
    v35 = v52 + 40 * v29;
    while (1)
    {
      v36 = *(v59 + 16);
      if (v29 == v36)
      {
        LOBYTE(v61[0]) = 0;
LABEL_19:
        v40 = v51;
        if (v51 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v31[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v31[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v31[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v40 != 20 && v31[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v41 = *v54;
        v42 = v57;
        v43 = v55;
        (*v54)(v57, v55);
        v44 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
        v28 = v49(v42, v44, v43);
        v24 = v50;
        if ((v61[0] & 1) == 0)
        {
          v45 = v55;
          v41(v57, v55);
          v41(v48, v45);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v29 >= v36)
      {
        break;
      }

      ++v29;
      outlined init with copy of AnyTrackedValue(v35, &v66);
      v37 = *&v66.d;
      v38 = *&v66.tx;
      __swift_project_boxed_opaque_existential_1(&v66, *&v66.d);
      *(v32 - 1) = CVarArg.kdebugValue(_:)(v25 | v26, v37, v38);
      *v32 = v39 & 1;
      v32 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v35 += 40;
      if (!--v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  CGAffineTransformMakeTranslation(&v66, a1, a2);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>(0);
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(char *a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v54 = v2;
  v55 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v8 = static Signpost.bodyInvoke;
    v9 = word_1ED539040;
    v10 = HIBYTE(word_1ED539040);
    v11 = byte_1ED539042;
    v12 = static os_signpost_type_t.begin.getter();
    v58 = v8;
    v71 = v8;
    LODWORD(v57) = v9;
    LOBYTE(v72) = v9;
    v60 = v10;
    BYTE1(v72) = v10;
    BYTE2(v72) = v11;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v52 = *(&v8 + 1);
    LODWORD(v53) = v12;
    v47 = a1;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
    v48 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v59 = v13;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v60)
    {
      v63 = v53;
      *&v64[0] = &dword_18D018000;
      *&v71 = v58;
      *(&v71 + 1) = v52;
      LOBYTE(v72) = v57;
      *&v66 = "%{public}@.body [in %{public}@]";
      *(&v66 + 1) = 31;
      LOBYTE(v67) = 2;
      v61 = v59;
      v62 = _signpostLog;
      v22 = v48;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v63, v64, &v62, &v71, v48, &v66, &v61);
      (*(v55 + 8))(v22, v54);
LABEL_34:

      a1 = v47;
      break;
    }

    v23 = v58;
    if (v58 == 20)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    v24 = bswap32(v58) | (4 * WORD1(v58));
    v60 = v53;
    v25 = v55 + 16;
    v49 = *(v55 + 16);
    v26 = v49(v56, v48, v54);
    v27 = 0;
    LOBYTE(v66) = 1;
    v58 = v7;
    v55 = v25;
    v52 = 16 * v7;
    v53 = (v25 - 8);
    v50 = v23;
    v51 = v59 + 32;
LABEL_11:
    v57 = &v47;
    MEMORY[0x1EEE9AC00](v26);
    v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    a1 = v29 + 8;
    v30 = v58;
    v31 = v29 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v51 + 40 * v27;
    v33 = v58;
    while (1)
    {
      v34 = *(v59 + 16);
      if (v27 == v34)
      {
        LOBYTE(v66) = 0;
LABEL_19:
        v37 = v50;
        if (v50 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v29[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v29[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v29[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v37 != 20 && v29[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v7 = v54;
        v38 = *v53;
        v39 = v56;
        (*v53)(v56, v54);
        v40 = __swift_project_value_buffer(v7, static OSSignpostID.continuation);
        v26 = v49(v39, v40, v7);
        if ((v66 & 1) == 0)
        {
          v41 = v54;
          v38(v56, v54);
          v38(v48, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v27 >= v34)
      {
        break;
      }

      ++v27;
      outlined init with copy of AnyTrackedValue(v32, &v71);
      v35 = *(&v72 + 1);
      v7 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      *(a1 - 1) = CVarArg.kdebugValue(_:)(v24 | v60, v35, v7);
      *a1 = v36 & 1;
      a1 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v71);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v42 = *(a1 + 5);
  v75 = *(a1 + 4);
  v76 = v42;
  v43 = *(a1 + 7);
  v77 = *(a1 + 6);
  v78 = v43;
  v44 = *(a1 + 1);
  v71 = *a1;
  v72 = v44;
  v45 = *(a1 + 3);
  v73 = *(a1 + 2);
  v74 = v45;
  specialized TranslationKickModifier.body(content:)(&v66);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>(0);
  AGGraphSetOutputValue();
  v64[2] = v68;
  v64[3] = v69;
  v65 = v70;
  v64[0] = v66;
  v64[1] = v67;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v64, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>);
}

{
  v71 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v8 = static Signpost.bodyInvoke;
    v9 = word_1ED539040;
    v10 = HIBYTE(word_1ED539040);
    v11 = byte_1ED539042;
    v12 = static os_signpost_type_t.begin.getter();
    v61 = v8;
    *v68 = v8;
    LODWORD(v60) = v9;
    v68[16] = v9;
    v63 = v10;
    v68[17] = v10;
    v68[18] = v11;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v55 = *(&v8 + 1);
    LODWORD(v56) = v12;
    v50 = a1;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
    v51 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v62 = v13;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v63)
    {
      v66 = v56;
      *&v69[0] = &dword_18D018000;
      *v68 = v61;
      *&v68[8] = v55;
      v68[16] = v60;
      v67[0] = "%{public}@.body [in %{public}@]";
      v67[1] = 31;
      LOBYTE(v67[2]) = 2;
      v64 = v62;
      v65 = _signpostLog;
      v22 = v51;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v66, v69, &v65, v68, v51, v67, &v64);
      (*(v58 + 8))(v22, v57);
LABEL_34:

      a1 = v50;
      break;
    }

    v23 = v61;
    if (v61 == 20)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    v24 = bswap32(v61) | (4 * WORD1(v61));
    v63 = v56;
    v25 = v58 + 16;
    v52 = *(v58 + 16);
    v26 = v52(v59, v51, v57);
    v27 = 0;
    LOBYTE(v67[0]) = 1;
    v61 = v7;
    v58 = v25;
    v55 = 16 * v7;
    v56 = (v25 - 8);
    v53 = v23;
    v54 = v62 + 32;
LABEL_11:
    v60 = &v50;
    MEMORY[0x1EEE9AC00](v26);
    v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    a1 = v29 + 8;
    v30 = v61;
    v31 = v29 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v54 + 40 * v27;
    v33 = v61;
    while (1)
    {
      v34 = *(v62 + 16);
      if (v27 == v34)
      {
        LOBYTE(v67[0]) = 0;
LABEL_19:
        v37 = v53;
        if (v53 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v29[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v29[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v29[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v37 != 20 && v29[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v7 = v57;
        v38 = *v56;
        v39 = v59;
        (*v56)(v59, v57);
        v40 = __swift_project_value_buffer(v7, static OSSignpostID.continuation);
        v26 = v52(v39, v40, v7);
        if ((v67[0] & 1) == 0)
        {
          v41 = v57;
          v38(v59, v57);
          v38(v51, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v27 >= v34)
      {
        break;
      }

      ++v27;
      outlined init with copy of AnyTrackedValue(v32, v68);
      v35 = *&v68[24];
      v7 = *&v68[32];
      __swift_project_boxed_opaque_existential_1(v68, *&v68[24]);
      *(a1 - 1) = CVarArg.kdebugValue(_:)(v24 | v63, v35, v7);
      *a1 = v36 & 1;
      a1 += 16;
      __swift_destroy_boxed_opaque_existential_1(v68);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v42 = *(a1 + 13);
  v69[12] = *(a1 + 12);
  v69[13] = v42;
  v69[14] = *(a1 + 14);
  v70 = *(a1 + 30);
  v43 = *(a1 + 9);
  v69[8] = *(a1 + 8);
  v69[9] = v43;
  v44 = *(a1 + 11);
  v69[10] = *(a1 + 10);
  v69[11] = v44;
  v45 = *(a1 + 5);
  v69[4] = *(a1 + 4);
  v69[5] = v45;
  v46 = *(a1 + 7);
  v69[6] = *(a1 + 6);
  v69[7] = v46;
  v47 = *(a1 + 1);
  v69[0] = *a1;
  v69[1] = v47;
  v48 = *(a1 + 3);
  v69[2] = *(a1 + 2);
  v69[3] = v48;
  specialized ScalePulseModifier.body(content:)(v68);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>(0);
  AGGraphSetOutputValue();
  memcpy(v67, v68, sizeof(v67));
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v67, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>);
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(const void *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v62 = v8;
  v68[0] = v8;
  LODWORD(v60) = v9;
  LOBYTE(v68[1]) = v9;
  BYTE1(v68[1]) = v10;
  BYTE2(v68[1]) = v11;
  if (Signpost.isEnabled.getter())
  {
    v55 = *(&v8 + 1);
    LODWORD(v59) = v12;
    v49 = a1;
    v50 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v61 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v22 = v55;
      if (v10)
      {
LABEL_6:
        v66 = v59;
        v64 = _signpostLog;
        v65 = &dword_18D018000;
        *&v68[0] = v62;
        *(&v68[0] + 1) = v22;
        LOBYTE(v68[1]) = v60;
        v67[0] = "%{public}@.body [in %{public}@]";
        v67[1] = 31;
        LOBYTE(v67[2]) = 2;
        v63 = v61;
        v23 = v50;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v66, &v65, &v64, v68, v50, v67, &v63);
        (*(v57 + 8))(v23, v56);
LABEL_35:

        a1 = v49;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v22 = v55;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v24 = v62;
    if (v62 == 20)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    v26 = bswap32(v62) | (4 * WORD1(v62));
    LODWORD(v62) = v59;
    v27 = v57 + 16;
    v51 = *(v57 + 16);
    v28 = v51(v58, v50, v56);
    v29 = 0;
    LOBYTE(v67[0]) = 1;
    v60 = v25;
    v57 = v27;
    v54 = 16 * v25;
    v55 = (v27 - 8);
    v52 = v24;
    v53 = v61 + 32;
    do
    {
      v59 = &v48;
      MEMORY[0x1EEE9AC00](v28);
      v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + 8;
      v33 = v60;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v53 + 40 * v29;
      v36 = v60;
      while (1)
      {
        v37 = *(v61 + 16);
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, v68);
        v38 = *(&v68[1] + 1);
        v39 = *&v68[2];
        __swift_project_boxed_opaque_existential_1(v68, *(&v68[1] + 1));
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v26 | v62, v38, v39);
        *v32 = v40 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(v68);
        v35 += 40;
        if (!--v36)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v67[0]) = 0;
LABEL_20:
      v41 = v52;
      if (v52 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v41 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v42 = v56;
      v43 = *v55;
      v44 = v58;
      (*v55)(v58, v56);
      v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
      v28 = v51(v44, v45, v42);
    }

    while ((v67[0] & 1) != 0);
    v46 = v56;
    v43(v58, v56);
    v43(v50, v46);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  memcpy(v67, a1, 0x180uLL);
  GlassTransitionStateModifier.body(content:)(v68);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>(0);
  AGGraphSetOutputValue();
  memcpy(v67, v68, sizeof(v67));
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v67, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>);
}

double specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(_BYTE *a1)
{
  v74[43] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v61 = v2;
  v62 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v9 = *(&static Signpost.bodyInvoke + 1);
  v8 = static Signpost.bodyInvoke;
  v10 = word_1ED539040;
  v11 = HIBYTE(word_1ED539040);
  v12 = byte_1ED539042;
  v13 = static os_signpost_type_t.begin.getter();
  v67 = v8;
  v74[0] = v8;
  v14 = v11;
  v74[1] = v9;
  LODWORD(v65) = v10;
  LOBYTE(v74[2]) = v10;
  BYTE1(v74[2]) = v11;
  BYTE2(v74[2]) = v12;
  v15 = a1;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {
    goto LABEL_36;
  }

  v60 = v9;
  LODWORD(v64) = v13;
  v54 = a1;
  v55 = v7;
  static OSSignpostID.exclusive.getter();
  type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18DDAB4C0;
  v17 = AGTypeID.description.getter();
  v19 = v18;
  v20 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  v22 = v21;
  *(v16 + 64) = v21;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v23 = specialized static Tracing.libraryName(defining:)();
  *(v16 + 96) = v20;
  *(v16 + 104) = v22;
  *(v16 + 72) = v23;
  *(v16 + 80) = v24;
  v66 = v16;
  if (one-time initialization token for _signpostLog == -1)
  {
    v25 = v60;
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_8:
    v27 = v67;
    if (v67 == 20)
    {
      v28 = 3;
    }

    else
    {
      v28 = 4;
    }

    v29 = bswap32(v67) | (4 * WORD1(v67));
    LODWORD(v67) = v64;
    v30 = v62 + 16;
    v56 = *(v62 + 16);
    v31 = v56(v63, v55, v61);
    v32 = 0;
    LOBYTE(v72[0]) = 1;
    v65 = v28;
    v62 = v30;
    v59 = 16 * v28;
    v60 = (v30 - 8);
    v57 = v27;
    v58 = v66 + 32;
LABEL_12:
    v64 = &v53;
    MEMORY[0x1EEE9AC00](v31);
    v34 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = v34 + 8;
    v35 = v65;
    v36 = v34 + 8;
    do
    {
      *(v36 - 1) = 0;
      *v36 = 0;
      v36 += 16;
      --v35;
    }

    while (v35);
    v37 = v58 + 40 * v32;
    v38 = v65;
    while (1)
    {
      v39 = *(v66 + 16);
      if (v32 == v39)
      {
        LOBYTE(v72[0]) = 0;
LABEL_20:
        v43 = v57;
        if (v57 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v34[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v34[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v34[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v43 != 20 && v34[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v44 = v61;
        v45 = *v60;
        v46 = v63;
        (*v60)(v63, v61);
        v47 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
        v31 = v56(v46, v47, v44);
        if ((v72[0] & 1) == 0)
        {
          v48 = v61;
          v45(v63, v61);
          v45(v55, v48);
          goto LABEL_35;
        }

        goto LABEL_12;
      }

      if (v32 >= v39)
      {
        break;
      }

      ++v32;
      outlined init with copy of AnyTrackedValue(v37, v74);
      v40 = v74[3];
      v41 = v74[4];
      __swift_project_boxed_opaque_existential_1(v74, v74[3]);
      *(v15 - 1) = CVarArg.kdebugValue(_:)(v29 | v67, v40, v41);
      *v15 = v42 & 1;
      v15 += 16;
      __swift_destroy_boxed_opaque_existential_1(v74);
      v37 += 40;
      if (!--v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  swift_once();
  v25 = v60;
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v70 = v64;
  v71[0] = &dword_18D018000;
  v74[0] = v67;
  v74[1] = v25;
  LOBYTE(v74[2]) = v65;
  v72[0] = "%{public}@.body [in %{public}@]";
  v72[1] = 31;
  v73 = 2;
  v68 = v66;
  v69 = _signpostLog;
  v26 = v55;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v70, v71, &v69, v74, v55, v72, &v68);
  (*(v62 + 8))(v26, v61);
LABEL_35:

  v15 = v54;
LABEL_36:
  AGGraphClearUpdate();
  memcpy(v74, v15, 0x154uLL);
  if (one-time initialization token for one != -1)
  {
LABEL_39:
    swift_once();
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for AnchorBox<UnitRect>, &type metadata for UnitRect, &protocol witness table for UnitRect, type metadata accessor for AnchorBox);
  v49 = swift_allocObject();
  v50 = xmmword_1ED52E568;
  *(v49 + 16) = static UnitRect.one;
  *(v49 + 32) = v50;
  v51 = swift_allocObject();
  memcpy((v51 + 16), v74, 0x154uLL);
  v71[0] = v49;
  v71[1] = partial apply for closure #1 in GlassEffectShapeModifier.body(content:);
  v71[2] = v51;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v15, v72, &lazy cache variable for type metadata for UncheckedSendable<GlassEffectShapeModifier>, &type metadata for GlassEffectShapeModifier, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>(0);
  AGGraphSetOutputValue();

  return result;
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(uint64_t a1)
{
  v48 = a1;
  v70 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v55 = v1;
  v56 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v57 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v47[-v5];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v67 = v6;
    LOBYTE(v68) = v7;
    BYTE1(v68) = v8;
    BYTE2(v68) = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v58 = *(&v6 + 1);
    LODWORD(v59) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v17 = v16;
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v17;
    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v60 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v66 = v59;
      v64 = _signpostLog;
      v65 = &dword_18D018000;
      *&v67 = v6;
      *(&v67 + 1) = v58;
      LOBYTE(v68) = v7;
      v62[0] = "%{public}@.body [in %{public}@]";
      v62[1] = 31;
      v63 = 2;
      v61 = v60;
      v20 = v49;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v66, &v65, &v64, &v67, v49, v62, &v61);
      (*(v56 + 8))(v20, v55);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v6) | (4 * WORD1(v6));
    v23 = v59;
    v24 = v56 + 16;
    v50 = *(v56 + 16);
    v25 = v50(v57, v49, v55);
    v26 = 0;
    LOBYTE(v62[0]) = 1;
    v59 = v21;
    v53 = 16 * v21;
    v56 = v24;
    v54 = (v24 - 8);
    v52 = v60 + 32;
    v51 = v6;
LABEL_11:
    v58 = v47;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v47[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v29 = v28 + 8;
    v30 = v59;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v52 + 40 * v26;
    v33 = v59;
    while (1)
    {
      v34 = *(v60 + 16);
      if (v26 == v34)
      {
        LOBYTE(v62[0]) = 0;
LABEL_19:
        v38 = v51;
        if (v51 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = v55;
        v40 = *v54;
        v41 = v57;
        (*v54)(v57, v55);
        v42 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v25 = v50(v41, v42, v39);
        if ((v62[0] & 1) == 0)
        {
          v43 = v55;
          v40(v57, v55);
          v40(v49, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v34)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v32, &v67);
      v35 = *(&v68 + 1);
      v36 = v69;
      __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
      *v29 = v37 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v67);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v44 = *(v48 + 32) & 1;
  v45 = *(v48 + 16);
  v67 = *v48;
  v68 = v45;
  LOBYTE(v69) = v44;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>(0);
  return AGGraphSetOutputValue();
}

{
  v71 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v58 = v2;
  v59 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v64 = v8;
  v70[0] = v8;
  LODWORD(v62) = v9;
  LOBYTE(v70[1]) = v9;
  BYTE1(v70[1]) = v10;
  BYTE2(v70[1]) = v11;
  if (Signpost.isEnabled.getter())
  {
    v57 = *(&v8 + 1);
    LODWORD(v61) = v12;
    v51 = a1;
    v52 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v63 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v22 = v57;
      if (v10)
      {
LABEL_6:
        v68 = v61;
        v66 = _signpostLog;
        v67 = &dword_18D018000;
        *&v70[0] = v64;
        *(&v70[0] + 1) = v22;
        LOBYTE(v70[1]) = v62;
        *&v69[0] = "%{public}@.body [in %{public}@]";
        *(&v69[0] + 1) = 31;
        LOBYTE(v69[1]) = 2;
        v65 = v63;
        v23 = v52;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v68, &v67, &v66, v70, v52, v69, &v65);
        (*(v59 + 8))(v23, v58);
LABEL_35:

        a1 = v51;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v22 = v57;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v24 = v64;
    if (v64 == 20)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    v26 = bswap32(v64) | (4 * WORD1(v64));
    LODWORD(v64) = v61;
    v27 = v59 + 16;
    v53 = *(v59 + 16);
    v28 = v53(v60, v52, v58);
    v29 = 0;
    LOBYTE(v69[0]) = 1;
    v62 = v25;
    v59 = v27;
    v56 = 16 * v25;
    v57 = (v27 - 8);
    v54 = v24;
    v55 = v63 + 32;
    do
    {
      v61 = &v50;
      MEMORY[0x1EEE9AC00](v28);
      v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + 8;
      v33 = v62;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v55 + 40 * v29;
      v36 = v62;
      while (1)
      {
        v37 = *(v63 + 16);
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, v70);
        v38 = *(&v70[1] + 1);
        v39 = *&v70[2];
        __swift_project_boxed_opaque_existential_1(v70, *(&v70[1] + 1));
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v26 | v64, v38, v39);
        *v32 = v40 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(v70);
        v35 += 40;
        if (!--v36)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v69[0]) = 0;
LABEL_20:
      v41 = v54;
      if (v54 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v41 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v42 = v58;
      v43 = *v57;
      v44 = v60;
      (*v57)(v60, v58);
      v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
      v28 = v53(v44, v45, v42);
    }

    while ((v69[0] & 1) != 0);
    v46 = v58;
    v43(v60, v58);
    v43(v52, v46);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v47 = *(a1 + 48);
  v69[2] = *(a1 + 32);
  v69[3] = v47;
  v69[4] = *(a1 + 64);
  LOBYTE(v69[5]) = *(a1 + 80);
  v48 = *(a1 + 16);
  v69[0] = *a1;
  v69[1] = v48;
  SafeAreaPaddingModifier.body(content:)(v70);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
  AGGraphSetOutputValue();
  memcpy(v69, v70, sizeof(v69));
  return outlined destroy of ObservationTracking._AccessList?(v69, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>);
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(int a1)
{
  v46 = a1;
  v71 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v55 = &v45[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45[-v5];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v65 = v6;
    v66 = v7;
    v67 = v8;
    v68 = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v56 = *(&v6 + 1);
    LODWORD(v57) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v17 = v16;
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v17;
    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v58 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v64 = v57;
      v62 = _signpostLog;
      v63 = &dword_18D018000;
      *&v65 = v6;
      *(&v65 + 1) = v56;
      v66 = v7;
      v60[0] = "%{public}@.body [in %{public}@]";
      v60[1] = 31;
      v61 = 2;
      v59 = v58;
      v20 = v47;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v64, &v63, &v62, &v65, v47, v60, &v59);
      (*(v54 + 8))(v20, v53);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v6) | (4 * WORD1(v6));
    v23 = v57;
    v24 = v54 + 16;
    v48 = *(v54 + 16);
    v25 = v48(v55, v47, v53);
    v26 = 0;
    LOBYTE(v60[0]) = 1;
    v57 = v21;
    v54 = v24;
    v51 = 16 * v21;
    v52 = (v24 - 8);
    v50 = v58 + 32;
    v49 = v6;
LABEL_11:
    v56 = v45;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v45[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v29 = v28 + 8;
    v30 = v57;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v50 + 40 * v26;
    v33 = v57;
    while (1)
    {
      v34 = *(v58 + 16);
      if (v26 == v34)
      {
        LOBYTE(v60[0]) = 0;
LABEL_19:
        v38 = v49;
        if (v49 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = v53;
        v40 = *v52;
        v41 = v55;
        (*v52)(v55, v53);
        v42 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v25 = v48(v41, v42, v39);
        if ((v60[0] & 1) == 0)
        {
          v43 = v53;
          v40(v55, v53);
          v40(v47, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v34)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v32, &v65);
      v35 = v69;
      v36 = v70;
      __swift_project_boxed_opaque_existential_1(&v65, v69);
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
      *v29 = v37 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  LOBYTE(v65) = v46 & 1;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>(0);
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(uint64_t a1, int a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52[-v8];
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v10 = static Signpost.bodyInvoke;
  v11 = word_1ED539040;
  v12 = HIBYTE(word_1ED539040);
  v13 = byte_1ED539042;
  v14 = static os_signpost_type_t.begin.getter();
  v65 = v10;
  v73 = v10;
  v61 = *(&v10 + 1);
  v15 = v11;
  v74 = v11;
  v75 = v12;
  v76 = v13;
  if (Signpost.isEnabled.getter())
  {
    LODWORD(v60) = v14;
    v53 = a2;
    v54 = a1;
    v55 = v9;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18DDAB4C0;
    v17 = AGTypeID.description.getter();
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v22 = v21;
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v23 = specialized static Tracing.libraryName(defining:)();
    *(v16 + 96) = v20;
    *(v16 + 104) = v22;
    *(v16 + 72) = v23;
    *(v16 + 80) = v24;
    v66 = v16;
    if (one-time initialization token for _signpostLog == -1)
    {
      v25 = v60;
      if (v12)
      {
LABEL_6:
        v72 = v25;
        v70 = _signpostLog;
        v71 = &dword_18D018000;
        *&v73 = v65;
        *(&v73 + 1) = v61;
        v74 = v15;
        v68[0] = "%{public}@.body [in %{public}@]";
        v68[1] = 31;
        v69 = 2;
        v67 = v66;
        v26 = v55;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v72, &v71, &v70, &v73, v55, v68, &v67);
        (*(v63 + 8))(v26, v62);
LABEL_35:

        a1 = v54;
        LOWORD(a2) = v53;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v25 = v60;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    v27 = v65;
    if (v65 == 20)
    {
      v28 = 3;
    }

    else
    {
      v28 = 4;
    }

    v29 = bswap32(v65) | (4 * (v65 >> 16));
    v30 = v25;
    v31 = v63 + 16;
    v56 = *(v63 + 16);
    v32 = v56(v64, v55, v62);
    v33 = 0;
    LOBYTE(v68[0]) = 1;
    v63 = v31;
    v60 = 16 * v28;
    v61 = (v31 - 8);
    v59 = v66 + 32;
    v58 = v27;
    v57 = v28;
    do
    {
      v65 = v52;
      MEMORY[0x1EEE9AC00](v32);
      v35 = &v52[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v36 = v35 + 8;
      v37 = v28;
      v38 = v35 + 8;
      do
      {
        *(v38 - 1) = 0;
        *v38 = 0;
        v38 += 16;
        --v37;
      }

      while (v37);
      v39 = v59 + 40 * v33;
      while (1)
      {
        v40 = *(v66 + 16);
        if (v33 == v40)
        {
          break;
        }

        if (v33 >= v40)
        {
          __break(1u);
        }

        ++v33;
        outlined init with copy of AnyTrackedValue(v39, &v73);
        v41 = v77;
        v42 = v78;
        __swift_project_boxed_opaque_existential_1(&v73, v77);
        *(v36 - 1) = CVarArg.kdebugValue(_:)(v29 | v30, v41, v42);
        *v36 = v43 & 1;
        v36 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v73);
        v39 += 40;
        if (!--v28)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v68[0]) = 0;
LABEL_20:
      v44 = v58;
      if (v58 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      v28 = v57;
      if (v35[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v35[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v35[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v44 != 20 && v35[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v45 = v62;
      v46 = *v61;
      v47 = v64;
      (*v61)(v64, v62);
      v48 = __swift_project_value_buffer(v45, static OSSignpostID.continuation);
      v32 = v56(v47, v48, v45);
    }

    while ((v68[0] & 1) != 0);
    v49 = v62;
    v46(v64, v62);
    v46(v55, v49);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  specialized Environment.wrappedValue.getter(a1, a2 & 1, &v73);
  v50 = v73;
  if (!v73)
  {
    v50 = BYTE1(a2);
  }

  LOBYTE(v73) = v50;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(0);
  return AGGraphSetOutputValue();
}

void specialized LeafDisplayList.updateValue()()
{
  v27 = *MEMORY[0x1E69E9840];
  AGGraphGetValue();
  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = 1065353216;
  *(v3 + 28) = 0;
  *(v3 + 20) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 36) = 2143289344;
  *(v3 + 40) = v4;
  v5 = ++static DisplayList.Version.lastValue;
  if (v2)
  {
    if (v5)
    {
      v6 = (2 * ((33 * (v5 >> 16)) ^ v5)) | 1;
    }

    else
    {
      LOWORD(v6) = 0;
    }

    *(v0 + 11) = v6;
  }

  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = Value[1];
  v10 = AGGraphGetValue();
  v11 = v8 - *v10;
  v12 = v9 - v10[1];
  v13 = *(v0 + 11);
  type metadata accessor for CGSize(0);

  v14 = AGGraphGetValue();
  v15 = *v0;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v18 = *v14;
  *&v20[16] = 0;
  *(&v19 + 1) = v3;
  *v20 = v13;
  *&v20[24] = v15;
  *&v19 = v5;
  LOBYTE(v23) = *(v0 + 20);
  DisplayList.Item.canonicalize(options:)(&v23);
  v21[2] = v19;
  v22[0] = v13;
  *(v22 + 12) = *&v20[12];
  v21[0] = v17;
  v21[1] = v18;
  v25 = v19;
  v26[0] = v13;
  *(v26 + 12) = *&v20[12];
  v23 = v17;
  v24 = v18;
  outlined init with copy of DisplayList.Item(v21, &v16);
  DisplayList.init(_:)(&v23, &v16);
  AGGraphSetOutputValue();

  v25 = v19;
  v26[0] = *v20;
  *(v26 + 12) = *&v20[12];
  v23 = v17;
  v24 = v18;
  outlined destroy of DisplayList.Item(&v23);
}

uint64_t specialized ShapeStyledResponderFilter.updateValue()()
{
  v58[6] = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v5 = *Value;
  v4 = Value[1];

  v6 = AGGraphGetValue();
  v8 = (v3 | v7) & 1;
  v9 = *v6;
  v10 = *(v0 + 24);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v11 = AGGraphGetValue();
  v13 = v12;
  v51 = *v11;
  v46 = v11[1];
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = AGGraphGetValue();
  v20 = *(v19 + 8);
  v21 = v10[12];
  v22 = v10[13];
  v23 = v10[14];
  v24 = v10[15];
  v48 = *(v10 + 11);
  v49 = *(v10 + 10);
  if ((v25 | v16))
  {
    v27 = *(v19 + 32);
    v26 = *(v19 + 40);
    v29 = *(v19 + 16);
    v28 = *(v19 + 24);
    v10[10] = *v19;
    *(v10 + 11) = v20;
    v30 = v27 - (v17 - v29);
    v31 = v26 - (v18 - v28);
    v10[14] = v30;
    v10[15] = v31;
    v10[12] = v17;
    v10[13] = v18;

    v50 = 4;
  }

  else
  {

    v50 = 0;
    v31 = v24;
    v30 = v23;
    v18 = v22;
    v17 = v21;
  }

  if (v13)
  {
    *(v10 + 5) = v51;
    *(v10 + 6) = v46;
    v50 |= 2u;
  }

  v32 = *(v10 + 7);
  if ((v8 & 1) != 0 || !v32)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<CombinedContentShape, ForegroundStyle>>?(v32, *(v10 + 8), *(v10 + 9), MEMORY[0x1E69E7CF8]);
    *(v10 + 7) = v5;
    *(v10 + 8) = v4;
    LOBYTE(v50) = v50 | 1;
    *(v10 + 9) = v9;

    v17 = v10[12];
    v18 = v10[13];
    v30 = v10[14];
    v31 = v10[15];
  }

  else if (!v50)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    goto LABEL_25;
  }

  v45 = *(v10 + 11);
  v47 = *(v10 + 10);
  v33 = *(v10 + 16);
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = v33 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v35, v55);
      v54 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v36 = v56, ObjectType = swift_getObjectType(), v53 = v50, v58[0] = v49, v58[1] = v48, *&v58[2] = v21, *&v58[3] = v22, *&v58[4] = v23, *&v58[5] = v24, v57[0] = v47, v57[1] = v45, *&v57[2] = v17, *&v57[3] = v18, *&v57[4] = v30, *&v57[5] = v31, v37 = *(v36 + 16), , , , , v37(v10, &v53, v58, v57, &v54, ObjectType, v36), swift_unknownObjectRelease(), , , , , v54 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v55);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v55, v58);
        v38 = *(v10 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 16) = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
          *(v10 + 16) = v38;
        }

        v41 = v38[2];
        v40 = v38[3];
        if (v41 >= v40 >> 1)
        {
          *(v10 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v38);
        }

        outlined destroy of ContentPathObservers.Observer(v55);
        v42 = *(v10 + 16);
        *(v42 + 16) = v41 + 1;
        outlined init with take of ContentPathObservers.Observer(v58, v42 + 16 * v41 + 32);
        *(v10 + 16) = v42;
      }

      v35 += 16;
      --v34;
    }

    while (v34);
  }

  else
  {
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_25:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_18DDAB4D0;
    *(v43 + 32) = v10;
    v58[0] = v43;

    AGGraphSetOutputValue();
  }

  return swift_bridgeObjectRelease_n();
}

{
  v59[6] = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = *(Value + 8);
  v6 = *(Value + 16);

  v7 = AGGraphGetValue();
  v9 = (v3 | v8) & 1;
  v10 = *v7;
  v11 = *(v0 + 24);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  v12 = AGGraphGetValue();
  v14 = v13;
  v52 = *v12;
  v47 = v12[1];
  type metadata accessor for CGPoint(0);
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  v20 = AGGraphGetValue();
  v21 = *(v20 + 8);
  v23 = v11[13];
  v24 = v11[14];
  v25 = v11[15];
  v26 = v11[16];
  v49 = *(v11 + 12);
  v50 = *(v11 + 11);
  if ((v22 | v17))
  {
    v28 = *(v20 + 32);
    v27 = *(v20 + 40);
    v30 = *(v20 + 16);
    v29 = *(v20 + 24);
    v11[11] = *v20;
    *(v11 + 12) = v21;
    v31 = v28 - (v18 - v30);
    v32 = v27 - (v19 - v29);
    v11[15] = v31;
    v11[16] = v32;
    v11[13] = v18;
    v11[14] = v19;

    v51 = 4;
  }

  else
  {

    v51 = 0;
    v32 = v26;
    v31 = v25;
    v19 = v24;
    v18 = v23;
  }

  if (v14)
  {
    *(v11 + 5) = v52;
    *(v11 + 6) = v47;
    v51 |= 2u;
  }

  v33 = *(v11 + 7);
  if ((v9 & 1) != 0 || !v33)
  {
    outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v33, *(v11 + 8), *(v11 + 9), *(v11 + 10));
    *(v11 + 7) = v4;
    *(v11 + 8) = v5;
    LOBYTE(v51) = v51 | 1;
    *(v11 + 9) = v6;
    *(v11 + 10) = v10;

    v18 = v11[13];
    v19 = v11[14];
    v31 = v11[15];
    v32 = v11[16];
  }

  else if (!v51)
  {

    swift_bridgeObjectRelease_n();

    goto LABEL_25;
  }

  v46 = *(v11 + 12);
  v48 = *(v11 + 11);
  v34 = *(v11 + 17);
  *(v11 + 17) = MEMORY[0x1E69E7CC0];
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = v34 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v36, v56);
      v55 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v37 = v57, ObjectType = swift_getObjectType(), v54 = v51, v59[0] = v50, v59[1] = v49, *&v59[2] = v23, *&v59[3] = v24, *&v59[4] = v25, *&v59[5] = v26, v58[0] = v48, v58[1] = v46, *&v58[2] = v18, *&v58[3] = v19, *&v58[4] = v31, *&v58[5] = v32, v38 = *(v37 + 16), , , , , v38(v11, &v54, v59, v58, &v55, ObjectType, v37), swift_unknownObjectRelease(), , , , , v55 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v56);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v56, v59);
        v39 = *(v11 + 17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v11 + 17) = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
          *(v11 + 17) = v39;
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          *(v11 + 17) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39);
        }

        outlined destroy of ContentPathObservers.Observer(v56);
        v43 = *(v11 + 17);
        *(v43 + 16) = v42 + 1;
        outlined init with take of ContentPathObservers.Observer(v59, v43 + 16 * v42 + 32);
        *(v11 + 17) = v43;
      }

      v36 += 16;
      --v35;
    }

    while (v35);
  }

  else
  {
  }

  swift_bridgeObjectRelease_n();

LABEL_25:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_18DDAB4D0;
    *(v44 + 32) = v11;
    v59[0] = v44;

    AGGraphSetOutputValue();
  }
}

{
  v60[6] = *MEMORY[0x1E69E9840];
  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = *(Value + 8);
  v6 = *(Value + 9);

  v7 = AGGraphGetValue();
  v9 = (v3 | v8) & 1;
  v10 = *v7;
  v11 = *(v0 + 24);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v12 = AGGraphGetValue();
  v14 = v13;
  v53 = *v12;
  v48 = v12[1];
  type metadata accessor for CGPoint(0);
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  v20 = AGGraphGetValue();
  v21 = *(v20 + 8);
  v23 = v11[12];
  v24 = v11[13];
  v25 = v11[14];
  v26 = v11[15];
  v50 = *(v11 + 11);
  v51 = *(v11 + 10);
  if ((v22 | v17))
  {
    v28 = *(v20 + 32);
    v27 = *(v20 + 40);
    v30 = *(v20 + 16);
    v29 = *(v20 + 24);
    v11[10] = *v20;
    *(v11 + 11) = v21;
    v31 = v28 - (v18 - v30);
    v32 = v27 - (v19 - v29);
    v11[14] = v31;
    v11[15] = v32;
    v11[12] = v18;
    v11[13] = v19;

    v52 = 4;
  }

  else
  {

    v52 = 0;
    v32 = v26;
    v31 = v25;
    v19 = v24;
    v18 = v23;
  }

  if (v14)
  {
    *(v11 + 5) = v53;
    *(v11 + 6) = v48;
    v52 |= 2u;
  }

  v33 = *(v11 + 7);
  if ((v9 & 1) != 0 || !v33)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<CombinedContentShape, ForegroundStyle>>?(v33, *(v11 + 8), *(v11 + 9), MEMORY[0x1E69E7CF8]);
    v34 = 256;
    if (!v6)
    {
      v34 = 0;
    }

    *(v11 + 7) = v4;
    *(v11 + 8) = v34 | v5;
    *(v11 + 9) = v10;
    LOBYTE(v52) = v52 | 1;

    v18 = v11[12];
    v19 = v11[13];
    v31 = v11[14];
    v32 = v11[15];
  }

  else if (!v52)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    goto LABEL_27;
  }

  v47 = *(v11 + 11);
  v49 = *(v11 + 10);
  v35 = *(v11 + 16);
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v35 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v37, v57);
      v56 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v38 = v58, ObjectType = swift_getObjectType(), v55 = v52, v60[0] = v51, v60[1] = v50, *&v60[2] = v23, *&v60[3] = v24, *&v60[4] = v25, *&v60[5] = v26, v59[0] = v49, v59[1] = v47, *&v59[2] = v18, *&v59[3] = v19, *&v59[4] = v31, *&v59[5] = v32, v39 = *(v38 + 16), , , , , v39(v11, &v55, v60, v59, &v56, ObjectType, v38), swift_unknownObjectRelease(), , , , , v56 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v57);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v57, v60);
        v40 = *(v11 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v11 + 16) = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
          *(v11 + 16) = v40;
        }

        v43 = v40[2];
        v42 = v40[3];
        if (v43 >= v42 >> 1)
        {
          *(v11 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
        }

        outlined destroy of ContentPathObservers.Observer(v57);
        v44 = *(v11 + 16);
        *(v44 + 16) = v43 + 1;
        outlined init with take of ContentPathObservers.Observer(v60, v44 + 16 * v43 + 32);
        *(v11 + 16) = v44;
      }

      v37 += 16;
      --v36;
    }

    while (v36);
  }

  else
  {
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_27:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_18DDAB4D0;
    *(v45 + 32) = v11;
    v60[0] = v45;

    AGGraphSetOutputValue();
  }

  return swift_bridgeObjectRelease_n();
}

{
  v66[6] = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v59 = *(Value + 8);
  v5 = *(Value + 9);

  v6 = AGGraphGetValue();
  v8 = (v3 | v7) & 1;
  v9 = *v6;
  v10 = *(v0 + 24);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v11 = AGGraphGetValue();
  v13 = v12;
  v55 = v11[1];
  v57 = *v11;
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = v14[1];
  v19 = AGGraphGetValue();
  v20 = *v19;
  v21 = *(v19 + 8);
  v23 = v22 | v16;
  v24 = v10;
  v25 = *(v10 + 10);
  v26 = v10[12];
  v27 = v10[13];
  v28 = v10[14];
  v29 = v10[15];
  v53 = *(v10 + 11);
  if (v23)
  {
    v31 = *(v19 + 32);
    v30 = *(v19 + 40);
    v33 = *(v19 + 16);
    v32 = *(v19 + 24);
    *(v10 + 10) = v20;
    *(v10 + 11) = v21;
    v34 = v31 - (v17 - v33);
    v35 = v30 - (v18 - v32);
    v10[14] = v34;
    v10[15] = v35;
    v10[12] = v17;
    v10[13] = v18;

    v54 = 4;
    v51 = v20;
    v52 = v21;
  }

  else
  {
    v36 = *(v10 + 11);

    v54 = 0;
    v35 = v29;
    v34 = v28;
    v18 = v27;
    v17 = v26;
    v51 = v25;
    v52 = v36;
  }

  v37 = v25;

  if (v13)
  {
    *(v24 + 5) = v57;
    *(v24 + 6) = v55;
    v54 |= 2u;
  }

  v38 = *(v24 + 7);
  if ((v8 & 1) != 0 || !v38)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<CombinedContentShape, ForegroundStyle>>?(v38, *(v24 + 8), *(v24 + 9), MEMORY[0x1E69E7D48]);
    v39 = 256;
    if (!v5)
    {
      v39 = 0;
    }

    *(v24 + 7) = v4;
    *(v24 + 8) = v39 | v59;
    *(v24 + 9) = v9;
    LOBYTE(v54) = v54 | 1;

    v51 = *(v24 + 10);
    v52 = *(v24 + 11);
    v17 = v24[12];
    v18 = v24[13];
    v34 = v24[14];
    v35 = v24[15];
  }

  else if (!v54)
  {

    goto LABEL_27;
  }

  v40 = *(v24 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  *(v24 + 16) = MEMORY[0x1E69E7CC0];
  v42 = *(v40 + 16);
  if (v42)
  {
    v43 = v40 + 32;
    v56 = v41;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v43, v63);
      v62 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v44 = v64, ObjectType = swift_getObjectType(), v61 = v54, v66[0] = v37, v66[1] = v53, *&v66[2] = v26, *&v66[3] = v27, *&v66[4] = v28, *&v66[5] = v29, v65[0] = v51, v65[1] = v52, *&v65[2] = v17, *&v65[3] = v18, *&v65[4] = v34, *&v65[5] = v35, v58 = *(v44 + 16), v60 = ObjectType, , , , , v58(v24, &v61, v66, v65, &v62, v60, v44), swift_unknownObjectRelease(), , , , , v62 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v63);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v63, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v24 + 16) = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
          *(v24 + 16) = v56;
        }

        v48 = v56[2];
        v47 = v56[3];
        if (v48 >= v47 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v56);
          *(v24 + 16) = v56;
        }

        outlined destroy of ContentPathObservers.Observer(v63);
        v56[2] = v48 + 1;
        outlined init with take of ContentPathObservers.Observer(v66, &v56[2 * v48 + 4]);
        *(v24 + 16) = v56;
      }

      v43 += 16;
      --v42;
    }

    while (v42);
  }

  else
  {
  }

LABEL_27:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_18DDAB4D0;
    *(v49 + 32) = v24;
    v66[0] = v49;

    AGGraphSetOutputValue();
  }
}