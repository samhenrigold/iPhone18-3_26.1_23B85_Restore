Swift::Void __swiftcall PaperDocumentView.revertAllChanges()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v28 - v6;
  v32 = type metadata accessor for CapsuleUndoAction();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModelInitialState;
  swift_beginAccess();
  outlined init with copy of Date?(v1 + v18, v10, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v19 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    v29 = *(v12 + 16);
    v29(v14, v1 + v19, v11);
    v20 = v33;
    Capsule.actionUndoingDifference(from:)();
    v30 = *(v12 + 8);
    v30(v14, v11);
    v21 = v20;
    v22 = v32;
    if ((*(v34 + 48))(v21, 1, v32) == 1)
    {
      v30(v17, v11);
      outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
    }

    else
    {
      v28 = v19;
      v23 = v4;
      v24 = v34;
      v25 = v31;
      (*(v34 + 32))(v31, v33, v22);
      (*(v24 + 16))(v23, v25, v22);
      (*(v24 + 56))(v23, 0, 1, v22);
      v26 = v28;
      swift_beginAccess();
      Capsule.apply(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
      swift_endAccess();
      v29(v14, v1 + v26, v11);
      specialized PaperDocumentView.merge<A>(_:from:page:)(v14, 3u, 0);
      v27 = v30;
      v30(v14, v11);
      (*(v34 + 8))(v31, v22);
      v27(v17, v11);
    }
  }
}

id PaperDocumentView.scrollViewForAvoidingKeyboard.getter()
{
  type metadata accessor for PaperDocumentInlineView(0);
  v1 = v0;
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
LABEL_7:

    v7 = v1;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
LABEL_10:
      v10 = v8;

      return v10;
    }

    else
    {
      while (1)
      {
        v9 = [v3 superview];

        if (!v9)
        {
          break;
        }

        v3 = v9;
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          goto LABEL_10;
        }
      }

      return 0;
    }
  }

  else
  {
    v4 = v1;
    while (1)
    {
      v5 = [v4 superview];

      if (!v5)
      {
        break;
      }

      v4 = v5;
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v3 = v6;
        v1 = v4;
        goto LABEL_7;
      }
    }

    v12 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    result = *&v1[v12];
    if (result)
    {
      return [result documentScrollView];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *PaperDocumentView.currentPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  result = *(v1 + v6);
  if (result)
  {
    v8 = [result currentPage];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for PaperKitPDFPage(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
        v12 = v10;
        swift_beginAccess();
        outlined init with copy of Date?(v12 + v11, v5, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);

        v13 = type metadata accessor for PageId(0);
        if (!(*(*(v13 - 8) + 48))(v5, 1, v13))
        {
          outlined init with copy of Date?(&v5[*(v13 + 20)], a1, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
          return outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
      }

      else
      {
      }
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PaperDocumentView.goToPage(_:hint:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v88 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v80 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v78 = &v75 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMR);
  MEMORY[0x1EEE9AC00](v81);
  v89 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v75 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  v27 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v28 = *&v4[v27];
  if (!v28)
  {
    goto LABEL_45;
  }

  v29 = [v28 document];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v83 = v14;
  v87 = v29;
  v76 = v27;
  if ((a3 & 1) == 0)
  {
    v31 = [v29 pageAtIndex_];
    if (v31)
    {
      v32 = v31;
      type metadata accessor for PaperKitPDFPage(0);
      v33 = swift_dynamicCastClass();
      if (v33)
      {
        v34 = v33;
        v35 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
        swift_beginAccess();
        outlined init with copy of Date?(v34 + v35, v17, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        v36 = type metadata accessor for PageId(0);
        if (!(*(*(v36 - 8) + 48))(v17, 1, v36))
        {
          outlined init with copy of Date?(&v17[*(v36 + 20)], v26, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
          v37 = v80;
          goto LABEL_10;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
      }

      v37 = v80;
      (*(v80 + 56))(v26, 1, 1, v90);
LABEL_10:
      v30 = *(v81 + 48);
      outlined init with copy of Date?(v26, v11, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      outlined init with copy of Date?(v88, &v30[v11], &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v38 = v37[6];
      if (v38(v11, 1, v90) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        if (v38(&v30[v11], 1, v90) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
          v30 = v87;
          v39 = v76;
          goto LABEL_39;
        }
      }

      else
      {
        v40 = v85;
        outlined init with copy of Date?(v11, v85, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        if (v38(&v30[v11], 1, v90) != 1)
        {
          goto LABEL_38;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        (v37[1])(v40, v90);
      }

      v30 = v87;
      outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMR);
      goto LABEL_17;
    }
  }

  while (1)
  {
LABEL_17:
    v41 = [v30 pageCount];
    if (v41 < 0)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v75 = v4;
    v42 = v81;
    v26 = v86;
    if (!v41)
    {
      goto LABEL_41;
    }

    v43 = v41;
    v44 = 0;
    v84 = (v80 + 56);
    v11 = (v80 + 48);
    v77 = (v80 + 32);
    v80 += 8;
    v85 = v41;
    while (1)
    {
      v47 = [v30 pageAtIndex_];
      if (!v47)
      {
        goto LABEL_22;
      }

      v48 = v47;
      type metadata accessor for PaperKitPDFPage(0);
      v49 = swift_dynamicCastClass();
      if (v49)
      {
        v50 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
        v51 = v49;
        swift_beginAccess();
        v52 = v51 + v50;
        v53 = v83;
        outlined init with copy of Date?(v52, v83, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        v54 = type metadata accessor for PageId(0);
        if ((*(*(v54 - 8) + 48))(v53, 1, v54))
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
          (*v84)(v26, 1, 1, v90);
        }

        else
        {
          outlined init with copy of Date?(v53 + *(v54 + 20), v26, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
        }
      }

      else
      {
        (*v84)(v26, 1, 1, v90);
      }

      v55 = *(v42 + 48);
      v40 = v89;
      v4 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
      outlined init with copy of Date?(v26, v89, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      outlined init with copy of Date?(v88, v40 + v55, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v56 = *v11;
      if ((*v11)(v40, 1, v90) == 1)
      {
        break;
      }

      v57 = v89;
      v26 = v82;
      outlined init with copy of Date?(v89, v82, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      if (v56(v57 + v55, 1, v90) == 1)
      {

        v45 = v86;
        outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        v46 = v26;
        v26 = v45;
        (*v80)(v46, v90);
LABEL_21:
        v30 = v87;
        outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMR);
        v43 = v85;
        goto LABEL_22;
      }

      v37 = v48;
      v58 = v11;
      v60 = v89;
      v59 = v90;
      v61 = v78;
      (*v77)(v78, v89 + v55, v90);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_3<TaggedPaperPage> and conformance WeakTagged_3<A>, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995170]);
      v79 = dispatch thunk of static Equatable.== infix(_:_:)();
      v62 = v60;
      v40 = v80;
      v63 = *v80;
      (*v80)(v61, v59);
      v11 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v63(v26, v59);
      outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v30 = v87;
      if (v79)
      {
        goto LABEL_36;
      }

      v42 = v81;
      v43 = v85;
      v26 = v86;
      v11 = v58;
LABEL_22:
      if (v43 == ++v44)
      {
        goto LABEL_41;
      }
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    if (v56(v89 + v55, 1, v90) != 1)
    {

      goto LABEL_21;
    }

    v37 = v48;
    outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v30 = v87;
LABEL_36:
    v64 = *&v75[v76];
    v32 = v37;
    if (v64)
    {
LABEL_40:
      v74 = v64;
      [v74 goToPage_];

LABEL_41:
      return;
    }

    __break(1u);
LABEL_38:
    v65 = v37[4];
    v66 = &v30[v11];
    v67 = v37;
    v68 = v78;
    v65(v78, v66, v90);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_3<TaggedPaperPage> and conformance WeakTagged_3<A>, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995170]);
    v69 = dispatch thunk of static Equatable.== infix(_:_:)();
    v70 = v90;
    v71 = v69;
    v72 = v4;
    v73 = v67[1];
    v73(v68, v90);
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v73(v40, v70);
    v4 = v72;
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v30 = v87;
    v39 = v76;
    if (v71)
    {
      break;
    }
  }

LABEL_39:
  v64 = *&v4[v39];
  if (v64)
  {
    goto LABEL_40;
  }

LABEL_46:
  __break(1u);
}

id PaperDocumentView.canGoToNextPage.getter(SEL *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  result = *(v1 + v3);
  if (result)
  {
    return [result *a1];
  }

  __break(1u);
  return result;
}

id PaperDocumentView.goToNextPage()(SEL *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  result = *(v1 + v3);
  if (result)
  {
    return [result *a1];
  }

  __break(1u);
  return result;
}

void *PaperDocumentView.page(for:nearest:)@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21[-v10];
  v12 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  result = *(v4 + v12);
  if (result)
  {
    v14 = [result pageForPoint:a1 & 1 nearest:{a3, a4}];
    if (!v14)
    {
LABEL_7:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
      return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
    }

    v15 = v14;
    type metadata accessor for PaperKitPDFPage(0);
    v16 = swift_dynamicCastClass();
    if (!v16)
    {

      goto LABEL_7;
    }

    v17 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
    v18 = v16;
    swift_beginAccess();
    outlined init with copy of Date?(v18 + v17, v11, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);

    v19 = type metadata accessor for PageId(0);
    if ((*(*(v19 - 8) + 48))(v11, 1, v19))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
      goto LABEL_7;
    }

    outlined init with copy of Date?(&v11[*(v19 + 20)], a2, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PaperDocumentView.convert(_:to:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v40 - v10;
  v12 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v13 = *(v4 + v12);
  v43 = a1;

  specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.canvas(for:), v42, v13);
  v15 = v14;

  if (v15)
  {
    v16 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    (*(v9 + 16))(v11, v4 + v16, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
    type metadata accessor for PaperDocument(0);
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
    WeakTagged_3.subscript.getter();
    (*(v9 + 8))(v11, v8);
    v17 = v45;
    if (!v45)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s8PaperKit0A4Page_pSgMd, &_s8PaperKit0A4Page_pSgMR);
      return;
    }

    v18 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v19 = (*(v18 + 56))(v17, v18);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0(v44);
    v26 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v27 = *(v4 + v26);
    if (!v27)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v28 = [v27 viewForPage_];
    if (v28)
    {
      v29 = v28;
      v41 = v19;
      v30 = *(v4 + v26);
      if (v30)
      {
        [v30 convertPoint:v15 toPage:{a2, a3}];
        v32 = v31;
        v40[2] = v33;
        [v29 bounds];
        x = v47.origin.x;
        y = v47.origin.y;
        width = v47.size.width;
        height = v47.size.height;
        v38 = v32 - CGRectGetMinX(v47);
        v48.origin.x = x;
        v48.origin.y = y;
        v48.size.width = width;
        v48.size.height = height;
        v40[1] = v38 / CGRectGetWidth(v48);
        v49.origin.x = x;
        v49.origin.y = y;
        v49.size.width = width;
        v49.size.height = height;
        CGRectGetMinY(v49);
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = height;
        CGRectGetHeight(v50);
        v39 = v41;
        v51.origin.x = v41;
        v51.origin.y = v21;
        v51.size.width = v23;
        v51.size.height = v25;
        CGRectGetMinX(v51);
        v52.origin.x = v39;
        v52.origin.y = v21;
        v52.size.width = v23;
        v52.size.height = v25;
        CGRectGetWidth(v52);
        v53.origin.x = v39;
        v53.origin.y = v21;
        v53.size.width = v23;
        v53.size.height = v25;
        CGRectGetMinY(v53);
        v54.origin.x = v39;
        v54.origin.y = v21;
        v54.size.width = v23;
        v54.size.height = v25;
        CGRectGetHeight(v54);

        return;
      }

      goto LABEL_11;
    }
  }
}

void PaperDocumentView.convert(_:from:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - v10;
  v12 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v13 = *(v4 + v12);
  v51 = a1;

  specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), v50, v13);
  v15 = v14;

  if (v15)
  {
    v16 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    (*(v9 + 16))(v11, v4 + v16, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
    type metadata accessor for PaperDocument(0);
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
    WeakTagged_3.subscript.getter();
    (*(v9 + 8))(v11, v8);
    v17 = v53;
    if (!v53)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s8PaperKit0A4Page_pSgMd, &_s8PaperKit0A4Page_pSgMR);
      return;
    }

    v18 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v19 = (*(v18 + 56))(v17, v18);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0(v52);
    v26 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v27 = *(v4 + v26);
    if (!v27)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v28 = [v27 viewForPage_];
    if (v28)
    {
      v29 = v28;
      v48 = a3;
      v49 = a2;
      [v28 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v55.origin.x = v19;
      v55.origin.y = v21;
      v55.size.width = v23;
      v55.size.height = v25;
      MinX = CGRectGetMinX(v55);
      v56.origin.x = v19;
      v56.origin.y = v21;
      v56.size.width = v23;
      v56.size.height = v25;
      Width = CGRectGetWidth(v56);
      v57.origin.x = v19;
      v57.origin.y = v21;
      v57.size.width = v23;
      v57.size.height = v25;
      MinY = CGRectGetMinY(v57);
      v58.origin.x = v19;
      v58.origin.y = v21;
      v58.size.width = v23;
      v58.size.height = v25;
      Height = CGRectGetHeight(v58);
      v59.origin.x = v31;
      v59.origin.y = v33;
      v59.size.width = v35;
      v59.size.height = v37;
      v39 = CGRectGetMinX(v59);
      v60.origin.x = v31;
      v60.origin.y = v33;
      v60.size.width = v35;
      v60.size.height = v37;
      v40 = CGRectGetWidth(v60);
      v61.origin.x = v31;
      v61.origin.y = v33;
      v61.size.width = v35;
      v61.size.height = v37;
      v41 = CGRectGetMinY(v61);
      v62.origin.x = v31;
      v62.origin.y = v33;
      v62.size.width = v35;
      v62.size.height = v37;
      v42 = CGRectGetHeight(v62);
      v43 = *(v4 + v26);
      if (v43)
      {
        [v43 convertPoint:v15 fromPage:{v39 + (v49 - MinX) / Width * v40, v41 + (1.0 - (v48 - MinY) / Height) * v42}];

        return;
      }

      goto LABEL_11;
    }
  }
}

uint64_t closure #1 in PaperDocumentView.convert(_:to:)(uint64_t *a1, uint64_t a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v29 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMR);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = *a1;
  v19 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined init with copy of Date?(v18 + v19, v9, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  v20 = type metadata accessor for PageId(0);
  if ((*(*(v20 - 8) + 48))(v9, 1, v20))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
    v21 = v31;
    (*(v31 + 56))(v17, 1, 1, v3);
  }

  else
  {
    outlined init with copy of Date?(&v9[*(v20 + 20)], v17, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
    v21 = v31;
  }

  (*(v21 + 16))(v14, v32, v3);
  (*(v21 + 56))(v14, 0, 1, v3);
  v22 = *(v30 + 48);
  outlined init with copy of Date?(v17, v6, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  outlined init with copy of Date?(v14, &v6[v22], &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v23 = *(v21 + 48);
  if (v23(v6, 1, v3) != 1)
  {
    outlined init with copy of Date?(v6, v33, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    if (v23(&v6[v22], 1, v3) != 1)
    {
      v25 = v29;
      (*(v21 + 32))(v29, &v6[v22], v3);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_3<TaggedPaperPage> and conformance WeakTagged_3<A>, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995170]);
      v26 = v33;
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v21 + 8);
      v27(v25, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v27(v26, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      return v24 & 1;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    (*(v21 + 8))(v33, v3);
    goto LABEL_9;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  if (v23(&v6[v22], 1, v3) != 1)
  {
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSg_AHtMR);
    v24 = 0;
    return v24 & 1;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v24 = 1;
  return v24 & 1;
}

uint64_t PaperDocumentView.addCanvasElement<A>(_:in:setSelected:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5, char *a6)
{
  v7 = v6;
  v154 = a6;
  v145 = a5;
  ObjectType = a4;
  v139 = a3;
  v143 = a2;
  v134 = a1;
  v144 = 0;
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v125 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v124 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v123 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v137 = &v123 - v14;
  v148 = type metadata accessor for CapsuleUndoAction();
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v129 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v133 = &v123 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v123 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v152 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v123 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v126 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v132 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v123 - v30;
  v127 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v123 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v138 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v123 - v39;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v142 = &v123 - v43;
  (*(v19 + 56))(v35, 1, 1, v18, v42);
  v44 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v155 = v22;
  v45 = *(v22 + 16);
  v151 = v44;
  v146 = v26;
  v153 = v21;
  v149 = v45;
  v150 = v22 + 16;
  v45(v26, &v7[v44], v21);
  v136 = v40;
  closure #1 in PaperDocumentView.addCanvasElement<A>(_:in:setSelected:)(v7);
  v145 = v35;
  outlined init with copy of Date?(v35, v31, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v46 = (*(v19 + 48))(v31, 1, v18);
  v154 = v7;
  if (v46 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  }

  else
  {
    v47 = v130;
    (*(v19 + 32))(v130, v31, v18);
    v48 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    v49 = swift_beginAccess();
    v50 = *&v7[v48];
    MEMORY[0x1EEE9AC00](v49);
    *(&v123 - 2) = v47;

    v51 = v144;
    specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), (&v123 - 4), v50);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v144 = v51;

    if (v53)
    {

      ObjectType = swift_getObjectType();
      v58 = v152;
      v59 = &v7[v151];
      v60 = v153;
      v149(v152, v59, v153);
      v160[0] = 3;
      v61 = *(v57 + 88);
      v62 = type metadata accessor for PaperDocument(0);
      v63 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
      v61(v58, v160, v62, v63, ObjectType, v57);

      (*(v155 + 8))(v58, v60);
    }

    (*(v19 + 8))(v47, v18);
  }

  v65 = v154;
  v64 = v155;
  v66 = v152;
  v67 = v153;
  v149(v152, &v154[v151], v153);
  v68 = v137;
  v69 = v146;
  Capsule.actionUndoingDifference(from:)();
  v72 = *(v64 + 8);
  v70 = v64 + 8;
  v71 = v72;
  v73 = v66;
  v74 = v68;
  (v72)(v73, v67);
  v75 = v147;
  v76 = v68;
  v77 = v148;
  if ((*(v147 + 48))(v76, 1, v148) == 1)
  {
    (v71)(v69, v67);
    outlined destroy of StocksKitCurrencyCache.Provider?(v145, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v78 = &_s9Coherence17CapsuleUndoActionVSgMd;
    v79 = &_s9Coherence17CapsuleUndoActionVSgMR;
    v80 = v74;
  }

  else
  {
    v81 = v133;
    v155 = *(v75 + 32);
    (v155)();
    PaperDocumentView.didChange()();
    v82 = [v65 undoManager];
    if (v82)
    {
      v83 = v82;
      outlined init with copy of Date?(v145, v132, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v84 = v129;
      (*(v75 + 16))(v129, v81, v77);
      v85 = (*(v126 + 80) + 18) & ~*(v126 + 80);
      v86 = (v127 + *(v75 + 80) + v85) & ~*(v75 + 80);
      v87 = swift_allocObject();
      v137 = v71;
      v88 = v87;
      *(v87 + 16) = 0;
      v89 = v87 + v85;
      v90 = v141;
      v91 = v140;
      v65 = v154;
      outlined init with take of Range<AttributedString.Index>(v132, v89, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v92 = v84;
      v93 = v148;
      (v155)(v88 + v86, v92, v148);
      type metadata accessor for PaperDocumentView(0);
      NSUndoManager.registerUndo<A>(withTarget:handler:)();

      v71 = v137;

      (*(v147 + 8))(v133, v93);
      (v71)(v146, v67);
      outlined destroy of StocksKitCurrencyCache.Provider?(v145, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v94 = v142;
      goto LABEL_12;
    }

    (*(v75 + 8))(v81, v77);
    (v71)(v69, v67);
    v78 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
    v79 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
    v80 = v145;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v80, v78, v79);
  v94 = v142;
  v91 = v140;
  v90 = v141;
LABEL_12:
  outlined init with take of Range<AttributedString.Index>(v136, v94, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  v95 = v138;
  if (v139)
  {
    outlined init with copy of Date?(v94, v138, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    if ((*(v91 + 48))(v95, 1, v90) != 1)
    {
      v137 = v71;
      v155 = v70;
      v96 = v91;
      (*(v91 + 32))(v131, v95, v90);
      v97 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
      v98 = swift_beginAccess();
      v99 = *&v65[v97];
      MEMORY[0x1EEE9AC00](v98);
      *(&v123 - 2) = v143;

      specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), (&v123 - 4), v99);
      v101 = v100;
      v103 = v102;

      if (v101)
      {

        type metadata accessor for AnyCanvas(0);
        v104 = swift_dynamicCastClass();
        if (v104)
        {
          v105 = v104;
          v106 = v152;
          v107 = &v154[v151];
          v154 = v103;
          v108 = v153;
          v149(v152, v107, v153);
          LOBYTE(v158) = 3;
          v109 = MEMORY[0x1E69E7D40];
          v110 = *((*MEMORY[0x1E69E7D40] & *v105) + 0x7D8);
          v111 = type metadata accessor for PaperDocument(0);
          v112 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
          v110(v106, &v158, v111, v112);
          LOBYTE(v158) = 3;
          (*((*v109 & *v105) + 0x7B0))(&v158);
          (v137)(v106, v108);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMR);
          v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
          v114 = *(v113 - 8);
          v115 = (*(v114 + 80) + 32) & ~*(v114 + 80);
          v116 = swift_allocObject();
          *(v116 + 16) = xmmword_1D4058CF0;
          v117 = v124;
          v118 = v131;
          (*(v96 + 16))(v124, v131, v90);
          WeakTagged_10.tag.getter();
          v156 = v158;
          v157 = v159;
          MEMORY[0x1DA6CB7A0](v90);
          lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
          WeakTagged_10.init(_:id:)();
          v119 = *(v96 + 8);
          v119(v117, v90);
          v120 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9Coherence13WeakTagged_10Vy8PaperKit0G13CanvasElementVG_Tt0g5Tf4g_n(v116);
          swift_setDeallocating();
          v121 = v116 + v115;
          v94 = v142;
          (*(v114 + 8))(v121, v113);
          swift_deallocClassInstance();
          AnyCanvas.selection.setter(v120, MEMORY[0x1E69E7CD0], 6, 0);

          v119(v118, v90);
          return outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
        }
      }

      (*(v91 + 8))(v131, v90);
      return outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v94 = v95;
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
}

double closure #1 in PaperDocumentView.addCanvasElement<A>(_:in:setSelected:)(uint64_t a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  return result;
}

uint64_t closure #1 in closure #1 in PaperDocumentView.addCanvasElement<A>(_:in:setSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v11 = WeakTagged_3.subscript.modify();
  v12 = *(v10 + 24);
  if (v12)
  {
    v13 = *(v10 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v10, *(v10 + 24));
    v18 = *(v13 + 176);
    v14 = type metadata accessor for PaperDocument(0);
    v15 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
    v18(a2, a1, v21, v14, a4, a5, v15, v12, v13);
    return v11(v20, 0);
  }

  else
  {
    v11(v20, 0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
    return (*(*(v17 - 8) + 56))(a6, 1, 1, v17);
  }
}

uint64_t PaperDocumentView.canvas(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v10[2] = a1;

  specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), v10, v4);
  v6 = v5;
  v8 = v7;

  if (v6)
  {

    type metadata accessor for AnyCanvas(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

Swift::Bool __swiftcall PaperDocumentView.isLiveEditing()()
{
  v1 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v2 + 56) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 80);
    v16 = v12;
    LOBYTE(v13) = v15(ObjectType, v13);

    if (v13)
    {
      v17 = 1;
LABEL_13:

      return v17;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

double PaperDocumentView.changedPagesTask.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for PaperDocumentView.changedPagesTask : PaperDocumentView@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);

  return result;
}

void PaperDocumentView._liveStreamMessenger.didset(__n128 a1)
{
  v2 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for CRKeyPath();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = (&v47 - v7);
  v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
  v61 = v9;
  v62 = v1;
  v15 = v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__liveStreamMessenger;

  swift_beginAccess();
  v16 = 0;
  v17 = (v11 + 63) >> 6;
  v59 = v15;
  v60 = v14;
  if (v13)
  {
    while (1)
    {
      v18 = v16;
LABEL_9:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = *(v61 + 56) + ((v18 << 10) | (16 * v19));
      v21 = *v20;
      v22 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      swift_getKeyPath();
      v66 = v62;
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
      v23 = v21;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = v59;
      Strong = swift_unknownObjectWeakLoadStrong();
      (*(v22 + 128))(Strong, *(v15 + 8), ObjectType, v22);

      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return;
    }

    if (v18 >= v17)
    {
      break;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  swift_getKeyPath();
  v25 = v62;
  v66 = v62;
  v26 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v47 = *(v15 + 8);
    v28 = v47;
    v61 = v27;
    v59 = swift_getObjectType();
    v48 = *(v25 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_context);
    v29 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    v30 = v51;
    v31 = *(v51 + 16);
    v32 = v49;
    v33 = v52;
    v31(v49, v25 + v29, v52);
    ObjectType = v26;
    v34 = v53;
    Capsule.rootID.getter();
    v51 = *(v30 + 8);
    (v51)(v32, v33);
    v35 = v50;
    v31(v50, v25 + v29, v33);
    v37 = v57;
    v36 = v58;
    v38 = v55;
    (*(v57 + 104))(v55, *MEMORY[0x1E6995390], v58);
    v39 = type metadata accessor for PaperDocument(0);
    v40 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
    v46 = v28;
    v41 = v59;
    v49 = PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(v48, v34, v35, v38, 0x636F447265706150, 0xED0000746E656D75, v59, v39, v46, v40);
    (*(v37 + 8))(v38, v36);
    (v51)(v35, v33);
    (*(v54 + 8))(v34, v56);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = type metadata accessor for PaperDocumentView(0);
    PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(v49, v25, 6516548, 0xE300000000000000, partial apply for closure #1 in PaperDocumentView._liveStreamMessenger.didset, v42, v41, v43, v47, &protocol witness table for PaperDocumentView);

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v64 = v25;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v45 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v45);
    v65 = v25;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void closure #1 in PaperDocumentView._liveStreamMessenger.didset(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    specialized PaperDocumentView.merge<A>(_:from:page:)(a1, 1u, 0);
  }
}

void (*PaperDocumentView._liveStreamMessenger.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__liveStreamMessenger;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentView._liveStreamMessenger.modify;
}

void PaperDocumentView._pageOverlayViewProvider.modify(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
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
    v6 = swift_unknownObjectRelease();
    a3(v6);
  }

  free(v5);
}

uint64_t closure #1 in PaperDocumentView.pageOverlayViewProvider.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v7 = a1 + *a4;
  swift_beginAccess();
  *(v7 + 8) = a3;
  v8 = swift_unknownObjectWeakAssign();
  return a5(v8);
}

uint64_t (*PaperDocumentView.liveStreamMessenger.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperDocumentView._liveStreamMessenger.modify(v4);
  return PaperDocumentView.liveStreamMessenger.modify;
}

void PaperDocumentView._participantDetailsDataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__participantDetailsDataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  v22 = v4;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v2 + v5) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v23 = *(v2 + v5);

  v14 = 0;
  while (v12)
  {
    v15 = v14;
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(v23 + 56) + ((v15 << 10) | (16 * v16));
    v18 = *v17;
    v19 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    v20 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    (*(v19 + 152))(Strong, *(v22 + 8), ObjectType, v19);
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

      swift_unknownObjectRelease();
      return;
    }

    v12 = *(v8 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void (*PaperDocumentView._participantDetailsDataSource.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__participantDetailsDataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperDocumentView._participantDetailsDataSource.modify;
}

void PaperDocumentView._participantDetailsDataSource.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
LABEL_14:

    free(v3);
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    v23 = v3;
    swift_beginAccess();
    v6 = *(v4 + v5);
    v7 = v6 + 64;
    v8 = -1;
    v9 = -1 << *(v6 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & *(v6 + 64);
    v11 = (63 - v9) >> 6;
    v22 = v6;

    v12 = 0;
    while (v10)
    {
      v13 = v12;
LABEL_11:
      v14 = v23[5];
      v15 = v14 + v23[6];
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = *(v22 + 56) + ((v13 << 10) | (16 * v16));
      v18 = *v17;
      v19 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      swift_getKeyPath();
      v23[3] = v14;
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
      v20 = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      Strong = swift_unknownObjectWeakLoadStrong();
      (*(v19 + 152))(Strong, *(v15 + 8), ObjectType, v19);
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

        v3 = v23;
        goto LABEL_14;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t (*PaperDocumentView.participantDetailsDataSource.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperDocumentView._participantDetailsDataSource.modify(v4);
  return PaperDocumentView.participantDetailsDataSource.modify;
}

Swift::Void __swiftcall PaperDocumentView.participantDetailsDidChange()()
{
  v1 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(v2 + 56) + ((v8 << 10) | (16 * v9));
    v11 = *v10;
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 112);
    v15 = v11;
    v14(ObjectType, v12);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t (*PaperDocumentView._showParticipantCursors.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return PaperDocumentView._showParticipantCursors.modify;
}

void PaperDocumentView._showParticipantCursors.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
LABEL_13:

    free(v3);
  }

  else
  {
    v4 = v3[4];
    v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v6 = *(v4 + v5);
    v7 = v6 + 64;
    v8 = -1;
    v9 = -1 << *(v6 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & *(v6 + 64);
    v11 = (63 - v9) >> 6;
    v20 = v6;

    v12 = 0;
    while (v10)
    {
      v13 = v12;
LABEL_10:
      v14 = v3[4];
      v22 = v3[5];
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(v20 + 56) + ((v13 << 10) | (16 * v15));
      v17 = *v16;
      v18 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      swift_getKeyPath();
      v3[3] = v14;
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
      v19 = v17;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      (*(v18 + 176))(*(v14 + v22), ObjectType, v18);
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

        goto LABEL_13;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t PaperDocumentView.canEditVellumOpacity.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void closure #1 in PaperDocumentView.showParticipantCursors.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
  swift_beginAccess();
  v20 = v4;
  *(a1 + v4) = a2;
  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a1 + v5) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v21 = a1;
  v22 = *(a1 + v5);

  v14 = 0;
  while (v12)
  {
    v15 = v14;
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(v22 + 56) + ((v15 << 10) | (16 * v16));
    v18 = *v17;
    v23 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    v19 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    (*(v23 + 176))(*(v21 + v20), ObjectType);
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

    v12 = *(v8 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t (*PaperDocumentView.showParticipantCursors.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperDocumentView._showParticipantCursors.modify(v4);
  return PaperDocumentView.showParticipantCursors.modify;
}

void (*PaperDocumentView._textualContextProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__textualContextProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SynapseLinkItem.delegate.modify;
}

uint64_t PaperDocumentView.pageOverlayViewProvider.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

double PaperDocumentView.pageOverlayViewProvider.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();
  return result;
}

uint64_t closure #1 in PaperDocumentView.delegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a1 + *a4;
  swift_beginAccess();
  *(v5 + 8) = a3;
  return swift_unknownObjectWeakAssign();
}

uint64_t (*PaperDocumentView.textualContextProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperDocumentView._textualContextProvider.modify(v4);
  return PaperDocumentView.textualContextProvider.modify;
}

void PaperDocumentView.canvasSelectionDidChange(_:)(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v2)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v4 = v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  if (*(*v4 + 16) || (!*(*(v4 + 8) + 16) ? (v5 = *(v4 + 24) == 0) : (v5 = 0), !v5))
  {
    v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v7 = *(v1 + v6);
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v13 = MEMORY[0x1E69E7CD0];
    while (v10)
    {
LABEL_15:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v7 + 56) + ((v12 << 10) | (16 * v15)));
      if (v16 != a1)
      {
        type metadata accessor for AnyCanvas(0);
        if (swift_dynamicCastClass())
        {
          v17 = v16;
          AnyCanvas.selection.setter(v13, v13, 6, 0);
        }
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return;
      }

      v10 = *(v7 + 64 + 8 * v14);
      ++v12;
      if (v10)
      {
        v12 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_21;
  }
}

double PaperDocumentView.canvasDrawingWillChange(_:)(uint64_t a1)
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 64))(v1, a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return result;
}

void PaperDocumentView.pdfSelectionChanged(_:)()
{
  v1 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CD0];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v2 + 56) + ((v7 << 10) | (16 * v10)));
    type metadata accessor for AnyCanvas(0);
    if (swift_dynamicCastClass())
    {
      v12 = v11;
      AnyCanvas.selection.setter(v8, v8, 6, 0);
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void PaperDocumentView.annotationPropertiesChanged(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v125 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v138 = &v125 - v11;
  v140 = type metadata accessor for CapsuleUndoAction();
  v139 = *(v140 - 8);
  v12 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v136 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v143 = &v125 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v144 = *(v142 - 1);
  MEMORY[0x1EEE9AC00](v142);
  v137 = &v125 - v15;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v148 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v141 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v145 = &v125 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v134 = *(v19 - 8);
  v20 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v135 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v125 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v147 = (&v125 - v25);
  if (![objc_opt_self() isMainThread])
  {
    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v9, 1, 1, v43);
    (*(v5 + 16))(&v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    type metadata accessor for MainActor();
    v44 = v2;
    v45 = static MainActor.shared.getter();
    v46 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v47 = swift_allocObject();
    v48 = MEMORY[0x1E69E85E0];
    *(v47 + 2) = v45;
    *(v47 + 3) = v48;
    *(v47 + 4) = v44;
    (*(v5 + 32))(&v47[v46], &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in PaperDocumentView.annotationPropertiesChanged(_:), v47);

    return;
  }

  if (*&v2[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount] <= 0)
  {
    v26 = v2;
    v27 = Notification.userInfo.getter();
    if (v27)
    {
      v28 = v27;
      v149 = 0x697461746F6E6E61;
      v150 = 0xEA00000000006E6FLL;
      AnyHashable.init<A>(_:)();
      if (*(v28 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v151), (v30 & 1) != 0))
      {
        outlined init with copy of Any(*(v28 + 56) + 32 * v29, &v152);
        outlined destroy of AnyHashable(v151);

        if (!*(&v153 + 1))
        {
          goto LABEL_21;
        }

        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v31 = v151[0];
        v32 = Notification.userInfo.getter();
        if (v32)
        {
          v33 = v32;
          v149 = 7955819;
          v150 = 0xE300000000000000;
          AnyHashable.init<A>(_:)();
          if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v151), (v35 & 1) != 0))
          {
            outlined init with copy of Any(*(v33 + 56) + 32 * v34, &v152);
            outlined destroy of AnyHashable(v151);

            if (*(&v153 + 1))
            {
              if ((swift_dynamicCast() & 1) == 0)
              {

                return;
              }

              v36 = MEMORY[0x1DA6CCED0](v151[0], v151[1]);

              v133 = v36;
              v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = v38;
              if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
              {
                goto LABEL_15;
              }

              v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v41 = v26;
              v42 = v148;
              if (v52)
              {

                goto LABEL_36;
              }

              v132 = v26;
              v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v55 = v54;
              if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
              {

LABEL_35:
                v41 = v132;
                goto LABEL_36;
              }

              v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v57)
              {

                goto LABEL_35;
              }

              v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v111 = v110;
              if (v109 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v111 != v112)
              {
                v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v113)
                {
                  goto LABEL_55;
                }

                v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v116 = v115;
                if (v114 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v116 != v117)
                {
                  v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v118 & 1) == 0)
                  {
                    v119 = v133;
                    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v122 = v121;

                    if (v120 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v122 != v123)
                    {
                      v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      v41 = v26;
                      v42 = v148;
                      if ((v124 & 1) == 0)
                      {

                        return;
                      }

LABEL_36:
                      v58 = [v31 fieldName];
                      if (v58)
                      {
                        v59 = v58;
                        v60 = v41;
                        v61 = *&v41[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument];
                        v62 = [v61 annotationsForFieldName_];

                        v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
                        v64 = specialized _arrayConditionalCast<A, B>(_:)(v63);
                        v41 = v60;
                        v42 = v148;

                        if (v64)
                        {
                          if (v64 >> 62)
                          {
                            if (__CocoaSet.count.getter())
                            {
                              goto LABEL_42;
                            }
                          }

                          else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
LABEL_42:
                            v129 = v31;
                            v66 = v142;
                            v144[7](v147, 1, 1, v142);
                            v67 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
                            swift_beginAccess();
                            v68 = *(v42 + 16);
                            v131 = v42 + 16;
                            v130 = v68;
                            v69 = (v68)(v145, &v41[v67], v146);
                            v128 = &v125;
                            MEMORY[0x1EEE9AC00](v69);
                            *(&v125 - 2) = v64;
                            swift_beginAccess();
                            v132 = v67;
                            v70 = v66;
                            Capsule.callAsFunction<A>(_:)();
                            swift_endAccess();
                            v71 = v144;

                            outlined init with copy of Date?(v147, v23, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
                            if ((v71[6])(v23, 1, v66) == 1)
                            {
                              outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
                              v72 = v26;
                              v73 = v138;
                            }

                            else
                            {
                              v74 = v137;
                              v71[4](v137, v23, v70);
                              v75 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
                              v72 = v26;
                              v76 = swift_beginAccess();
                              v77 = *&v26[v75];
                              MEMORY[0x1EEE9AC00](v76);
                              *(&v125 - 2) = v74;

                              specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), (&v125 - 4), v77);
                              v79 = v78;
                              v81 = v80;
                              v128 = v82;

                              v73 = v138;
                              if (v79)
                              {

                                ObjectType = swift_getObjectType();
                                v83 = v141;
                                v130(v141, &v132[v26], v146);
                                LOBYTE(v149) = 3;
                                v84 = v128;
                                v126 = v128[11];
                                v85 = type metadata accessor for PaperDocument(0);
                                v86 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
                                v126(v83, &v149, v85, v86, ObjectType, v84);
                                v72 = v26;

                                v70 = v142;
                                (*(v148 + 8))(v83, v146);
                              }

                              (v144[1])(v137, v70);
                            }

                            v87 = &v132[v72];
                            v88 = v141;
                            v89 = v146;
                            v130(v141, v87, v146);
                            Capsule.actionUndoingDifference(from:)();
                            v90 = v148 + 8;
                            v91 = *(v148 + 8);
                            v91(v88, v89);
                            v92 = v139;
                            v93 = v140;
                            v94 = (*(v139 + 48))(v73, 1, v140);
                            v95 = v143;
                            if (v94 == 1)
                            {

                              v91(v145, v89);
                              outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
                              v49 = &_s9Coherence17CapsuleUndoActionVSgMd;
                              v50 = &_s9Coherence17CapsuleUndoActionVSgMR;
                              v51 = v73;
                            }

                            else
                            {
                              v144 = v91;
                              v148 = v90;
                              v96 = *(v92 + 32);
                              v96(v143, v73, v93);
                              v97 = v26;
                              PaperDocumentView.didChange()();
                              v98 = [v26 undoManager];
                              v99 = v95;
                              if (v98)
                              {
                                v100 = v98;
                                v101 = v135;
                                outlined init with copy of Date?(v147, v135, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
                                v102 = *(v92 + 16);
                                v132 = v97;
                                v103 = v136;
                                v102(v136, v99, v93);
                                v104 = (*(v134 + 80) + 18) & ~*(v134 + 80);
                                v105 = *(v92 + 80);
                                v142 = v96;
                                v106 = v93;
                                v107 = (v20 + v105 + v104) & ~v105;
                                v108 = swift_allocObject();
                                *(v108 + 16) = 256;
                                outlined init with take of Range<AttributedString.Index>(v101, v108 + v104, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
                                (v142)(v108 + v107, v103, v106);
                                type metadata accessor for PaperDocumentView(0);
                                NSUndoManager.registerUndo<A>(withTarget:handler:)();

                                (*(v92 + 8))(v143, v106);
                                (v144)(v145, v146);
                                v51 = v147;
                                v49 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
                                v50 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
                              }

                              else
                              {

                                (*(v92 + 8))(v95, v93);
                                (v144)(v145, v146);
                                v49 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
                                v50 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
                                v51 = v147;
                              }
                            }

                            goto LABEL_22;
                          }
                        }
                      }

                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                      v64 = swift_allocObject();
                      *(v64 + 16) = xmmword_1D405CEB0;
                      *(v64 + 32) = v31;
                      v65 = v31;
                      goto LABEL_42;
                    }

                    goto LABEL_16;
                  }

LABEL_55:

                  goto LABEL_17;
                }
              }

LABEL_15:

LABEL_16:

LABEL_17:
              v41 = v26;
              v42 = v148;
              goto LABEL_36;
            }
          }

          else
          {

            outlined destroy of AnyHashable(v151);
            v152 = 0u;
            v153 = 0u;
          }

LABEL_21:
          v49 = &_sypSgMd;
          v50 = &_sypSgMR;
          v51 = &v152;
LABEL_22:
          outlined destroy of StocksKitCurrencyCache.Provider?(v51, v49, v50);
          return;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v151);
      }
    }

    v152 = 0u;
    v153 = 0u;
    goto LABEL_21;
  }
}

uint64_t closure #1 in PaperDocumentView.annotationPropertiesChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentView.annotationPropertiesChanged(_:), v7, v6);
}

uint64_t closure #1 in PaperDocumentView.annotationPropertiesChanged(_:)()
{
  v1 = *(v0 + 24);

  PaperDocumentView.annotationPropertiesChanged(_:)(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

void closure #1 in closure #2 in PaperDocumentView.annotationPropertiesChanged(_:)(uint64_t a1, unint64_t a2)
{
  v34 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR);
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v36 = &v27 - v13;
  if (a2 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  if (v14 >= 1)
  {
    v15 = 0;
    v40 = a2 & 0xC000000000000001;
    v16 = (v9 + 48);
    v30 = (v9 + 16);
    v31 = (v9 + 32);
    v28 = (v9 + 8);
    v29 = (v3 + 8);
    v35 = (v9 + 56);
    v32 = v14;
    while (1)
    {
      if (v40)
      {
        v17 = MEMORY[0x1DA6CE0C0](v15, a2, v12);
      }

      else
      {
        v17 = *(a2 + 8 * v15 + 32);
      }

      v18 = v17;
      type metadata accessor for CanvasElementPDFAnnotation(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
        v21 = v19;
        swift_beginAccess();
        outlined init with copy of Date?(v21 + v20, v7, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
        if ((*v16)(v7, 1, v8) != 1)
        {
          v22 = a2;
          v23 = v36;
          (*v31)(v36, v7, v8);
          (*v30)(v33, v23, v8);
          v24 = type metadata accessor for PDFAnnotationElement(0);
          _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement, &protocol conformance descriptor for PDFAnnotationElement);
          WeakRef.init(id:)();
          v25 = WeakRef.subscript.modify();
          if (!(*(*(v24 - 8) + 48))(v26, 1, v24))
          {
            PDFAnnotationElement.updateFrom(_:)(v18);
          }

          v25(v39, 0);

          (*v29)(v37, v38);
          (*v28)(v36, v8);
          a2 = v22;
          v14 = v32;
          goto LABEL_7;
        }
      }

      else
      {

        (*v35)(v7, 1, 1, v8);
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
LABEL_7:
      if (v14 == ++v15)
      {
        return;
      }
    }
  }

  __break(1u);
}

void PaperDocumentView.annotationsChanged(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  if (![objc_opt_self() isMainThread])
  {
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    type metadata accessor for MainActor();
    v20 = v2;
    v21 = static MainActor.shared.getter();
    v22 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    *(v23 + 2) = v21;
    *(v23 + 3) = v24;
    *(v23 + 4) = v20;
    (*(v5 + 32))(&v23[v22], &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in PaperDocumentView.annotationsChanged(_:), v23);

    return;
  }

  if (*&v2[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount] > 0)
  {
    return;
  }

  v10 = Notification.userInfo.getter();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v26 = 0x697461746F6E6E61;
  v27 = 0xEA00000000006E6FLL;
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16))
  {
    goto LABEL_15;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  outlined init with copy of Any(*(v11 + 56) + 32 * v12, &v29);
  outlined destroy of AnyHashable(v28);

  if (!*(&v30 + 1))
  {
LABEL_17:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v29, &_sypSgMd, &_sypSgMR);
    return;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v14 = Notification.userInfo.getter();
  if (!v14)
  {
LABEL_16:
    v29 = 0u;
    v30 = 0u;
    goto LABEL_17;
  }

  v15 = v14;
  v26 = 1701273968;
  v27 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v17 & 1) == 0))
  {
LABEL_15:

    outlined destroy of AnyHashable(v28);
    goto LABEL_16;
  }

  outlined init with copy of Any(*(v15 + 56) + 32 * v16, &v29);
  outlined destroy of AnyHashable(v28);

  if (!*(&v30 + 1))
  {
    goto LABEL_17;
  }

  type metadata accessor for PaperKitPDFPage(0);
  if (swift_dynamicCast())
  {
    v18 = v28[0];
    PaperDocumentView.pdfPageDidChange(page:)(v28[0]);
  }
}

uint64_t closure #1 in PaperDocumentView.annotationsChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentView.annotationsChanged(_:), v7, v6);
}

uint64_t closure #1 in PaperDocumentView.annotationsChanged(_:)()
{
  v1 = *(v0 + 24);

  PaperDocumentView.annotationsChanged(_:)(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t @objc PaperDocumentView.annotationPropertiesChanged(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t PaperDocumentView.pdfPageDidChange(page:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined init with copy of Date?(a1 + v15, v4, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  v16 = type metadata accessor for PageId(0);
  if ((*(*(v16 - 8) + 48))(v4, 1, v16))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
    (*(v12 + 56))(v10, 1, 1, v11);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  }

  v17 = v21;
  outlined init with copy of Date?(&v4[*(v16 + 20)], v10, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  }

  (*(v12 + 32))(v14, v10, v11);
  v19 = (*(v12 + 56))(v7, 1, 1, v11);
  MEMORY[0x1EEE9AC00](v19);
  *(&v21 - 4) = v17;
  *(&v21 - 3) = v14;
  *(&v21 - 2) = a1;
  v20 = specialized PaperDocumentView.undoable<A>(updatePDF:updatePDFOnUndo:updatePage:action:)(0, 0, v7, partial apply for closure #1 in PaperDocumentView.pdfPageDidChange(page:), (&v21 - 6));
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  if (v20 != 2 && (v20 & 1) != 0)
  {
    PaperDocumentView.didChange()();
  }

  return (*(v12 + 8))(v14, v11);
}

double closure #1 in PaperDocumentView.pdfPageDidChange(page:)(uint64_t a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  return result;
}

uint64_t closure #1 in closure #1 in PaperDocumentView.pdfPageDidChange(page:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v8 = WeakTagged_3.subscript.modify();
  v9 = *(v7 + 24);
  if (v9)
  {
    v20 = v3;
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v9);
    v18 = a3;
    v11 = *(v10 + 160);
    v12 = type metadata accessor for PaperDocument(0);
    v13 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
    v14 = v11(a2, a1, v12, v13, v9, v10);
    a3 = v18;
    v15 = v14;
    result = v8(v19, 0);
    v17 = v15 & 1;
  }

  else
  {
    result = v8(v19, 0);
    v17 = 2;
  }

  *a3 = v17;
  return result;
}

uint64_t PaperDocumentView.loadPaperKitPageIfNeeded(for:)(char *a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v132 = *(v2 - 8);
  v133 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v131 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v144 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v130 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v134 = &v123 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v138 = &v123 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A12DocumentPageVSgMd, &_s8PaperKit0A12DocumentPageVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v135 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v139 = &v123 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v137 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v142 = (&v123 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGMd, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGMR);
  v145 = *(v17 - 8);
  v146 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v123 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v151 = &v123 - v22;
  v23 = type metadata accessor for PDFPageID(0);
  v149 = *(v23 - 8);
  v150 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v147 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v148 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v123 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v123 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v123 - v35;
  v37 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  v152 = a1;
  outlined init with copy of Date?(&a1[v37], v29, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  v38 = type metadata accessor for PageId(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  v41 = (v39 + 48);
  if (v40(v29, 1, v38))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
    (*(v34 + 56))(v32, 1, 1, v33);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  }

  v127 = v41;
  v128 = v40;
  v129 = v36;
  outlined init with copy of Date?(&v29[*(v38 + 20)], v32, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  }

  v43 = v33;
  v44 = v129;
  (*(v34 + 32))(v129, v32, v43);
  v45 = v148;
  outlined init with copy of Date?(v152 + v37, v148, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  if (v128(v45, 1, v38))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
    v46 = v151;
    (*(v149 + 56))(v151, 1, 1, v150);
LABEL_8:
    outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
    return (*(v34 + 8))(v44, v43);
  }

  v46 = v151;
  outlined init with copy of Date?(v45, v151, &_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  if ((*(v149 + 48))(v46, 1, v150) == 1)
  {
    goto LABEL_8;
  }

  v150 = v34;
  v47 = v147;
  _s8PaperKit5ImageVWObTm_0(v46, v147, type metadata accessor for PDFPageID);
  v48 = v142;
  WeakTagged_3.tagged3.getter();
  v49 = v145;
  v50 = v146;
  v51 = *(v145 + 48);
  if (v51(v48, 1, v146) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMR);
    _s8PaperKit0A8DocumentVWOhTm_0(v47, type metadata accessor for PDFPageID);
    v34 = v150;
    return (*(v34 + 8))(v44, v43);
  }

  v151 = v43;
  v127 = *(v49 + 32);
  v128 = (v49 + 32);
  v127(v143, v48, v50);
  v52 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  v53 = v141;
  swift_beginAccess();
  v54 = v144;
  v55 = *(v144 + 16);
  v148 = v144 + 16;
  v149 = v52;
  v56 = v138;
  v57 = v140;
  v142 = v55;
  v55(v138, v53 + v52, v140);
  v58 = type metadata accessor for PaperDocument(0);
  v59 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
  v60 = v139;
  v125 = v59;
  v126 = v58;
  WeakRef.subscript.getter();
  v61 = *(v54 + 8);
  v144 = v54 + 8;
  v61(v56, v57);
  v62 = type metadata accessor for PaperDocumentPage(0);
  v63 = *(*(v62 - 8) + 48);
  if (v63(v60, 1, v62) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s8PaperKit0A12DocumentPageVSgMd, &_s8PaperKit0A12DocumentPageVSgMR);
LABEL_15:
    (*(v145 + 8))(v143, v146);
    _s8PaperKit0A8DocumentVWOhTm_0(v147, type metadata accessor for PDFPageID);
    v34 = v150;
    v43 = v151;
    v44 = v129;
    return (*(v34 + 8))(v44, v43);
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  CRRegister.wrappedValue.getter();
  v65 = v164[0];
  result = _s8PaperKit0A8DocumentVWOhTm_0(v60, type metadata accessor for PaperDocumentPage);
  if ((v65 & 0x20) == 0)
  {
    goto LABEL_15;
  }

  v123 = v64;
  v124 = v63;
  v138 = v61;
  v66 = v141;
  v67 = *(v141 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount);
  v68 = __OFADD__(v67, 1);
  v69 = v67 + 1;
  if (v68)
  {
    __break(1u);
    goto LABEL_39;
  }

  v139 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount;
  *(v141 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfUpdateCount) = v69;
  MEMORY[0x1EEE9AC00](result);
  v70 = v152;
  *(&v123 - 4) = v129;
  *(&v123 - 3) = v70;
  v121 = v147;
  v122 = v66;
  v71 = v149;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  v72 = v137;
  v43 = v151;
  WeakTagged_3.tagged3.getter();
  v73 = v72;
  v74 = v72;
  v75 = v146;
  if (v51(v74, 1, v146) == 1)
  {
    (*(v145 + 8))(v143, v75);
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd, &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMR);
    v76 = v141;
LABEL_21:
    v44 = v129;
    goto LABEL_36;
  }

  v77 = v136;
  v127(v136, v73, v75);
  v78 = v140;
  v79 = v134;
  v80 = v142;
  v142(v134, v141 + v71, v140);
  v81 = v135;
  WeakRef.subscript.getter();
  (v138)(v79, v78);
  v82 = v124(v81, 1, v62);
  v83 = v78;
  v84 = v143;
  if (v82 == 1)
  {
    v85 = v146;
    v86 = *(v145 + 8);
    v86(v77, v146);
    v86(v84, v85);
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s8PaperKit0A12DocumentPageVSgMd, &_s8PaperKit0A12DocumentPageVSgMR);
    v76 = v141;
    v43 = v151;
    goto LABEL_21;
  }

  v87 = v131;
  WeakRef.id.getter();
  v88 = v130;
  v80(v130, v141 + v149, v83);
  v164[0] = xmmword_1D405D330;
  memset(&v164[1], 0, 109);
  v89 = v62;
  v90 = v152;
  CRRegister.wrappedValue.getter();
  v91 = v81;
  if ((v160 & 0x20) != 0)
  {

    v114 = v132;
    v113 = v133;
  }

  else
  {
    PaperDocumentPage.pdfContentsBounds.getter();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    [v90 boundsForBox_];
    v101 = v100;
    v103 = v102;
    v165.origin.x = v93;
    v165.origin.y = v95;
    v165.size.width = v97;
    v165.size.height = v99;
    MinX = CGRectGetMinX(v165);
    v166.origin.x = v93;
    v166.origin.y = v95;
    v166.size.width = v97;
    v166.size.height = v99;
    v105 = v103 + v101 + v101 - CGRectGetMaxY(v166);
    v167.origin.x = v93;
    v167.origin.y = v95;
    v167.size.width = v97;
    v167.size.height = v99;
    Width = CGRectGetWidth(v167);
    v168.origin.x = v93;
    v168.origin.y = v95;
    v168.size.width = v97;
    v168.size.height = v99;
    Height = CGRectGetHeight(v168);
    [v90 boundsForBox_];
    v112 = CGRect.almostEqual(_:threshold:)(MinX, v105, Width, Height, 1.0, v108, v109, v110, v111);
    v114 = v132;
    v113 = v133;
    if (!v112)
    {
      [v90 setBounds:1 forBox:{MinX, v105, Width, Height}];
    }

    v115 = specialized PaperPage.axisAlignedRotationInDegrees.getter();
    if ([v90 rotation] != v115)
    {
      [v90 setRotation_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMd, &_s9Coherence10CRRegisterVySayAA9CRKeyPathVGGMR);
    CRRegister.wrappedValue.getter();
    if (*&v90[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState])
    {
    }

    else
    {
      *&v90[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState] = v160;
    }

    outlined init with copy of Date?(v164, &v153, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
    if (*(&v153 + 1) == 1)
    {
      *(&v160 + 1) = 0;
      memset(v163, 0, 45);
      LOWORD(v160) = 1;
      BYTE2(v160) = 0;
      LOBYTE(v161[0]) = 0;
      *(v161 + 8) = 0u;
      *(&v161[1] + 8) = 0u;
      BYTE8(v161[2]) = 1;
      *&v162 = 0;
      BYTE8(v162) = 0;
    }

    else
    {
      v162 = v157;
      v163[0] = v158;
      v163[1] = v159[0];
      *(&v163[1] + 13) = *(v159 + 13);
      v160 = v153;
      v161[0] = v154;
      v161[1] = v155;
      v161[2] = v156;
    }

    *(&v154 + 1) = v89;
    *&v155 = &protocol witness table for PaperDocumentPage;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v153);
    outlined init with copy of CRAssetOrData(v91, boxed_opaque_existential_1, type metadata accessor for PaperDocumentPage);
    outlined assign with take of UUID?(&v153, v163, &_s8PaperKit0A10Renderable_pSgMd, &_s8PaperKit0A10Renderable_pSgMR);
    outlined init with copy of PaperRenderableOptions(&v160, &v153);
    specialized PaperPage<>.updateAnnotations<A>(in:use:capsule:options:)(v90, 0x8000000000000000, v88, &v153);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v153, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);

    outlined destroy of PaperRenderableOptions(&v160);
  }

  v44 = v129;
  outlined destroy of StocksKitCurrencyCache.Provider?(v164, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
  (v138)(v88, v140);
  (*(v114 + 8))(v87, v113);
  v117 = v146;
  v118 = *(v145 + 8);
  v118(v136, v146);
  v118(v143, v117);
  _s8PaperKit0A8DocumentVWOhTm_0(v91, type metadata accessor for PaperDocumentPage);
  v76 = v141;
  v43 = v151;
LABEL_36:
  v119 = *&v139[v76];
  v68 = __OFSUB__(v119, 1);
  v120 = v119 - 1;
  result = v147;
  v34 = v150;
  if (!v68)
  {
    *&v139[v76] = v120;
    _s8PaperKit0A8DocumentVWOhTm_0(result, type metadata accessor for PDFPageID);
    return (*(v34 + 8))(v44, v43);
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t closure #1 in PaperDocumentView.loadPaperKitPageIfNeeded(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a3;
  v49 = a5;
  v50 = a4;
  v58 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  swift_getKeyPath();
  v52 = a1;
  Capsule.Ref.subscript.getter();

  v20 = *(v60 + 16);
  v54 = v8;
  v43 = v60 + 16;
  v44 = v20;
  v20(v10, v58, v8);
  v21 = lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  v51 = v10;
  v48 = v21;
  SharedTagged_3.init(_:)();
  v46 = specialized Collection<>.firstIndex(of:)(v15);
  LOBYTE(a1) = v22;
  v23 = v55;
  v24 = *(v55 + 8);
  v53 = v11;
  v24(v15, v11);
  v25 = *(v17 + 8);
  v47 = v16;
  result = v25(v19, v16);
  if ((a1 & 1) == 0)
  {
    v42 = v24;
    v27 = CRContext.assetManager.getter();
    v28 = v56;
    specialized PaperKitPDFPage.decodePaperPage<A>(pageID:in:assetManager:)(v50, v52, v27, v56);

    swift_getKeyPath();
    v29 = *(v23 + 16);
    v30 = v53;
    v29(v15, v28, v53);
    v31 = Capsule.Ref.subscript.modify();
    CROrderedSet.subscript.setter();
    v31(v59, 0);

    v29(v15, v28, v30);
    v32 = v51;
    WeakTagged_3.init(_:)();
    v33 = v58;
    (*(v60 + 40))(v58, v32, v54);
    v34 = PaperKitPDFPage.pageId.modify(v59);
    v36 = v35;
    v37 = type metadata accessor for PageId(0);
    if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
    {
      v38 = v45;
      v39 = v33;
      v40 = v54;
      v44(v45, v39, v54);
      (*(v60 + 56))(v38, 0, 1, v40);
      outlined assign with take of UUID?(v38, v36 + *(v37 + 20), &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    }

    (v34)(v59, 0);
    return v42(v56, v30);
  }

  return result;
}

void __swiftcall PaperDocumentView.pdfView(_:overlayViewFor:)(UIView_optional *__return_ptr retstr, PDFView *_, PDFPage *overlayViewFor)
{
  v103 = _;
  v105 = type metadata accessor for CRKeyPath();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v108 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v95 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v95 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v95 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v95 - v20;
  type metadata accessor for PaperKitPDFPage(0);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v106 = v19;
    v107 = v18;
    v23 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v109 = v3;
    v24 = *(v3 + v23);
    v25 = *(v24 + 16);
    v26 = overlayViewFor;
    if (v25)
    {

      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
      if (v28)
      {
        *(*(v24 + 56) + 16 * v27);

        return;
      }
    }

    v29 = v109;
    PaperDocumentView.loadPaperKitPageIfNeeded(for:)(v22);
    v30 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
    swift_beginAccess();
    outlined init with copy of Date?(&v22[v30], v14, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
    v31 = type metadata accessor for PageId(0);
    if ((*(*(v31 - 8) + 48))(v14, 1, v31))
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
      (*(v106 + 56))(v17, 1, 1, v107);
LABEL_10:
      v34 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      v35 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
      v36 = v17;
LABEL_11:
      outlined destroy of StocksKitCurrencyCache.Provider?(v36, v34, v35);
      return;
    }

    outlined init with copy of Date?(&v14[*(v31 + 20)], v17, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s8PaperKit6PageIdVSgMd, &_s8PaperKit6PageIdVSgMR);
    v32 = v106;
    v33 = v107;
    if ((*(v106 + 48))(v17, 1, v107) == 1)
    {

      goto LABEL_10;
    }

    v101 = v26;
    (*(v32 + 32))(v110, v17, v33);
    v37 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    v38 = *(v108 + 2);
    v100 = v37;
    v99 = v108 + 16;
    v98 = v38;
    v38(v11, v29 + v37, v6);
    v39 = type metadata accessor for PaperDocument(0);
    v40 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
    v97 = v39;
    v96 = v40;
    WeakTagged_3.subscript.getter();
    v41 = *(v108 + 1);
    v41(v11, v6);
    v42 = v114;
    if (!v114)
    {
      (*(v32 + 8))(v110, v33);

      v34 = &_s8PaperKit0A4Page_pSgMd;
      v35 = &_s8PaperKit0A4Page_pSgMR;
      v36 = &v113;
      goto LABEL_11;
    }

    v43 = v33;
    v44 = v115;
    v108 = __swift_project_boxed_opaque_existential_1(&v113, v114);
    v45 = v102;
    MEMORY[0x1DA6CB4C0](v43);
    v98(v8, v109 + v100, v6);
    v46 = *(v44 + 144);
    v94 = v44;
    v47 = v109;
    v48 = v46(v45, v8, v103, v109, v22, v97, v96, v42, v94);
    v41(v8, v6);
    (v104->_document)(v45, v105);
    __swift_destroy_boxed_opaque_existential_0(&v113);
    v49 = v48;
    v50 = v101;
    if (!v49)
    {
      (*(v106 + 8))(v110, v107);

      return;
    }

    v108 = v49;
    swift_getObjectType();
    v51 = swift_conformsToProtocol2();
    if (!v51)
    {

      (*(v106 + 8))(v110, v107);
      return;
    }

    v52 = v51;
    swift_beginAccess();
    v53 = v50;
    v54 = v108;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112[0] = *(v47 + v23);
    *(v47 + v23) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v52, v22, isUniquelyReferenced_nonNull_native);
    v104 = v53;

    *(v47 + v23) = v112[0];
    swift_endAccess();
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    (*(v52 + 224))(Strong, ObjectType, v52);
    swift_getKeyPath();
    v112[0] = v47;
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v112[0]) = *(v47 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode);
    (*(v52 + 64))(v112, ObjectType, v52);
    swift_getKeyPath();
    v112[0] = v47;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = v47 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__liveStreamMessenger;
    swift_beginAccess();
    v59 = swift_unknownObjectWeakLoadStrong();
    (*(v52 + 128))(v59, *(v58 + 8), ObjectType, v52);
    swift_getKeyPath();
    v111[6] = v47;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = v47 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__participantDetailsDataSource;
    swift_beginAccess();
    v61 = swift_unknownObjectWeakLoadStrong();
    (*(v52 + 152))(v61, *(v60 + 8), ObjectType, v52);
    swift_getKeyPath();
    v111[3] = v47;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v62 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__showParticipantCursors;
    swift_beginAccess();
    (*(v52 + 176))(*(v47 + v62), ObjectType, v52);
    v63 = PaperDocumentView.paperDocumentViewProxy.getter();
    v64 = *(v52 + 200);
    v105 = ObjectType;
    v64(v63, &protocol witness table for PaperDocumentView.PaperDocumentViewProxy, ObjectType, v52);
    v65 = [v22 annotations];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
    v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = [v22 detectedAnnotations];
    v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v111[0] = v66;
    specialized Array.append<A>(contentsOf:)(v68);
    PaperDocumentView.addFormFields(_:for:)(v111[0], v22);
    swift_getKeyPath();
    v111[0] = v47;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v69 = v47 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__pageOverlayViewProvider;
    swift_beginAccess();
    v70 = swift_unknownObjectWeakLoadStrong();
    v71 = v110;
    if (v70)
    {
      v72 = *(v69 + 8);
      v73 = swift_getObjectType();
      v74 = (*(v72 + 8))(v47, v71, v73, v72);
      swift_unknownObjectRelease();
      if (v74)
      {
        v75 = *(v52 + 16);
        v76 = v74;
        v75(v74, v105, v52);
      }
    }

    v77 = *(v47 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
    if (v77)
    {
      v78 = v77;

      v79 = OBJC_IVAR____TtC8PaperKit17TiledDocumentView__paperAttachments;
      swift_beginAccess();
      v80 = *&v78[v79];
      v81 = v54;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *&v78[v79] = v80;
      v83 = v107;
      if ((v82 & 1) == 0)
      {
        v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80[2] + 1, 1, v80);
        *&v78[v79] = v80;
      }

      v85 = v80[2];
      v84 = v80[3];
      if (v85 >= v84 >> 1)
      {
        v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v80);
      }

      v80[2] = v85 + 1;
      v86 = &v80[2 * v85];
      v86[4] = v81;
      v86[5] = v52;
      *&v78[v79] = v80;
      swift_endAccess();

      v87 = (*(v52 + 104))(v105, v52);
      v88 = v87;
      if (v87 >> 62)
      {
        v89 = __CocoaSet.count.getter();
      }

      else
      {
        v89 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v89)
      {

        (*(v106 + 8))(v71, v83);
        return;
      }

      if ((v88 & 0xC000000000000001) != 0)
      {
        v90 = MEMORY[0x1DA6CE0C0](0, v88);
        goto LABEL_30;
      }

      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v90 = *(v88 + 32);
LABEL_30:
        v91 = v90;

        swift_allocObject();
        v92 = swift_unknownObjectWeakInit();
        MEMORY[0x1EEE9AC00](v92);
        v93 = v91;
        withObservationTracking<A>(_:onChange:)();

        (*(v106 + 8))(v71, v83);

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall PaperDocumentView.didMoveToSuperview()()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for PaperDocumentView(0);
  objc_msgSendSuper2(&v29, sel_didMoveToSuperview);
  v2 = [v0 superview];
  if (v2)
  {
  }

  else
  {
    v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    swift_beginAccess();
    v4 = *&v0[v3];
    v5 = *&v1[v3];
    v8 = *(v5 + 64);
    v7 = v5 + 64;
    v6 = v8;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v6;
    v12 = (v9 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v26 = v4;
    while (v11)
    {
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(*(v4 + 56) + ((v13 << 10) | (16 * v15)));
      type metadata accessor for AnyCanvas(0);
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        v19 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x440))();
        v21 = v20;
        ObjectType = swift_getObjectType();
        v27 = *(v21 + 168);
        v28 = ObjectType;
        v23 = v16;
        v24 = v27(v28, v21);

        if (v24)
        {
          v25 = *&v24[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

          FormAnalytics.merge(_:for:)(v25, v18);
        }

        else
        {
        }

        v4 = v26;
      }
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        FormAnalytics.recordSessionEvent()();

        return;
      }

      v11 = *(v7 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t PaperDocumentView.addFormFields(_:for:)(unint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v19 = v8;
  v18 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a1;
  aBlock[4] = partial apply for closure #1 in PaperDocumentView.addFormFields(_:for:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_630;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v18;
  MEMORY[0x1DA6CD890](0, v11, v7, v15);
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v19);
}

void closure #1 in PaperDocumentView.addFormFields(_:for:)(unint64_t a1, void *a2, unint64_t a3)
{
  v201 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v175 - v7;
  v9 = type metadata accessor for CRKeyPath();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for NSFastEnumerationIterator();
  v195 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v202 = v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v198 = a3;
  v15 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  v16 = Strong;
  swift_beginAccess();
  v17 = *&v16[v15];

  if (!*(v17 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v201), (v19 & 1) == 0))
  {

    return;
  }

  v180 = v12;
  v20 = *(*(v17 + 56) + 16 * v18);

  type metadata accessor for AnyCanvas(0);
  v192 = swift_dynamicCastClass();
  if (!v192)
  {
    goto LABEL_164;
  }

  v188 = v8;
  v21 = v198 >> 62;
  if (v198 >> 62)
  {
    goto LABEL_163;
  }

  if (*((v198 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_164:

    return;
  }

LABEL_7:
  v177 = v10;
  v178 = v9;
  v179 = v6;
  v22 = MEMORY[0x1E69E7CC0];
  v211 = MEMORY[0x1E69E7CC0];
  v212 = MEMORY[0x1E69E7CC0];
  LODWORD(v193) = PaperKitPDFPage.hasFormWidgets.getter();
  AnyCanvas.formFieldElements.getter();
  v6 = v23;
  v210 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13PDFAnnotationC_8PaperKit20AnyCanvasElementViewCTt0g5Tf4g_n(v22);
  v184 = v210;
  v24 = v198;
  if (v21)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v190 = a1;
  v199 = v25;
  v21 = v6;
  v187 = v20;
  if (!v25)
  {

    v94 = MEMORY[0x1E69E7CC0];
    v191 = MEMORY[0x1E69E7CC0];
    v197 = MEMORY[0x1E69E7CC0];
    goto LABEL_124;
  }

  v186 = v5;
  v200 = (v24 & 0xC000000000000001);
  swift_beginAccess();
  v26 = 0;
  v189 = v24 & 0xFFFFFFFFFFFFFF8;
  v194 = v24 + 32;
  v5 = (v6 & 0xFFFFFFFFFFFFFF8);
  if (v6 < 0)
  {
    v27 = v6;
  }

  else
  {
    v27 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v175[1] = v27;
  v197 = (v6 & 0xC000000000000001);
  v176 = *MEMORY[0x1E698E130];
  v9 = &selRef_hasSubstrokes;
  v191 = MEMORY[0x1E69E7CC0];
  v185 = MEMORY[0x1E69E7CC0];
  a1 = v199;
  v183 = v6 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v200)
    {
      v28 = MEMORY[0x1DA6CE0C0](v26, v198);
    }

    else
    {
      if (v26 >= *(v189 + 16))
      {
        goto LABEL_160;
      }

      v28 = *(v194 + 8 * v26);
    }

    v10 = v28;
    if (__OFADD__(v26++, 1))
    {
      goto LABEL_159;
    }

    v6 = [v28 isSynthesizedFormField];
    type metadata accessor for CanvasElementPDFAnnotation(0);
    v30 = swift_dynamicCastClass();
    if (!v30)
    {
      if (v6)
      {
        if (v193)
        {
          goto LABEL_16;
        }

        v20 = 0;
        goto LABEL_54;
      }

      v20 = 0;
LABEL_42:
      if ([v10 isTextWidget])
      {
        if ((([v10 isActivatableTextField] | v20) & 1) == 0)
        {
          goto LABEL_16;
        }

        v36 = swift_dynamicCastClass();
        if (!v36)
        {
          goto LABEL_16;
        }

        v6 = v36;
        if (!v20)
        {
          v20 = v21;
          v37 = v10;
LABEL_50:
          v41 = v10;
          MEMORY[0x1DA6CD190]();
          if (*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            a1 = v199;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v191 = v211;
          v21 = v20;
          continue;
        }
      }

      else if ((v20 & 1) == 0 || (v6 = swift_dynamicCastClass()) == 0)
      {
LABEL_16:

        continue;
      }

      v20 = v21;
      v38 = *(v6 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas);
      *(v6 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_canvas) = v192;
      v39 = v187;
      v40 = v10;

      goto LABEL_50;
    }

    v20 = v30;
    v196 = v26;
    v31 = v10;
    v10 = v5;
    v32 = *(v9 + 472);
    v33 = v31;
    v34 = v31;
    if ([v20 respondsToSelector_])
    {
      v35 = [v20 *(v9 + 472)];
    }

    else
    {
      v35 = 0;
    }

    if (![v20 respondsToSelector_])
    {

LABEL_36:
      v5 = v10;
      if (v6)
      {
        v9 = 0x1E8461000;
        if (v193)
        {

          a1 = v199;
          v26 = v196;
          continue;
        }

        v20 = 0;
        v10 = v33;
        v26 = v196;
        goto LABEL_54;
      }

      v20 = 0;
LABEL_40:
      a1 = v199;
      v9 = 0x1E8461000;
      v10 = v33;
      v26 = v196;
      goto LABEL_42;
    }

    v20 = [v20 isAppearanceStreamEmpty];

    if ((v35 & 1) == 0)
    {
      goto LABEL_36;
    }

    v5 = v10;
    if (!v6)
    {
      goto LABEL_40;
    }

    v9 = 0x1E8461000;
    v10 = v33;
    v26 = v196;
    if (v193)
    {

      a1 = v199;
      continue;
    }

LABEL_54:
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      v43 = v9;
      v44 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
      v6 = v42;
      swift_beginAccess();
      v45 = *(v6 + v44);
      v9 = v45;

      a1 = v199;
      if (v45)
      {
        v46 = *((*MEMORY[0x1E69E7D40] & *v192) + 0x440);
        v47 = (*MEMORY[0x1E69E7D40] & *v192) + 1088;
        v48 = v46();
        [v10 bounds];
        [v9 convertRect:v201 fromPage:?];
        [v48 convertRect:v9 fromCoordinateSpace:?];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;

        v196 = v9;
        v181 = v47;
        v182 = v46;
        if (v21 >> 62)
        {
          v6 = __CocoaSet.count.getter();
          v5 = v183;
        }

        else
        {
          v5 = v183;
          v6 = *(v183 + 16);
        }

        a1 = 0;
        while (v6 != a1)
        {
          if (v197)
          {
            v57 = MEMORY[0x1DA6CE0C0](a1, v21);
          }

          else
          {
            if (a1 >= v5[2])
            {
              goto LABEL_158;
            }

            v57 = *(v21 + 8 * a1 + 32);
          }

          v58 = v57;
          if (__OFADD__(a1, 1))
          {
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            if (__CocoaSet.count.getter() < 1)
            {
              goto LABEL_164;
            }

            goto LABEL_7;
          }

          v213.origin.x = (*((*MEMORY[0x1E69E7D40] & *v57) + 0x170))();
          v214.origin.x = v50;
          v214.origin.y = v52;
          v214.size.width = v54;
          v214.size.height = v56;
          v9 = CGRectIntersectsRect(v213, v214);

          ++a1;
          if (v9)
          {

            a1 = v199;
            v9 = 0x1E8461000;
            goto LABEL_17;
          }
        }

        if ([v10 respondsToSelector_])
        {
          v59 = [v10 isAutofillNewContextStart];
        }

        else
        {
          v59 = 0;
        }

        if (([v10 isDetectedSignature] | v20))
        {
          v60 = 50;
        }

        else
        {
          v61 = [v10 autoFillTextContentType];
          if (!v61)
          {
            v61 = v176;
          }

          FormContentType.init(_:)(v61);
          v60 = v206;
        }

        v62 = [v10 contents];
        if (v62)
        {
          v63 = v62;
          v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v64;
        }

        else
        {
          v185 = 0;
          a1 = 0;
        }

        v20 = [v10 font];
        v65 = [v10 alignment];
        LOBYTE(v206) = v60;
        v66 = [v10 maximumLength];
        v67 = specialized static FormFillingView.createFormFieldView(canvas:frame:text:font:alignment:textContentType:maxCharacterCount:detectedFormField:startsNewAutofillContext:analytics_inputSource:analytics_documentType:)(v192, v185, a1, v20, v65, 0, &v206, v66, v50, v52, v54, v56, 1u, v59, 9u, 2u);

        if ((v184 & 0xC000000000000001) != 0)
        {
          if (v184 < 0)
          {
            v68 = v184;
          }

          else
          {
            v68 = v184 & 0xFFFFFFFFFFFFFF8;
          }

          v69 = v10;
          v70 = v67;
          v71 = __CocoaSet.count.getter();
          v9 = 0x1E8461000;
          if (__OFADD__(v71, 1))
          {
            goto LABEL_167;
          }

          v72 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo13PDFAnnotationC_8PaperKit20AnyCanvasElementViewCTt1g5(v68, v71 + 1);
        }

        else
        {
          v73 = v10;
          v74 = v67;
          v72 = v210;
          v9 = 0x1E8461000;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v206 = v72;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v10, isUniquelyReferenced_nonNull_native);

        v184 = v206;
        v210 = v206;
        v76 = v67;
        MEMORY[0x1DA6CD190]();
        if (*((v212 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v212 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v185 = v212;
        v77 = v76;
        v78 = [v10 labelText];
        if (!v78)
        {
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = MEMORY[0x1DA6CCED0](v79);
        }

        [(CGColor *)v77 setAccessibilityLabel:v78];

        if ([v10 respondsToSelector_])
        {
          [v10 setShouldReportAnalytics_];
        }

        if (one-time initialization token for manager != -1)
        {
          swift_once();
        }

        v80 = v182();
        v6 = (*((*MEMORY[0x1E69E7D40] & *v80) + 0x90))();

        specialized FormAnalytics.addFielde2eEvent(canvas:)(v6);
        a1 = v199;
      }

      else
      {

        v9 = v43;
        v5 = v183;
      }
    }

    else
    {

      a1 = v199;
    }

LABEL_17:
    ;
  }

  while (v26 != a1);

  if (a1 < 1)
  {
    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v81 = 0;
  v193 = (v195 + 8);
  v82 = MEMORY[0x1E69E7CC0];
  v197 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v200)
    {
      v84 = MEMORY[0x1DA6CE0C0](v81, v198);
    }

    else
    {
      v84 = *(v194 + 8 * v81);
    }

    v85 = v84;
    v86 = [v201 formFieldGroupForAnnotation_];
    if ([v86 count] <= 0)
    {

      v83 = v199;
    }

    else
    {
      v195 = v86;
      v196 = v85;
      v209[0] = v82;
      NSOrderedSet.makeIterator()();
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
      dispatch thunk of IteratorProtocol.next()();
      if (v207)
      {
        v87 = v82;
        do
        {
          outlined init with take of Any(&v206, v205);
          outlined init with copy of Any(v205, &v204);
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
          if (swift_dynamicCast())
          {
            v88 = v208;
            MEMORY[0x1DA6CD190]();
            if (*((v209[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v87 = v209[0];
          }

          __swift_destroy_boxed_opaque_existential_0(v205);
          dispatch thunk of IteratorProtocol.next()();
        }

        while (v207);
      }

      else
      {
        v87 = v82;
      }

      (*v193)(v202, v203);
      v89 = specialized Sequence.compactMap<A>(_:)(v87, &v210);
      *&v206 = v89;
      MEMORY[0x1EEE9AC00](v89);
      v174 = &v206;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v175[-4], v197))
      {
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v197;
        }

        else
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v197[2] + 1, 1, v197);
        }

        v92 = v90[2];
        v91 = v90[3];
        v197 = v90;
        if (v92 >= v91 >> 1)
        {
          v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v197);
        }

        v93 = v197;
        v197[2] = v92 + 1;
        v93[v92 + 4] = v89;
      }

      v83 = v199;
      v82 = MEMORY[0x1E69E7CC0];
    }

    ++v81;
  }

  while (v81 != v83);
  a1 = v190;
  v94 = v185;
  v5 = v186;
LABEL_124:
  v95 = MEMORY[0x1E69E7D40];
  v96 = *((*MEMORY[0x1E69E7D40] & *v192) + 0x440);
  v97 = v96();
  v99 = v98;
  ObjectType = swift_getObjectType();
  v101 = *(v99 + 192);
  v185 = v94;
  v101(v94, ObjectType, v99);

  v102 = v96();
  v104 = v103;
  swift_getObjectType();
  v10 = v191;
  (*(v104 + 216))();

  v105 = v96();
  v107 = v106;
  v108 = swift_getObjectType();
  (*(v107 + 208))(v197, v108, v107);

  v109 = v96();
  v110 = (*((*v95 & *v109) + 0x90))();

  v9 = v179;
  if (v110)
  {
    if (one-time initialization token for manager != -1)
    {
      swift_once();
    }

    specialized FormAnalytics.recordLatencyEvent(timestamps:endToEnd:)(v111, 1);
  }

  swift_beginAccess();
  v112 = swift_unknownObjectWeakLoadStrong();
  v113 = v187;
  if (!v112 || (v114 = v112, v115 = PaperDocumentView.currentPageCanvas.getter(), v114, !v115) || (v116 = (*((*MEMORY[0x1E69E7D40] & *v115) + 0x440))(), v118 = v117, v115, v119 = swift_getObjectType(), v120 = (*(v118 + 168))(v119, v118), v116, (v198 = v120) == 0))
  {

    return;
  }

  swift_beginAccess();
  v121 = swift_unknownObjectWeakLoadStrong();
  if (v121)
  {
    v122 = v9;
    v123 = *(v121 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics);
    v124 = v121;

    v125 = v180;
    (*((*MEMORY[0x1E69E7D40] & *v192) + 0x448))();
    swift_beginAccess();
    v126 = *(v123 + 24);

    if (*(v126 + 16) && (v127 = specialized __RawDictionaryStorage.find<A>(_:)(v125), (v128 & 1) != 0))
    {
      v129 = *(*(v126 + 56) + 8 * v127);
      a1 = (v177 + 8);
      v130 = *(v177 + 1);

      v130(v125, v178);

      *(v198 + OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics) = v129;
    }

    else
    {

      (*(v177 + 1))(v125, v178);
    }

    v9 = v122;
  }

  v196 = OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics;
  v26 = *(v198 + OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics);

  AnyCanvas.formFieldElements.getter();
  if (!(v131 >> 62))
  {
    v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_140;
  }

LABEL_168:
  v132 = __CocoaSet.count.getter();
LABEL_140:

  *(v26 + 24) = v132;

  AnyCanvas.formFieldElements.getter();
  v6 = v133;
  if (v133 >> 62)
  {
    v134 = __CocoaSet.count.getter();
    v191 = v10;
    if (v134)
    {
LABEL_142:
      v186 = v5;
      v20 = 0;
      v202 = (v6 & 0xFFFFFFFFFFFFFF8);
      v203 = v6 & 0xC000000000000001;
      v199 = (v9 + 8);
      v200 = (v9 + 16);
      v21 = MEMORY[0x1E69E7CC0];
      v201 = v134;
      while (1)
      {
        if (v203)
        {
          v135 = MEMORY[0x1DA6CE0C0](v20, v6);
        }

        else
        {
          if (v20 >= *(v202 + 2))
          {
            goto LABEL_162;
          }

          v135 = *(v6 + 8 * v20 + 32);
        }

        v5 = v135;
        a1 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_161;
        }

        v9 = v6;
        type metadata accessor for ShapeView(0);
        v136 = swift_dynamicCastClass();
        if (v136)
        {
          v137 = *((*MEMORY[0x1E69E7D40] & *v136) + 0x3F0);
          v138 = v136;
          swift_beginAccess();
          v139 = v188;
          v140 = v186;
          (*v200)(v188, &v138[v137], v186);
          swift_getKeyPath();
          v141 = v5;
          Capsule.subscript.getter();

          (*v199)(v139, v140);
          v142 = v208 != 1;
        }

        else
        {

          v142 = 1;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
        }

        v6 = v9;
        v10 = *(v21 + 16);
        v143 = *(v21 + 24);
        if (v10 >= v143 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), (v10 + 1), 1, v21);
        }

        *(v21 + 16) = v10 + 1;
        v10[v21 + 32] = v142;
        ++v20;
        if (a1 == v201)
        {
          goto LABEL_171;
        }
      }
    }
  }

  else
  {
    v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v191 = v10;
    if (v134)
    {
      goto LABEL_142;
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_171:

  v199 = (v191 >> 62);
  if (v191 >> 62)
  {
    goto LABEL_203;
  }

  v203 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_173:
  if (v203)
  {
    v144 = 0;
    v201 = (v191 & 0xFFFFFFFFFFFFFF8);
    v202 = (v191 & 0xC000000000000001);
    v200 = *MEMORY[0x1E698E130];
    v145 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v202)
      {
        v146 = MEMORY[0x1DA6CE0C0](v144, v191);
      }

      else
      {
        if (v144 >= *(v201 + 2))
        {
          goto LABEL_202;
        }

        v146 = v191[v144 + 4];
      }

      v147 = v146;
      v148 = v144 + 1;
      if (__OFADD__(v144, 1))
      {
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        v203 = __CocoaSet.count.getter();
        goto LABEL_173;
      }

      v149 = [v146 autoFillTextContentType];
      if (v149)
      {
        break;
      }

      v156 = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_186;
      }

LABEL_189:
      v158 = *(v145 + 2);
      v157 = *(v145 + 3);
      if (v158 >= v157 >> 1)
      {
        v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v157 > 1), v158 + 1, 1, v145);
      }

      *(v145 + 2) = v158 + 1;
      v145[v158 + 32] = v156 & 1;
      ++v144;
      if (v148 == v203)
      {
        goto LABEL_195;
      }
    }

    v150 = v149;
    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = v152;
    if (v151 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v153 == v154)
    {
      v156 = 0;
    }

    else
    {
      v156 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_189;
    }

LABEL_186:
    v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v145 + 2) + 1, 1, v145);
    goto LABEL_189;
  }

  v145 = MEMORY[0x1E69E7CC0];
LABEL_195:
  v159 = *&v196[v198];
  v160 = *(v21 + 16);

  v161 = *(v145 + 2);

  if (__OFADD__(v160, v161))
  {
    __break(1u);
LABEL_205:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_206;
    }

LABEL_198:

    swift_beginAccess();
    v162 = swift_unknownObjectWeakLoadStrong();
    if (v162)
    {
      v163 = v162;

      v164 = *&v163[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics];

      v165 = 41;
      goto LABEL_200;
    }

    goto LABEL_219;
  }

  *(v159 + 32) = v160 + v161;

  if (v185 >> 62)
  {
    goto LABEL_205;
  }

  if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_198;
  }

LABEL_206:
  if (v199)
  {
    v166 = __CocoaSet.count.getter();
  }

  else
  {
    v166 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v166 || (swift_beginAccess(), (v167 = swift_unknownObjectWeakLoadStrong()) == 0))
  {

LABEL_215:

    return;
  }

  v168 = *(v167 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics);
  v169 = v167;

  LOBYTE(v169) = *(v168 + 17);

  if (FormAnalyticsKeys.rawValue.getter(v169) == 0x657079546D726F66 && v170 == 0xEC000000656E6F4ELL)
  {

    goto LABEL_217;
  }

  v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v171 & 1) == 0)
  {

    goto LABEL_215;
  }

LABEL_217:
  swift_beginAccess();
  v172 = swift_unknownObjectWeakLoadStrong();
  if (!v172)
  {
LABEL_219:

    return;
  }

  v173 = v172;

  v164 = *&v173[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics];

  v165 = 40;
LABEL_200:
  *(v164 + 17) = v165;
}

void *PaperDocumentView.handlePageOrderedCollectionDifference(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v126 = &v100 - v2;
  v131 = type metadata accessor for CapsuleUndoAction();
  v109 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131 - 8);
  v111 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v113 = &v100 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v147 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v125 = &v100 - v6;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v134 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v130 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v141 = &v100 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v102 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v129 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v100 - v13;
  v101 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v143 = &v100 - v16;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v17 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v123 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v100 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v100 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVySo7PDFPageCGMd, &_ss20CollectionDifferenceVySo7PDFPageCGMR);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v100 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVySo7PDFPageCGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVySo7PDFPageCGGMR);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v100 - v29;
  lazy protocol witness table accessor for type UITouch and conformance NSObject(&lazy protocol witness table cache variable for type PDFPage and conformance NSObject, &lazy cache variable for type metadata for PDFPage, 0x1E6978038);
  CollectionDifference<A>.inferringMoves()();
  (*(v24 + 16))(v30, v26, v23);
  v31 = *(v28 + 44);
  v32 = v0;
  v33 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CollectionDifference<PDFPage> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVySo7PDFPageCGMd, &_ss20CollectionDifferenceVySo7PDFPageCGMR, MEMORY[0x1E69E6F00]);
  dispatch thunk of Collection.startIndex.getter();
  v34 = v30;
  (*(v24 + 8))(v26, v23);
  v35 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  v36 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
  v127 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  swift_beginAccess();
  v110 = v36;
  swift_beginAccess();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v34 + v31) == v149)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_ss16IndexingIteratorVys20CollectionDifferenceVySo7PDFPageCGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVySo7PDFPageCGGMR);
  }

  v142 = 0;
  v135 = (v147 + 56);
  v140 = (v134 + 16);
  v120 = "e12@ICDocCamImageQuad20B28";
  v118 = (v147 + 48);
  v108 = (v147 + 32);
  v128 = (v134 + 8);
  v107 = (v147 + 8);
  v117 = (v109 + 48);
  v112 = (v109 + 32);
  v100 = v109 + 16;
  v106 = (v109 + 8);
  v116 = (v17 + 32);
  v115 = (v17 + 16);
  v114 = (v17 + 8);
  v136 = v32;
  v119 = v23;
  v148 = v31;
  v146 = v33;
  v121 = v35;
  v145 = v34;
  while (1)
  {
    v40 = v32;
    v41 = dispatch thunk of Collection.subscript.read();
    v44 = *v42;
    v43 = v42[1];
    v45 = v42[2];
    v46 = *(v42 + 24);
    v47 = *(v42 + 25);
    outlined copy of CollectionDifference<PDFPage>.Change(*v42, v43);
    v41(&v149, 0);
    v48 = v148;
    dispatch thunk of Collection.formIndex(after:)();
    if (v47 == 1)
    {
      break;
    }

    v38 = v44;
    v39 = v43;
LABEL_5:
    outlined consume of CollectionDifference<PDFPage>.Change(v38, v39);
    v32 = v40;
LABEL_6:
    v34 = v145;
    dispatch thunk of Collection.endIndex.getter();
    if (*(v34 + v48) == v149)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_ss16IndexingIteratorVys20CollectionDifferenceVySo7PDFPageCGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVySo7PDFPageCGGMR);
    }
  }

  v147 = v44;
  if (v46)
  {
    v38 = v147;
    v39 = v43;
    goto LABEL_5;
  }

  v133 = v46;
  v134 = *v135;
  (v134)(v143, 1, 1, v144);
  v49 = v127;
  v50 = v139;
  v51 = *v140;
  v52 = (*v140)(v141, &v40[v127], v139);
  MEMORY[0x1EEE9AC00](v52);
  *(&v100 - 2) = v147;
  *(&v100 - 1) = v45;
  v53 = v45;
  swift_beginAccess();
  v54 = v142;
  Capsule.callAsFunction<A>(_:)();
  v142 = v54;
  v32 = v136;
  swift_endAccess();
  v55 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  PaperDocumentView.updatePDFDocument(otherDocuments:)(v55);

  v56 = v121;
  result = *&v32[v121];
  if (!result)
  {
    goto LABEL_25;
  }

  v132 = v43;
  [result layoutDocumentView];
  v57 = [objc_opt_self() defaultCenter];
  v58 = MEMORY[0x1DA6CCED0](0xD000000000000014, v120 | 0x8000000000000000);
  result = *&v32[v56];
  if (result)
  {
    v59 = [result document];
    [v57 postNotificationName:v58 object:v59];

    v60 = v124;
    outlined init with copy of Date?(v143, v124, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v61 = v144;
    if ((*v118)(v60, 1, v144) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    }

    else
    {
      v62 = v125;
      v63 = (*v108)(v125, v60, v61);
      v64 = *&v32[v110];
      MEMORY[0x1EEE9AC00](v63);
      *(&v100 - 2) = v62;
      v50 = v139;

      v65 = v142;
      specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), (&v100 - 4), v64);
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v142 = v65;

      if (v67)
      {

        ObjectType = swift_getObjectType();
        v72 = v130;
        v51(v130, &v136[v49], v50);
        LOBYTE(v149) = 3;
        v104 = *(v71 + 88);
        v73 = type metadata accessor for PaperDocument(0);
        v74 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
        v104(v72, &v149, v73, v74, ObjectType, v71);

        (*v128)(v72, v50);
      }

      (*v107)(v125, v144);
      v32 = v136;
    }

    v75 = v130;
    v51(v130, &v32[v49], v50);
    v76 = v126;
    v77 = v141;
    Capsule.actionUndoingDifference(from:)();
    v78 = *v128;
    (*v128)(v75, v50);
    v79 = v131;
    if ((*v117)(v76, 1, v131) == 1)
    {
      v78(v77, v50);
      outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v80 = v76;
      v81 = &_s9Coherence17CapsuleUndoActionVSgMd;
      v82 = &_s9Coherence17CapsuleUndoActionVSgMR;
    }

    else
    {
      v83 = *v112;
      v84 = v113;
      (*v112)(v113, v76, v79);
      PaperDocumentView.didChange()();
      v85 = [v32 undoManager];
      if (v85)
      {
        v86 = v85;
        v87 = v84;
        v88 = v129;
        v104 = v83;
        outlined init with copy of Date?(v143, v129, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        v89 = *(v109 + 16);
        ObjectType = v53;
        v90 = v109;
        v89(v111, v87, v79);
        v91 = (*(v102 + 80) + 18) & ~*(v102 + 80);
        v92 = (v101 + *(v90 + 80) + v91) & ~*(v90 + 80);
        v93 = swift_allocObject();
        *(v93 + 16) = 1;
        v94 = v93 + v91;
        v32 = v136;
        outlined init with take of Range<AttributedString.Index>(v88, v94, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        v95 = v131;
        (v104)(v93 + v92, v111, v131);
        type metadata accessor for PaperDocumentView(0);
        NSUndoManager.registerUndo<A>(withTarget:handler:)();

        v96 = *(v90 + 8);
        v53 = ObjectType;
        v96(v113, v95);
      }

      else
      {
        (*v106)(v84, v79);
      }

      v78(v141, v139);
      v80 = v143;
      v81 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      v82 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v80, v81, v82);
    v97 = v122;
    v98 = v138;
    (*v116)(v122, v137, v138);
    (*v115)(v123, v97, v98);
    lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
    v99 = v129;
    WeakTagged_3.init(_:)();
    (v134)(v99, 0, 1, v144);
    PaperDocumentView.goToPage(_:hint:)(v99, v53, 0);
    outlined consume of CollectionDifference<PDFPage>.Change(v147, v132);
    outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    (*v114)(v97, v98);
    v48 = v148;
    goto LABEL_6;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in PaperDocumentView.handlePageOrderedCollectionDifference(_:)@<X0>(Swift::Int a1@<X1>, Swift::Int a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  result = swift_getKeyPath();
  v11 = a2;
  v12 = a1;
  v13 = v11;
  if (v12 < v11 && (v13 = v11 + 1, __OFADD__(v11, 1)))
  {
    __break(1u);
  }

  else
  {
    v16[1] = v11;
    v14 = Capsule.Ref.subscript.modify();
    v16[0] = a3;
    v15 = v14;
    CROrderedSet.move(from:to:)(v12, v13);
    v15(v17, 0);

    swift_getKeyPath();
    Capsule.Ref.subscript.getter();

    CROrderedSet.subscript.getter();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t PaperDocumentView.insertFile(at:at:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for URL();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for URLResourceValues();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UTType();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[24] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[25] = v9;
  v3[26] = v8;

  return MEMORY[0x1EEE6DFA0](PaperDocumentView.insertFile(at:at:), v9, v8);
}

uint64_t PaperDocumentView.insertFile(at:at:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  v2 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v3 = v2;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _s8PaperKit0A8DocumentVWOhTm_0(inited + 32, type metadata accessor for NSURLResourceKey);
  URL.resourceValues(forKeys:)();
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[17];

  URLResourceValues.contentType.getter();
  (*(v9 + 8))(v6, v8);
  if ((*(v5 + 48))(v7, 1, v4) == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v0[19], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    goto LABEL_3;
  }

  v13 = v0[22];
  v14 = v0[20];
  v15 = v0[21];
  (*(v15 + 32))(v0[23], v0[19], v14);
  static UTType.pdf.getter();
  v16 = UTType.conforms(to:)();
  v17 = *(v15 + 8);
  v0[27] = v17;
  v0[28] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);
  if ((v16 & 1) == 0)
  {
    v33 = v0[22];
    v34 = v0[20];

    static UTType.image.getter();
    v35 = UTType.conforms(to:)();
    v17(v33, v34);
    v36 = v0[23];
    v37 = v0[20];
    if (v35)
    {
      v10 = PaperDocumentView.loadAndInsertImage(url:at:)(v0[8], v0[9]);
      v17(v36, v37);
      goto LABEL_4;
    }

    v17(v0[23], v0[20]);
LABEL_3:
    v10 = 0;
LABEL_4:

    v11 = v0[1];

    return v11(v10);
  }

  v18 = v0[14];
  v19 = v0[15];
  v20 = v0[12];
  v21 = v0[13];
  v23 = v0[10];
  v22 = v0[11];
  v24 = v0[8];
  v25 = v0[9];
  static TaskPriority.userInitiated.getter();
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v19, 0, 1, v26);
  (*(v20 + 16))(v18, v24, v22);
  v27 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v23;
  (*(v20 + 32))(&v28[v27], v18, v22);
  *&v28[(v21 + v27 + 7) & 0xFFFFFFFFFFFFFFF8] = v25;
  v29 = v23;
  v30 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZSi_Tt2g5(0, 0, v19, &async function pointer to partial apply for closure #1 in PaperDocumentView.insertFile(at:at:), v28);
  v0[29] = v30;
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_sScPSgMd, &_sScPSgMR);
  v31 = swift_task_alloc();
  v0[30] = v31;
  *v31 = v0;
  v31[1] = PaperDocumentView.insertFile(at:at:);
  v32 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DA40](v0 + 7, v30, v32);
}

{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](PaperDocumentView.insertFile(at:at:), v3, v2);
}

{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[20];

  v1(v2, v3);
  v4 = v0[7];

  v5 = v0[1];

  return v5(v4);
}

uint64_t closure #1 in PaperDocumentView.insertFile(at:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = closure #1 in PaperDocumentView.insertFile(at:at:);

  return PaperDocumentView.loadAndInsertPDF(url:at:)(a5, a6);
}

uint64_t closure #1 in PaperDocumentView.insertFile(at:at:)(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentView.insertFile(at:at:), 0, 0);
}

Swift::Bool __swiftcall PaperDocumentView.canEditDocument()()
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 24))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__editingMode) != 0;
  }

  return v4 & 1;
}

Swift::Void __swiftcall PaperDocumentView.insertBlankPage(at:)(Swift::Int at)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v106 = &v88 - v5;
  v110 = type metadata accessor for CapsuleUndoAction();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v102 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v115 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v101 = *(v11 - 8);
  v12 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v88 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v111 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v107 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v88 - v21;
  v99 = type metadata accessor for PaperDocument(0);
  MEMORY[0x1EEE9AC00](v99);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v88 - v28;
  *&v31 = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v33 = &v88 - v32;
  if (v2[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing] != 1 || ![*&v2[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument] allowsDocumentAssembly])
  {
    return;
  }

  v88 = v12;
  v97 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v98 = at;
  v35 = *(v25 + 16);
  v35(v33, &v2[v34], v24);
  v103 = v9;
  Capsule.root.getter();
  v36 = *(v25 + 8);
  v89 = v33;
  v36();
  v35(v29, &v2[v34], v24);
  specialized PaperDocument.pageGeometryForInserting<A>(at:in:)(v98, v119);
  v37 = v120;
  v94 = v119[0];
  v92 = v119[1];
  v96 = v25 + 8;
  v95 = v36;
  (v36)(v29, v24);
  _s8PaperKit0A8DocumentVWOhTm_0(v23, type metadata accessor for PaperDocument);
  v38 = *(v115 + 56);
  v91 = v115 + 56;
  v90 = v38;
  v38(v117, 1, 1, v103);
  v93 = v35;
  v39 = (v35)(v116, &v2[v34], v24);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v92;
  *(&v88 - 3) = v94;
  *(&v88 - 2) = v40;
  *(&v88 - 2) = v37;
  *(&v88 - 1) = v98;
  swift_beginAccess();
  *&v94 = v34;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  PaperDocumentView.updatePDFDocument(otherDocuments:)(v41);

  v42 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v43 = *&v2[v42];
  if (!v43)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v43 layoutDocumentView];
  v44 = [objc_opt_self() defaultCenter];
  v45 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408F240);
  v46 = *&v2[v42];
  v47 = v112;
  if (!v46)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v48 = [v46 document];
  [v44 postNotificationName:v45 object:v48];

  outlined init with copy of Date?(v117, v47, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v49 = v115;
  v50 = v103;
  v51 = (*(v115 + 48))(v47, 1, v103);
  v52 = v89;
  if (v51 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  }

  else
  {
    v53 = v105;
    (*(v49 + 32))(v105, v47, v50);
    v54 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    v55 = swift_beginAccess();
    v56 = *&v2[v54];
    MEMORY[0x1EEE9AC00](v55);
    *(&v88 - 2) = v53;

    specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), (&v88 - 4), v56);
    v58 = v57;
    v60 = v59;
    v62 = v61;

    if (v58)
    {

      ObjectType = swift_getObjectType();
      v93(v52, &v2[v94], v24);
      v118 = 3;
      v64 = *(v62 + 88);
      v65 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
      v64(v52, &v118, v99, v65, ObjectType, v62);

      (v95)(v52, v24);
    }

    (*(v115 + 8))(v105, v103);
  }

  v66 = v95;
  v93(v52, &v2[v94], v24);
  v67 = v106;
  Capsule.actionUndoingDifference(from:)();
  v68 = v67;
  (v66)(v52, v24);
  v69 = v109;
  v70 = v110;
  v71 = (*(v109 + 48))(v67, 1, v110);
  v72 = v98;
  v73 = v66;
  v74 = v97;
  if (v71 == 1)
  {
    (v73)(v116, v24);
    outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v75 = &_s9Coherence17CapsuleUndoActionVSgMd;
    v76 = &_s9Coherence17CapsuleUndoActionVSgMR;
    v77 = v68;
  }

  else
  {
    v78 = v104;
    v115 = *(v69 + 32);
    (v115)(v104, v68, v70);
    PaperDocumentView.didChange()();
    v79 = [v2 undoManager];
    if (v79)
    {
      v80 = v79;
      outlined init with copy of Date?(v117, v97, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v81 = v102;
      (*(v69 + 16))(v102, v78, v70);
      v82 = (*(v101 + 80) + 18) & ~*(v101 + 80);
      v83 = (v88 + *(v69 + 80) + v82) & ~*(v69 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = 1;
      outlined init with take of Range<AttributedString.Index>(v97, v84 + v82, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      (v115)(v84 + v83, v81, v70);
      type metadata accessor for PaperDocumentView(0);
      NSUndoManager.registerUndo<A>(withTarget:handler:)();

      (*(v69 + 8))(v104, v70);
      (v95)(v116, v24);
      v77 = v117;
      v75 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      v76 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
      v74 = v97;
      v72 = v98;
    }

    else
    {
      (*(v69 + 8))(v78, v70);
      (v95)(v116, v24);
      v75 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      v76 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
      v77 = v117;
    }
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v77, v75, v76);
  v85 = v111;
  v86 = v108;
  v87 = v114;
  (*(v111 + 32))(v108, v113, v114);
  (*(v85 + 16))(v107, v86, v87);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  WeakTagged_3.init(_:)();
  v90(v74, 0, 1, v103);
  PaperDocumentView.goToPage(_:hint:)(v74, v72, 0);
  outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  (*(v85 + 8))(v86, v87);
}

uint64_t closure #1 in closure #1 in PaperDocumentView.insertBlankPage(at:)@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v51 = a1;
  v52 = a4;
  v5 = a2[4];
  v6 = type metadata accessor for CRKeyPath();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = v38 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit0C0VGMd, &_s9Coherence3RefVy8PaperKit0C0VGMR);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = v38 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v42);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v38 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v39);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  v21 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v21);
  v43 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v38 - v24;
  type metadata accessor for CGRect(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v55 = 0u;
  v56 = 0u;
  v26 = *(a2 + 1);
  v41 = *a2;
  v54 = v26;
  CRRegister.init(wrappedValue:)();
  v40 = *(v21 + 20);
  v55 = 0u;
  v56 = 0u;
  CRRegister.init(wrappedValue:)();
  v27 = *(v21 + 24);
  *&v55 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v38[1] = v27;
  CRRegister.init(wrappedValue:)();
  LODWORD(v55) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  outlined init with copy of Date?(v20, v17, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  v29 = type metadata accessor for Color(0);
  (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  outlined init with copy of Date?(v15, v12, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  *&v55 = 0;
  *(&v55 + 1) = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  *&v55 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
  CROrderedSet.init()();
  UnknownProperties.init()();
  v55 = v41;
  v56 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  v55 = 0uLL;
  v56 = v54;
  CRRegister.wrappedValue.setter();
  if (v5 != 0.0)
  {
    *&v55 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.setter();
  }

  v30 = v43;
  outlined init with copy of CRAssetOrData(v25, v43, type metadata accessor for Paper);
  v31 = v51;

  v32 = v44;
  static CRKeyPath.unique.getter();
  (*(v45 + 56))(v32, 0, 1, v46);
  v33 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v34 = v47;
  MEMORY[0x1DA6CC020](v31, v30, v32, v21, v33);
  LOBYTE(v55) = 0;
  v35 = v50;
  Ref.id.getter();
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  SharedTagged_3.init(_:id:)();
  v36 = Capsule.Ref.root.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  CROrderedSet.insert(_:at:)();
  v36(&v55, 0);
  (*(v48 + 8))(v34, v35);
  return _s8PaperKit0A8DocumentVWOhTm_0(v25, type metadata accessor for Paper);
}

Swift::Void __swiftcall PaperDocumentView.deletePage(at:)(Swift::Int at)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v87 = &v75 - v5;
  v6 = type metadata accessor for CapsuleUndoAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v91 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v83 = *(v19 - 8);
  v20 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v84 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v75 - v22;
  *&v25 = MEMORY[0x1EEE9AC00](v24).n128_u64[0];
  v92 = &v75 - v26;
  if (v2[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing] != 1 || ![*&v2[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument] allowsDocumentAssembly])
  {
    return;
  }

  v77 = v11;
  v78 = v7;
  v79 = v6;
  (*(v88 + 56))(v92, 1, 1, v89);
  v27 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v28 = *(v91 + 16);
  v81 = v91 + 16;
  v80 = v28;
  v29 = (v28)(v90, &v2[v27], v14);
  MEMORY[0x1EEE9AC00](v29);
  *(&v75 - 2) = at;
  swift_beginAccess();
  v82 = v27;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  PaperDocumentView.updatePDFDocument(otherDocuments:)(v30);

  v31 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v32 = *&v2[v31];
  if (!v32)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v32 layoutDocumentView];
  v33 = [objc_opt_self() defaultCenter];
  v34 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408F240);
  v35 = *&v2[v31];
  if (!v35)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v36 = [v35 document];
  [v33 postNotificationName:v34 object:v36];

  outlined init with copy of Date?(v92, v23, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v38 = v88;
  v37 = v89;
  if ((*(v88 + 48))(v23, 1, v89) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  }

  else
  {
    v39 = v86;
    (*(v38 + 32))(v86, v23, v37);
    v40 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    v41 = swift_beginAccess();
    v42 = *&v2[v40];
    MEMORY[0x1EEE9AC00](v41);
    *(&v75 - 2) = v39;

    specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), (&v75 - 4), v42);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    if (v44)
    {

      ObjectType = swift_getObjectType();
      v80(v16, &v2[v82], v14);
      v93 = 3;
      v49 = *(v48 + 88);
      v50 = type metadata accessor for PaperDocument(0);
      v51 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
      v49(v16, &v93, v50, v51, ObjectType, v48);

      (*(v91 + 8))(v16, v14);
    }

    (*(v88 + 8))(v86, v89);
  }

  v52 = v91;
  v80(v16, &v2[v82], v14);
  v53 = v87;
  v54 = v90;
  Capsule.actionUndoingDifference(from:)();
  v55 = v53;
  v57 = *(v52 + 8);
  v56 = v52 + 8;
  v58 = v16;
  v59 = v57;
  v57(v58, v14);
  v60 = v78;
  v61 = v53;
  v62 = v79;
  if ((*(v78 + 48))(v61, 1, v79) == 1)
  {
    v59(v54, v14);
    outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v63 = &_s9Coherence17CapsuleUndoActionVSgMd;
    v64 = &_s9Coherence17CapsuleUndoActionVSgMR;
    v65 = v55;
  }

  else
  {
    v89 = v59;
    v66 = v77;
    v88 = *(v60 + 32);
    (v88)(v77, v55, v62);
    PaperDocumentView.didChange()();
    v67 = [v2 undoManager];
    if (v67)
    {
      v68 = v67;
      outlined init with copy of Date?(v92, v84, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      (*(v60 + 16))(v85, v66, v62);
      v69 = v62;
      v70 = (*(v83 + 80) + 18) & ~*(v83 + 80);
      v71 = *(v60 + 80);
      v91 = v56;
      v72 = v60;
      v73 = (v20 + v71 + v70) & ~v71;
      v74 = swift_allocObject();
      *(v74 + 16) = 1;
      outlined init with take of Range<AttributedString.Index>(v84, v74 + v70, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      (v88)(v74 + v73, v85, v69);
      type metadata accessor for PaperDocumentView(0);
      NSUndoManager.registerUndo<A>(withTarget:handler:)();

      (*(v72 + 8))(v77, v69);
      v89(v90, v14);
      v65 = v92;
      v63 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      v64 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
    }

    else
    {
      (*(v60 + 8))(v66, v62);
      v89(v90, v14);
      v63 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      v64 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
      v65 = v92;
    }
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v65, v63, v64);
}

uint64_t closure #1 in closure #1 in PaperDocumentView.deletePage(at:)(uint64_t a1, Swift::Int a2)
{
  v3 = Capsule.Ref.root.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  CROrderedSet.remove(at:)(a2);
  return v3(&v5, 0);
}

uint64_t PaperDocumentView.export()()
{
  v1[21] = v0;
  type metadata accessor for PaperDocument(0);
  v1[22] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[27] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[28] = v4;
  v1[29] = v3;

  return MEMORY[0x1EEE6DFA0](PaperDocumentView.export(), v4, v3);
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v7(v2, v5 + v6, v3);
  Capsule.root.getter();
  v8 = *(v4 + 8);
  *(v0 + 240) = v8;
  *(v0 + 248) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  v9 = *(v5 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_context);
  v7(v1, v5 + v6, v3);
  *(v0 + 16) = xmmword_1D405D330;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 125) = 0u;
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = PaperDocumentView.export();
  v11 = *(v0 + 200);

  return specialized PaperDocument.newPDFDocument<A>(use:in:options:)(v9, v11, v0 + 16);
}

{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t PaperDocumentView.export()(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 200);
  v6 = *(*v1 + 184);
  v7 = *(*v1 + 176);
  *(v3 + 264) = a1;

  outlined destroy of StocksKitCurrencyCache.Provider?(v3 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
  v4(v5, v6);
  _s8PaperKit0A8DocumentVWOhTm_0(v7, type metadata accessor for PaperDocument);
  v8 = *(v2 + 232);
  v9 = *(v2 + 224);

  return MEMORY[0x1EEE6DFA0](PaperDocumentView.export(), v9, v8);
}

Swift::Void __swiftcall PaperDocumentView.registerFileRepresentations(forPage:to:)(Swift::Int forPage, NSItemProvider to)
{
  isa = to.super.isa;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v73 = *(v74 - 1);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGSgMd, &_s9Coherence3RefVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = &v61 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v61 - v11;
  v82 = type metadata accessor for UTType();
  v86 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  static CRKeyPath.unique.getter();
  v87 = v2;
  v88 = forPage;
  type metadata accessor for PaperDocument(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
  v77 = v20;
  Capsule.init(id:initClosure:)();
  v21 = MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D408F910);
  v22 = *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_context);
  v23 = v15 + 16;
  v78 = *(v15 + 16);
  v24 = v14;
  v78(v17, v20, v14);
  v25 = *(v15 + 80);
  v80 = v25 | 7;
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  v75 = v15;
  v27 = v15 + 32;
  v79 = *(v15 + 32);
  v79(v26 + ((v25 + 24) & ~v25), v17, v14);
  v93 = partial apply for closure #2 in PaperDocumentView.registerFileRepresentations(forPage:to:);
  v94 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v90 = 1107296256;
  v91 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  v92 = &block_descriptor_503;
  v28 = _Block_copy(&aBlock);
  v69 = v22;

  v29 = isa;
  [(objc_class *)isa registerFileRepresentationForTypeIdentifier:v21 fileOptions:0 visibility:0 loadHandler:v28];

  _Block_release(v28);
  v30 = v81;
  static UTType.pdf.getter();
  v31 = UTType.identifier.getter();
  v33 = v32;
  v34 = *(v86 + 8);
  v35 = v30;
  v36 = v77;
  v86 += 8;
  v63 = v34;
  v34(v35, v82);
  v37 = MEMORY[0x1DA6CCED0](v31, v33);

  v64 = v23;
  v78(v17, v36, v14);
  v38 = (v25 + 16) & ~v25;
  v62 = &v70[v38];
  v39 = &v70[v38 + 7] & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v70 = v17;
  v65 = v27;
  v79(v40 + v38, v17, v14);
  *(v40 + v39) = v69;
  v41 = v29;
  v93 = partial apply for closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:);
  v94 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v90 = 1107296256;
  v91 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  v92 = &block_descriptor_509;
  v42 = _Block_copy(&aBlock);

  v43 = v41;
  v44 = v71;
  [(objc_class *)v43 registerFileRepresentationForTypeIdentifier:v37 fileOptions:0 visibility:0 loadHandler:v42];

  _Block_release(v42);
  swift_getKeyPath();
  v45 = v72;
  v46 = v24;
  v47 = v36;
  Capsule.subscript.getter();

  specialized Collection.first.getter(v44);
  (*(v73 + 8))(v45, v74);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v44, 1, v48) == 1)
  {
    (*(v75 + 8))(v36, v46);
    outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v50 = v76;
    (*(v83 + 56))(v76, 1, 1, v85);
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence3RefVy8PaperKit5ImageVGSgMd, &_s9Coherence3RefVy8PaperKit5ImageVGSgMR);
    return;
  }

  v51 = v76;
  SharedTagged_3.tagged2.getter();
  (*(v49 + 8))(v44, v48);
  v50 = v51;
  if ((*(v83 + 48))(v51, 1, v85) == 1)
  {
    (*(v75 + 8))(v36, v46);
    goto LABEL_5;
  }

  v52 = v83;
  v74 = *(v83 + 32);
  v53 = v68;
  v54 = v85;
  v74(v68, v50, v85);
  v55 = v81;
  static UTType.jpeg.getter();
  v56 = v70;
  v78(v70, v47, v46);
  v57 = v46;
  v58 = v67;
  (*(v52 + 16))(v67, v53, v54);
  v59 = &v62[*(v52 + 80)] & ~*(v52 + 80);
  v60 = swift_allocObject();
  v79(v60 + v38, v56, v57);
  v74((v60 + v59), v58, v54);
  NSItemProvider.registerDataRepresentation(for:visibility:loadHandler:)();

  v63(v55, v82);
  (*(v52 + 8))(v68, v54);
  (*(v75 + 8))(v77, v57);
}

uint64_t closure #1 in PaperDocumentView.registerFileRepresentations(forPage:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v30 = a2;
  v31 = a1;
  v28 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v36 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v6 = *(v5 - 8);
  v32 = v5;
  v33 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v26);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  CROrderedSet.init()();
  type metadata accessor for PaperDocument(0);
  v17 = type metadata accessor for CRAsset();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  outlined init with copy of Date?(v16, v13, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  UnknownProperties.init()();
  v18 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  v19 = v30;
  swift_beginAccess();
  v20 = *(v9 + 16);
  v20(v11, v19 + v18, v8);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
  Capsule.Ref.import<A>(_:)();
  v21 = *(v9 + 8);
  v21(v11, v8);
  v20(v11, v19 + v18, v8);
  swift_getKeyPath();
  v22 = v27;
  Capsule.subscript.getter();

  v21(v11, v8);
  v23 = v34;
  v24 = v32;
  CROrderedSet.subscript.getter();
  (*(v33 + 8))(v22, v24);
  CROrderedSet.append(_:)();
  return (*(v36 + 8))(v23, v29);
}

uint64_t closure #2 in PaperDocumentView.registerFileRepresentations(forPage:to:)(void (*a1)(uint64_t, void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[1] = a3;
  v29[2] = a4;
  v32 = a2;
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = v29 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
  v17 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v9, v6);
  URL.appendingPathComponent(_:)();

  v18 = *(v11 + 8);
  v30 = v10;
  v29[0] = v18;
  v18(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E8DocumentVGMd, &_s9Coherence17CRDataStoreBundleCy8PaperKit0E8DocumentVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd, &_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMR);
  v19 = type metadata accessor for CRCodableVersion();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D405C990;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v23 + v22, *MEMORY[0x1E6995280], v19);
  v25(v24 + v21, *MEMORY[0x1E6995288], v19);
  static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)();

  v27 = v30;
  v26 = v31;
  (*(v11 + 16))(v31, v16, v30);
  (*(v11 + 56))(v26, 0, 1, v27);
  v33(v26, 0, 0);
  outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (v29[0])(v16, v27);
  return 0;
}

id thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?)(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned Bool, @unowned NSError?) -> (), v4);

  return v5;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned Bool, @unowned NSError?) -> ()(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  outlined init with copy of Date?(a1, &v17 - v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v14 = v15;
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v16 = _convertErrorToNSError(_:)();
  }

  else
  {
    v16 = 0;
  }

  (*(a4 + 16))(a4, v14, a2 & 1, v16);
}

uint64_t closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a3, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v8 + 32))(v18 + v16, v11, v7);
  *(v18 + v17) = a4;
  v19 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v23;
  v19[1] = a2;
  v20 = a4;

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:), v18);

  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_sScPSgMd, &_sScPSgMR);
  return 0;
}

uint64_t closure #1 in closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7[6] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:), 0, 0);
}

uint64_t closure #1 in closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:)()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v13 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v5 + 8))(v4, v6);
  URL.appendingPathComponent(_:)();

  v8 = *(v2 + 8);
  v0[15] = v8;
  v0[16] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v13);
  URL.appendingPathExtension(_:)();
  v8(v1, v13);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = closure #1 in closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:);
  v10 = v0[14];
  v11 = v0[3];

  return Capsule<>.write(_:toPDF:)(v11, v10);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in PaperDocumentView.registerFileRepresentations(forPage:to:), 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[4];
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  v6(v5, 0, 0);
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a1;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v27 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, v28, v10);
  v19 = a4;
  v20 = v5;
  (*(v6 + 16))(v9, v19, v5);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = (v12 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v11 + 32))(v23 + v21, v14, v10);
  (*(v6 + 32))(v23 + v22, v27, v20);
  v24 = (v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v25 = v30;
  *v24 = v29;
  v24[1] = v25;

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:), v23);

  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_sScPSgMd, &_sScPSgMR);
  return 0;
}

uint64_t closure #1 in closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for Image(0);
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:), 0, 0);
}

uint64_t closure #1 in closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  Capsule.subscript.getter();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:);
  v2 = *(v0 + 16);

  return specialized Image.fullResolutionJPEGData<A>(compressionQuality:in:)(v2, 0.9);
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  (*(v0 + 32))(v2, v1, 0);
  outlined consume of Data?(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  _s8PaperKit0A8DocumentVWOhTm_0(v4, type metadata accessor for Image);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in PaperDocumentView.registerFileRepresentations(forPage:to:), 0, 0);
}

void PaperDocumentView.paste(document:at:)(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v113 = a2;
  v108 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v106 = v94 - v5;
  v6 = type metadata accessor for CapsuleUndoAction();
  v107 = *(v6 - 8);
  v7 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v103 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v110 = v94 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v111 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v105 = v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v102 = *(v11 - 8);
  v12 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v104 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v94 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v114 = v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v94 - v20;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v22 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v94 - v25;
  *&v28 = MEMORY[0x1EEE9AC00](v27).n128_u64[0];
  v115 = v94 - v29;
  if (v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing] != 1)
  {
    return;
  }

  if (![*&v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument] allowsDocumentAssembly])
  {
    return;
  }

  v94[0] = v12;
  v30 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v31 = *(v22 + 16);
  v99 = v30;
  v32 = &v3[v30];
  v96 = v15;
  v33 = v115;
  v101 = v3;
  v94[1] = v7;
  v34 = v116;
  v35 = v22 + 16;
  v36 = v31;
  v31(v115, v32, v116);
  swift_getKeyPath();
  v100 = v26;
  v97 = v6;
  Capsule.subscript.getter();
  v37 = v100;

  v38 = *(v22 + 8);
  v98 = v22 + 8;
  v38(v33, v34);
  v39 = CROrderedSet.count.getter();
  (*(v19 + 8))(v21, v18);
  if (v39 < v113)
  {
    return;
  }

  v95 = v38;
  v40 = v116;
  Capsule.copy()();
  v41 = v109;
  (*(v111 + 56))(v114, 1, 1, v109);
  v108 = v36;
  v42 = (v36)(v112, &v101[v99], v40);
  MEMORY[0x1EEE9AC00](v42);
  v43 = v113;
  v94[-2] = v37;
  v94[-1] = v43;
  swift_beginAccess();
  v44 = v101;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  PaperDocumentView.updatePDFDocument(otherDocuments:)(v45);

  v46 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v47 = *&v44[v46];
  if (!v47)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v47 layoutDocumentView];
  v48 = [objc_opt_self() defaultCenter];
  v49 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408F240);
  v50 = *&v44[v46];
  if (!v50)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v51 = [v50 document];
  [v48 postNotificationName:v49 object:v51];

  v52 = v96;
  outlined init with copy of Date?(v114, v96, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v53 = v111;
  if ((*(v111 + 48))(v52, 1, v41) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  }

  else
  {
    v113 = v35;
    v54 = v105;
    (*(v53 + 32))(v105, v52, v41);
    v55 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    v56 = swift_beginAccess();
    v57 = *&v44[v55];
    MEMORY[0x1EEE9AC00](v56);
    v94[-2] = v54;

    specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), &v94[-4], v57);
    v59 = v58;
    v61 = v60;
    v63 = v62;

    if (v59)
    {

      ObjectType = swift_getObjectType();
      v65 = &v44[v99];
      v67 = v115;
      v66 = v116;
      v108(v115, v65, v116);
      v117 = 3;
      v68 = *(v63 + 88);
      v69 = type metadata accessor for PaperDocument(0);
      v70 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
      v68(v67, &v117, v69, v70, ObjectType, v63);

      v71 = v66;
      v44 = v101;
      v95(v67, v71);
    }

    (*(v53 + 8))(v105, v41);
  }

  v72 = v115;
  v73 = v116;
  v108(v115, &v44[v99], v116);
  v74 = v106;
  v75 = v112;
  Capsule.actionUndoingDifference(from:)();
  v76 = v95;
  v95(v72, v73);
  v77 = v107;
  v78 = v97;
  v79 = (*(v107 + 48))(v74, 1, v97);
  v80 = v110;
  if (v79 == 1)
  {
    v76(v75, v73);
    outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v81 = &_s9Coherence17CapsuleUndoActionVSgMd;
    v82 = &_s9Coherence17CapsuleUndoActionVSgMR;
    v83 = v74;
  }

  else
  {
    v84 = v77;
    v85 = v74;
    v86 = *(v77 + 32);
    v86(v110, v85, v78);
    PaperDocumentView.didChange()();
    v87 = [v44 undoManager];
    if (v87)
    {
      v88 = v87;
      outlined init with copy of Date?(v114, v104, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v89 = v103;
      (*(v84 + 16))(v103, v80, v78);
      v90 = (*(v102 + 80) + 18) & ~*(v102 + 80);
      v91 = (v94[0] + *(v84 + 80) + v90) & ~*(v84 + 80);
      v92 = v78;
      v93 = swift_allocObject();
      *(v93 + 16) = 1;
      outlined init with take of Range<AttributedString.Index>(v104, v93 + v90, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v86((v93 + v91), v89, v92);
      type metadata accessor for PaperDocumentView(0);
      NSUndoManager.registerUndo<A>(withTarget:handler:)();

      (*(v84 + 8))(v110, v92);
      v73 = v116;
      v76 = v95;
      v95(v112, v116);
      v83 = v114;
      v81 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      v82 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
    }

    else
    {
      (*(v77 + 8))(v80, v78);
      v73 = v116;
      v76 = v95;
      v95(v112, v116);
      v81 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      v82 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
      v83 = v114;
    }
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v83, v81, v82);
  v76(v100, v73);
}

uint64_t closure #1 in closure #1 in PaperDocumentView.paste(document:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[5] = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVy9Coherence12CROrderedSetVyAC14SharedTagged_3Vy8PaperKit0gH4PageVGGGMd, &_ss18ReversedCollectionVy9Coherence12CROrderedSetVyAC14SharedTagged_3Vy8PaperKit0gH4PageVGGGMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd, &_ss18ReversedCollectionV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMR);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  type metadata accessor for PaperDocument(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
  v30 = a1;
  Capsule.Ref.import<A>(_:)();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  Capsule.subscript.getter();

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, v8, v13);
  v15 = *(v10 + 44);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR, MEMORY[0x1E6995158]);
  dispatch thunk of Collection.endIndex.getter();
  (*(v14 + 8))(v8, v13);
  dispatch thunk of Collection.startIndex.getter();
  if (*&v12[v15] != v31[0])
  {
    v16 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR, MEMORY[0x1E6995140]);
    v26 = (v4 + 16);
    v27 = v16;
    v25 = (v4 + 8);
    do
    {
      dispatch thunk of BidirectionalCollection.formIndex(before:)();
      v17 = dispatch thunk of Collection.subscript.read();
      v18 = v28;
      v19 = v15;
      v20 = v29;
      (*v26)(v28);
      v17(v31, 0);
      swift_getKeyPath();
      v21 = Capsule.Ref.subscript.modify();
      CROrderedSet.insert(_:at:)();
      v22 = v20;
      v15 = v19;
      (*v25)(v18, v22);
      v21(v31, 0);

      dispatch thunk of Collection.startIndex.getter();
    }

    while (*&v12[v19] != v31[0]);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_ss18ReversedCollectionV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd, &_ss18ReversedCollectionV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMR);
}

void PaperDocumentView.insert(newDocument:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v135 = a2;
  v126 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v124 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v115 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v103 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v120 = &v103 - v9;
  v128 = type metadata accessor for CapsuleUndoAction();
  v121 = *(v128 - 8);
  v10 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v114 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v103 - v12;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v130 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v119 = &v103 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v113 = *(v14 - 8);
  v15 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v117 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  ObjectType = &v103 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v133 = &v103 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
  MEMORY[0x1EEE9AC00](v125);
  v122 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v129 = &v103 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v123 = &v103 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v103 - v27;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v29 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v131 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = MEMORY[0x1EEE9AC00](v31).n128_u64[0];
  v134 = &v103 - v33;
  if (v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing] != 1)
  {
    return;
  }

  if (![*&v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument] allowsDocumentAssembly])
  {
    return;
  }

  v34 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v36 = v29 + 16;
  v35 = *(v29 + 16);
  v106 = v15;
  v37 = v134;
  v107 = v10;
  v38 = v136;
  v111 = v35;
  v35(v134, &v3[v34], v136);
  swift_getKeyPath();
  v109 = v4;
  v112 = v3;
  Capsule.subscript.getter();
  v39 = v112;

  v40 = v38;
  v41 = *(v29 + 8);
  v110 = v29 + 8;
  v41(v37, v40);
  v42 = CROrderedSet.count.getter();
  (*(v26 + 8))(v28, v25);
  if (v42 < v135)
  {
    return;
  }

  v108 = v41;
  v43 = v130 + 56;
  v104 = *(v130 + 56);
  v104(v133, 1, 1, v132);
  v105 = v36;
  v44 = v111(v131, &v39[v34], v136);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v39;
  v46 = v135;
  *(&v103 - 2) = v126;
  *(&v103 - 1) = v46;
  swift_beginAccess();
  v126 = v34;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  PaperDocumentView.updatePDFDocument(otherDocuments:)(v47);

  v48 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v49 = *&v45[v48];
  if (!v49)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v49 layoutDocumentView];
  v50 = [objc_opt_self() defaultCenter];
  v51 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408F240);
  v52 = *&v45[v48];
  if (!v52)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v125 = v43;
  v53 = [v52 document];
  [v50 postNotificationName:v51 object:v53];

  v54 = ObjectType;
  outlined init with copy of Date?(v133, ObjectType, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v55 = v130;
  v56 = v132;
  if ((*(v130 + 48))(v54, 1, v132) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v57 = v112;
    v58 = v120;
    v59 = v136;
    v60 = v126;
  }

  else
  {
    v61 = v119;
    (*(v55 + 32))(v119, v54, v56);
    v62 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    v63 = v112;
    v64 = swift_beginAccess();
    v65 = *&v63[v62];
    MEMORY[0x1EEE9AC00](v64);
    *(&v103 - 2) = v61;

    specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), (&v103 - 4), v65);
    v67 = v66;
    v69 = v68;
    v71 = v70;

    v60 = v126;
    if (v67)
    {

      ObjectType = swift_getObjectType();
      v72 = v134;
      v73 = v136;
      v111(v134, &v63[v60], v136);
      v137 = 3;
      v74 = *(v71 + 88);
      v75 = type metadata accessor for PaperDocument(0);
      v76 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
      v74(v72, &v137, v75, v76, ObjectType, v71);
      v60 = v126;

      v77 = v73;
      v55 = v130;
      v108(v72, v77);
    }

    v56 = v132;
    (*(v55 + 8))(v119, v132);
    v57 = v63;
    v58 = v120;
    v59 = v136;
  }

  v78 = v134;
  v111(v134, &v57[v60], v59);
  v79 = v131;
  Capsule.actionUndoingDifference(from:)();
  v80 = v57;
  v81 = v108;
  v108(v78, v59);
  v82 = v121;
  v83 = v128;
  v84 = (*(v121 + 48))(v58, 1, v128);
  v85 = v127;
  if (v84 == 1)
  {
    v81(v79, v59);
    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
    v86 = v109;
  }

  else
  {
    v87 = *(v82 + 32);
    v87(v127, v58, v83);
    PaperDocumentView.didChange()();
    v88 = [v80 undoManager];
    if (v88)
    {
      v89 = v88;
      v90 = v117;
      outlined init with copy of Date?(v133, v117, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v91 = v114;
      (*(v82 + 16))(v114, v85, v83);
      v92 = (*(v113 + 80) + 18) & ~*(v113 + 80);
      v93 = (v106 + *(v82 + 80) + v92) & ~*(v82 + 80);
      v94 = v87;
      v95 = swift_allocObject();
      *(v95 + 16) = 1;
      outlined init with take of Range<AttributedString.Index>(v90, v95 + v92, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v96 = v91;
      v97 = v128;
      v94(v95 + v93, v96, v128);
      type metadata accessor for PaperDocumentView(0);
      NSUndoManager.registerUndo<A>(withTarget:handler:)();

      (*(v82 + 8))(v127, v97);
    }

    else
    {
      (*(v82 + 8))(v85, v83);
    }

    v108(v131, v136);
    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v86 = v109;
    v56 = v132;
  }

  v98 = v123;
  outlined init with take of Range<AttributedString.Index>(v129, v123, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v99 = v122;
  outlined init with copy of Date?(v98, v122, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v100 = v124;
  if ((*(v124 + 48))(v99, 1, v86) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
  }

  else
  {
    v101 = v116;
    (*(v100 + 32))(v116, v99, v86);
    (*(v100 + 16))(v115, v101, v86);
    lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
    v102 = v117;
    WeakTagged_3.init(_:)();
    v104(v102, 0, 1, v56);
    PaperDocumentView.goToPage(_:hint:)(v102, v135, 0);
    outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    (*(v100 + 8))(v101, v86);
    v99 = v98;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMR);
}

uint64_t closure #1 in closure #1 in PaperDocumentView.insert(newDocument:at:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v10 = a2;
  v11 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  type metadata accessor for PaperDocument(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
  Capsule.Ref.import<A>(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  Capsule.subscript.getter();

  v7 = Capsule.Ref.subscript.modify();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR, MEMORY[0x1E6995150]);
  CROrderedSet.insert<A>(contentsOf:at:)();
  v8 = *(v4 + 8);
  v8(v6, v3);
  v7(v12, 0);

  swift_getKeyPath();
  Capsule.subscript.getter();

  specialized Collection.first.getter(v11);
  return (v8)(v6, v3);
}

uint64_t PaperDocumentView.loadAndInsertPDF(url:at:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for CRKeyPath();
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PaperDocumentView.loadAndInsertPDF(url:at:), 0, 0);
}

uint64_t PaperDocumentView.loadAndInsertPDF(url:at:)(uint64_t a1)
{
  *(v1 + 128) = 0;
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  static CRKeyPath.unique.getter();
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1 + 128;
  type metadata accessor for PaperDocument(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
  Capsule.init(id:initClosure:)();

  if (*(v1 + 128) == 1)
  {
    Capsule.copy()();
    type metadata accessor for MainActor();
    *(v1 + 104) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](PaperDocumentView.loadAndInsertPDF(url:at:), v6, v5);
  }

  else
  {
    (*(*(v1 + 80) + 8))(*(v1 + 96), *(v1 + 72));

    v7 = *(v1 + 8);

    return v7(0);
  }
}

uint64_t PaperDocumentView.loadAndInsertPDF(url:at:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];

  PaperDocumentView.insert(newDocument:at:)(v1, v4);
  v5 = *(v2 + 8);
  v0[14] = v5;
  v0[15] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return MEMORY[0x1EEE6DFA0](PaperDocumentView.loadAndInsertPDF(url:at:), 0, 0);
}

{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v4 = CROrderedSet.count.getter();
  (*(v2 + 8))(v1, v3);
  (*(v0 + 112))(*(v0 + 96), *(v0 + 72));

  v5 = *(v0 + 8);

  return v5(v4);
}

void closure #1 in PaperDocumentView.loadAndInsertPDF(url:at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X3>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v23 - v18;
  (*(v13 + 16))(v15, a2, v12, v17);

  v20 = CRContext.assetManager.getter();
  _s8PaperKit0A8DocumentV3url2in12assetManagerACSg10Foundation3URLV_9Coherence7CapsuleV3RefCyx_GAK07CRAssetG0CtcAK4CRDTRzlufCAC_Tt3g5(v15, a1, v20, v19);
  v21 = type metadata accessor for PaperDocument(0);
  if ((*(*(v21 - 8) + 48))(v19, 1, v21) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
    CROrderedSet.init()();
    v22 = type metadata accessor for CRAsset();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    outlined init with copy of Date?(v11, v8, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    UnknownProperties.init()();
  }

  else
  {
    _s8PaperKit5ImageVWObTm_0(v19, a4, type metadata accessor for PaperDocument);
    *v23 = 1;
  }
}

uint64_t PaperDocumentView.loadAndInsertImage(url:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v67 = a1;
  v4 = type metadata accessor for URL();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v57 - v11;
  v61 = type metadata accessor for Image(0);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v57 - v14;
  v15 = type metadata accessor for PaperDocument(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  v25 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v26 = *(v19 + 16);
  v26(v24, v3 + v25, v18);
  Capsule.root.getter();
  v27 = *(v19 + 8);
  v27(v24, v18);
  v26(v21, v3 + v25, v18);
  v28 = v60;
  specialized PaperDocument.pageGeometryForInserting<A>(at:in:)(v60, &v69.a);
  a = v69.a;
  b = v69.b;
  c = v69.c;
  d = v69.d;
  CGAffineTransformMakeRotation(&v69, v69.tx);
  v70.origin.x = a;
  v70.origin.y = b;
  v70.size.width = c;
  v70.size.height = d;
  v71 = CGRectApplyAffineTransform(v70, &v69);
  x = v71.origin.x;
  y = v71.origin.y;
  width = v71.size.width;
  height = v71.size.height;
  v27(v21, v18);
  v37 = v59;
  _s8PaperKit0A8DocumentVWOhTm_0(v17, type metadata accessor for PaperDocument);
  v39 = v64;
  v38 = v65;
  v40 = *(v64 + 16);
  v41 = v62;
  v40(v62, v67, v65);
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  v42 = CGRectGetWidth(v72);
  v43 = CRContext.assetManager.getter();
  v44 = v66;
  v40(v66, v41, v38);
  v45 = v61;
  v46 = v63;
  Image.init(url:targetPageSize:assetManager:)(v44, v42, v42, 0, v43, v63);
  v47 = v38;
  v48 = v46;
  (*(v39 + 8))(v41, v47);
  v49 = *(v37 + 48);
  if (v49(v48, 1, v45))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
    v50 = 1;
    v51 = v68;
  }

  else
  {
    v52 = v48;
    v53 = v57;
    _s8PaperKit5ImageVWObTm_0(v52, v57, type metadata accessor for Image);
    v54 = v53;
    v51 = v68;
    _s8PaperKit5ImageVWObTm_0(v54, v68, type metadata accessor for Image);
    v50 = 0;
  }

  (*(v37 + 56))(v51, v50, 1, v45);
  if (v49(v51, 1, v45) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
    return 0;
  }

  else
  {
    v56 = v58;
    _s8PaperKit5ImageVWObTm_0(v51, v58, type metadata accessor for Image);
    PaperDocumentView.insert(_:at:)(v56, v28);
    _s8PaperKit0A8DocumentVWOhTm_0(v56, type metadata accessor for Image);
    return 1;
  }
}

void PaperDocumentView.insert(_:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v105 = &ObjectType - v7;
  v8 = type metadata accessor for CapsuleUndoAction();
  v109 = *(v8 - 8);
  v9 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &ObjectType - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v113 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &ObjectType - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v116 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v114 = &ObjectType - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v101 = *(v19 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v110 = &ObjectType - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &ObjectType - v22;
  MEMORY[0x1EEE9AC00](v24);
  v115 = &ObjectType - v25;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v108 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v106 = &ObjectType - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v111 = &ObjectType - v28;
  *&v30 = MEMORY[0x1EEE9AC00](v29).n128_u64[0];
  v107 = &ObjectType - v31;
  if (v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing] == 1 && [*&v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument] allowsDocumentAssembly])
  {
    v92 = v16;
    v95 = v8;
    v32 = *(v113 + 7);
    v100 = v12;
    v94 = v113 + 56;
    v93 = v32;
    v32(v115, 1, 1, v12);
    v33 = a1;
    v34 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    v35 = *(v116 + 16);
    v98 = v116 + 16;
    v97 = v35;
    v36 = (v35)(v114, &v3[v34], v14);
    MEMORY[0x1EEE9AC00](v36);
    *(&ObjectType - 2) = v33;
    *(&ObjectType - 1) = a2;
    v96 = a2;
    swift_beginAccess();
    v99 = v34;
    Capsule.callAsFunction<A>(_:)();
    swift_endAccess();
    v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    PaperDocumentView.updatePDFDocument(otherDocuments:)(v37);

    v38 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v39 = *&v3[v38];
    if (v39)
    {
      [v39 layoutDocumentView];
      v40 = [objc_opt_self() defaultCenter];
      v41 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408F240);
      v42 = *&v3[v38];
      if (v42)
      {
        v43 = [v42 document];
        [v40 postNotificationName:v41 object:v43];

        outlined init with copy of Date?(v115, v23, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        v44 = v113;
        v45 = v100;
        v46 = (*(v113 + 6))(v23, 1, v100);
        v47 = v92;
        if (v46 == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        }

        else
        {
          v48 = *(v44 + 4);
          ObjectType = 0;
          v49 = v14;
          v50 = v104;
          v48(v104, v23, v45);
          v51 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
          v52 = swift_beginAccess();
          v53 = *&v3[v51];
          MEMORY[0x1EEE9AC00](v52);
          *(&ObjectType - 2) = v50;
          v14 = v49;

          specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), (&ObjectType - 4), v53);
          v55 = v54;
          v57 = v56;
          v59 = v58;

          if (v55)
          {

            ObjectType = swift_getObjectType();
            v97(v47, &v3[v99], v14);
            v117 = 3;
            v60 = *(v59 + 88);
            v61 = type metadata accessor for PaperDocument(0);
            v62 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
            v60(v47, &v117, v61, v62, ObjectType, v59);

            (*(v116 + 8))(v47, v14);
          }

          (*(v113 + 1))(v104, v100);
        }

        v97(v47, &v3[v99], v14);
        v63 = v105;
        v64 = v114;
        Capsule.actionUndoingDifference(from:)();
        v65 = v116 + 8;
        v66 = *(v116 + 8);
        v67 = v47;
        v68 = v63;
        v66(v67, v14);
        v69 = v109;
        v70 = v63;
        v71 = v95;
        if ((*(v109 + 48))(v70, 1, v95) == 1)
        {
          v66(v64, v14);
          outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
          v72 = &_s9Coherence17CapsuleUndoActionVSgMd;
          v73 = &_s9Coherence17CapsuleUndoActionVSgMR;
          v74 = v68;
        }

        else
        {
          v113 = v66;
          v116 = v65;
          v75 = *(v69 + 32);
          v76 = v102;
          v75(v102, v68, v71);
          PaperDocumentView.didChange()();
          v77 = [v3 undoManager];
          if (v77)
          {
            v78 = v77;
            outlined init with copy of Date?(v115, v110, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
            (*(v69 + 16))(v103, v76, v71);
            v79 = *(v101 + 80);
            v105 = v75;
            v80 = (v79 + 18) & ~v79;
            v81 = (v20 + *(v69 + 80) + v80) & ~*(v69 + 80);
            v82 = v76;
            v83 = swift_allocObject();
            *(v83 + 16) = 1;
            v84 = v83 + v80;
            v85 = v96;
            outlined init with take of Range<AttributedString.Index>(v110, v84, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
            (v105)(v83 + v81, v103, v71);
            type metadata accessor for PaperDocumentView(0);
            NSUndoManager.registerUndo<A>(withTarget:handler:)();

            v86 = v100;

            (*(v69 + 8))(v82, v71);
            v113(v114, v14);
            outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
LABEL_16:
            v88 = v107;
            v87 = v108;
            v89 = v112;
            (*(v108 + 32))(v107, v111, v112);
            (*(v87 + 16))(v106, v88, v89);
            lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
            v90 = v110;
            WeakTagged_3.init(_:)();
            v93(v90, 0, 1, v86);
            PaperDocumentView.goToPage(_:hint:)(v90, v85, 0);
            outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
            (*(v87 + 8))(v88, v89);
            return;
          }

          (*(v69 + 8))(v76, v71);
          v113(v114, v14);
          v72 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
          v73 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
          v74 = v115;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v74, v72, v73);
        v85 = v96;
        v86 = v100;
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in PaperDocumentView.insert(_:at:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[2] = a4;
  v21[3] = a3;
  v21[0] = a2;
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21[1] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - v8;
  v10 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - v15;
  outlined init with copy of CRAssetOrData(v21[0], v12, type metadata accessor for Image);
  (*(v5 + 56))(v9, 1, 1, v4);
  v17 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);

  MEMORY[0x1DA6CC020](v18, v12, v9, v10, v17);
  v22[0] = 1;
  Ref.id.getter();
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  SharedTagged_3.init(_:id:)();
  swift_getKeyPath();
  v19 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  CROrderedSet.insert(_:at:)();
  v19(v22, 0);

  return (*(v14 + 8))(v16, v13);
}

Swift::Void __swiftcall PaperDocumentView.insert(_:at:)(VNDocumentCameraScan _, Swift::Int at)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v105 = &ObjectType - v7;
  v8 = type metadata accessor for CapsuleUndoAction();
  v109 = *(v8 - 8);
  v9 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &ObjectType - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v113 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &ObjectType - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v116 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v114 = &ObjectType - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v101 = *(v19 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v110 = &ObjectType - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &ObjectType - v22;
  MEMORY[0x1EEE9AC00](v24);
  v115 = &ObjectType - v25;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v108 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v106 = &ObjectType - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v111 = &ObjectType - v28;
  *&v30 = MEMORY[0x1EEE9AC00](v29).n128_u64[0];
  v107 = &ObjectType - v31;
  if (v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing] == 1 && [*&v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument] allowsDocumentAssembly])
  {
    v92 = v16;
    v95 = v8;
    v32 = *(v113 + 7);
    v100 = v12;
    v94 = v113 + 56;
    v93 = v32;
    v32(v115, 1, 1, v12);
    isa = _.super.isa;
    v34 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    v35 = *(v116 + 16);
    v98 = v116 + 16;
    v97 = v35;
    v36 = (v35)(v114, &v3[v34], v14);
    MEMORY[0x1EEE9AC00](v36);
    *(&ObjectType - 4) = isa;
    *(&ObjectType - 3) = at;
    v96 = at;
    *(&ObjectType - 2) = v3;
    swift_beginAccess();
    v99 = v34;
    Capsule.callAsFunction<A>(_:)();
    swift_endAccess();
    v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    PaperDocumentView.updatePDFDocument(otherDocuments:)(v37);

    v38 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v39 = *&v3[v38];
    if (v39)
    {
      [v39 layoutDocumentView];
      v40 = [objc_opt_self() defaultCenter];
      v41 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408F240);
      v42 = *&v3[v38];
      if (v42)
      {
        v43 = [v42 document];
        [v40 postNotificationName:v41 object:v43];

        outlined init with copy of Date?(v115, v23, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        v44 = v113;
        v45 = v100;
        v46 = (*(v113 + 6))(v23, 1, v100);
        v47 = v92;
        if (v46 == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
        }

        else
        {
          v48 = *(v44 + 4);
          ObjectType = 0;
          v49 = v14;
          v50 = v104;
          v48(v104, v23, v45);
          v51 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
          v52 = swift_beginAccess();
          v53 = *&v3[v51];
          MEMORY[0x1EEE9AC00](v52);
          *(&ObjectType - 2) = v50;
          v14 = v49;

          specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), (&ObjectType - 4), v53);
          v55 = v54;
          v57 = v56;
          v59 = v58;

          if (v55)
          {

            ObjectType = swift_getObjectType();
            v97(v47, &v3[v99], v14);
            v117 = 3;
            v60 = *(v59 + 88);
            v61 = type metadata accessor for PaperDocument(0);
            v62 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
            v60(v47, &v117, v61, v62, ObjectType, v59);

            (*(v116 + 8))(v47, v14);
          }

          (*(v113 + 1))(v104, v100);
        }

        v97(v47, &v3[v99], v14);
        v63 = v105;
        v64 = v114;
        Capsule.actionUndoingDifference(from:)();
        v65 = v116 + 8;
        v66 = *(v116 + 8);
        v67 = v47;
        v68 = v63;
        v66(v67, v14);
        v69 = v109;
        v70 = v63;
        v71 = v95;
        if ((*(v109 + 48))(v70, 1, v95) == 1)
        {
          v66(v64, v14);
          outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
          v72 = &_s9Coherence17CapsuleUndoActionVSgMd;
          v73 = &_s9Coherence17CapsuleUndoActionVSgMR;
          v74 = v68;
        }

        else
        {
          v113 = v66;
          v116 = v65;
          v75 = *(v69 + 32);
          v76 = v102;
          v75(v102, v68, v71);
          PaperDocumentView.didChange()();
          v77 = [v3 undoManager];
          if (v77)
          {
            v78 = v77;
            outlined init with copy of Date?(v115, v110, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
            (*(v69 + 16))(v103, v76, v71);
            v79 = *(v101 + 80);
            v105 = v75;
            v80 = (v79 + 18) & ~v79;
            v81 = (v20 + *(v69 + 80) + v80) & ~*(v69 + 80);
            v82 = v76;
            v83 = swift_allocObject();
            *(v83 + 16) = 1;
            v84 = v83 + v80;
            v85 = v96;
            outlined init with take of Range<AttributedString.Index>(v110, v84, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
            (v105)(v83 + v81, v103, v71);
            type metadata accessor for PaperDocumentView(0);
            NSUndoManager.registerUndo<A>(withTarget:handler:)();

            v86 = v100;

            (*(v69 + 8))(v82, v71);
            v113(v114, v14);
            outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
LABEL_16:
            v88 = v107;
            v87 = v108;
            v89 = v112;
            (*(v108 + 32))(v107, v111, v112);
            (*(v87 + 16))(v106, v88, v89);
            lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
            v90 = v110;
            WeakTagged_3.init(_:)();
            v93(v90, 0, 1, v86);
            PaperDocumentView.goToPage(_:hint:)(v90, v85, 0);
            outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
            (*(v87 + 8))(v88, v89);
            return;
          }

          (*(v69 + 8))(v76, v71);
          v113(v114, v14);
          v72 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
          v73 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
          v74 = v115;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v74, v72, v73);
        v85 = v96;
        v86 = v100;
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in PaperDocumentView.insert(_:at:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a3;
  v66 = a4;
  v7 = type metadata accessor for PaperDocument(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for CRKeyPath();
  v63 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v58 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v62 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v45 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v61 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v64 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - v15;
  v72 = type metadata accessor for Image(0);
  v17 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v55 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v45 - v20;
  v60 = type metadata accessor for NSFastEnumerationIterator();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = CRContext.assetManager.getter();
  v25 = Capsule.Ref.root.modify();
  v27 = v26;
  v71 = a2;
  v28 = [a2 docInfos];
  v67 = v23;
  if (v28)
  {
    v29 = v28;
    v49 = v25;
    v50 = v4;
    v47 = v27;
    specialized PaperDocument.pageGeometryForInserting<A>(at:in:)(v68, v23, &v74.a);
    a = v74.a;
    b = v74.b;
    c = v74.c;
    d = v74.d;
    CGAffineTransformMakeRotation(&v74, v74.tx);
    v77.origin.x = a;
    v77.origin.y = b;
    v77.size.width = c;
    v77.size.height = d;
    v78 = CGRectApplyAffineTransform(v77, &v74);
    width = v78.size.width;
    height = v78.size.height;
    v48 = v29;
    NSArray.makeIterator()();
    v70 = width;
    v69 = height;
    v46 = (v63 + 56);
    ++v62;
    ++v61;
    v63 = v68;
    while (1)
    {
      NSFastEnumerationIterator.next()();
      if (!*&v74.d)
      {
        break;
      }

      outlined init with take of Any(&v74, &v73);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for ICDocCamDocumentInfo, 0x1E699A318);
      if (swift_dynamicCast())
      {
        v36 = v76;
        v37 = v71;

        Image.init(docCamInfo:inScan:targetPageSize:assetManager:)(v36, v37, v70, v69, 0, v24, v16);
        if ((*(v17 + 48))(v16, 1, v72) == 1)
        {

          outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
        }

        else
        {
          v38 = v54;
          _s8PaperKit5ImageVWObTm_0(v16, v54, type metadata accessor for Image);
          outlined init with copy of CRAssetOrData(v38, v55, type metadata accessor for Image);
          v39 = v51;
          (*v46)(v51, 1, 1, v53);
          v40 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);

          MEMORY[0x1DA6CC020](v41, v55, v39, v72, v40);
          LOBYTE(v73) = 1;
          Ref.id.getter();
          lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
          SharedTagged_3.init(_:id:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
          CROrderedSet.insert(_:at:)();

          (*v62)(v57, v52);
          (*v61)(v64, v56);
          _s8PaperKit0A8DocumentVWOhTm_0(v54, type metadata accessor for Image);
          if (__OFADD__(v63++, 1))
          {
            __break(1u);
            break;
          }
        }
      }
    }

    (*(v59 + 8))(v22, v60);
    v49(v75, 0);
  }

  else
  {

    v25(v75, 0);
  }

  v43 = v65;
  Capsule.Ref.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  CROrderedSet.subscript.getter();
  return _s8PaperKit0A8DocumentVWOhTm_0(v43, type metadata accessor for PaperDocument);
}

Swift::Bool __swiftcall PaperDocumentView.insert(_:at:)(NSItemProvider _, Swift::Int at)
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing] != 1)
  {
    goto LABEL_11;
  }

  v10 = [*&v2[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument] allowsDocumentAssembly];
  if (v10)
  {
    v11 = MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D408F910);
    v12 = [(objc_class *)_.super.isa hasItemConformingToTypeIdentifier:v11];

    if (v12)
    {
      v13 = MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D408F910);
      v14 = swift_allocObject();
      *(v14 + 16) = v2;
      *(v14 + 24) = at;
      v43 = partial apply for closure #1 in PaperDocumentView.insert(_:at:);
      v44 = v14;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v42 = &block_descriptor_455;
      v15 = _Block_copy(&aBlock);
      v16 = v2;
LABEL_10:

      v37 = [(objc_class *)_.super.isa loadFileRepresentationForTypeIdentifier:v13 completionHandler:v15];
      _Block_release(v15);

      LOBYTE(v10) = 1;
      return v10;
    }

    v17 = v2;
    static UTType.pdf.getter();
    v18 = UTType.identifier.getter();
    v20 = v19;
    v21 = *(v6 + 8);
    v21(v9, v5);
    v22 = MEMORY[0x1DA6CCED0](v18, v20);

    LODWORD(v20) = [(objc_class *)_.super.isa hasItemConformingToTypeIdentifier:v22];

    if (v20)
    {
      static UTType.pdf.getter();
      v23 = UTType.identifier.getter();
      v25 = v24;
      v21(v9, v5);
      v13 = MEMORY[0x1DA6CCED0](v23, v25);

      v26 = swift_allocObject();
      *(v26 + 16) = v17;
      *(v26 + 24) = at;
      v43 = partial apply for closure #2 in PaperDocumentView.insert(_:at:);
      v44 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v27 = &block_descriptor_449;
LABEL_9:
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v42 = v27;
      v15 = _Block_copy(&aBlock);
      v36 = v17;
      goto LABEL_10;
    }

    static UTType.image.getter();
    v28 = UTType.identifier.getter();
    v30 = v29;
    v21(v9, v5);
    v31 = MEMORY[0x1DA6CCED0](v28, v30);

    LODWORD(v30) = [(objc_class *)_.super.isa hasItemConformingToTypeIdentifier:v31];

    if (v30)
    {
      static UTType.image.getter();
      v32 = UTType.identifier.getter();
      v34 = v33;
      v21(v9, v5);
      v13 = MEMORY[0x1DA6CCED0](v32, v34);

      v35 = swift_allocObject();
      *(v35 + 16) = v17;
      *(v35 + 24) = at;
      v43 = partial apply for closure #3 in PaperDocumentView.insert(_:at:);
      v44 = v35;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v27 = &block_descriptor_443_0;
      goto LABEL_9;
    }

LABEL_11:
    LOBYTE(v10) = 0;
  }

  return v10;
}

uint64_t closure #1 in PaperDocumentView.insert(_:at:)(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v61 = a4;
  v73 = a3;
  v71 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = v57 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v59 = v6;
  v60 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = v57 - v8;
  FileVersionPolicy = type metadata accessor for CRDataStoreBundleReadFileVersionPolicy();
  v72 = *(FileVersionPolicy - 8);
  MEMORY[0x1EEE9AC00](FileVersionPolicy);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = v57 - v14;
  v15 = type metadata accessor for CRStableAsset();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v57 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v57 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v57 - v29;
  outlined init with copy of Date?(v71, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  (*(v22 + 32))(v30, v20, v21);
  v32 = *(v22 + 16);
  v58 = v30;
  v32(v27, v30, v21);
  CRStableAsset.init(url:extension:)();
  v57[1] = *&v73[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_context];
  v71 = v17;
  CRStableAsset.url.getter();
  v57[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E8DocumentVGMd, &_s9Coherence17CRDataStoreBundleCy8PaperKit0E8DocumentVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd, &_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMR);
  v33 = type metadata accessor for CRCodableVersion();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D405C990;
  v38 = v37 + v36;
  v39 = *(v34 + 104);
  v39(v38, *MEMORY[0x1E6995280], v33);
  v39(v38 + v35, *MEMORY[0x1E6995288], v33);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  v40 = FileVersionPolicy;
  (*(v72 + 104))(v10, *MEMORY[0x1E6995398], FileVersionPolicy);
  v41 = v69;
  static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)();
  v42 = v73;
  v43 = v63;

  (*(v72 + 8))(v10, v40);
  v44 = *(v22 + 8);
  (v44)(v24, v21);
  v45 = v67;
  v46 = v70;
  (*(v67 + 56))(v41, 0, 1, v70);
  outlined init with copy of Date?(v41, v43, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  if ((*(v45 + 48))(v43, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    (v44)(v58, v21);
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  }

  else
  {
    v73 = v44;
    v72 = *(v45 + 32);
    v47 = v66;
    (v72)(v66, v43, v46);
    v48 = type metadata accessor for TaskPriority();
    (*(*(v48 - 8) + 56))(v68, 1, 1, v48);
    v49 = v60;
    (*(v45 + 16))(v60, v47, v46);
    type metadata accessor for MainActor();
    v50 = v42;
    v51 = static MainActor.shared.getter();
    v52 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v53 = (v59 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = MEMORY[0x1E69E85E0];
    v54[2] = v51;
    v54[3] = v55;
    v54[4] = v50;
    v56 = v70;
    (v72)(v54 + v52, v49, v70);
    *(v54 + v53) = v61;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v68, &async function pointer to partial apply for closure #2 in closure #1 in PaperDocumentView.insert(_:at:), v54);

    (*(v45 + 8))(v66, v56);
    outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    (v73)(v58, v21);
  }

  return (*(v64 + 8))(v71, v65);
}

uint64_t closure #2 in closure #1 in PaperDocumentView.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in PaperDocumentView.insert(_:at:), v8, v7);
}

uint64_t closure #2 in closure #1 in PaperDocumentView.insert(_:at:)()
{
  v1 = v0[4];
  v2 = v0[3];

  PaperDocumentView.paste(document:at:)(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t closure #1 in closure #1 in closure #2 in PaperDocumentView.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for URL();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in PaperDocumentView.insert(_:at:), v9, v8);
}

uint64_t closure #1 in closure #1 in closure #2 in PaperDocumentView.insert(_:at:)(uint64_t a1)
{
  CRStableAsset.url.getter();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = closure #1 in closure #1 in closure #2 in PaperDocumentView.insert(_:at:);
  v3 = v1[7];
  v4 = v1[4];

  return PaperDocumentView.loadAndInsertPDF(url:at:)(v3, v4);
}

uint64_t closure #1 in closure #1 in closure #2 in PaperDocumentView.insert(_:at:)()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in PaperDocumentView.insert(_:at:), v6, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in PaperDocumentView.insert(_:at:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v41 = a6;
  v39 = a5;
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v34 - v8;
  v43 = type metadata accessor for CRStableAsset();
  v38 = *(v43 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  outlined init with copy of Date?(a1, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  (*(v17 + 32))(v22, v15, v16);
  (*(v17 + 16))(v19, v22, v16);
  v24 = v12;
  v35 = v12;
  CRStableAsset.init(url:extension:)();
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v42, 1, 1, v25);
  v26 = v38;
  v27 = v36;
  (*(v38 + 16))(v36, v24, v43);
  type metadata accessor for MainActor();
  v37 = v37;
  v28 = static MainActor.shared.getter();
  v29 = (*(v26 + 80) + 40) & ~*(v26 + 80);
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  *(v30 + 2) = v28;
  *(v30 + 3) = v31;
  *(v30 + 4) = v37;
  v32 = v43;
  (*(v26 + 32))(&v30[v29], v27, v43);
  v33 = v41;
  *&v30[(v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8] = v40;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v42, v33, v30);

  (*(v17 + 8))(v22, v16);
  return (*(v26 + 8))(v35, v32);
}

uint64_t closure #1 in closure #1 in closure #3 in PaperDocumentView.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for URL();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #3 in PaperDocumentView.insert(_:at:), v9, v8);
}

uint64_t closure #1 in closure #1 in closure #3 in PaperDocumentView.insert(_:at:)()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  CRStableAsset.url.getter();
  PaperDocumentView.loadAndInsertImage(url:at:)(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

void PaperDocumentView.rotatePage(_:left:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v76 - v7;
  v8 = type metadata accessor for CapsuleUndoAction();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v91 = *(v13 - 8);
  v92 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v95 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v76 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v85 = *(v20 - 8);
  v21 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v86 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v76 - v23;
  *&v26 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
  v94 = &v76 - v27;
  if (v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing] != 1 || ![*&v3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument] allowsDocumentAssembly])
  {
    return;
  }

  v79 = v17;
  v80 = v9;
  v81 = v8;
  (*(v91 + 56))(v94, 1, 1, v92);
  v28 = a2;
  v29 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  swift_beginAccess();
  v30 = *(v95 + 16);
  v83 = v95 + 16;
  v82 = v30;
  v31 = (v30)(v93, &v3[v29], v15);
  MEMORY[0x1EEE9AC00](v31);
  *(&v76 - 2) = a1;
  *(&v76 - 8) = v28 & 1;
  swift_beginAccess();
  v84 = v29;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  PaperDocumentView.updatePDFDocument(otherDocuments:)(v32);

  v33 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v34 = *&v3[v33];
  if (!v34)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v34 layoutDocumentView];
  v35 = [objc_opt_self() defaultCenter];
  v36 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408F240);
  v37 = *&v3[v33];
  if (!v37)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v38 = [v37 document];
  [v35 postNotificationName:v36 object:v38];

  outlined init with copy of Date?(v94, v24, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  v40 = v91;
  v39 = v92;
  v41 = (*(v91 + 48))(v24, 1, v92);
  v42 = v79;
  v78 = v10;
  if (v41 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
  }

  else
  {
    v43 = v88;
    (*(v40 + 32))(v88, v24, v39);
    v44 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pageToOverlayMap;
    v45 = swift_beginAccess();
    v46 = *&v3[v44];
    MEMORY[0x1EEE9AC00](v45);
    *(&v76 - 2) = v43;

    specialized Sequence.first(where:)(partial apply for closure #1 in PaperDocumentView.convert(_:from:), (&v76 - 4), v46);
    v48 = v47;
    v50 = v49;
    v52 = v51;

    if (v48)
    {

      ObjectType = swift_getObjectType();
      v82(v42, &v3[v84], v15);
      v96 = 3;
      v53 = *(v52 + 88);
      v54 = type metadata accessor for PaperDocument(0);
      v55 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
      v53(v42, &v96, v54, v55, ObjectType, v52);

      (*(v95 + 8))(v42, v15);
    }

    (*(v91 + 8))(v88, v92);
  }

  v82(v42, &v3[v84], v15);
  v56 = v89;
  v57 = v93;
  Capsule.actionUndoingDifference(from:)();
  v58 = v95 + 8;
  v59 = *(v95 + 8);
  v59(v42, v15);
  v60 = v80;
  v61 = v81;
  v62 = (*(v80 + 48))(v56, 1, v81);
  v63 = v90;
  if (v62 == 1)
  {
    v59(v57, v15);
    outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v64 = &_s9Coherence17CapsuleUndoActionVSgMd;
    v65 = &_s9Coherence17CapsuleUndoActionVSgMR;
    v66 = v56;
  }

  else
  {
    v91 = v15;
    v92 = v59;
    v95 = v58;
    v67 = *(v60 + 32);
    v67(v90, v56, v61);
    PaperDocumentView.didChange()();
    v68 = [v3 undoManager];
    if (v68)
    {
      v69 = v68;
      v89 = v67;
      v70 = v86;
      outlined init with copy of Date?(v94, v86, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      v71 = v87;
      (*(v60 + 16))(v87, v63, v61);
      v72 = (*(v85 + 80) + 18) & ~*(v85 + 80);
      v73 = v61;
      v74 = (v21 + *(v60 + 80) + v72) & ~*(v60 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = 1;
      outlined init with take of Range<AttributedString.Index>(v70, v75 + v72, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
      (v89)(v75 + v74, v71, v73);
      type metadata accessor for PaperDocumentView(0);
      NSUndoManager.registerUndo<A>(withTarget:handler:)();

      (*(v60 + 8))(v90, v73);
      v92(v93, v91);
      v66 = v94;
      v64 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      v65 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
    }

    else
    {
      (*(v60 + 8))(v63, v61);
      v92(v93, v91);
      v64 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
      v65 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR;
      v66 = v94;
    }
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v66, v64, v65);
}

uint64_t closure #1 in closure #1 in PaperDocumentView.rotatePage(_:left:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = -90;
  }

  else
  {
    v3 = 90;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v4 = SharedTagged_3.subscript.modify();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v8 = PaperPage.axisAlignedRotationInDegrees.getter(v6, v7);
  v9 = __OFADD__(v8, v3);
  result = v8 + v3;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    PaperPage.axisAlignedRotationInDegrees.setter(result, v6, v7);
    return v4(&v11, 0);
  }

  return result;
}

uint64_t PaperDocumentView._insertingFromFileIndex.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView___insertingFromFileIndex);
}

void key path getter for PaperDocumentView._insertingFromFileIndex : PaperDocumentView(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView___insertingFromFileIndex);
}

Swift::Void __swiftcall PaperDocumentView.insertFromFile(at:)(Swift::Int at)
{
  if (v1[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing] == 1 && [*&v1[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument] allowsDocumentAssembly])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
    }

    else
    {
      v5 = [v1 window];
      v4 = [v5 rootViewController];

      if (!v4)
      {
        return;
      }
    }

    if (*&v1[OBJC_IVAR____TtC8PaperKit17PaperDocumentView___insertingFromFileIndex] != at)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
    type metadata accessor for UTType();
    *(swift_allocObject() + 16) = xmmword_1D405C990;
    static UTType.image.getter();
    static UTType.pdf.getter();
    v7 = objc_allocWithZone(MEMORY[0x1E69DC968]);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initForOpeningContentTypes:isa asCopy:1];

    [v9 setAllowsMultipleSelection_];
    [v9 setDelegate_];
    [v9 setModalPresentationStyle_];
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = &v1[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 1);
      ObjectType = swift_getObjectType();
      (*(v12 + 32))(v1, v9, !IsReduceMotionEnabled, ObjectType, v12);
      swift_unknownObjectRelease();
    }

    [v4 presentViewController:v9 animated:!IsReduceMotionEnabled completion:0];
  }
}

Swift::Void __swiftcall PaperDocumentView.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController *_, Swift::OpaquePointer didPickDocumentsAt)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  swift_getKeyPath();
  v18 = v2;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = &v2[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    (*(v9 + 40))(v2, _, !IsReduceMotionEnabled, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = v2;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2]._rawValue = v14;
  v15[3]._rawValue = v16;
  v15[4]._rawValue = didPickDocumentsAt._rawValue;
  v15[5]._rawValue = v13;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PaperDocumentView.documentPicker(_:didPickDocumentsAt:), v15);
}

uint64_t closure #1 in PaperDocumentView.documentPicker(_:didPickDocumentsAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentView.documentPicker(_:didPickDocumentsAt:), v7, v6);
}

uint64_t closure #1 in PaperDocumentView.documentPicker(_:didPickDocumentsAt:)()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___insertingFromFileIndex;
    *(v0 + 72) = OBJC_IVAR____TtC8PaperKit17PaperDocumentView___observationRegistrar;
    *(v0 + 80) = v4;
    v5 = *(type metadata accessor for URL() - 8);
    v6 = *(v5 + 80);
    *(v0 + 112) = v6;
    v7 = (v6 + 32) & ~v6;
    *(v0 + 88) = *(v5 + 72);
    *(v0 + 96) = 0;
    swift_getKeyPath();
    *(v0 + 16) = v3;
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v3 + v4);
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = closure #1 in PaperDocumentView.documentPicker(_:didPickDocumentsAt:);

    return PaperDocumentView.insertFile(at:at:)(v1 + v7, v8);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentView.documentPicker(_:didPickDocumentsAt:), v3, v2);
}

{
  v1 = *(v0 + 96) + 1;
  if (v1 == *(v0 + 64))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 96) = v1;
    v4 = *(v0 + 80);
    v5 = *(v0 + 32);
    v6 = *(v0 + 24) + ((*(v0 + 112) + 32) & ~*(v0 + 112)) + *(v0 + 88) * v1;
    swift_getKeyPath();
    *(v0 + 16) = v5;
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v5 + v4);
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = closure #1 in PaperDocumentView.documentPicker(_:didPickDocumentsAt:);

    return PaperDocumentView.insertFile(at:at:)(v6, v7);
  }
}

Swift::Void __swiftcall PaperDocumentView.documentPickerWasCancelled(_:)(UIDocumentPickerViewController *a1)
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    (*(v4 + 40))(v1, a1, !IsReduceMotionEnabled, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void closure #1 in PaperDocumentView.copyPageAction(for:)(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    PaperDocumentView.registerFileRepresentations(forPage:to:)(a3, v6);
    v7 = [objc_opt_self() generalPasteboard];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D405CEB0;
    *(v8 + 32) = v6;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider, 0x1E696ACA0);
    v9 = v6;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setItemProviders_];
  }
}

double PaperDocumentView.validPasteUTTypeIdentifiers.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for PaperDocumentView.validPasteUTTypeIdentifiers : PaperDocumentView@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__validPasteUTTypeIdentifiers);

  return result;
}

UIAction_optional __swiftcall PaperDocumentView.pasteAction(for:)(PDFPage_optional *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing) == 1)
  {
    v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument;
    if ([*(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument) allowsDocumentAssembly])
    {
      v41 = v3;
      v42 = a1;
      v5 = [objc_opt_self() generalPasteboard];
      v6 = [v5 itemProviders];

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider, 0x1E696ACA0);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v9 = 0;
        v10 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__validPasteUTTypeIdentifiers;
        v11 = v7 & 0xC000000000000001;
        v12 = v7 & 0xFFFFFFFFFFFFFF8;
        v13 = v7 + 32;
        v43 = v7;
        v40 = i;
        v38 = v7 & 0xC000000000000001;
        v39 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__validPasteUTTypeIdentifiers;
        v36 = v7 + 32;
        v37 = v7 & 0xFFFFFFFFFFFFFF8;
        while (2)
        {
          if (v11)
          {
            v14 = MEMORY[0x1DA6CE0C0](v9, v7);
          }

          else
          {
            if (v9 >= *(v12 + 16))
            {
              goto LABEL_28;
            }

            v14 = *(v13 + 8 * v9);
          }

          v15 = v14;
          if (!__OFADD__(v9++, 1))
          {
            swift_getKeyPath();
            _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v17 = *(v1 + v10);
            v18 = *(v17 + 16);

            v19 = (v17 + 40);
            v7 = -v18;
            v20 = -1;
            while (v7 + v20 != -1)
            {
              if (++v20 >= *(v17 + 16))
              {
                __break(1u);
                goto LABEL_27;
              }

              v21 = v19 + 2;
              v22 = *(v19 - 1);
              v23 = *v19;

              v24 = MEMORY[0x1DA6CCED0](v22, v23);
              v25 = [v15 hasItemConformingToTypeIdentifier_];

              v19 = v21;
              if (v25)
              {

                if (v42)
                {
                  v26 = [*(v1 + v41) indexForPage_];
                  v27 = v26 + 1;
                  if (!__OFADD__(v26, 1))
                  {
                    goto LABEL_23;
                  }

                  __break(1u);
                }

                v27 = 0;
LABEL_23:
                type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
                if (one-time initialization token for paperKitBundle != -1)
                {
                  swift_once();
                }

                v45._object = 0x80000001D408F8C0;
                v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                v28.value._object = 0xEB00000000656C62;
                v29._countAndFlagsBits = 0x6574736150;
                v30._countAndFlagsBits = 0xD000000000000015;
                v30._object = 0x80000001D408F8A0;
                v45._countAndFlagsBits = 0xD000000000000028;
                v29._object = 0xE500000000000000;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v28, paperKitBundle, v29, v45);
                v31 = MEMORY[0x1DA6CCED0](0xD000000000000010, 0x80000001D4083DF0);
                v32 = [objc_opt_self() systemImageNamed_];

                MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408F8F0);
                v33 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v34 = swift_allocObject();
                *(v34 + 16) = v33;
                *(v34 + 24) = v27;
                v35 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                goto LABEL_32;
              }
            }

            v7 = v43;
            v11 = v38;
            v10 = v39;
            v13 = v36;
            v12 = v37;
            if (v9 != v40)
            {
              continue;
            }

            goto LABEL_30;
          }

          break;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_30:
    }
  }

  v35 = 0;
LABEL_32:
  result.value.super.super.isa = v35;
  result.is_nil = v4;
  return result;
}

void closure #2 in PaperDocumentView.pasteAction(for:)(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing) == 1 && [*(Strong + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument) allowsDocumentAssembly])
    {
      v6 = [objc_opt_self() generalPasteboard];
      v7 = [v6 itemProviders];

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider, 0x1E696ACA0);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
LABEL_20:
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = 0;
      while (v9 != v10)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1DA6CE0C0](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v13 = PaperDocumentView.insert(_:at:)(v11, a3);

        ++v10;
        if (v13)
        {
          break;
        }
      }
    }
  }
}

void closure #1 in PaperDocumentView.rotateLeftAction(for:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = a4;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for PaperDocument(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v21 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing) == 1 && ([*(Strong + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument) allowsDocumentAssembly] & 1) != 0)
    {
      v19 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
      swift_beginAccess();
      (*(v11 + 16))(v13, &v18[v19], v10);
      Capsule.root.getter();
      (*(v11 + 8))(v13, v10);
      v20 = v22;
      (*(v22 + 16))(v6, v9, v4);
      _s8PaperKit0A8DocumentVWOhTm_0(v9, type metadata accessor for PaperDocument);
      CROrderedSet.subscript.getter();
      (*(v20 + 8))(v6, v4);
      PaperDocumentView.rotatePage(_:left:)(v16, v24 & 1);

      (*(v21 + 8))(v16, v14);
    }

    else
    {
    }
  }
}

UIAction_optional __swiftcall PaperDocumentView.insertFromFileAction(for:)(PDFPage *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing) == 1)
  {
    v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument;
    if ([*(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument) allowsDocumentAssembly])
    {
      v5 = MGCopyAnswer();
      v6 = [v5 BOOLValue];

      if ((v6 & 1) == 0)
      {
        v8 = [*(v1 + v3) indexForPage_];
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
        }

        else
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
          v5 = "mbnail in the sidebar.";
          v6 = 0x80000001D408F7F0;
          if (one-time initialization token for paperKitBundle == -1)
          {
LABEL_7:
            v18._object = v6;
            v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v10.value._object = 0xEB00000000656C62;
            v11._object = (v5 | 0x8000000000000000);
            v18._countAndFlagsBits = 0xD000000000000080;
            v11._countAndFlagsBits = 0xD000000000000010;
            v12._countAndFlagsBits = 0;
            v12._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, paperKitBundle, v12, v18);
            v13 = MEMORY[0x1DA6CCED0](0x7265646C6F66, 0xE600000000000000);
            v14 = [objc_opt_self() systemImageNamed_];

            MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D408F880);
            v15 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v16 = swift_allocObject();
            *(v16 + 16) = v15;
            *(v16 + 24) = v9;
            v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            goto LABEL_10;
          }
        }

        swift_once();
        goto LABEL_7;
      }
    }
  }

  v7 = 0;
LABEL_10:
  result.value.super.super.isa = v7;
  result.is_nil = v4;
  return result;
}

UIAction_optional __swiftcall PaperDocumentView.deleteAction(for:)(PDFPage *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing) == 1 && (v3 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument, [*(v1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument) allowsDocumentAssembly]))
  {
    v5 = [*(v1 + v3) indexForPage_];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v6._object = 0xEB00000000656761;
    v15._object = 0x80000001D408F750;
    v6._countAndFlagsBits = 0x50206574656C6544;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v15._countAndFlagsBits = 0xD000000000000076;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, paperKitBundle, v8, v15);
    v9 = MEMORY[0x1DA6CCED0](0x6873617274, 0xE500000000000000);
    v10 = [objc_opt_self() systemImageNamed_];

    MEMORY[0x1DA6CCED0](0xD000000000000015, 0x80000001D408D910);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v5;
    v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v13 = 0;
  }

  result.value.super.super.isa = v13;
  result.is_nil = v4;
  return result;
}

void closure #1 in PaperDocumentView.insertPageAction(for:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a4(a3);
  }
}

Swift::OpaquePointer_optional __swiftcall PaperDocumentView.menuElements(for:)(PDFPage *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v118 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v118 - v10;
  type metadata accessor for PaperKitPDFPage(0);
  v12 = swift_dynamicCastClass();
  v14 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    goto LABEL_104;
  }

  v15 = v12;
  v129 = v11;
  v130 = v9;
  v132 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument;
  v16 = *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument);
  v17 = a1;
  v18 = [v16 indexForPage_];
  if (v18 != NSNotFound.getter())
  {
    v19 = PaperDocumentView.canEditDocument()();
    v126 = v4;
    v124 = v5;
    v123 = v7;
    v122 = v8;
    if (v19 && *(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing) == 1)
    {
      v20 = [*(v2 + v132) allowsDocumentAssembly];
    }

    else
    {
      v20 = 0;
    }

    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = swift_allocObject();
    v120 = xmmword_1D405CEB0;
    *(v21 + 16) = xmmword_1D405CEB0;
    v22 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_allowsDocumentStructureCopying;
    swift_beginAccess();
    v23 = 0;
    v24 = *(v2 + v22) == 1;
    v131 = v17;
    if (!v24)
    {
      goto LABEL_12;
    }

    v127 = [*(v2 + v132) indexForPage_];
    v128 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
    v25 = 0x80000001D408F720;
    if (one-time initialization token for paperKitBundle != -1)
    {
      goto LABEL_100;
    }

LABEL_11:
    v148._object = v25;
    v26._countAndFlagsBits = 0x6150282079706F43;
    v26._object = 0xEB00000000296567;
    v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v27.value._object = 0xEB00000000656C62;
    v148._countAndFlagsBits = 0xD000000000000027;
    v28._countAndFlagsBits = 2037411651;
    v28._object = 0xE400000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, paperKitBundle, v28, v148);
    v29 = MEMORY[0x1DA6CCED0](0x642E6E6F2E636F64, 0xEA0000000000636FLL);
    v30 = [objc_opt_self() systemImageNamed_];

    MEMORY[0x1DA6CCED0](0xD000000000000013, 0x80000001D408D8A0);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v33 = v127;
    *(v32 + 16) = v31;
    *(v32 + 24) = v33;
    v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v17 = v131;
LABEL_12:
    v141[0] = v23;
    if (v20)
    {
      v34 = PaperDocumentView.pasteAction(for:)(v15);

      if (v34)
      {
LABEL_17:
        v35 = 0;
        v141[1] = v34;
        v133[0] = v14;
        v36 = v14;
        while (v35 != 2)
        {
          v37 = v141[v35++];
          if (v37)
          {
            v38 = v37;
            MEMORY[0x1DA6CD190]();
            if (*((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v128 = *((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v36 = v133[0];
            v17 = v131;
          }
        }

        v39 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIMenuElementCSgMd, &_sSo13UIMenuElementCSgMR);
        swift_arrayDestroy();
        v40._countAndFlagsBits = 0;
        v40._object = 0xE000000000000000;
        v144.value.super.isa = 0;
        v144.is_nil = 0;
        v128 = v39;
        *(v21 + 32) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v40, 0, v144, 1, 0xFFFFFFFFFFFFFFFFLL, v36, v117);
        v142 = v21;
        if (v20)
        {
          v121 = swift_allocObject();
          *(v121 + 16) = xmmword_1D405B640;
          v17 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing;
          if (*(v2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing))
          {
            v41 = v132;
            v42 = &selRef_pointyBitPoint;
            if ([*(v2 + v132) allowsDocumentAssembly])
            {
              v43 = [*(v2 + v41) indexForPage_];
              v119 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
              if (one-time initialization token for paperKitBundle != -1)
              {
                swift_once();
              }

              v149._object = 0x80000001D408F680;
              v44._countAndFlagsBits = 0x4C20657461746F52;
              v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v45.value._object = 0xEB00000000656C62;
              v149._countAndFlagsBits = 0xD000000000000078;
              v44._object = 0xEB00000000746665;
              v46._countAndFlagsBits = 0;
              v46._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, paperKitBundle, v46, v149);
              v47 = MEMORY[0x1DA6CCED0](0x6C2E657461746F72, 0xEB00000000746665);
              v48 = [objc_opt_self() systemImageNamed_];

              MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D408F700);
              v49 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v50 = swift_allocObject();
              *(v50 + 16) = v49;
              *(v50 + 24) = v43;
              v51 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
              v41 = v132;
              v42 = &selRef_pointyBitPoint;
            }

            else
            {
              v51 = 0;
            }

            v53 = *(&v17->super.isa + v2);
            v136 = v51;
            if (v53 == 1 && [*(v2 + v41) v42[362]])
            {
              v54 = [*(v2 + v41) indexForPage_];
              v119 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
              if (one-time initialization token for paperKitBundle != -1)
              {
                swift_once();
              }

              v150._object = 0x80000001D408F5E0;
              v55._countAndFlagsBits = 0x5220657461746F52;
              v56.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v56.value._object = 0xEB00000000656C62;
              v150._countAndFlagsBits = 0xD000000000000079;
              v55._object = 0xEC00000074686769;
              v57._countAndFlagsBits = 0;
              v57._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, paperKitBundle, v57, v150);
              v58 = MEMORY[0x1DA6CCED0](0x722E657461746F72, 0xEC00000074686769);
              v59 = [objc_opt_self() systemImageNamed_];

              MEMORY[0x1DA6CCED0](0xD00000000000001BLL, 0x80000001D408F660);
              v60 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v61 = swift_allocObject();
              *(v61 + 16) = v60;
              *(v61 + 24) = v54;
              v52 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            }

            else
            {
              v52 = 0;
            }
          }

          else
          {
            v52 = 0;
            v136 = 0;
          }

          v62 = v135;
          v137 = v52;
          v138 = PaperDocumentView.applyFilterPageAction(for:)(v15);
          v63 = 0;
          v139 = PaperDocumentView.cropPageAction(for:)(v15);
          v133[0] = v14;
          v21 = v135;
          for (i = v14; ; i = v133[0])
          {
            if (v63 <= 4)
            {
              v65 = 4;
            }

            else
            {
              v65 = v63;
            }

            do
            {
              if (v63 == 4)
              {
                swift_arrayDestroy();
                v68._countAndFlagsBits = 0;
                v68._object = 0xE000000000000000;
                v145.value.super.isa = 0;
                v145.is_nil = 0;
                v69.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v68, 0, v145, 1, 0xFFFFFFFFFFFFFFFFLL, i, v117).super.super.isa;
                *(v121 + 32) = v69;
                if (*(&v17->super.isa + v2) != 1)
                {
                  v81 = 0;
                  goto LABEL_53;
                }

                v70 = v132;
                v71 = [*(v2 + v132) allowsDocumentAssembly];
                v21 = v126;
                if (!v71)
                {
                  v81 = 0;
                  goto LABEL_55;
                }

                v72 = [*(v2 + v70) indexForPage_];
                v73 = v72 + 1;
                if (__OFADD__(v72, 1))
                {
                  __break(1u);
                  goto LABEL_108;
                }

                v119 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
                v70 = "com.apple.menu.scan.pages";
                v62 = 0x80000001D408F540;
                if (one-time initialization token for paperKitBundle != -1)
                {
                  goto LABEL_109;
                }

                while (1)
                {
                  v151._object = v62;
                  v74.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                  v74.value._object = 0xEB00000000656C62;
                  v75._object = (v70 | 0x8000000000000000);
                  v151._countAndFlagsBits = 0xD00000000000007CLL;
                  v75._countAndFlagsBits = 0xD000000000000011;
                  v76._countAndFlagsBits = 0;
                  v76._object = 0xE000000000000000;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v74, paperKitBundle, v76, v151);
                  v77 = MEMORY[0x1DA6CCED0](0x676461622E636F64, 0xEE0073756C702E65);
                  v78 = [objc_opt_self() systemImageNamed_];

                  v62 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D408F5C0);
                  v79 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v80 = swift_allocObject();
                  *(v80 + 16) = v79;
                  *(v80 + 24) = v73;
                  v81 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
LABEL_53:
                  v21 = v126;
LABEL_55:
                  v134[4] = v81;
                  v134[5] = PaperDocumentView.insertFromFileAction(for:)(&v15->value);
                  v82 = [v2 window];
                  if (v82)
                  {

                    v83 = [v2 window];
                    if (!v83)
                    {
                      __break(1u);
                      goto LABEL_111;
                    }

                    v84 = v83;
                    v70 = [objc_opt_self() activeToolPickerForWindow_];
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v85 = v132;
                  if (*(&v17->super.isa + v2) != 1 || ([*(v2 + v132) allowsDocumentAssembly] & 1) == 0)
                  {
                    break;
                  }

                  v86 = [*(v2 + v85) indexForPage_];
                  v73 = v86 + 1;
                  if (!__OFADD__(v86, 1))
                  {
                    v132 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
                    if (one-time initialization token for paperKitBundle != -1)
                    {
                      swift_once();
                    }

                    v152._object = 0x80000001D408F480;
                    v87._countAndFlagsBits = 0x676150206E616353;
                    v88.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                    v88.value._object = 0xEB00000000656C62;
                    v87._object = 0xEA00000000007365;
                    v152._countAndFlagsBits = 0xD000000000000075;
                    v89._countAndFlagsBits = 0;
                    v89._object = 0xE000000000000000;
                    NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, paperKitBundle, v89, v152);
                    v90 = MEMORY[0x1DA6CCED0](0x776569762E636F64, 0xEE007265646E6966);
                    v91 = [objc_opt_self() systemImageNamed_];

                    MEMORY[0x1DA6CCED0](0xD000000000000019, 0x80000001D408F500);
                    v92 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v93 = swift_allocObject();
                    v93[2] = v92;
                    v93[3] = v70;
                    v93[4] = v73;
                    v94 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                    v21 = v126;
                    goto LABEL_66;
                  }

LABEL_108:
                  __break(1u);
LABEL_109:
                  swift_once();
                }

                v94 = 0;
LABEL_66:
                v95 = 0;
                v17 = v134;
                v134[6] = v94;
                for (v133[0] = v14; ; v14 = v133[0])
                {
                  if (v95 <= 3)
                  {
                    v96 = 3;
                  }

                  else
                  {
                    v96 = v95;
                  }

                  do
                  {
                    if (v95 == 3)
                    {
                      swift_arrayDestroy();
                      v99._countAndFlagsBits = 0;
                      v99._object = 0xE000000000000000;
                      v146.value.super.isa = 0;
                      v146.is_nil = 0;
                      v100.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v99, 0, v146, 1, 0xFFFFFFFFFFFFFFFFLL, v14, v117).super.super.isa;
                      v101 = v121;
                      *(v121 + 40) = v100;
                      v140 = v101;
                      v102 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
                      swift_beginAccess();
                      v103 = v130;
                      v104 = v129;
                      v105 = v122;
                      (*(v130 + 16))(v129, v2 + v102, v122);
                      swift_getKeyPath();
                      v106 = v123;
                      Capsule.subscript.getter();

                      (*(v103 + 8))(v104, v105);
                      v20 = CROrderedSet.count.getter();
                      (*(v124 + 8))(v106, v21);
                      if (v20 < 2)
                      {
                        v17 = v131;
                      }

                      else
                      {
                        v107 = PaperDocumentView.deleteAction(for:)(&v15->value);
                        v17 = v131;
                        if (v107)
                        {
                          v108 = v107;
                          v109 = swift_allocObject();
                          *(v109 + 16) = v120;
                          *(v109 + 32) = v108;
                          v20 = v108;
                          v110._countAndFlagsBits = 0;
                          v110._object = 0xE000000000000000;
                          v147.value.super.isa = 0;
                          v147.is_nil = 0;
                          UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v110, 0, v147, 1, 0xFFFFFFFFFFFFFFFFLL, v109, v117);
                          MEMORY[0x1DA6CD190]();
                          if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            goto LABEL_79;
                          }

                          goto LABEL_106;
                        }
                      }

                      goto LABEL_81;
                    }

                    if (v96 == v95)
                    {
                      goto LABEL_93;
                    }

                    v97 = v134[v95++ + 4];
                  }

                  while (!v97);
                  v98 = v97;
                  MEMORY[0x1DA6CD190]();
                  if (*((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                }
              }

              if (v65 == v63)
              {
                __break(1u);
LABEL_93:
                __break(1u);
                goto LABEL_94;
              }

              v66 = v135[v63++ + 4];
            }

            while (!v66);
            v67 = v66;
            MEMORY[0x1DA6CD190]();
            if (*((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v119 = *((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

        while (1)
        {
          v2 = v21 >> 62;
          if (v21 >> 62)
          {
LABEL_94:
            v25 = (v21 & 0xFFFFFFFFFFFFFF8);
            if (v21 < 0)
            {
              v20 = v21;
            }

            else
            {
              v20 = v21 & 0xFFFFFFFFFFFFFF8;
            }

            if (__CocoaSet.count.getter() != 1)
            {
              goto LABEL_91;
            }

            if (!__CocoaSet.count.getter())
            {
              __break(1u);
LABEL_100:
              swift_once();
              goto LABEL_11;
            }
          }

          else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
          {
            goto LABEL_90;
          }

          if ((v21 & 0xC000000000000001) != 0)
          {
            v111 = MEMORY[0x1DA6CE0C0](0, v21);
LABEL_87:
            v112 = v111;
            v113 = [v111 children];

            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
            v114 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v114 >> 62)
            {
              v116 = __CocoaSet.count.getter();

              if (v116)
              {
                goto LABEL_89;
              }
            }

            else
            {
              v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (v115)
              {
LABEL_89:
                if (v2)
                {
LABEL_91:
                  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);

                  v14 = _bridgeCocoaArray<A>(_:)();

                  swift_bridgeObjectRelease_n();
                }

                else
                {
LABEL_90:

                  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);

                  v14 = v21;
                }

                goto LABEL_104;
              }
            }

            v14 = MEMORY[0x1E69E7CC0];
            goto LABEL_104;
          }

          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v111 = *(v21 + 32);
            goto LABEL_87;
          }

          __break(1u);
LABEL_106:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v17 = v131;
LABEL_79:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v101 = v140;
LABEL_81:
          specialized Array.append<A>(contentsOf:)(v101);
          v21 = v142;
        }
      }
    }

    else
    {
    }

    v34 = 0;
    goto LABEL_17;
  }

LABEL_104:
  v83 = v14;
LABEL_111:
  result.value._rawValue = v83;
  result.is_nil = v13;
  return result;
}