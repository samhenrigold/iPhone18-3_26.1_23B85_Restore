void ContainerCanvasElementView.addCanvasElements<A>(_:)(uint64_t a1, void (**a2)(char *, void *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v43 - v14;
  v56 = a2;
  v15 = a3;
  v16 = type metadata accessor for Capsule();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v43 - v19;
  v20 = ContainerCanvasElementView.canvas.getter();
  if (v20)
  {
    v44 = v18;
    v21 = MEMORY[0x1EEE9AC00](v20);
    *(&v43 - 6) = v56;
    *(&v43 - 5) = v15;
    *(&v43 - 4) = a4;
    *(&v43 - 3) = v5;
    *(&v43 - 2) = a1;
    *(&v43 - 1) = v22;
    v23 = MEMORY[0x1E69E7D40];
    v24 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x6E8);
    v45 = v22;
    v25 = v24(0, 0, partial apply for closure #1 in ContainerCanvasElementView.addCanvasElements<A>(_:), v21);
    (*((*v23 & *v5) + 0x520))(v25);
    if (MEMORY[0x1DA6CD240](a1, v16))
    {
      v26 = 0;
      v55 = (v17 + 8);
      v56 = (v17 + 16);
      v54 = (v46 + 6);
      v48 = "ressionType";
      v49 = (v46 + 4);
      v47 = v59;
      ++v46;
      v51 = a1;
      v52 = v12;
      v50 = v17;
      do
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v17 + 16))(v57, a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v26, v16);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v42 = _ArrayBuffer._getElementSlowPath(_:)();
          if (v44 != 8)
          {
            __break(1u);
            return;
          }

          aBlock[0] = v42;
          (*v56)(v57, aBlock, v16);
          swift_unknownObjectRelease();
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        v29 = v57;
        Capsule<>.sharedCanvasElement.getter(v16, a4);
        (*v55)(v29, v16);
        if ((*v54)(v12, 1, v13) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
        }

        else
        {
          v30 = v53;
          (*v49)(v53, v12, v13);
          type metadata accessor for Analytics();
          inited = swift_initStaticObject();
          WeakTagged_10.tag.getter();
          v32 = v13;
          v33 = a4;
          v34 = v59[4];
          v35 = v60;
          v36 = swift_allocObject();
          *(v36 + 16) = inited;
          *(v36 + 24) = v34;
          *(v36 + 32) = v35;
          v37 = MEMORY[0x1DA6CCED0](0xD000000000000020, v48 | 0x8000000000000000);
          v38 = swift_allocObject();
          *(v38 + 16) = partial apply for implicit closure #1 in Analytics.recordAddCanvasElementEvent(type:);
          *(v38 + 24) = v36;
          v59[2] = closure #1 in Analytics.sendEventLazy(key:payload:)partial apply;
          v59[3] = v38;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v59[0] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
          v59[1] = &block_descriptor_63_0;
          v39 = _Block_copy(aBlock);

          a4 = v33;
          v13 = v32;
          a1 = v51;

          AnalyticsSendEventLazy();
          v40 = v39;
          v12 = v52;
          _Block_release(v40);

          v41 = v30;
          v17 = v50;
          (*v46)(v41, v13);
        }

        ++v26;
      }

      while (v28 != MEMORY[0x1DA6CD240](a1, v16));
    }
  }
}

uint64_t closure #1 in ContainerCanvasElementView.addCanvasElements<A>(_:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v10 = *a1;
  v11 = *MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x540);
  v19 = *((v11 & v10) + 0x548);
  v12 = type metadata accessor for Capsule();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  v21 = a4;
  v22 = *((v11 & v10) + 0x550);
  v23 = a5;
  v24 = v18;
  v25 = a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGGMd, &_sSay9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGGMR);
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();

  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x850))(0);
  CanvasElementView.canvasElement.getter(v15);
  v26[0] = 4;
  AnyCanvas.merge<A>(_:from:)(v15, v26, v20, v19);
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #1 in closure #1 in ContainerCanvasElementView.addCanvasElements<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = *a1;
  v15 = Capsule.Ref.root.modify();
  ContainerCanvasElement.addCanvasElements<A, B>(_:capsule:)(a2, a1, *(v14 + *MEMORY[0x1E6995440]), a3, a4, a5, a6);
  v17 = v16;
  result = v15(&v19, 0);
  *a7 = v17;
  return result;
}

void ContainerCanvasElementView.remove(members:)(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, NSObject *a5)
{
  v6 = v5;
  v10 = ContainerCanvasElementView.canvas.getter();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  specialized ContainerCanvasElementView.recordRemoveMembersAnalytics(_:)(a1);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v11) + 0x6E8))(0, 1, partial apply for closure #1 in ContainerCanvasElementView.remove(members:), v13);
  v15 = specialized ContainerCanvasElementView.formFillingView.getter();
  v82 = v11;
  if (!v15)
  {
    goto LABEL_41;
  }

  v16 = v15;
  v17 = [v11 undoManager];
  if (!v17)
  {
    goto LABEL_40;
  }

  v18 = v17;
  v80 = a1;
  specialized CanvasMembers.views(in:)(v11, a1);
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A16DocumentPageViewCyAA0acD0VGMd, &_s8PaperKit0A16DocumentPageViewCyAA0acD0VGMR);
  v21 = v20 >> 62;
  v81 = v18;
  v83 = v16;
  if (!swift_dynamicCastClass())
  {
    goto LABEL_18;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v23 = Strong;
  v79 = v20 >> 62;
  if (v21)
  {
    goto LABEL_84;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v78 = v11;
    if (i)
    {
      v11 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1DA6CE0C0](v11, v20);
        }

        else
        {
          if (v11 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v25 = *(v20 + 8 * v11 + 32);
        }

        v26 = v25;
        v27 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_30;
        }

        [v23 axRemoveFormFieldFromHierarchy_];

        ++v11;
      }

      while (v27 != i);
    }

    v11 = v82;
    v21 = v79;
LABEL_18:
    if (!v21)
    {
      v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    while (1)
    {
      v28 = __CocoaSet.count.getter();
      if (!v28)
      {
        break;
      }

LABEL_20:
      v29 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x1DA6CE0C0](v29, v20);
        }

        else
        {
          if (v29 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v30 = *(v20 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        [v30 removeFromSuperview];

        ++v29;
        if (v32 == v28)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

LABEL_33:
    v23 = OBJC_IVAR____TtC8PaperKit15FormFillingView__formFields;
    swift_beginAccess();

    v33 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v23[v83], v20);

    v34 = *&v23[v83];
    v35 = v34 >> 62 ? __CocoaSet.count.getter() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v81;
    if (v35 >= v33)
    {
      break;
    }

    __break(1u);
LABEL_84:
    ;
  }

  specialized Array.replaceSubrange<A>(_:with:)(v33, v35, type metadata accessor for AnyCanvasElementView);
  swift_endAccess();
  a5 = swift_allocObject();
  a5[2].isa = v20;
  if (([v81 groupsByEvent] & 1) != 0 || objc_msgSend(v81, sel_groupingLevel) >= 1)
  {
    type metadata accessor for FormFillingView();
    NSUndoManager.registerUndo<A>(withTarget:handler:)();
  }

  else
  {
    [v81 beginUndoGrouping];
    type metadata accessor for FormFillingView();
    NSUndoManager.registerUndo<A>(withTarget:handler:)();
    [v81 endUndoGrouping];
  }

  v14 = MEMORY[0x1E69E7D40];
  a1 = v80;

LABEL_40:

LABEL_41:
  (*((*v14 & *v6) + 0x520))();
  v36 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v37 = *(v11 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v37)
  {
    __break(1u);
    goto LABEL_86;
  }

  v38 = *&v37[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
  a5 = *&v37[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
  v39 = v37[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];
  v84 = *&v37[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v40 = v37;
  specialized Set._subtract<A>(_:)(a1);
  specialized Set._subtract<A>(_:)(a2);
  CanvasElementResizeView.selection.setter(v38, v84, a5, v39);

  v41 = *(v11 + v36);
  if (!v41)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v42 = v41 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  v46 = *(v42 + 24);

  _sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v38, v43);
  if ((v47 & 1) == 0)
  {

    goto LABEL_49;
  }

  _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v84, v44);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
    goto LABEL_49;
  }

  if ((v39 & 1) == 0)
  {
    if (a5 == v45)
    {
      v70 = v46;
    }

    else
    {
      v70 = 1;
    }

    if (v70)
    {
      goto LABEL_49;
    }

LABEL_67:

    v51 = v82;
    goto LABEL_78;
  }

  if (v46)
  {
    goto LABEL_67;
  }

LABEL_49:
  if (one-time initialization token for miniMenuLogger != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, miniMenuLogger);
  v51 = v82;
  a5 = v82;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  v54 = os_log_type_enabled(v52, v53);
  v55 = MEMORY[0x1E69E7D40];
  if (!v54)
  {

    v52 = a5;
LABEL_55:

    MEMORY[0x1EEE9AC00](v59);
    AnyCanvas.updateCanvasState(_:)();
    if ([a5 isFirstResponder])
    {

      goto LABEL_71;
    }

    v61 = *(v82 + v36);
    if (!v61)
    {
      goto LABEL_89;
    }

    v62 = v61;

    v63 = CanvasElementResizeView.resizingCanvasElements.getter();

    if (v63 >> 62)
    {
      v77 = __CocoaSet.count.getter();

      if (!v77)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v64)
      {
        goto LABEL_71;
      }
    }

    v65 = [a5 window];
    if (v65)
    {
      v66 = v65;
      v67 = [objc_opt_self() activeToolPickerForWindow_];
      if (v67)
      {
        v68 = v67;
        v69 = [v67 _visibilityUpdatesEnabled];
        [v68 _setVisibilityUpdatesEnabled_];
        [a5 becomeFirstResponder];
        [v68 _setVisibilityUpdatesEnabled_];

        goto LABEL_71;
      }
    }

    v60 = [a5 becomeFirstResponder];
LABEL_71:
    v71 = *(&a5->isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (v71)
    {
      v72 = v71;
      HandwritingReflowView.updateForNewSelection()();
    }

    v73 = (*((*v55 & a5->isa) + 0x520))(v60);
    v74 = *(v82 + v36);
    if (v74)
    {
      v75 = v74 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      if (!*(*v75 + 16) && !*(*(v75 + 8) + 16) && (*(v75 + 24) & 1) == 0)
      {
        v76 = (*((*v55 & a5->isa) + 0x468))(v73);
        [v76 _clearSelectionIfNecessary];
      }

LABEL_78:

      return;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v56 = swift_slowAlloc();
  *v56 = 134217984;
  v57 = *(v82 + v36);
  if (v57)
  {
    *(v56 + 4) = *(*(v57 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
    v58 = v56;

    _os_log_impl(&dword_1D38C4000, v52, v53, "Changing selection to have %ld elements", v58, 0xCu);
    MEMORY[0x1DA6D0660](v58, -1, -1);
    goto LABEL_55;
  }

LABEL_88:

  __break(1u);
LABEL_89:
  __break(1u);
}

void closure #1 in ContainerCanvasElementView.remove(members:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v20 = a6;
  v10 = *a1;
  v11 = *MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x540);
  v18 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x548);
  v19 = v12;
  v13 = type metadata accessor for Capsule();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v17 - v15;
  v28 = 0;
  v21 = *((v11 & v10) + 0x550);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5 & 1;
  v26 = &v28;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  if (v28 == 1)
  {
    CanvasElementView.canvasElement.getter(v16);
    v27[0] = 4;
    AnyCanvas.merge<A>(_:from:)(v16, v27, v19, v18);
    (*(v14 + 8))(v16, v13);
  }
}

void closure #1 in closure #1 in ContainerCanvasElementView.remove(members:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL *a6, uint64_t a7)
{
  v71 = a6;
  v70 = a3;
  v10 = *a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v62 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v61 - v13;
  v14 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  KeyPath = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v80 = &v61 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v19 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v61 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - v25;
  v27 = (v10 + *MEMORY[0x1E6995440]);
  v90 = *v27;
  v85 = v27[1];
  v86 = v90;
  v91 = v85;
  v92 = a7;
  v88 = a7;
  swift_getKeyPath();
  v89 = a1;
  Capsule.Ref.subscript.getter();

  v64 = CROrderedSet.count.getter();
  v28 = *(v24 + 8);
  v65 = v26;
  v84 = v23;
  v66 = v24 + 8;
  v63 = v28;
  v28(v26, v23);
  v29 = a2 + 56;
  v30 = 1 << *(a2 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a2 + 56);
  v33 = (v30 + 63) >> 6;
  v75 = v19 + 16;
  v74 = v19 + 32;
  v78 = v19;
  v73 = v19 + 8;
  v72 = (KeyPath + 8);
  v87 = a2;

  v34 = 0;
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_9:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v37 = v78;
      v38 = v79;
      v39 = v76;
      v40 = (*(v78 + 16))(v76, *(v87 + 48) + *(v78 + 72) * (v36 | (v35 << 6)), v79);
      MEMORY[0x1EEE9AC00](v40);
      v41 = v85;
      *(&v61 - 4) = v86;
      *(&v61 - 3) = v41;
      *(&v61 - 2) = v88;
      KeyPath = swift_getKeyPath();
      v42 = v77;
      (*(v37 + 32))(v77, v39, v38);
      WeakTagged_10.tag.getter();
      v95 = v93;
      v96 = v94;
      MEMORY[0x1DA6CB5C0](v38);
      lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
      v43 = v81;
      SharedTagged_10.init(_:id:)();
      (*(v37 + 8))(v42, v38);
      v44 = Capsule.Ref.subscript.modify();
      v45 = v80;
      CROrderedSet.remove(_:)();
      (*v72)(v43, v82);
      outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
      v44(&v93, 0);

      if (!v32)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      return;
    }

    if (v35 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v35);
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_9;
    }
  }

  v47 = v70;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v85;
  *(&v61 - 4) = v86;
  *(&v61 - 3) = v48;
  *(&v61 - 2) = v88;
  if (v49)
  {
    swift_getKeyPath();

    v50 = v67;
    v51 = v89;
    Capsule.Ref.subscript.getter();

    v52 = v68;
    v53 = v69;
    if ((*(v68 + 48))(v50, 1, v69))
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    }

    else
    {
      v58 = v62;
      (*(v52 + 16))(v62, v50, v53);
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
      v95 = v47;
      KeyPath = Ref.subscript.modify();
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
      v60 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Set<WeakRef<CRRegister<TaggedStroke>>> and conformance Set<A>, &_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, MEMORY[0x1E69E6508]);
      PKDrawingStruct.deleteStrokes<A, B>(_:in:)(&v95, v51, v59, v60);

      (KeyPath)(&v93, 0);
      (*(v52 + 8))(v58, v53);
    }

    v57 = 1;
  }

  else
  {
    swift_getKeyPath();
    v54 = v65;
    Capsule.Ref.subscript.getter();

    v55 = v84;
    v56 = CROrderedSet.count.getter();
    v63(v54, v55);
    v57 = v56 != v64;
  }

  *v71 = v57;
}

void closure #1 in ContainerCanvasElementView.sendToBack(members:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x540);
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x548);
  v7 = type metadata accessor for Capsule();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v11[-v9];
  v17 = 0;
  v12 = *((v4 & v3) + 0x550);
  v13 = a2;
  v14 = 0;
  v15 = &v17;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  if (v17 == 1)
  {
    CanvasElementView.canvasElement.getter(v10);
    v16[0] = 4;
    AnyCanvas.merge<A>(_:from:)(v10, v16, v5, v6);
    (*(v8 + 8))(v10, v7);
  }
}

void closure #1 in closure #1 in ContainerCanvasElementView.sendToBack(members:)(uint64_t a1, uint64_t a2, Swift::Int a3, _BYTE *a4, uint64_t a5)
{
  v14 = a5;
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = a2 + 32;
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        break;
      }

      if (v10 != a3)
      {
        MEMORY[0x1EEE9AC00](a1);
        swift_getKeyPath();
        v11 = Capsule.Ref.subscript.modify();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
        CROrderedSet.move(from:to:)(v10, a3);
        v11(v13, 0);

        *a4 = 1;
      }

      if (v5 == ++v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

void closure #1 in ContainerCanvasElementView.sendToFront(members:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v23 = a2;
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *((v4 & v3) + 0x540);
  v10 = *((v4 & v3) + 0x548);
  v11 = type metadata accessor for Capsule();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v32 = 0;
  CanvasElementView.canvasElement.getter(&v18 - v13);
  v19 = v9;
  v28 = v9;
  v29 = v10;
  v15 = *((v4 & v3) + 0x550);
  v30 = v15;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v18 = *(v12 + 8);
  v18(v14, v11);
  v16 = v21;
  v17 = CROrderedSet.count.getter();
  (*(v22 + 8))(v8, v16);
  v24 = v15;
  v25 = v23;
  v26 = v17;
  v27 = &v32;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  if (v32 == 1)
  {
    CanvasElementView.canvasElement.getter(v14);
    v31[0] = 4;
    AnyCanvas.merge<A>(_:from:)(v14, v31, v19, v10);
    v18(v14, v11);
  }
}

void closure #1 in closure #1 in ContainerCanvasElementView.sendToFront(members:)(uint64_t a1, uint64_t a2, Swift::Int a3, _BYTE *a4, uint64_t a5)
{
  v14 = a5;
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = a2 + 32;
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      v10 = v9 - v7;
      if (__OFSUB__(v9, v7))
      {
        break;
      }

      if (v10 != a3)
      {
        MEMORY[0x1EEE9AC00](a1);
        swift_getKeyPath();
        v11 = Capsule.Ref.subscript.modify();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
        CROrderedSet.move(from:to:)(v10, a3);
        v11(v13, 0);

        *a4 = 1;
      }

      if (v5 == ++v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

void closure #2 in ContainerCanvasElementView.recordRemoveMembersAnalytics(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6CE0C0](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v6 = *(a2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = (*((*v5 & *v6) + 0x318))();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
        v11 = v9;

        *(v10 + 48) = 0;
        FormTextFieldAnalytics.recordEvent()();
      }

      ++v4;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t ContainerCanvasElementView.duplicate(members:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, int a7)
{
  v25 = a7;
  v23 = a5;
  v24 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = ContainerCanvasElementView.canvas.getter();
  if (!v15)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v16 = v15;
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x910))(a1, a2, a3, a4 & 1);
  v17 = *&v23;
  v18 = *&v24;
  if (v25)
  {
    v17 = 20.0;
    v18 = 20.0;
  }

  ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:)(v14, 1, v17, v18);
  v20 = v19;

  (*(v12 + 8))(v14, v11);
  return v20;
}

void ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:)(uint64_t a1, char a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v44 - v10;
  v45 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - v17;
  v19 = ContainerCanvasElementView.canvas.getter();
  if (v19)
  {
    v20 = v19;
    v44 = v9;
    v21 = MEMORY[0x1EEE9AC00](v19);
    *(&v44 - 6) = v4;
    *(&v44 - 5) = a1;
    *(&v44 - 32) = a2 & 1;
    *(&v44 - 3) = a3;
    *(&v44 - 2) = a4;
    *(&v44 - 1) = v22;
    v23 = MEMORY[0x1E69E7D40];
    v24 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x6E8))(0, 1, partial apply for closure #1 in ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:), v21);
    (*((*v23 & *v4) + 0x520))(v24);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
    Capsule.subscript.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
    v25 = CROrderedSet.map<A>(_:)();
    (*(v16 + 8))(v18, v15);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
      v28 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      type metadata accessor for Paper(0);
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
      v29 = v25;
      v30 = v46;
      Ref.subscript.getter();
      (*(v27 + 8))(v14, v26);
      v31 = v44;
      v33 = v47;
      v32 = v48;
      (*(v48 + 16))(v47, &v30[*(v45 + 20)], v44);
      v34 = v30;
      v25 = v29;
      outlined destroy of Color(v34, type metadata accessor for PKDrawingStruct);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
      v28 = CROrderedSet.map<A>(_:)();
      (*(v32 + 8))(v33, v31);
    }

    v35 = [v20 window];
    if (v35)
    {
      v36 = v35;
      v37 = [objc_opt_self() activeToolPickerForWindow_];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 _visibilityUpdatesEnabled];
        [v38 _setVisibilityUpdatesEnabled_];
        v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v25);

        v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v28);

        AnyCanvas.selection.setter(v40, v41, 6, 0);
        [v38 _setVisibilityUpdatesEnabled_];

        goto LABEL_11;
      }
    }

    v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v25);

    v43 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v28);

    AnyCanvas.selection.setter(v42, v43, 6, 0);
LABEL_11:
    if (*&v20[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView])
    {
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t ContainerCanvasElementView.pasteDrawing(fromURL:at:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - v10);
  v12 = Data.init(contentsOf:options:)();
  v14 = v13;
  v19 = v4;
  type metadata accessor for PKDrawingCoherence(0);
  outlined copy of Data._Representation(v12, v14);
  v15 = specialized PKDrawingCoherence.__allocating_init(data:)();
  outlined consume of Data._Representation(v12, v14);
  Capsule<>.init(drawing:)(v15, v11);
  outlined consume of Data._Representation(v12, v14);
  ContainerCanvasElementView.pastePaper(_:andStrokes:at:)(v11, 1, a2, a3, a4 & 1);
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  return v17;
}

void ContainerCanvasElementView.pastePaper(_:andStrokes:at:)(void (*a1)(char *, char *, uint64_t), int a2, uint64_t a3, uint64_t a4, int a5)
{
  v164 = a5;
  v155 = a4;
  v154 = a3;
  v165 = a2;
  v173 = a1;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR);
  v163 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v169 = &v143 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v153 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v143 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v170 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v143 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v143 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v175 = &v143 - v23;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v143 - v24;
  v157 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v162 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v143 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v152 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  *&v148 = &v143 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v143 - v37;
  v166 = v5;
  v172 = ContainerCanvasElementView.canvas.getter();
  if (v172)
  {
    v151 = v22;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v39 = CROrderedSet.count.getter();
    v40 = *(v32 + 8);
    v156 = v32 + 8;
    v167 = v40;
    v40(v38, v31);
    v41 = v31;
    v168 = v31;
    v42 = v169;
    v171 = v21;
    if (v39 > 0)
    {
      goto LABEL_3;
    }

    swift_getKeyPath();
    Capsule.subscript.getter();

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v30, 1, v46) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    }

    else
    {
      type metadata accessor for Paper(0);
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
      v53 = v158;
      Ref.subscript.getter();
      (*(v47 + 8))(v30, v46);
      v54 = v160;
      v55 = v159;
      v56 = v161;
      (*(v160 + 16))(v159, v53 + *(v157 + 20), v161);
      outlined destroy of Color(v53, type metadata accessor for PKDrawingStruct);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, MEMORY[0x1E6995158]);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      (*(v54 + 8))(v55, v56);
      v41 = v168;
      if (*&v177.a != *&v176.a)
      {
LABEL_3:
        Capsule.copy()();
        v43 = *&v172[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
        if (!v43)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        v44 = v43 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
        v45 = *(*v44 + 16);
        v145 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
        v146 = v18;
        if (v45)
        {
          v148 = 0.0;
          LODWORD(v149) = 1;
        }

        else
        {
          if (!*(*(v44 + 8) + 16) && (*(v44 + 24) & 1) == 0)
          {
            swift_getKeyPath();
            Capsule.subscript.getter();

            v48 = CROrderedSet.count.getter();
            v49 = v167;
            v167(v38, v41);
            if (v48 == 1)
            {
              swift_getKeyPath();
              v50 = v148;
              Capsule.subscript.getter();

              v51 = v149;
              specialized Collection.first.getter(v149);
              v49(*&v50, v41);
              v52 = v170;
              if ((*(v170 + 48))(v51, 1, v14) == 1)
              {
                v148 = 0.0;
                outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
                LODWORD(v149) = 1;
                v144 = 0.0;
              }

              else
              {
                v134 = v147;
                (*(v52 + 32))(v147, v51, v14);
                type metadata accessor for Paper(0);
                _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
                SharedTagged_10.subscript.getter();
                d = v177.d;
                tx = v177.tx;
                __swift_project_boxed_opaque_existential_1(&v177, *&v177.d);
                v137 = (*(*(*&tx + 8) + 8))(COERCE_CGFLOAT(*&d));
                v139.n128_u64[0] = v138;
                v141.n128_u64[0] = v140;
                v148 = (*((*MEMORY[0x1E69E7D40] & *v172) + 0x990))(v137, v139, v141);
                v144 = v142;
                (*(v52 + 8))(v134, v14);
                __swift_destroy_boxed_opaque_existential_0(&v177);
                LODWORD(v149) = 0;
              }

              v57 = v52;
            }

            else
            {
              v148 = 0.0;
              LODWORD(v149) = 1;
              v144 = 0.0;
              v57 = v170;
            }

            v42 = v169;
            goto LABEL_18;
          }

          LODWORD(v149) = 1;
          v148 = 0.0;
        }

        v144 = 0.0;
        v57 = v170;
LABEL_18:
        v59 = *MEMORY[0x1E695F050];
        v58 = *(MEMORY[0x1E695F050] + 8);
        v60 = *(MEMORY[0x1E695F050] + 16);
        v61 = *(MEMORY[0x1E695F050] + 24);
        swift_getKeyPath();
        Capsule.subscript.getter();

        v62 = v168;
        CROrderedSet.makeIterator()();
        v167(v38, v62);
        v63 = v174;
        CROrderedSet.Iterator.next()();
        v66 = *(v57 + 48);
        v65 = v57 + 48;
        v64 = v66;
        v67 = v66(v11, 1, v14);
        x = v59;
        y = v58;
        width = v60;
        height = v61;
        v72 = v42;
        v73 = v146;
        if (v67 != 1)
        {
          v173 = *(v170 + 32);
          v74 = (v170 + 8);
          height = v61;
          width = v60;
          y = v58;
          x = v59;
          do
          {
            v173(v73, v11, v14);
            type metadata accessor for Paper(0);
            _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
            SharedTagged_10.subscript.getter();
            v76 = v177.d;
            v75 = v177.tx;
            __swift_project_boxed_opaque_existential_1(&v177, *&v177.d);
            v77 = v76;
            v63 = v174;
            v187.origin.x = (*(*(*&v75 + 8) + 8))(COERCE_CGFLOAT(*&v77));
            v187.origin.y = v78;
            v187.size.width = v79;
            v187.size.height = v80;
            v178.origin.x = x;
            v178.origin.y = y;
            v178.size.width = width;
            v178.size.height = height;
            v179 = CGRectUnion(v178, v187);
            x = v179.origin.x;
            y = v179.origin.y;
            width = v179.size.width;
            height = v179.size.height;
            (*v74)(v73, v14);
            __swift_destroy_boxed_opaque_existential_0(&v177);
            CROrderedSet.Iterator.next()();
          }

          while (v64(v11, 1, v14) != 1);
        }

        v81 = v64;
        v173 = v14;
        v174 = v65;
        (*(v163 + 8))(v72, v63);
        swift_getKeyPath();
        v82 = v162;
        v83 = v175;
        Capsule.subscript.getter();

        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
        v85 = *(v84 - 8);
        if ((*(v85 + 48))(v82, 1, v84) == 1)
        {
          v86 = outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
          v87 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          type metadata accessor for Paper(0);
          _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
          v88 = v158;
          Ref.subscript.getter();
          (*(v85 + 8))(v82, v84);
          v89 = v160;
          v90 = v159;
          v91 = v161;
          (*(v160 + 16))(v159, v88 + *(v157 + 20), v161);
          outlined destroy of Color(v88, type metadata accessor for PKDrawingStruct);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
          v87 = CROrderedSet.map<A>(_:)();
          v86 = (*(v89 + 8))(v90, v91);
        }

        v92 = v165;
        v93 = v168;
        v94 = v167;
        MEMORY[0x1EEE9AC00](v86);
        *(&v143 - 2) = v83;
        specialized Sequence.reduce<A>(_:_:)(partial apply for specialized closure #1 in static AnyCanvas.strokeBounds<A, B>(_:in:), v59, v58, v60, v61, (&v143 - 4), v87);
        v96 = v95;
        v98 = v97;
        v100 = v99;
        v102 = v101;

        v180.origin.x = x;
        v180.origin.y = y;
        v180.size.width = width;
        v180.size.height = height;
        v188.origin.x = v96;
        v188.origin.y = v98;
        v188.size.width = v100;
        v188.size.height = v102;
        v181 = CGRectUnion(v180, v188);
        v103 = v181.origin.x;
        v104 = v181.origin.y;
        if (v164)
        {
          if (v149)
          {
            goto LABEL_28;
          }

          swift_getKeyPath();
          v105 = v152;
          Capsule.subscript.getter();

          v106 = v153;
          specialized Collection.first.getter(v153);
          v94(v105, v93);
          v107 = v173;
          if (v81(v106, 1, v173) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
LABEL_28:
            v108 = *&v172[v145];
            v109 = v151;
            if (v108)
            {
              v110 = v108;
              CanvasElementResizeView.rectangularSelectionTransformCoordinateSpace.getter(&v177);

              v176 = v177;
              v182.origin.x = 0.0;
              v182.origin.y = 0.0;
              v182.size.width = 1.0;
              v182.size.height = 1.0;
              v183 = CGRectApplyAffineTransform(v182, &v176);
              v111 = v183.origin.x;
              v112 = v183.origin.y;
              v113 = CGRect.isFinite.getter(v183.origin.x, v183.origin.y, v183.size.width, v183.size.height);
              v114 = 20.0;
              v115 = v111 - v103 + 20.0;
              if (v113)
              {
                v114 = v112 - v104 + 20.0;
              }

              else
              {
                v115 = 20.0;
              }

              goto LABEL_34;
            }

            goto LABEL_41;
          }

          v122 = v170;
          v123 = v150;
          (*(v170 + 32))(v150, v106, v107);
          type metadata accessor for Paper(0);
          _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
          SharedTagged_10.subscript.getter();
          v124 = v177.d;
          v125 = v177.tx;
          __swift_project_boxed_opaque_existential_1(&v177, *&v177.d);
          v185.origin.x = (*(*(*&v125 + 8) + 8))(COERCE_CGFLOAT(*&v124));
          v126 = v185.origin.x;
          v127 = v185.origin.y;
          v128 = v185.size.width;
          v129 = v185.size.height;
          MidX = CGRectGetMidX(v185);
          v186.origin.x = v126;
          v186.origin.y = v127;
          v186.size.width = v128;
          v186.size.height = v129;
          MidY = CGRectGetMidY(v186);
          (*(v122 + 8))(v123, v107);
          v132 = v148 - MidX;
          v133 = v144 - MidY;
          __swift_destroy_boxed_opaque_existential_0(&v177);
          v114 = v133;
          v115 = v132;
        }

        else
        {
          v116 = *&v154;
          v117 = *&v155;
          v118 = v181.size.width;
          v119 = v181.size.height;
          v120 = CGRectGetMidX(v181);
          v184.origin.x = v103;
          v184.origin.y = v104;
          v184.size.width = v118;
          v184.size.height = v119;
          v121 = CGRectGetMidY(v184);
          v115 = v116 - v120;
          v114 = v117 - v121;
        }

        v109 = v151;
LABEL_34:
        ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:)(v83, v92 & 1, v115, v114);

        (*(v109 + 8))(v83, v171);
        return;
      }
    }
  }
}

uint64_t ContainerCanvasElementView.pasteElements(fromURL:andStrokes:at:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v42 = a2;
  FileVersionPolicy = type metadata accessor for CRDataStoreBundleReadFileVersionPolicy();
  v11 = *(FileVersionPolicy - 8);
  MEMORY[0x1EEE9AC00](FileVersionPolicy);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v34 - v18);
  v20 = ContainerCanvasElementView.canvas.getter();
  if (!v20)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v45 = a1;
  v35 = v19;
  v36 = a5;
  v37 = a3;
  v38 = a4;
  v39 = v5;
  v46 = v20;
  v44 = *&v20[OBJC_IVAR____TtC8PaperKit9AnyCanvas_context];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMd, &_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd, &_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMR);
  v21 = type metadata accessor for CRCodableVersion();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D405C990;
  v26 = v25 + v24;
  v27 = *(v22 + 104);
  v27(v26, *MEMORY[0x1E6995280], v21);
  v27(v26 + v23, *MEMORY[0x1E6995288], v21);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  (*(v11 + 104))(v13, *MEMORY[0x1E6995398], FileVersionPolicy);
  static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)();

  (*(v11 + 8))(v13, FileVersionPolicy);
  v29 = v40;
  v28 = v41;
  v30 = v35;
  (*(v40 + 32))(v35, v16, v41);
  ContainerCanvasElementView.pastePaper(_:andStrokes:at:)(v30, v42 & 1, v37, v38, v36 & 1);
  v32 = v31;

  (*(v29 + 8))(v30, v28);
  return v32;
}

uint64_t closure #1 in ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:)(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  v22 = a4;
  v21 = a3;
  v20 = a2;
  v8 = *a1;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x540);
  v11 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x548);
  v12 = type metadata accessor for Capsule();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  swift_beginAccess();
  v16 = type metadata accessor for Paper(0);
  v17 = *((v9 & v8) + 0x550);
  v18 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  Capsule<>.append<A>(_:andStrokes:pasteOffset:)(v20, v21, v12, v16, v17, v18, &protocol witness table for Paper, a5, a6);
  swift_endAccess();
  CanvasElementView.canvasElement.getter(v15);
  v23[0] = 4;
  AnyCanvas.merge<A>(_:from:)(v15, v23, v10, v11);
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #2 in ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  WeakTagged_10.tag.getter();
  v9 = v11;
  v10 = v12;
  MEMORY[0x1DA6CB7A0](v3);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  WeakTagged_10.init(_:id:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t closure #1 in ContainerCanvasElementView.pastePaper(_:andStrokes:at:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B8]);
  return WeakRef.init<A>(_:)();
}

{
  return sub_1D38E1714(a1);
}

void *ContainerCanvasElementView.subelementView(at:with:)(uint64_t a1, __n128 a2, double a3)
{
  v6 = a2.n128_f64[0];
  v7 = ContainerCanvasElementView.canvas.getter();
  if (v7)
  {
    v8 = v7;
    v9 = [v3 hitTest:a1 withEvent:{v6, a3}];
    if (v9)
    {
      v10 = v9;
      v11 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x440))();
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 64))(ObjectType, v13);

      if (v15 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v17 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1DA6CE0C0](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if ([v10 isDescendantOfView_])
          {

            return v19;
          }

          ++v17;
          if (v20 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }
  }

  return 0;
}

unint64_t ContainerCanvasElementView.canConvertToHandwriting(members:)(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit7TextBoxVSgMd, &_s8PaperKit7TextBoxVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v52 - v7;
  v8 = type metadata accessor for Capsule();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v60 = *(v20 - 8);
  v61 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v52 - v21;
  result = ContainerCanvasElementView.pencilKitAttachmentViews()();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_30:

    return 0;
  }

  v50 = result;
  v51 = __CocoaSet.count.getter();
  result = v50;
  if (!v51)
  {
    goto LABEL_30;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1DA6CE0C0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v23 = *(result + 32);
  }

  v62 = v23;

  if (*(a1 + 16) != 1 || *(v63 + 16))
  {

    return 0;
  }

  specialized Collection.first.getter(a1, v19);
  v25 = v60;
  v24 = v61;
  if ((*(v60 + 48))(v19, 1, v61) == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    return 0;
  }

  (*(v25 + 32))(v59, v19, v24);
  WeakTagged_10.tagged6.getter();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v13, 1, v26) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    v28 = type metadata accessor for Shape(0);
    (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
    goto LABEL_14;
  }

  CanvasElementView.canvasElement.getter(v10);
  WeakRef.subscript.getter();
  (*(v58 + 8))(v10, v8);
  (*(v27 + 8))(v13, v26);
  v29 = type metadata accessor for Shape(0);
  if ((*(*(v29 - 8) + 48))(v16, 1, v29) == 1)
  {
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
    v64 = 0u;
    v65 = 0u;
    v66 = 0;
    v30 = v56;
    WeakTagged_10.tagged4.getter();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVGMd, &_s9Coherence7WeakRefVy8PaperKit7TextBoxVGMR);
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMR);
      v33 = type metadata accessor for TextBox(0);
      v34 = v57;
      (*(*(v33 - 8) + 56))(v57, 1, 1, v33);
    }

    else
    {
      CanvasElementView.canvasElement.getter(v10);
      v34 = v57;
      WeakRef.subscript.getter();
      (*(v58 + 8))(v10, v8);
      (*(v32 + 8))(v30, v31);
      v35 = type metadata accessor for TextBox(0);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) != 1)
      {
        *(&v68 + 1) = v35;
        v69 = &protocol witness table for TextBox;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
        outlined init with take of TextBox(v34, boxed_opaque_existential_1, type metadata accessor for TextBox);
LABEL_20:
        v37 = v61;
        if (*(&v65 + 1))
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(&v64, &_s8PaperKit12ShapeTextBox_pSgMd, &_s8PaperKit12ShapeTextBox_pSgMR);
        }

        goto LABEL_22;
      }
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit7TextBoxVSgMd, &_s8PaperKit7TextBoxVSgMR);
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
    goto LABEL_20;
  }

  *(&v65 + 1) = v29;
  v66 = &protocol witness table for Shape;
  v36 = __swift_allocate_boxed_opaque_existential_1(&v64);
  outlined init with take of TextBox(v16, v36, type metadata accessor for Shape);
  outlined init with take of PaperKitHashable(&v64, &v67);
  v37 = v61;
LABEL_22:
  if (!*(&v68 + 1))
  {
    (*(v60 + 8))(v59, v37);

    outlined destroy of StocksKitCurrencyCache.Provider?(&v67, &_s8PaperKit12ShapeTextBox_pSgMd, &_s8PaperKit12ShapeTextBox_pSgMR);
    return 0;
  }

  outlined init with take of PaperKitHashable(&v67, v70);
  v39 = v71;
  v40 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  if (((*(v40 + 80))(v39, v40) & 1) == 0)
  {
    (*(v60 + 8))(v59, v37);

    __swift_destroy_boxed_opaque_existential_0(v70);
    return 0;
  }

  v41 = v71;
  v42 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v43 = v53;
  (*(v42 + 16))(v41, v42);
  v44 = v55;
  v45 = CRAttributedString.attributedString.getter();
  (*(v54 + 8))(v43, v44);
  v46 = [v45 string];

  if (!v46)
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = MEMORY[0x1DA6CCED0](v47);
  }

  v48 = v62;
  v49 = [v62 canConvertTextToHandwriting_];

  (*(v60 + 8))(v59, v61);
  __swift_destroy_boxed_opaque_existential_0(v70);
  return v49;
}

uint64_t closure #3 in ContainerCanvasElementView.convertToHandwriting(members:)(unint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v121 = a7;
  v124 = a6;
  v123 = a5;
  v126 = a3;
  v125 = a1;
  v26 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v122 = &v108 - v28;
  v120 = type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent(0);
  MEMORY[0x1EEE9AC00](v120);
  v30 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for PKDrawing();
  v115 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v32 = (&v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v129 = a2;
    v119 = v30;
    v118 = v26;
    v117 = a8;
    if (!i)
    {
      v39 = a4;
      goto LABEL_13;
    }

    v34 = a2;
    v35 = objc_opt_self();
    if (i < 1)
    {
      break;
    }

    v36 = v35;
    v127 = v34 & 0xC000000000000001;
    v37 = a4;
    v38 = v34;
    v39 = v37;
    v18 = 0;
    do
    {
      if (v127)
      {
        v40 = MEMORY[0x1DA6CE0C0](v18, v38);
      }

      else
      {
        v40 = *(v38 + 8 * v18 + 32);
      }

      v41 = v40;
      v42 = [v40 textSize];
      [v41 bounds];
      v43 = [v36 scaledSize:v42 scale:CGRectGetHeight(v140)];

      [v43 scaleToMatchSize_];
      v45 = v44;
      v141.origin.x = a9;
      v141.origin.y = a10;
      v141.size.width = a11;
      v141.size.height = a12;
      Width = CGRectGetWidth(v141);
      [v41 bounds];
      if (Width / CGRectGetWidth(v142) < v45)
      {
        v47 = [v36 scaledSize:v43 scale:?];
        [v39 scaleToMatchSize_];
        v48 = [v36 scaledSize:v39 scale:?];
        v49 = v39;
        v39 = v48;

        v41 = v43;
        v43 = v47;
      }

      ++v18;

      v38 = v129;
    }

    while (i != v18);
LABEL_13:
    v127 = v39;
    v50 = *(v126 + 16);
    if (v50)
    {
      a4 = 0;
      v26 = *(v115 + 16);
      a2 = v126 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      a8 = *(v115 + 72);
      v51 = (v115 + 8);
      while (1)
      {
        v52 = v128;
        (v26)(v32, a2, v128);
        v30 = PKDrawing.strokes.getter();
        (*v51)(v32, v52);
        v18 = *(v30 + 16);

        v53 = __OFADD__(a4, v18);
        a4 += v18;
        if (v53)
        {
          break;
        }

        a2 += a8;
        if (!--v50)
        {
          goto LABEL_19;
        }
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    a4 = 0;
LABEL_19:
    v111 = a13;
    v54 = v125;
    v26 = v125 & 0xFFFFFFFFFFFFFF8;
    if (v125 >> 62)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = 0;
    v115 = a18;
    v113 = a17;
    v112 = a16;
    v128 = a15;
    v114 = a14;
    a8 = v54 & 0xC000000000000001;
    v55 = 1;
    a2 = MEMORY[0x1E69E7CC0];
    while (v32 != v30)
    {
      if (a8)
      {
        v56 = MEMORY[0x1DA6CE0C0](v30, v54);
      }

      else
      {
        if (v30 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v56 = *(v54 + 8 * v30 + 32);
      }

      v57 = v56;
      v18 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v131 = 0uLL;
      LOBYTE(v132) = 1;
      static _NSRange._conditionallyBridgeFromObjectiveC(_:result:)();

      ++v30;
      if ((v132 & 1) == 0)
      {
        v110 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16) + 1, 1, a2);
        }

        v59 = *(a2 + 16);
        v58 = *(a2 + 24);
        if (v59 >= v58 >> 1)
        {
          a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, a2);
        }

        *(a2 + 16) = v59 + 1;
        *(a2 + 16 * v59 + 32) = v110;
        v30 = v18;
      }
    }

    v60 = *(a2 + 16);
    if (v60)
    {
      v61 = 0;
      v62 = (a2 + 40);
      v26 = v129;
      while (1)
      {
        v63 = *v62;
        v62 += 2;
        v53 = __OFADD__(v61, v63);
        v61 += v63;
        if (v53)
        {
          break;
        }

        if (!--v60)
        {
          goto LABEL_40;
        }
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v61 = 0;
    v26 = v129;
LABEL_40:

    v64 = String.count.getter();
    if (__OFSUB__(v64, v61))
    {
      __break(1u);
      goto LABEL_74;
    }

    v65 = (v64 - v61) & ~((v64 - v61) >> 63);
    v66 = (*((*MEMORY[0x1E69E7D40] & *v121) + 0x468))();
    v67 = type metadata accessor for Date();
    v68 = *(v67 - 8);
    v69 = v122;
    (*(v68 + 16))(v122, v117, v67);
    v70 = *(v68 + 56);
    v70(v69, 0, 1, v67);
    *&v110 = v65;
    v109 = v66;
    if (v116)
    {
      v71 = __CocoaSet.count.getter();
    }

    else
    {
      v71 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v72 = v26;
    v73 = v119;
    *v119 = 0;
    *(v73 + 25) = 0;
    *(v73 + 28) = 0;
    *(v73 + 8) = 0;
    *(v73 + 16) = 0;
    *(v73 + 56) = 0u;
    *(v73 + 40) = 0u;
    v74 = v120;
    v75 = *(v120 + 68);
    v70(v73 + v75, 1, 1, v67);
    a8 = v73;
    *(v73 + *(v74 + 72)) = 0;
    swift_unknownObjectWeakInit();
    *(v73 + 24) = 0;
    outlined assign with take of Date?(v122, v73 + v75);
    *(v73 + 32) = a4;
    *(v73 + 72) = v61;
    *(v73 + 80) = v71;
    *(v73 + 88) = v110;
    v76 = v109;
    swift_unknownObjectWeakAssign();

    v77 = MEMORY[0x1DA6CCED0](v123, v124);
    MEMORY[0x1EEE9AC00](v77);
    *(&v108 - 2) = v127;
    v78 = v125;

    v79 = v126;

    v30 = v118;
    v32 = specialized Sequence.flatMap<A>(_:)(v78, v72, v79, partial apply for closure #1 in static HandwritingReflowView.convertTokensToReflowElements(string:ranges:tokens:drawings:textSize:), (&v108 - 4));

    v26 = v32[2];
    if (!v26)
    {
      v129 = v30;

      v26 = MEMORY[0x1E69E7CC0];
LABEL_61:
      v30 = v128;
      v18 = v115;
      v55 = MEMORY[0x1E69E7D40];
      v91 = *((*MEMORY[0x1E69E7D40] & *v111) + 0x100);

      v93 = v91(v92);
      v95 = v94;
      v97 = v96;
      v99 = v98;
      type metadata accessor for ReflowLayoutManager();
      swift_allocObject();
      specialized ReflowLayoutManager.init(contents:frame:addSpaces:)(v26, 0, v93, v95, v97, v99);
      a2 = v100;

      swift_beginAccess();
      v101._rawValue = *(a2 + 80);
      swift_beginAccess();
      v102._rawValue = *(a2 + 88);

      ReflowLayoutManager.layoutText(contents:lines:)(v101, v102);

      if (one-time initialization token for $currentAnalyticsEvents != -1)
      {
LABEL_74:
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4058CF0;
      *(inited + 56) = v120;
      *(inited + 64) = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent and conformance MagicPaperUsageHandwritingSynthesisEvent, type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent, &protocol conformance descriptor for MagicPaperUsageHandwritingSynthesisEvent);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      outlined init with copy of MagicPaperUsageHandwritingSynthesisEvent(a8, boxed_opaque_existential_1, type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent);
      TaskLocal.get()();

      specialized Array.append<A>(contentsOf:)(v105);
      *&v131 = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14AnalyticsEvent_pGMd, &_sSay8PaperKit14AnalyticsEvent_pGMR);
      swift_task_localValuePush();
      v132 = v112;
      v133 = v113;
      v134 = v18;
      v135 = v121;
      v136 = v26;
      v137 = a2;
      v138 = v114;
      v139 = v30;
      (*((*v55 & *v121) + 0x6E8))(1, 0, partial apply for closure #1 in closure #4 in closure #3 in ContainerCanvasElementView.convertToHandwriting(members:), &v131);
      v106 = v127;
      v35 = v129;
      if (v129)
      {
        goto LABEL_78;
      }

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14AnalyticsEvent_pMd, &_s8PaperKit14AnalyticsEvent_pMR);
      swift_arrayDestroy();
      swift_task_localValuePop();

      return outlined destroy of Color(a8, type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent);
    }

    a8 = &selRef_pointyBitPoint;
    v35 = [v77 paragraphRangeForRange_];
    if (v32[2] < v26)
    {
      goto LABEL_76;
    }

    v81 = v35;
    a4 = v80;

    v18 = (v32 + 2);
    a2 = 24;
    v82 = 1;
LABEL_47:
    v83 = __OFADD__(v81, a4);
    v84 = v18 + 24 * v82;
    v85 = v82;
    while (1)
    {
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v26 == v85)
      {
        v89 = swift_unknownObjectRelease();
        MEMORY[0x1EEE9AC00](v89);
        *(&v108 - 2) = v129;
        *(&v108 - 1) = v32;

        specialized Sequence.flatMap<A>(_:)(0, v32, partial apply for closure #2 in static HandwritingReflowView.convertTokensToReflowElements(string:ranges:tokens:drawings:textSize:));
        v26 = v90;
        v129 = v30;
        swift_bridgeObjectRelease_n();

        a8 = v119;
        goto LABEL_61;
      }

      if (v82 < 1 || v85 >= v26)
      {
        goto LABEL_69;
      }

      if (v83)
      {
        goto LABEL_70;
      }

      v87 = *(v84 + 16);
      ++v85;
      v84 += 24;
      if (v87 >= &a4[v81])
      {
        if ((v85 - 1) > v32[2])
        {
          goto LABEL_77;
        }

        *(*(v84 - 16) + 136) = 1;
        v35 = [v77 paragraphRangeForRange_];
        v81 = v35;
        a4 = v88;
        v82 = v86;
        goto LABEL_47;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:

  result = swift_task_localValuePop();
  __break(1u);
  return result;
}

double closure #1 in closure #4 in closure #3 in ContainerCanvasElementView.convertToHandwriting(members:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x748))(a2, a3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = specialized CanvasMembers.init(_:)(a5);
    ContainerCanvasElementView.remove(members:)(v9, v11, v13, v12, (v10 & 1));
  }

  return result;
}

double thunk for @escaping @callee_guaranteed (@guaranteed [NSValue], @guaranteed [CHReflowableTextToken], @guaranteed [PKDrawing]) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSValue, 0x1E696B098);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CHReflowableTextToken, 0x1E6997BA0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKDrawing();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4(v5, v6, v7);

  return result;
}

unint64_t ContainerCanvasElementView.unorderedTransientSubelementViews.getter(uint64_t a1)
{
  v1 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (v1)
  {
    v2 = v1;
    v3 = FormFillingView.unorderedFormFields.getter();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCTt0g5Tf4g_n(v5);
  }
}

unint64_t ContainerCanvasElementView.transientFormFields.getter(uint64_t a1)
{
  v1 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = FormFillingView.formFields.getter();

  return v3;
}

Swift::Void __swiftcall ContainerCanvasElementView.addFormFieldViews(_:transiently:)(Swift::OpaquePointer _, Swift::Bool transiently)
{
  if (_._rawValue >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  ContainerCanvasElementView.createFormFillingViewIfNeeded()();
  v5 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (v5)
  {
    v6 = v5;
    FormFillingView.add(_:)(_);
  }

  if (!transiently)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v7 = 0;
      v8 = MEMORY[0x1E69E7D40];
      do
      {
        if ((_._rawValue & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA6CE0C0](v7, _._rawValue);
        }

        else
        {
          v9 = *(_._rawValue + v7 + 4);
        }

        v10 = v9;
        v11 = (*((*v8 & *v9) + 0x318))();
        if (v11)
        {
          v12 = v11;
          (*((*v8 & *v11) + 0x150))(1, 1);
        }

        ++v7;
      }

      while (v4 != v7);
    }
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.setFormFieldGroups(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    ContainerCanvasElementView.createFormFillingViewIfNeeded()();
    v2 = specialized ContainerCanvasElementView.formFillingView.getter();
    if (v2)
    {
      *&v2[OBJC_IVAR____TtC8PaperKit15FormFillingView_formFieldGroups] = a1;
      v3 = v2;
    }
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.addWidgets(_:)(Swift::OpaquePointer a1)
{
  ContainerCanvasElementView.createFormFillingViewIfNeeded()();
  v1 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    v3 = v2;

    specialized Array.append<A>(contentsOf:)(v4);
    swift_endAccess();
    FormFillingView.updateUI()();
  }
}

void ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v44 = a5;
  v53 = a3;
  v54 = a4;
  v43 = a2;
  v55 = a1;
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v42[0] = *MEMORY[0x1E69E7D40] & v7;
  v9 = *((v8 & v7) + 0x540);
  v10 = type metadata accessor for Optional();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v42 - v11;
  v13 = *((v8 & v7) + 0x548);
  v14 = type metadata accessor for Capsule();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - v15;
  v17 = type metadata accessor for CRKeyPath();
  v51 = *(v17 - 8);
  v52 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v50 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v20 = type metadata accessor for WeakRef();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v42 - v22;
  v49 = ContainerCanvasElementView.canvas.getter();
  if (v49)
  {
    v42[1] = type metadata accessor for Capsule();
    Capsule.rootID.getter();
    WeakRef.init(id:)();
    CanvasElementView.canvasElement.getter(v16);
    WeakRef.subscript.getter();
    (*(v45 + 8))(v16, v46);
    (*(v21 + 8))(v23, v20);
    v24 = (*(*(v9 - 8) + 48))(v12, 1, v9);
    v25 = (*(v47 + 8))(v12, v48);
    if (v24 == 1)
    {
      v26 = MEMORY[0x1EEE9AC00](v25);
      v27 = v49;
      v28 = v54;
      v42[-6] = v53;
      v42[-5] = v28;
      v42[-4] = v44;
      v42[-3] = v6;
      v42[-2] = v55;
      v42[-1] = v27;
      v29 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v27) + 0x6E8))(0, 0, partial apply for closure #1 in ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:), v26);
    }

    else
    {
      v29 = MEMORY[0x1E69E7D40];
      v27 = v49;
      if (v43)
      {
        v30 = MEMORY[0x1EEE9AC00](v25);
        v42[-8] = v9;
        v42[-7] = v31;
        v32 = *(v42[0] + 1360);
        v42[-6] = v13;
        v42[-5] = v32;
        v33 = v44;
        v42[-4] = v34;
        v42[-3] = v33;
        v42[-2] = v27;
        v42[-1] = v35;
        (*((*v29 & *v27) + 0x6E8))(0, 0, partial apply for closure #2 in ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:), v30);
      }

      else
      {
        v56 = 4;
        AnyCanvas.merge<A>(_:from:)(v55, &v56, v53, v54);
      }
    }

    (*((*v29 & *v27) + 0x850))(0);
    v36 = v50;
    Capsule.rootID.getter();
    v37 = ContainerCanvasElementView.unorderedSubelementViews.getter();
    if (*(v37 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v39 & 1) != 0))
    {
      v40 = *(v51 + 8);
      v41 = *(*(v37 + 56) + 8 * v38);
      v40(v36, v52);
    }

    else
    {

      (*(v51 + 8))(v36, v52);
      v41 = 0;
    }

    ContainerCanvasElementView.reparentViewIfNeeded(_:)(v41);
  }
}

uint64_t closure #1 in ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v20 = a3;
  v9 = *a1;
  v10 = *MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x540);
  v11 = *((v10 & v9) + 0x548);
  v12 = type metadata accessor for Capsule();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  v21 = a4;
  v22 = *((v10 & v9) + 0x550);
  v23 = a5;
  v24 = v18;
  v25 = a2;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  CanvasElementView.canvasElement.getter(v15);
  v26[0] = 4;
  AnyCanvas.merge<A>(_:from:)(v15, v26, v19, v11);
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #1 in closure #1 in ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v52 = a2;
  v43 = *a1;
  v44 = a4;
  v9 = type metadata accessor for CRKeyPath();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v49 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v16 = *(v15 - 8);
  v47 = v15;
  v48 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v41 - v17;
  v46 = a3;
  v18 = type metadata accessor for Capsule();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  v22 = type metadata accessor for Ref();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v41 - v25;
  (*(v19 + 16))(v21, v52, v18, v24);

  v45 = a1;
  v28 = v46;
  v27 = v47;
  Ref.init<A>(_:_:)();
  (*(v23 + 8))(v26, v22);
  v29 = v54;
  v30 = v50;
  Capsule.root.getter();
  v31 = v51;
  v32 = v48;
  Capsule.rootID.getter();
  v33 = v49;
  (*(v29 + 112))(v31, v28, v29);
  (*(v55 + 8))(v31, v56);
  (*(v53 + 8))(v30, v28);
  if ((*(v32 + 48))(v33, 1, v27) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  }

  v35 = v42;
  v36 = (*(v32 + 32))(v42, v33, v27);
  MEMORY[0x1EEE9AC00](v36);
  v37 = (v43 + *MEMORY[0x1E6995440]);
  *(&v41 - 6) = *v37;
  *(&v41 - 5) = v28;
  v38 = v37[1];
  v39 = v44;
  *(&v41 - 4) = v38;
  *(&v41 - 3) = v39;
  *(&v41 - 2) = a5;
  *(&v41 - 1) = v29;
  swift_getKeyPath();
  v40 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  CROrderedSet.append(_:)();
  v40(v57, 0);

  return (*(v32 + 8))(v35, v27);
}

void ContainerCanvasElementView.reparentViewIfNeeded(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = ContainerCanvasElementView.transientFormFields.getter(v8);
    v37 = v8;
    MEMORY[0x1EEE9AC00](v9);
    v35[-2] = &v37;
    v10 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v35[-4], v9);

    if ((v10 & 1) == 0 || (ContainerCanvasElementView.createSubelementsContainerViewIfNeeded()(), (v11 = specialized ContainerCanvasElementView.subelementsContainerView.getter()) == 0))
    {
LABEL_13:

      return;
    }

    v12 = v11;
    v35[1] = 0;
    swift_unknownObjectWeakAssign();
    v13 = v5;
    v14 = MEMORY[0x1E69E7D40];
    v15 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xE8);
    v16 = v12;
    v15();
    v17 = *((*v14 & *v2) + 0x570);
    swift_beginAccess();
    v18 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v2 + v17);
    *(v2 + v17) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v7, isUniquelyReferenced_nonNull_native);
    (*(v13 + 8))(v7, v4);
    *(v2 + v17) = v36;
    swift_endAccess();
    [v16 addSubview_];
    v20 = specialized ContainerCanvasElementView.formFillingView.getter();
    if (!v20)
    {
LABEL_10:
      v29 = ContainerCanvasElementView.canvas.getter();
      if (v29)
      {
        v30 = v29;
        v31 = swift_allocObject();
        *(v31 + 16) = v18;
        *(v31 + 24) = v2;
        v32 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x6E0);
        v33 = v18;
        v34 = v2;
        v32(partial apply for closure #1 in ContainerCanvasElementView.reparentViewIfNeeded(_:), v31);
      }

      v8 = v16;
      goto LABEL_13;
    }

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    *(inited + 32) = v18;
    v23 = v18;
    v24 = v21;
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA6CE0C0](0, inited);
      swift_unknownObjectRelease();
    }

    else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v25 = OBJC_IVAR____TtC8PaperKit15FormFillingView__formFields;
    swift_beginAccess();

    v26 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v24[v25], inited);

    v27 = *&v24[v25];
    if (v27 >> 62)
    {
      v28 = __CocoaSet.count.getter();
      if (v28 >= v26)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28 >= v26)
      {
LABEL_9:
        specialized Array.replaceSubrange<A>(_:with:)(v26, v28, type metadata accessor for AnyCanvasElementView);
        swift_endAccess();

        swift_setDeallocating();
        swift_arrayDestroy();
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

double closure #1 in ContainerCanvasElementView.reparentViewIfNeeded(_:)(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x318);
  v13 = v12(v8);
  if (v13)
  {
    v14 = v13;
    v15 = (*((*v11 & *v13) + 0xF0))();
    v33 = v16;
    v34 = v15;
  }

  else
  {
    v33 = 0xE000000000000000;
    v34 = 0;
  }

  v17 = (v12)();
  if (v17)
  {
    v18 = v17;
    (*((*v11 & *v17) + 0xF8))(0, 0xE000000000000000);
  }

  v19 = swift_unknownObjectWeakAssign();
  (*((*v11 & *a2) + 0xE8))(v19);
  swift_beginAccess();
  v20 = specialized Dictionary.removeValue(forKey:)(v10);
  (*(v7 + 8))(v10, v6);
  swift_endAccess();

  v21 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (v21)
  {
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    *(inited + 32) = a2;
    v24 = v22;
    v25 = a2;
    FormFillingView.add(_:)(inited);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  v26 = swift_allocObject();
  v27 = v33;
  v28 = v34;
  v26[2] = a2;
  v26[3] = v28;
  v26[4] = v27;
  v26[5] = a3;
  v29 = *((*v11 & *a1) + 0x6E0);
  v30 = a2;
  v31 = a3;
  v29(partial apply for closure #1 in closure #1 in ContainerCanvasElementView.reparentViewIfNeeded(_:), v26);

  return result;
}

void closure #1 in closure #1 in ContainerCanvasElementView.reparentViewIfNeeded(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x318))(a1);
  if (v8)
  {
    v9 = v8;
    (*((*v7 & *v8) + 0xF8))(a3, a4);
  }

  ContainerCanvasElementView.reparentViewIfNeeded(_:)(a2);
}

uint64_t partial apply for closure #2 in ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:)()
{
  v1 = v0[3];
  v2 = v0[6];
  v3 = v0[9];
  v5 = 4;
  return AnyCanvas.merge<A>(_:from:)(v3, &v5, v1, v2);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

    v184 = v5;
    v122 = *(v5 + 16);
    if (v122 >= 2)
    {
      do
      {
        v123 = *v7;
        if (!*v7)
        {
          goto LABEL_124;
        }

        v7 = *(v5 + 16 * v122);
        v124 = *(v5 + 16 * (v122 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((v123 + 48 * v7), (v123 + 48 * *(v5 + 16 * (v122 - 1) + 32)), (v123 + 48 * v124), v10);
        if (v6)
        {
          break;
        }

        if (v124 < v7)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        }

        if (v122 - 2 >= *(v5 + 16))
        {
          goto LABEL_114;
        }

        v125 = (v5 + 16 * v122);
        *v125 = v7;
        v125[1] = v124;
        v184 = v5;
        specialized Array.remove(at:)(v122 - 1);
        v5 = v184;
        v122 = *(v184 + 16);
        v7 = a3;
      }

      while (v122 > 1);
    }

LABEL_98:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v127 = v10;
      v129 = v6;
      v11 = *v7 + 48 * (v9 + 1);
      v12 = *(v11 + 8);
      v13 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *(v11 + 40);
      v142 = 48 * v9;
      v156 = *(v11 + 16);
      v159 = *v7 + 48 * v9;
      v17 = *v159;
      v16 = *(v159 + 8);
      v18 = *(v159 + 16);
      v132 = v9;
      v146 = *(v159 + 32);
      v149 = *(v159 + 24);
      v19 = *(v159 + 40);
      v178 = *v11;
      v179 = v12;
      v180 = v156;
      v181 = v13;
      v153 = v13;
      v182 = v14;
      v183 = v15;
      v172 = v17;
      v173 = v16;
      v174 = v18;
      v175 = v149;
      v154 = v18;
      v176 = v146;
      v177 = v19;
      v20 = v178;
      v168 = v178;
      v170 = v12;
      v21 = v12;
      v22 = v14;
      v166 = v14;
      v23 = v15;
      v164 = v15;
      outlined copy of PaperDocumentFindResult.Content(v178, v12, v156, v13, v14, v15);
      v24 = v18;
      v5 = v146;
      outlined copy of PaperDocumentFindResult.Content(v17, v16, v24, v149, v146, v19);
      outlined copy of PaperDocumentFindResult.Content(v20, v21, v156, v153, v22, v23);
      outlined copy of PaperDocumentFindResult.Content(v17, v16, v154, v149, v146, v19);
      v144 = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v178, &v172);
      outlined consume of PaperDocumentFindResult.Content(v172, v173, v174, v175, v176, v177);
      outlined consume of PaperDocumentFindResult.Content(v178, v179, v180, v181, v182, v183);
      outlined consume of PaperDocumentFindResult.Content(v17, v16, v154, v149, v146, v19);
      outlined consume of PaperDocumentFindResult.Content(v168, v170, v156, v153, v166, v164);
      v25 = v132 + 2;
      v26 = v159 + 72;
      v139 = v8;
      while (v8 != v25)
      {
        v27 = *(v26 + 32);
        v28 = *(v26 + 40);
        v29 = *(v26 + 48);
        v171 = v26 + 48;
        v30 = *(v26 + 56);
        v31 = *(v26 + 64);
        v33 = *(v26 - 24);
        v32 = *(v26 - 16);
        v34 = *v26;
        v147 = *(v26 + 8);
        v150 = *(v26 - 8);
        v35 = *(v26 + 16);
        v178 = *(v26 + 24);
        v179 = v27;
        v155 = v27;
        v180 = v28;
        v181 = v29;
        v182 = v30;
        v183 = v31;
        v172 = v33;
        v173 = v32;
        v174 = v150;
        v175 = v34;
        v176 = v147;
        v177 = v35;
        v36 = v178;
        v165 = v30;
        v167 = v178;
        v37 = v28;
        v38 = v29;
        v160 = v29;
        v39 = v30;
        v40 = v31;
        v162 = v31;
        v169 = v25;
        outlined copy of PaperDocumentFindResult.Content(v178, v27, v28, v29, v30, v31);
        outlined copy of PaperDocumentFindResult.Content(v33, v32, v150, v34, v147, v35);
        outlined copy of PaperDocumentFindResult.Content(v36, v155, v37, v38, v39, v40);
        v5 = v33;
        outlined copy of PaperDocumentFindResult.Content(v33, v32, v150, v34, v147, v35);
        v157 = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v178, &v172) & 1;
        outlined consume of PaperDocumentFindResult.Content(v172, v173, v174, v175, v176, v177);
        outlined consume of PaperDocumentFindResult.Content(v178, v179, v180, v181, v182, v183);
        v8 = v139;
        outlined consume of PaperDocumentFindResult.Content(v5, v32, v150, v34, v147, v35);
        outlined consume of PaperDocumentFindResult.Content(v167, v155, v37, v160, v165, v162);
        v25 = v169 + 1;
        v26 = v171;
        if ((v144 & 1) != v157)
        {
          v8 = v169;
          break;
        }
      }

      v10 = v127;
      v6 = v129;
      v9 = v132;
      v7 = a3;
      v41 = v142;
      if (v144)
      {
        if (v8 < v132)
        {
          goto LABEL_117;
        }

        if (v132 < v8)
        {
          v42 = 48 * v8 - 48;
          v43 = v8;
          v44 = v132;
          do
          {
            if (v44 != --v43)
            {
              v53 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v45 = v53 + v41;
              v46 = *(v53 + v41 + 32);
              v47 = v53 + v42;
              v48 = *(v45 + 40);
              v49 = *v45;
              v50 = *(v45 + 16);
              v52 = *(v47 + 16);
              v51 = *(v47 + 32);
              *v45 = *v47;
              *(v45 + 16) = v52;
              *(v45 + 32) = v51;
              *v47 = v49;
              *(v47 + 16) = v50;
              *(v47 + 32) = v46;
              *(v47 + 40) = v48;
            }

            ++v44;
            v42 -= 48;
            v41 += 48;
          }

          while (v44 < v43);
        }
      }
    }

    v54 = *(v7 + 8);
    if (v8 < v54)
    {
      if (__OFSUB__(v8, v9))
      {
        goto LABEL_116;
      }

      if (v8 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v9 + a4 >= v54)
        {
          v55 = *(v7 + 8);
        }

        else
        {
          v55 = v9 + a4;
        }

        if (v55 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v55)
        {
          break;
        }
      }
    }

    v56 = v8;
    if (v8 < v9)
    {
      goto LABEL_115;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v58 = *(v10 + 2);
    v57 = *(v10 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v10);
    }

    *(v10 + 2) = v59;
    v60 = &v10[16 * v58];
    *(v60 + 4) = v9;
    *(v60 + 5) = v56;
    v61 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v135 = v56;
    if (v58)
    {
      while (1)
      {
        v5 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v10 + 4);
          v63 = *(v10 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_48:
          if (v65)
          {
            goto LABEL_104;
          }

          v78 = &v10[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_107;
          }

          v84 = &v10[16 * v5 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_111;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v5 = v59 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v88 = &v10[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_62:
        if (v83)
        {
          goto LABEL_106;
        }

        v91 = &v10[16 * v5];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_109;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_69:
        v99 = v5 - 1;
        if (v5 - 1 >= v59)
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

        if (!*v7)
        {
          goto LABEL_122;
        }

        v100 = *&v10[16 * v99 + 32];
        v101 = *&v10[16 * v5 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 48 * v100), (*v7 + 48 * *&v10[16 * v5 + 32]), (*v7 + 48 * v101), v61);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v101 < v100)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v99 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v102 = &v10[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v184 = v10;
        specialized Array.remove(at:)(v5);
        v10 = v184;
        v59 = *(v184 + 16);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v10[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_102;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_103;
      }

      v73 = &v10[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_105;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_108;
      }

      if (v77 >= v69)
      {
        v95 = &v10[16 * v5 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_112;
        }

        if (v64 < v98)
        {
          v5 = v59 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v135;
    if (v135 >= v8)
    {
      goto LABEL_88;
    }
  }

  v128 = v10;
  v130 = v6;
  v141 = *v7;
  v103 = *v7 + 48 * v8 - 48;
  v133 = v9;
  v104 = v9 - v8;
  v136 = v55;
LABEL_80:
  v138 = v103;
  v140 = v8;
  v137 = v104;
  v105 = v104;
  v106 = v103;
  while (1)
  {
    v107 = *(v106 + 48);
    v143 = (v106 + 48);
    v145 = v105;
    v108 = *(v106 + 64);
    v161 = *(v106 + 56);
    v109 = *(v106 + 72);
    v110 = *(v106 + 80);
    v111 = *(v106 + 88);
    v112 = *v106;
    v114 = *(v106 + 16);
    v113 = *(v106 + 24);
    v151 = *(v106 + 32);
    v152 = *(v106 + 8);
    v115 = *(v106 + 40);
    v148 = v115;
    v178 = v107;
    v179 = v161;
    v180 = v108;
    v181 = v109;
    v182 = v110;
    v183 = v111;
    v172 = v112;
    v173 = v152;
    v158 = v114;
    v174 = v114;
    v175 = v113;
    v176 = v151;
    v177 = v115;
    outlined copy of PaperDocumentFindResult.Content(v107, v161, v108, v109, v110, v111);
    v116 = v114;
    v5 = v148;
    outlined copy of PaperDocumentFindResult.Content(v112, v152, v116, v113, v151, v148);
    outlined copy of PaperDocumentFindResult.Content(v107, v161, v108, v109, v110, v111);
    outlined copy of PaperDocumentFindResult.Content(v112, v152, v158, v113, v151, v148);
    v163 = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v178, &v172);
    outlined consume of PaperDocumentFindResult.Content(v172, v173, v174, v175, v176, v177);
    outlined consume of PaperDocumentFindResult.Content(v178, v179, v180, v181, v182, v183);
    outlined consume of PaperDocumentFindResult.Content(v112, v152, v158, v113, v151, v148);
    outlined consume of PaperDocumentFindResult.Content(v107, v161, v108, v109, v110, v111);
    if ((v163 & 1) == 0)
    {
LABEL_79:
      v8 = v140 + 1;
      v103 = v138 + 48;
      v56 = v136;
      v104 = v137 - 1;
      if (v140 + 1 != v136)
      {
        goto LABEL_80;
      }

      v10 = v128;
      v6 = v130;
      v9 = v133;
      v7 = a3;
      if (v136 < v133)
      {
        goto LABEL_115;
      }

      goto LABEL_29;
    }

    if (!v141)
    {
      break;
    }

    v117 = *(v106 + 64);
    v118 = *v106;
    v119 = *(v106 + 16);
    v120 = *(v106 + 32);
    *v106 = *(v106 + 48);
    *(v106 + 16) = v117;
    v121 = *(v106 + 88);
    *(v106 + 32) = *(v106 + 80);
    *(v106 + 40) = v121;
    v106 -= 48;
    *v143 = v118;
    v143[1] = v119;
    v143[2] = v120;
    v105 = v145 + 1;
    if (v145 == -1)
    {
      goto LABEL_79;
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
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

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
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

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
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

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(a4, &_ss15CollectionOfOneVy8PaperKit6PageIdVSgGMd, &_ss15CollectionOfOneVy8PaperKit6PageIdVSgGMR);
  }

  if (v17 < 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(a4, &_ss15CollectionOfOneVy8PaperKit6PageIdVSgGMd, &_ss15CollectionOfOneVy8PaperKit6PageIdVSgGMR);
  }

  result = outlined init with copy of Date?(a4, v15, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  if (v12 >= v17)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(a4, &_ss15CollectionOfOneVy8PaperKit6PageIdVSgGMd, &_ss15CollectionOfOneVy8PaperKit6PageIdVSgGMR);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for ReflowElement();
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

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq58PaperKit13ReflowElementC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_8i5Kit13kL7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __n128))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v4 = AssociatedObject[2];

  return (a2)(AssociatedObject + 4, v4);
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
      v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      specialized Set._Variant.remove(_:)(v9, v5);
      (*(v7 + 8))(v9, v6);
      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      specialized Set._Variant.remove(_:)(v9, v5);
      (*(v7 + 8))(v9, v6);
      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      specialized Set._Variant.remove(_:)(v9, v5);
      (*(v7 + 8))(v9, v6);
      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
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

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Color(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v27 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      outlined init with copy of MagicPaperUsageHandwritingSynthesisEvent(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for Color);
      v23 = v22;
      v24 = v30;
      outlined init with take of TextBox(v23, v30, type metadata accessor for Color);
      outlined init with take of TextBox(v24, a2, type metadata accessor for Color);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
}

{
  specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
}

{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42, v12);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

double specialized CRRegister<>.bounds(in:)(void *a1, void (**a2)(char *, uint64_t))
{
  return specialized CRRegister<>.bounds(in:)(a1, a2, &_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR, &lazy protocol witness table cache variable for type Capsule<Paper> and conformance Capsule<A>, partial apply for closure #1 in CRRegister<>.bounds(in:));
}

{
  return specialized CRRegister<>.bounds(in:)(a1, a2, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR, &lazy protocol witness table cache variable for type Capsule<PKDrawingStruct> and conformance Capsule<A>, closure #1 in CRRegister<>.bounds(in:)partial apply);
}

double specialized CRRegister<>.bounds(in:)(void *a1, void (**a2)(char *, uint64_t), uint64_t *a3, uint64_t *a4, unint64_t *a5, void (*a6)(void *__return_ptr, double *, char *))
{
  v105 = a6;
  isa = a5;
  v134 = a2;
  v127 = a1;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v100 = &v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v118 = &v99 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v124 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v99 - v17;
  v130 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v130);
  v125 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v99 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v99 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v132 = (&v99 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v117 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v123 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v99 - v28;
  v114 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v99 - v31;
  v32 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v129 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v126 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v106 = &v99 - v35;
  v36 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v36);
  v111 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v110 = &v99 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v99 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v99 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v48 = &v99 - v47;
  v109 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v99 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v131 = &v99 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v139 = v52;
  v140 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(isa, a3, a4, MEMORY[0x1E6995458]);
  v53 = __swift_allocate_boxed_opaque_existential_1(&v138);
  (*(*(v52 - 8) + 16))(v53, v127, v52);
  v54 = v140;
  v127 = __swift_project_boxed_opaque_existential_1(&v138, v139);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  CRRegister.value.getter();
  outlined init with take of TextBox(v45, v42, type metadata accessor for TaggedStroke);
  isa = v36;
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of Color(v42, type metadata accessor for TaggedStroke);
    v55 = 1;
    v56 = v126;
  }

  else
  {
    v57 = v126;
    v58 = *(v126 + 32);
    v99 = v54;
    v59 = v106;
    v58(v106, v42, v34);
    v58(v48, v59, v34);
    v55 = 0;
    v56 = v57;
  }

  (*(v56 + 56))(v48, v55, 1, v34);
  if ((*(v56 + 48))(v48, 1, v34) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
    __swift_project_boxed_opaque_existential_1(&v138, v139);
    v60 = v110;
    CRRegister.value.getter();
    v61 = v111;
    outlined init with take of TextBox(v60, v111, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = v120;
      v63 = v120[4];
      v64 = v100;
      v65 = v61;
      v66 = v121;
      v63(v100, v65, v121);
      v67 = v118;
      v63(v118, v64, v66);
      v68 = 0;
    }

    else
    {
      outlined destroy of Color(v61, type metadata accessor for TaggedStroke);
      v68 = 1;
      v66 = v121;
      v62 = v120;
      v67 = v118;
    }

    (v62[7])(v67, v68, 1, v66);
    if ((v62[6])(v67, 1, v66) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
      v88 = *MEMORY[0x1E695F050];
    }

    else
    {
      v89 = v101;
      Ref.subscript.getter();
      (v62[1])(v67, v66);
      v90 = v103;
      v91 = v102;
      v92 = v104;
      v93 = (*(v103 + 32))(v102, v89, v104);
      *&v94 = MEMORY[0x1EEE9AC00](v93).n128_u64[0];
      *(&v99 - 2) = &v138;
      v88 = specialized Sequence.reduce<A>(_:_:)(v105, (&v99 - 4), v94, v95, v96, v97);
      (*(v90 + 8))(v91, v92);
    }
  }

  else
  {
    v69 = v108;
    Ref.subscript.getter();
    (*(v56 + 8))(v48, v34);
    outlined init with take of TextBox(v69, v131, type metadata accessor for PKStrokeStruct);
    __swift_project_boxed_opaque_existential_1(&v138, v139);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
    v70 = v113;
    CRRegister.wrappedValue.getter();
    v71 = v115;
    v72 = v112;
    v73 = v116;
    (*(v115 + 16))(v112, v70 + *(v114 + 32), v116);
    outlined destroy of Color(v70, type metadata accessor for PKStrokeProperties);
    Ref.subscript.getter();
    (*(v71 + 8))(v72, v73);
    isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v121 = v140;
    v127 = v139;
    v120 = __swift_project_boxed_opaque_existential_1(&v138, v139);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
    CRRegister.wrappedValue.getter();
    v74 = (v117 + 48);
    v134 = (v117 + 8);
    v75 = (v117 + 32);
    for (i = v119; ; (*v75)(v29, i, v25))
    {
      __swift_project_boxed_opaque_existential_1(&v138, v139);
      v77 = v132;
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
      CRRegister.wrappedValue.getter();
      outlined destroy of Color(v77, type metadata accessor for PKStrokeInheritedProperties);
      v78 = *v74;
      if ((*v74)(i, 1, v25) == 1)
      {
        break;
      }

      (*v134)(v29, v25);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(i, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
    v79 = v122;
    Ref.subscript.getter();
    v132 = *v134;
    v132(v29, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
    CRRegister.wrappedValue.getter();
    outlined destroy of Color(v79, type metadata accessor for PKStrokeInheritedProperties);
    v127 = *&v141[0];
    v121 = v140;
    v122 = v139;
    v120 = __swift_project_boxed_opaque_existential_1(&v138, v139);
    v80 = v123;
    CRRegister.wrappedValue.getter();
    for (j = v124; ; (*v75)(v80, j, v25))
    {
      __swift_project_boxed_opaque_existential_1(&v138, v139);
      v82 = v133;
      Ref.subscript.getter();
      CRRegister.wrappedValue.getter();
      outlined destroy of Color(v82, type metadata accessor for PKStrokeInheritedProperties);
      if (v78(j, 1, v25) == 1)
      {
        break;
      }

      v132(v80, v25);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(j, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
    v83 = v125;
    Ref.subscript.getter();
    v132(v80, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    outlined destroy of Color(v83, type metadata accessor for PKStrokeInheritedProperties);
    v141[0] = v135;
    v141[1] = v136;
    v141[2] = v137;
    v143.value.super.isa = v141;
    v84 = isa;
    v142.value.super.isa = isa;
    v85 = v127;
    v142.is_nil = v127;
    v86 = v131;
    *&v88 = PKStrokeStruct.bounds(path:ink:transform:)(v142, v143, v87);

    outlined destroy of Color(v129, type metadata accessor for PKStrokePathStruct);
    outlined destroy of Color(v86, type metadata accessor for PKStrokeStruct);
  }

  __swift_destroy_boxed_opaque_existential_0(&v138);
  return v88;
}

void specialized closure #1 in static AnyCanvas.strokeBounds<A, B>(_:in:)(CGFloat *a1@<X0>, void *a2@<X2>, CGFloat *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v22 - v7);
  x = *a1;
  y = a1[1];
  width = a1[2];
  height = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  type metadata accessor for Paper(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  WeakRef.subscript.getter();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMR);
  }

  else
  {
    v15 = specialized CRRegister<>.bounds(in:)(a2, v8, &_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR, &lazy protocol witness table cache variable for type Capsule<Paper> and conformance Capsule<A>, partial apply for closure #1 in CRRegister<>.bounds(in:));
    v17 = v16;
    v19 = v18;
    v21 = v20;
    (*(v14 + 8))(v8, v13);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v25.origin.x = v15;
    v25.origin.y = v17;
    v25.size.width = v19;
    v25.size.height = v21;
    v24 = CGRectUnion(v23, v25);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
  }

  *a3 = x;
  a3[1] = y;
  a3[2] = width;
  a3[3] = height;
}

uint64_t specialized Sequence.flatMap<A>(_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, id, char *), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v34 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSValueC_So21CHReflowableTextTokenCt_9PencilKit9PKDrawingVtMd, &_sSo7NSValueC_So21CHReflowableTextTokenCt_9PencilKit9PKDrawingVtMR);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v26 - v7;
  v35 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v9)
  {
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = v34 & 0xFFFFFFFFFFFFFF8;
    if (v34 < 0)
    {
      v11 = v34;
    }

    else
    {
      v11 = v34 & 0xFFFFFFFFFFFFFF8;
    }

    v26 = v11;
    v27 = v34 & 0xC000000000000001;
    v12 = 4;
    v32 = v34 >> 62;
    v33 = a1 & 0xC000000000000001;
    do
    {
      v13 = v12 - 4;
      if (v33)
      {
        v14 = MEMORY[0x1DA6CE0C0](v12 - 4, a1);
      }

      else
      {
        if (v13 >= *(v31 + 16))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v9 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        v14 = *(a1 + 8 * v12);
      }

      v15 = v14;
      if (v32)
      {
        if (v13 == __CocoaSet.count.getter())
        {
          goto LABEL_25;
        }
      }

      else if (v13 == *(v10 + 16))
      {
        goto LABEL_25;
      }

      if (v27)
      {
        v16 = MEMORY[0x1DA6CE0C0](v12 - 4, v34);
      }

      else
      {
        if (v13 >= *(v10 + 16))
        {
          goto LABEL_28;
        }

        v16 = *(v34 + 8 * v12);
      }

      v17 = v16;
      v18 = *(a3 + 16);
      if (v13 == v18)
      {

LABEL_25:
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_29;
      }

      v19 = type metadata accessor for PKDrawing();
      v20 = *(v19 - 8);
      v21 = *(v20 + 16);
      v22 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v13;
      v23 = *(v28 + 48);
      *v8 = v15;
      *(v8 + 1) = v17;
      v21(&v8[v23], v22, v19);
      v24 = v29(v15, v17, &v8[v23]);
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_sSo7NSValueC_So21CHReflowableTextTokenCt_9PencilKit9PKDrawingVtMd, &_sSo7NSValueC_So21CHReflowableTextTokenCt_9PencilKit9PKDrawingVtMR);
      specialized Array.append<A>(contentsOf:)(v24);
      ++v12;
      --v9;
    }

    while (v9);
  }

  return v35;
}

void specialized Sequence.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    v4 = a1;
    v5 = 0;
    v34 = a2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v36 = *(a2 + 16);
    while (1)
    {
      if (v5 == v36)
      {
        return;
      }

      v8 = (v34 + 24 * v5);
      v10 = v8[1];
      v9 = v8[2];
      v11 = *v8;

      v12 = a3(v4, v11, v10, v9);

      v13 = v12 >> 62;
      v14 = v12 >> 62 ? __CocoaSet.count.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v6 >> 62;
      if (v6 >> 62)
      {
        v32 = __CocoaSet.count.getter();
        v17 = v32 + v14;
        if (__OFADD__(v32, v14))
        {
LABEL_33:
          __break(1u);
          return;
        }
      }

      else
      {
        v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = v16 + v14;
        if (__OFADD__(v16, v14))
        {
          goto LABEL_33;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v39 = v14;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_15;
      }

LABEL_16:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v13)
      {
        v23 = v19;
        v24 = __CocoaSet.count.getter();
        v19 = v23;
        v22 = v24;
      }

      else
      {
        v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v22)
      {
        if (((v21 >> 1) - v20) < v39)
        {
          goto LABEL_37;
        }

        v37 = v3;
        v25 = v19 + 8 * v20 + 32;
        v33 = v19;
        if (v13)
        {
          if (v22 < 1)
          {
            goto LABEL_39;
          }

          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [ReflowElement] and conformance [A], &_sSay8PaperKit13ReflowElementCGMd, _sSay8PaperKit13ReflowElementCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v22; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit13ReflowElementCGMd, _sSay8PaperKit13ReflowElementCGMR);
            v27 = specialized protocol witness for Collection.subscript.read in conformance [A](v38, i, v12);
            v29 = *v28;

            (v27)(v38, 0);
            *(v25 + 8 * i) = v29;
          }
        }

        else
        {
          type metadata accessor for ReflowElement();
          swift_arrayInitWithCopy();
        }

        v3 = v37;
        if (v39 >= 1)
        {
          v30 = *(v33 + 16);
          v7 = __OFADD__(v30, v39);
          v31 = v30 + v39;
          if (v7)
          {
            goto LABEL_38;
          }

          *(v33 + 16) = v31;
        }
      }

      else
      {

        if (v39 > 0)
        {
          goto LABEL_36;
        }
      }

      v4 = v3;
      ++v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        goto LABEL_35;
      }
    }

    if (!v15)
    {
      v19 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_15:
    __CocoaSet.count.getter();
    goto LABEL_16;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA6CE0C0](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v13 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v11[2] = &v13;
    v8 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v26 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA6CE0C0](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v27 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v25[2] = &v27;
    v14 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v25, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA6CE0C0](v2, v6);
    v16 = MEMORY[0x1DA6CE0C0](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v18 = *(v6 + 32 + 8 * v10);
    v15 = *(v6 + 32 + 8 * v2);
    v16 = v18;
  }

  v19 = v16;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()();
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v19;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()();
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v21 + 16))
    {
      goto LABEL_44;
    }

    v23 = v21 + 8 * v10;
    v24 = *(v23 + 32);
    *(v23 + 32) = v15;

    *v26 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return __CocoaSet.count.getter();
}

void specialized ContainerCanvasElementView.recordRemoveMembersAnalytics(_:)(uint64_t a1)
{
  v38 = (*MEMORY[0x1E69E7D40] & *v1);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v3 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v37 - v4;
  v39 = v1;
  v5 = ContainerCanvasElementView.canvas.getter();
  if (v5)
  {
    v6 = v5;
    v7 = a1 + 56;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 56);
    v11 = (v8 + 63) >> 6;
    v47 = v3 + 8;
    v48 = v3 + 16;
    v45 = v53;
    v46 = "ressionType";

    v12 = 0;
    v43 = v3;
    v44 = a1;
    v41 = a1 + 56;
    v42 = v6;
    v40 = v11;
    while (v10)
    {
      v13 = v12;
LABEL_12:
      v15 = v49;
      v14 = v50;
      (*(v3 + 16))(v49, *(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v50);
      type metadata accessor for Analytics();
      inited = swift_initStaticObject();
      WeakTagged_10.tag.getter();
      (*(v3 + 8))(v15, v14);
      v17 = v53[4];
      v18 = v54;
      v19 = swift_allocObject();
      *(v19 + 16) = inited;
      *(v19 + 24) = v17;
      *(v19 + 32) = v18;
      v20 = MEMORY[0x1DA6CCED0](0xD000000000000020, v46 | 0x8000000000000000);
      v21 = swift_allocObject();
      *(v21 + 16) = partial apply for implicit closure #1 in Analytics.recordRemoveCanvasElementEvent(type:);
      *(v21 + 24) = v19;
      v53[2] = partial apply for closure #1 in Analytics.sendEventLazy(key:payload:);
      v53[3] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v53[0] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      v53[1] = &block_descriptor_44_0;
      v22 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v22);

      specialized CanvasMembers.views(in:)(v6, a1);
      v24 = v23;
      v51 = v10;
      if (v23 >> 62)
      {
        v25 = __CocoaSet.count.getter();
        if (v25)
        {
LABEL_14:
          v26 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x1DA6CE0C0](v26, v24);
            }

            else
            {
              if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v27 = *(v24 + 8 * v26 + 32);
            }

            v28 = v27;
            v29 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            v30 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x318))();
            if (v30)
            {
              v31 = *(v30 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
              v32 = v30;

              *(v31 + 48) = 1;
              FormTextFieldAnalytics.recordEvent()();
            }

            ++v26;
            if (v29 == v25)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_14;
        }
      }

LABEL_24:
      v10 = (v51 - 1) & v51;
      v6 = v42;
      v33 = [v42 undoManager];
      if (v33)
      {
        v34 = v33;
        v35 = swift_allocObject();
        *(v35 + 16) = v24;
        v36 = type metadata accessor for ContainerCanvasElementView(0, v38[168], v38[169], v38[170]);
        NSUndoManager.registerUndoWithAutoGrouping<A>(withTarget:handler:)(v39, partial apply for closure #2 in ContainerCanvasElementView.recordRemoveMembersAnalytics(_:), v35, v36);
      }

      else
      {
      }

      v12 = v13;
      v3 = v43;
      a1 = v44;
      v7 = v41;
      v11 = v40;
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_12;
      }
    }

LABEL_30:
    __break(1u);
  }
}

void *specialized ContainerCanvasElementView.indices(of:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v94 = *MEMORY[0x1E69E7D40] & *v1;
  v91 = type metadata accessor for CRKeyPath();
  v83 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v84 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v75 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtMd, &_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtMR);
  v90 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v10 = &v75 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v89 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtSgMd, &_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v75 - v20);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v76 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v75 - v22;
  v23 = *((v4 & v3) + 0x540);
  v93 = v1;
  v24 = *((v4 & v3) + 0x548);
  v80 = v23;
  v79 = v24;
  v85 = type metadata accessor for Capsule();
  v25 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v77 = &v75 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVy9Coherence12CROrderedSetVyAC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGGMd, &_ss18EnumeratedSequenceVy9Coherence12CROrderedSetVyAC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGGMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v78 = &v75 - v28;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE15SharedTagged_10Vy8PaperKit0H13CanvasElementVGG_GMd, &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE15SharedTagged_10Vy8PaperKit0H13CanvasElementVGG_GMR);
  MEMORY[0x1EEE9AC00](v81);
  v98 = &v75 - v29;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathV_Sits5NeverOTg503_s8g14Kit26Containerib86ViewC7indices33_C455AB4540897904C8BABCC4579676DBLL2ofSaySiGAA0D7MembersV_tF9Coherence9jk9V_SitAJ13eF19_10VyAA0sdE0VGXEfU_Tf1cn_n(a1);
  if (*(v30 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMR);
    v31 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC8];
  }

  v100 = v31;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v32, 1, &v100);

  v96 = v100;
  v82 = *(a1 + 16);
  v33 = v77;
  v34 = CanvasElementView.canvasElement.getter(v77);
  MEMORY[0x1EEE9AC00](v34);
  v35 = v79;
  *(&v75 - 4) = v80;
  *(&v75 - 3) = v35;
  *(&v75 - 2) = *(v94 + 1360);
  swift_getKeyPath();
  v36 = v78;
  v37 = v85;
  Capsule.subscript.getter();

  (*(v25 + 8))(v33, v37);
  (*(v76 + 32))(v88, v36, v92);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR, MEMORY[0x1E6995150]);
  v38 = v98;
  dispatch thunk of Sequence.makeIterator()();
  v85 = *(v81 + 36);
  *(v38 + v85) = 0;
  v39 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR, MEMORY[0x1E6995120]);
  v40 = 0;
  v93 = (v89 + 6);
  v94 = v39;
  v41 = (v89 + 4);
  v92 = (v90 + 7);
  v42 = (v90 + 6);
  ++v89;
  v90 = (v83 + 8);
  v81 = v83 + 16;
  v88 = v8;
  v43 = v95;
  v44 = v87;
  do
  {
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR);
      dispatch thunk of IteratorProtocol.next()();
      if ((*v93)(v43, 1, v13) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
        v45 = 1;
      }

      else
      {
        v46 = *v41;
        v47 = v86;
        (*v41)(v86, v43, v13);
        v48 = *(v97 + 48);
        *v10 = v40;
        v46(&v10[v48], v47, v13);
        v49 = __OFADD__(v40++, 1);
        if (v49)
        {
          __break(1u);
          goto LABEL_32;
        }

        *(v98 + v85) = v40;
        v44 = v87;
        outlined init with take of Range<AttributedString.Index>(v10, v87, &_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtMd, &_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtMR);
        v45 = 0;
      }

      v50 = v97;
      (*v92)(v44, v45, 1, v97);
      outlined init with take of Range<AttributedString.Index>(v44, v21, &_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtSgMd, &_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementtSgMR);
      if ((*v42)(v21, 1, v50) == 1)
      {
        goto LABEL_26;
      }

      v51 = *v21;
      (*v41)(v99, v21 + *(v50 + 48), v13);
      MEMORY[0x1DA6CB7A0](v13);
      if (!*(v96 + 16))
      {
        (*v90)(v8, v91);
        goto LABEL_6;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v8);
      v53 = v52;
      v54 = v8;
      v55 = *v90;
      (*v90)(v54, v91);
      if (v53)
      {
        break;
      }

LABEL_6:
      (*v89)(v99, v13);
      v8 = v88;
      v43 = v95;
    }

    MEMORY[0x1DA6CB7A0](v13);
    v56 = v96;
    LODWORD(v80) = swift_isUniquelyReferenced_nonNull_native();
    v100 = v56;
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v84);
    v59 = *(v56 + 16);
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_33;
    }

    if (*(v56 + 24) >= v61)
    {
      if ((v80 & 1) == 0)
      {
        v80 = v58;
        LODWORD(v96) = v57;
        specialized _NativeDictionary.copy()();
        LOBYTE(v57) = v96;
        v58 = v80;
      }
    }

    else
    {
      LODWORD(v96) = v57;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, v80);
      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v84);
      v63 = v57 & 1;
      LOBYTE(v57) = v96;
      if ((v96 & 1) != v63)
      {
        goto LABEL_36;
      }

      v58 = v62;
    }

    v64 = v100;
    v96 = v100;
    if (v57)
    {
      *(*(v100 + 56) + 8 * v58) = v51;
      v55(v84, v91);
      (*v89)(v99, v13);
    }

    else
    {
      v80 = v58;
      *(v100 + 8 * (v58 >> 6) + 64) |= 1 << v58;
      v65 = v91;
      (*(v83 + 16))(*(v64 + 48) + *(v83 + 72) * v58, v84, v91);
      *(*(v96 + 56) + 8 * v80) = v51;
      v55(v84, v65);
      (*v89)(v99, v13);
      v66 = *(v96 + 16);
      v49 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v49)
      {
        goto LABEL_35;
      }

      *(v96 + 16) = v67;
    }

    v68 = v82 - 1;
    v8 = v88;
    v43 = v95;
    if (__OFSUB__(v82, 1))
    {
      goto LABEL_34;
    }

    --v82;
  }

  while (v68);
LABEL_26:
  outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE15SharedTagged_10Vy8PaperKit0H13CanvasElementVGG_GMd, &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE15SharedTagged_10Vy8PaperKit0H13CanvasElementVGG_GMR);
  v69 = v96;
  v70 = *(v96 + 16);
  if (!v70)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v71 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v96 + 16), 0);
  v72 = specialized Sequence._copySequenceContents(initializing:)(&v100, v71 + 4, v70, v69);
  v73 = v100;

  outlined consume of Set<UIColor>.Iterator._Variant(v73);
  if (v72 == v70)
  {

    return v71;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void specialized ContainerCanvasElementView.sendToBack(members:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, __n128 a4)
{
  v8 = ContainerCanvasElementView.canvas.getter();
  if (v8)
  {
    if (*(a1 + 16))
    {
      v13 = v8;
      v14 = specialized ContainerCanvasElementView.indices(of:)(a1);

      a2(&v14);

      v10 = MEMORY[0x1EEE9AC00](v9);
      v11 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v13) + 0x6E8))(0, 1, a3, v10);

      (*((*v11 & *v4) + 0x520))(v12);
    }

    else
    {
    }
  }
}

void specialized ContainerCanvasElementView.convertToHandwriting(members:)(void *a1)
{
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v103 - v9;
  v11 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v113 = (&v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v103 - v13;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v103 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v117 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v103 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v126 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v112 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v103 - v26;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v115 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v130 = &v103 - v29;
  v131 = ContainerCanvasElementView.canvas.getter();
  if (!v131)
  {
    return;
  }

  v110 = v1;
  v30 = ContainerCanvasElementView.pencilKitAttachmentViews()();
  if (!(v30 >> 62))
  {
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_35:

LABEL_36:
    v102 = v131;

    return;
  }

LABEL_34:
  v100 = v30;
  v101 = __CocoaSet.count.getter();
  v30 = v100;
  if (!v101)
  {
    goto LABEL_35;
  }

LABEL_4:
  v107 = v5;
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1DA6CE0C0](0);
  }

  else
  {
    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v31 = *(v30 + 32);
  }

  v111 = v31;

  specialized CanvasMembers.views(in:)(v131, a1);
  v5 = v30;
  v106 = v4;
  v109 = v10;
  v105 = v3;
  v104 = v7;
  v108 = v23;
  if (!(v30 >> 62))
  {
    v10 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_41:

    return;
  }

  v30 = __CocoaSet.count.getter();
  v10 = v30;
  if (!v30)
  {
    goto LABEL_41;
  }

LABEL_9:
  v4 = 0;
  v23 = v5 & 0xC000000000000001;
  v7 = (v5 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v23)
    {
      v30 = MEMORY[0x1DA6CE0C0](v4, v5);
    }

    else
    {
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v30 = *(v5 + 8 * v4 + 32);
    }

    a1 = v30;
    v3 = (v4 + 1);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v32 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x318);
    v33 = v32();
    if (v33)
    {
      break;
    }

    ++v4;
    if (v3 == v10)
    {
      goto LABEL_41;
    }
  }

  v34 = v33;

  v35 = v32();
  if (!v35)
  {

    goto LABEL_36;
  }

  v36 = v35;
  v37 = *((*MEMORY[0x1E69E7D40] & *v35) + 0x88);
  v37();
  v38 = v129;
  v39 = CRAttributedString.attributedString.getter();
  v40 = [v39 string];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (!v41 && v43 == 0xE000000000000000)
  {

    (*(v128 + 8))(v130, v38);
LABEL_24:

    return;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v45 = *(v128 + 8);
  v46 = v45(v130, v38);
  if (v44)
  {
    goto LABEL_24;
  }

  v47 = v115;
  v103 = v36;
  (v37)(v46);
  v48 = v127;
  CRAttributedString.runs.getter();
  v45(v47, v38);
  v49 = v119;
  v50 = v120;
  (*(v119 + 16))(v116, v48, v120);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR, MEMORY[0x1E69952C0]);
  v51 = v118;
  dispatch thunk of Sequence.makeIterator()();
  v52 = v51;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR, MEMORY[0x1E69952C8]);
  v53 = v117;
  dispatch thunk of IteratorProtocol.next()();
  v54 = v123;
  v55 = v124;
  v130 = *(v123 + 48);
  if ((v130)(v53, 1, v124) == 1)
  {
    v56 = *(v49 + 8);
    v56(v52, v50);
    v56(v48, v50);
    v57 = 1;
    v58 = v109;
    v59 = v108;
    v60 = v122;
  }

  else
  {
    v61 = *(v54 + 32);
    v61(v121, v53, v55);
    v62 = *(v49 + 8);
    v62(v52, v50);
    v62(v127, v50);
    v60 = v122;
    v61(v122, v121, v55);
    v57 = 0;
    v58 = v109;
    v59 = v108;
  }

  (*(v54 + 56))(v60, v57, 1, v55);
  if ((v130)(v60, 1, v55) == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  }

  else
  {
    v63 = v112;
    CRAttributedString.Runs.Run.attributes.getter();
    (*(v54 + 8))(v60, v55);
    v64 = (*(v126 + 32))(v125, v63, v59);
    v65 = v103;
    v66 = MEMORY[0x1E69E7D40];
    v67 = (*((*MEMORY[0x1E69E7D40] & *v103) + 0xF0))(v64);
    v128 = v67;
    v69 = v68;
    v127 = v68;
    (*((*v66 & *v65) + 0xB8))(&v138);
    CGAffineTransform.decompose(initialRotation:)(&aBlock, 0.0);
    v70 = aBlock;
    v71 = *&v133;
    v72 = *&v134;
    v73 = v135;
    v74 = v113;
    CRAttributedString.Attributes<>.fontColor.getter(v113);
    v130 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    outlined destroy of Color(v74, type metadata accessor for Color);
    CRAttributedString.Attributes<>.fontSize.getter();
    v76 = vcvtd_n_f64_s64(v75, 1uLL);
    v77 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:7 ascenderHeight:v76 descenderHeight:v76 * 1.8 activeLines:v76 * 1.5];
    Date.init()();
    v129 = MEMORY[0x1DA6CCED0](v67, v69);
    v78 = v77;
    [v77 xHeight];
    v80 = v79;
    v124 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = v107;
    v82 = v104;
    v83 = v58;
    v84 = v106;
    (*(v107 + 16))(v104, v83, v106);
    v85 = (*(v81 + 80) + 104) & ~*(v81 + 80);
    v86 = (v114 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    v89 = v105;
    *(v88 + 16) = *(v105 + 84);
    *(v88 + 32) = *(v89 + 170);
    *(v88 + 40) = v78;
    *(v88 + 48) = v70;
    *(v88 + 56) = v71;
    *(v88 + 64) = v72;
    *(v88 + 72) = v73;
    v90 = v127;
    *(v88 + 80) = v128;
    *(v88 + 88) = v90;
    *(v88 + 96) = v131;
    (*(v81 + 32))(v88 + v85, v82, v84);
    v91 = v103;
    *(v88 + v86) = v103;
    *(v88 + v87) = v124;
    *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v136 = partial apply for closure #3 in ContainerCanvasElementView.convertToHandwriting(members:);
    v137 = v88;
    aBlock = MEMORY[0x1E69E9820];
    v133 = 1107296256;
    *&v134 = COERCE_DOUBLE(thunk for @escaping @callee_guaranteed (@guaranteed [NSValue], @guaranteed [CHReflowableTextToken], @guaranteed [PKDrawing]) -> ());
    v135 = COERCE_DOUBLE(&block_descriptor_34);
    v92 = _Block_copy(&aBlock);
    v93 = v130;
    v94 = v78;
    v95 = v131;
    v96 = v91;
    v97 = a1;

    v98 = v111;
    v99 = v129;
    [v111 convertTextToHandwriting:v129 bounds:0 suggestedHeight:v93 suggestedDrawing:v92 inkColor:v70 completion:{v71, v72, v73, v80}];

    _Block_release(v92);
    (*(v107 + 8))(v109, v106);
    (*(v126 + 8))(v125, v108);
  }
}

uint64_t partial apply for closure #3 in ContainerCanvasElementView.convertToHandwriting(members:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (*(v8 + 80) + 104) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #3 in ContainerCanvasElementView.convertToHandwriting(members:)(a1, a2, a3, *(v3 + 40), *(v3 + 80), *(v3 + 88), *(v3 + 96), v3 + v9, *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + v10), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v12, *(&v12 + 1), v7);
}

double block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

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
  type metadata accessor for SignatureItem(0);
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

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t outlined destroy of Color(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of MagicPaperUsageHandwritingSynthesisEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TextBox(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for ReflowElement();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 168 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 168 * a3;
  v13 = (v7 + 32 + 168 * a2);
  if (result != v13 || result >= v13 + 168 * v12)
  {
    result = memmove(result, v13, 168 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15PageOverlayView_pMd, &_s8PaperKit15PageOverlayView_pMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
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
  type metadata accessor for ReflowElement();
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
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq58PaperKit13ReflowElementC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_8i5Kit13kL7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
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
  type metadata accessor for ReflowElement();
  swift_arrayDestroy();
  v13 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v13)
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
      v14 = v5[2];
      v15 = v14 - v7;
      if (!__OFSUB__(v14, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v20 = __CocoaSet.count.getter();
    v15 = v20 - v7;
    if (!__OFSUB__(v20, v7))
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
        v19 = __CocoaSet.count.getter();
      }

      else
      {
        v19 = v5[2];
      }

      if (!__OFADD__(v19, v11))
      {
        v5[2] = v19 + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (__CocoaSet.count.getter() < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v11 = __CocoaSet.count.getter();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (v12)
  {
    goto LABEL_21;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v15, 1);

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, v11, v4);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v13)
  {
    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
    return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v16 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (v15)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return v16(v8, v7, 1, v5);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
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
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say8PaperKit09AnyCanvasA4ViewCG_TG5TA_0(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

double protocol witness for PaperKitLiveStreamMessenger.send(thumbnail:) in conformance ExtensionViewController.LiveStreamMessenger(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  outlined copy of Data._Representation(a1, a2);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in ExtensionViewController.LiveStreamMessenger.send(_:), v11);

  return result;
}

uint64_t PaperKitLiveStreamMessenger.send(thumbnail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 24))(a1, a2, a3);
}

{
  return PaperKitLiveStreamMessenger.send(thumbnail:)(a1, a2, a3, a4);
}

void PaperKitLiveStreamMessengerLink.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v22 = a2;
  v5 = type metadata accessor for CRAsset();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = dispatch_semaphore_create(0);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v17 = v21;
  *(v16 + 4) = v20;
  *(v16 + 5) = v17;
  (*(v6 + 32))(&v16[v14], v8, v5);
  *&v16[v15] = v22;
  *&v16[(v15 + 15) & 0xFFFFFFFFFFFFFFF8] = v12;
  swift_unknownObjectRetain();
  v18 = v12;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in PaperKitLiveStreamMessengerLink.send(_:), v16);

  OS_dispatch_semaphore.wait()();
}